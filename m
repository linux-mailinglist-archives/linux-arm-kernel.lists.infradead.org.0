Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DB12E32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WwEj88wfWCBJCookRnQHlyX2vRXRu3wP33Hc9tlzIA=; b=pJgh32HWfZbzLu
	3uW9i78RYUWj34JcW7tGlu4Bf38ljAX89/u7F3784XqwnMVum02t2hZfN+7AjSdXNRDxGLFLYkFwA
	Mkvt1I3u77DMKe7tfM0cDqqZ/wrtKN98C8pljMhoRrl0S8Db3EaYto91KY43pdjpQ5lX01XVeFY9t
	81V9cK/hKpqutjzLk6hQNJ5rYG8VOYIg4kbBHgEHzA8XA/mpt7aWfbo0y9fEQXuL1LB1kOrlWfC7r
	15hICe0OodlHOpMCu6b10kB/XeWnNtjmhyabC1lTB7vvXlRD6bQQJEu2oNhKKsC01AoAiUFWPCtmc
	1VWRekNZhpWBc0F7XRgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXaR-0005vM-Sk; Fri, 03 May 2019 12:46:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZ0-0004Au-9Z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEC38374;
 Fri,  3 May 2019 05:45:17 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A77853F220;
 Fri,  3 May 2019 05:45:14 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 10/56] KVM: arm64: Propagate vcpu into read_id_reg()
