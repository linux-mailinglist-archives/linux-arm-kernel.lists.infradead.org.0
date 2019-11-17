Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E992FF865
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uu9fqgUDfd88kYBQy0jWEb7o2QUQ98Rq4r6ThYi3iAs=; b=IAkYuN534gx0wG
	6q3HTVYnIVR2dTOwR5gAIkMcXy/ky1fcSerFTJeDgUlG3W5ZK6/U7PKe9yQAWZbr5Ki+x6dVbnAoG
	zJduLtCz2KxhjVuBuMFIrg3vX9oT7/em6mReKrl5HoXn2F+VugNbSSTGw/01yjAo97cp7rN+Scuun
	R8Ia+nsg7xjBQsbw4NFkYEJXMsJhwgob5yARa35RILl6qW3DsWlPvBSt6HKnpNMmSqsXjPHAx7XTL
	7TGfnp7/RjI3TMRNsilOiLff87vlppX4ifvZUKz8whH23aVB5Hu/tfwOyFh1UHdHx+UAQm6CjiXFq
	6lt7mcD64V12/RLqqDSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEtk-0001B1-NE; Sun, 17 Nov 2019 07:23:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEsA-000851-6I; Sun, 17 Nov 2019 07:21:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9E238B317;
 Sun, 17 Nov 2019 07:21:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
Date: Sun, 17 Nov 2019 08:21:09 +0100
Message-Id: <20191117072109.20402-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232126_430705_76C8BA6B 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aG91dCB0aGlzIG1hZ2ljIHdyaXRlIHRoZSB0aW1lciBkb2Vzbid0IHdvcmsgYW5kIGJvb3Qg
Z2V0cyBzdHVjay4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KLS0tCiBXaGF0IGlzIHRoZSBuYW1lIG9mIHRoZSByZWdpc3RlciAweGZmMDE4MDAwPwog
SXMgMHgxIGEgQklUKDApIHdyaXRlLCBvciBob3cgYXJlIHRoZSByZWdpc3RlciBiaXRzIGRlZmlu
ZWQ/CiBJcyB0aGlzIGEgcmVzZXQgb3IgYSBjbG9jayBnYXRlPyBIb3cgc2hvdWxkIHdlIG1vZGVs
IGl0IGluIERUPwogCiB2MiAtPiB2MzogVW5jaGFuZ2VkCiAKIHYyOiBOZXcKIAogYXJjaC9hcm0v
bWFjaC1yZWFsdGVrL3J0ZDExOTUuYyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVr
L3J0ZDExOTUuYyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKaW5kZXggYjMxYTQw
NjZiZTg3Li4wNTMyMzc5Yzc0ZjUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcmVhbHRlay9y
dGQxMTk1LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwpAQCAtNSw2ICs1
LDkgQEAKICAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJlYXMgRsOkcmJlcgogICovCiAK
KyNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KKyNpbmNsdWRlIDxsaW51eC9jbG9ja3Nv
dXJjZS5oPgorI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgvbWVtYmxvY2su
aD4KICNpbmNsdWRlIDxhc20vbWFjaC9hcmNoLmg+CiAKQEAgLTI0LDYgKzI3LDE4IEBAIHN0YXRp
YyB2b2lkIF9faW5pdCBydGQxMTk1X3Jlc2VydmUodm9pZCkKIAlydGQxMTk1X21lbWJsb2NrX3Jl
bW92ZSgweDE4MTAwMDAwLCAweDAxMDAwMDAwKTsKIH0KIAorc3RhdGljIHZvaWQgX19pbml0IHJ0
ZDExOTVfaW5pdF90aW1lKHZvaWQpCit7CisJdm9pZCBfX2lvbWVtICpiYXNlOworCisJYmFzZSA9
IGlvcmVtYXAoMHhmZjAxODAwMCwgNCk7CisJd3JpdGVsKDB4MSwgYmFzZSk7CisJaW91bm1hcChi
YXNlKTsKKworCW9mX2Nsa19pbml0KE5VTEwpOworCXRpbWVyX3Byb2JlKCk7Cit9CisKIHN0YXRp
YyBjb25zdCBjaGFyICpjb25zdCBydGQxMTk1X2R0X2NvbXBhdFtdIF9faW5pdGNvbnN0ID0gewog
CSJyZWFsdGVrLHJ0ZDExOTUiLAogCU5VTEwKQEAgLTMxLDYgKzQ2LDcgQEAgc3RhdGljIGNvbnN0
IGNoYXIgKmNvbnN0IHJ0ZDExOTVfZHRfY29tcGF0W10gX19pbml0Y29uc3QgPSB7CiAKIERUX01B
Q0hJTkVfU1RBUlQocnRkMTE5NSwgIlJlYWx0ZWsgUlREMTE5NSIpCiAJLmR0X2NvbXBhdCA9IHJ0
ZDExOTVfZHRfY29tcGF0LAorCS5pbml0X3RpbWUgPSBydGQxMTk1X2luaXRfdGltZSwKIAkucmVz
ZXJ2ZSA9IHJ0ZDExOTVfcmVzZXJ2ZSwKIAkubDJjX2F1eF92YWwgPSAweDAsCiAJLmwyY19hdXhf
bWFzayA9IH4weDAsCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