Date: Fri,  3 May 2019 13:43:41 +0100
Message-Id: <20190503124427.190206-11-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054518_691208_2B3C82C0 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpBcmNoaXRlY3R1cmUgZmVh
dHVyZXMgdGhhdCBhcmUgY29uZGl0aW9uYWxseSB2aXNpYmxlIHRvIHRoZSBndWVzdAp3aWxsIHJl
cXVpcmUgcnVuLXRpbWUgY2hlY2tzIGluIHRoZSBJRCByZWdpc3RlciBhY2Nlc3NvciBmdW5jdGlv
bnMuCkluIHBhcnRpY3VsYXIsIHJlYWRfaWRfcmVnKCkgd2lsbCBuZWVkIHRvIHBlcmZvcm0gY2hl
Y2tzIGluIG9yZGVyCnRvIGdlbmVyYXRlIHRoZSBjb3JyZWN0IGVtdWxhdGVkIHZhbHVlIGZvciBj
ZXJ0YWluIElEIHJlZ2lzdGVyCmZpZWxkcyBzdWNoIGFzIElEX0FBNjRQRlIwX0VMMS5TVkUgZm9y
IGV4YW1wbGUuCgpUaGlzIHBhdGNoIHByb3BhZ2F0ZXMgdmNwdSBpbnRvIHJlYWRfaWRfcmVnKCkg
c28gdGhhdCBmdXR1cmUKcGF0Y2hlcyBjYW4gYWRkIHJ1bi10aW1lIGNoZWNrcyBvbiB0aGUgZ3Vl
c3QgY29uZmlndXJhdGlvbiBoZXJlLgoKRm9yIG5vdywgdGhlcmUgaXMgbm8gZnVuY3Rpb25hbCBj
aGFuZ2UuCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4K
UmV2aWV3ZWQtYnk6IEFsZXggQmVubsOpZSA8YWxleC5iZW5uZWVAbGluYXJvLm9yZz4KVGVzdGVk
LWJ5OiB6aGFuZy5sZWkgPHpoYW5nLmxlaUBqcC5mdWppdHN1LmNvbT4KU2lnbmVkLW9mZi1ieTog
TWFyYyBaeW5naWVyIDxtYXJjLnp5bmdpZXJAYXJtLmNvbT4KLS0tCiBhcmNoL2FybTY0L2t2bS9z
eXNfcmVncy5jIHwgMjMgKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2t2bS9zeXNfcmVncy5jIGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwppbmRleCA1MzlmZWVj
ZGE1YjguLmE1ZDE0YjVlMmVhNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3Mu
YworKysgYi9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jCkBAIC0xMDQ0LDcgKzEwNDQsOCBAQCBz
dGF0aWMgYm9vbCBhY2Nlc3NfYXJjaF90aW1lcihzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCiB9CiAK
IC8qIFJlYWQgYSBzYW5pdGlzZWQgY3B1ZmVhdHVyZSBJRCByZWdpc3RlciBieSBzeXNfcmVnX2Rl
c2MgKi8KLXN0YXRpYyB1NjQgcmVhZF9pZF9yZWcoc3RydWN0IHN5c19yZWdfZGVzYyBjb25zdCAq
ciwgYm9vbCByYXopCitzdGF0aWMgdTY0IHJlYWRfaWRfcmVnKGNvbnN0IHN0cnVjdCBrdm1fdmNw
dSAqdmNwdSwKKwkJc3RydWN0IHN5c19yZWdfZGVzYyBjb25zdCAqciwgYm9vbCByYXopCiB7CiAJ
dTMyIGlkID0gc3lzX3JlZygodTMyKXItPk9wMCwgKHUzMilyLT5PcDEsCiAJCQkgKHUzMilyLT5D
Um4sICh1MzIpci0+Q1JtLCAodTMyKXItPk9wMik7CkBAIC0xMDc4LDcgKzEwNzksNyBAQCBzdGF0
aWMgYm9vbCBfX2FjY2Vzc19pZF9yZWcoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LAogCWlmIChwLT5p
c193cml0ZSkKIAkJcmV0dXJuIHdyaXRlX3RvX3JlYWRfb25seSh2Y3B1LCBwLCByKTsKIAotCXAt
PnJlZ3ZhbCA9IHJlYWRfaWRfcmVnKHIsIHJheik7CisJcC0+cmVndmFsID0gcmVhZF9pZF9yZWco
dmNwdSwgciwgcmF6KTsKIAlyZXR1cm4gdHJ1ZTsKIH0KIApAQCAtMTEwNywxNiArMTEwOCwxOCBA
QCBzdGF0aWMgdTY0IHN5c19yZWdfdG9faW5kZXgoY29uc3Qgc3RydWN0IHN5c19yZWdfZGVzYyAq
cmVnKTsKICAqIGFyZSBzdG9yZWQsIGFuZCBmb3Igc2V0X2lkX3JlZygpIHdlIGRvbid0IGFsbG93
IHRoZSBlZmZlY3RpdmUgdmFsdWUKICAqIHRvIGJlIGNoYW5nZWQuCiAgKi8KLXN0YXRpYyBpbnQg
X19nZXRfaWRfcmVnKGNvbnN0IHN0cnVjdCBzeXNfcmVnX2Rlc2MgKnJkLCB2b2lkIF9fdXNlciAq
dWFkZHIsCitzdGF0aWMgaW50IF9fZ2V0X2lkX3JlZyhjb25zdCBzdHJ1Y3Qga3ZtX3ZjcHUgKnZj
cHUsCisJCQljb25zdCBzdHJ1Y3Qgc3lzX3JlZ19kZXNjICpyZCwgdm9pZCBfX3VzZXIgKnVhZGRy
LAogCQkJYm9vbCByYXopCiB7CiAJY29uc3QgdTY0IGlkID0gc3lzX3JlZ190b19pbmRleChyZCk7
Ci0JY29uc3QgdTY0IHZhbCA9IHJlYWRfaWRfcmVnKHJkLCByYXopOworCWNvbnN0IHU2NCB2YWwg
PSByZWFkX2lkX3JlZyh2Y3B1LCByZCwgcmF6KTsKIAogCXJldHVybiByZWdfdG9fdXNlcih1YWRk
ciwgJnZhbCwgaWQpOwogfQogCi1zdGF0aWMgaW50IF9fc2V0X2lkX3JlZyhjb25zdCBzdHJ1Y3Qg
c3lzX3JlZ19kZXNjICpyZCwgdm9pZCBfX3VzZXIgKnVhZGRyLAorc3RhdGljIGludCBfX3NldF9p
ZF9yZWcoY29uc3Qgc3RydWN0IGt2bV92Y3B1ICp2Y3B1LAorCQkJY29uc3Qgc3RydWN0IHN5c19y
ZWdfZGVzYyAqcmQsIHZvaWQgX191c2VyICp1YWRkciwKIAkJCWJvb2wgcmF6KQogewogCWNvbnN0
IHU2NCBpZCA9IHN5c19yZWdfdG9faW5kZXgocmQpOwpAQCAtMTEyOCw3ICsxMTMxLDcgQEAgc3Rh
dGljIGludCBfX3NldF9pZF9yZWcoY29uc3Qgc3RydWN0IHN5c19yZWdfZGVzYyAqcmQsIHZvaWQg
X191c2VyICp1YWRkciwKIAkJcmV0dXJuIGVycjsKIAogCS8qIFRoaXMgaXMgd2hhdCB3ZSBtZWFu
IGJ5IGludmFyaWFudDogeW91IGNhbid0IGNoYW5nZSBpdC4gKi8KLQlpZiAodmFsICE9IHJlYWRf
aWRfcmVnKHJkLCByYXopKQorCWlmICh2YWwgIT0gcmVhZF9pZF9yZWcodmNwdSwgcmQsIHJheikp
CiAJCXJldHVybiAtRUlOVkFMOwogCiAJcmV0dXJuIDA7CkBAIC0xMTM3LDI1ICsxMTQwLDI1IEBA
IHN0YXRpYyBpbnQgX19zZXRfaWRfcmVnKGNvbnN0IHN0cnVjdCBzeXNfcmVnX2Rlc2MgKnJkLCB2
b2lkIF9fdXNlciAqdWFkZHIsCiBzdGF0aWMgaW50IGdldF9pZF9yZWcoc3RydWN0IGt2bV92Y3B1
ICp2Y3B1LCBjb25zdCBzdHJ1Y3Qgc3lzX3JlZ19kZXNjICpyZCwKIAkJICAgICAgY29uc3Qgc3Ry
dWN0IGt2bV9vbmVfcmVnICpyZWcsIHZvaWQgX191c2VyICp1YWRkcikKIHsKLQlyZXR1cm4gX19n
ZXRfaWRfcmVnKHJkLCB1YWRkciwgZmFsc2UpOworCXJldHVybiBfX2dldF9pZF9yZWcodmNwdSwg
cmQsIHVhZGRyLCBmYWxzZSk7CiB9CiAKIHN0YXRpYyBpbnQgc2V0X2lkX3JlZyhzdHJ1Y3Qga3Zt
X3ZjcHUgKnZjcHUsIGNvbnN0IHN0cnVjdCBzeXNfcmVnX2Rlc2MgKnJkLAogCQkgICAgICBjb25z
dCBzdHJ1Y3Qga3ZtX29uZV9yZWcgKnJlZywgdm9pZCBfX3VzZXIgKnVhZGRyKQogewotCXJldHVy
biBfX3NldF9pZF9yZWcocmQsIHVhZGRyLCBmYWxzZSk7CisJcmV0dXJuIF9fc2V0X2lkX3JlZyh2
Y3B1LCByZCwgdWFkZHIsIGZhbHNlKTsKIH0KIAogc3RhdGljIGludCBnZXRfcmF6X2lkX3JlZyhz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIGNvbnN0IHN0cnVjdCBzeXNfcmVnX2Rlc2MgKnJkLAogCQkJ
ICBjb25zdCBzdHJ1Y3Qga3ZtX29uZV9yZWcgKnJlZywgdm9pZCBfX3VzZXIgKnVhZGRyKQogewot
CXJldHVybiBfX2dldF9pZF9yZWcocmQsIHVhZGRyLCB0cnVlKTsKKwlyZXR1cm4gX19nZXRfaWRf
cmVnKHZjcHUsIHJkLCB1YWRkciwgdHJ1ZSk7CiB9CiAKIHN0YXRpYyBpbnQgc2V0X3Jhel9pZF9y
ZWcoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCBjb25zdCBzdHJ1Y3Qgc3lzX3JlZ19kZXNjICpyZCwK
IAkJCSAgY29uc3Qgc3RydWN0IGt2bV9vbmVfcmVnICpyZWcsIHZvaWQgX191c2VyICp1YWRkcikK
IHsKLQlyZXR1cm4gX19zZXRfaWRfcmVnKHJkLCB1YWRkciwgdHJ1ZSk7CisJcmV0dXJuIF9fc2V0
X2lkX3JlZyh2Y3B1LCByZCwgdWFkZHIsIHRydWUpOwogfQogCiBzdGF0aWMgYm9vbCBhY2Nlc3Nf
Y3RyKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwgc3RydWN0IHN5c19yZWdfcGFyYW1zICpwLAotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
