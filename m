Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5AB12DFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAYNvKICAnTO8bx7egq9kLt+W21uRpUWjBR7J0YTQl4=; b=CrOSMIE59hTgas
	akF/1iEyBrg75bMB1ttChKALU+0YXr56pTpQj3HqcKPKxT7Gqdm0Hv3JlEy6vAv+Pe+MMjS1OaCMP
	Omotqf6kPmC/D1I8QXpU+4HP4W6raO0qgyfStPrEma/O5o3/w9BeG5wFDqPp0YYIdIQlB5NHqNfUR
	+fWm3j++J/0Ux/s5vlQAMO5h+gOK/jOFEsBlEi/OgpiETKrdMw5oMtas+pd9CbT3QeavqmsxIzVu5
	gCKp9gyags+vrml89UNhCyGLFOf06Q0/3n/i0sUper9KWjVhPEKPfDtLTvcTF0sWKO9OXWtj20PDl
	ANm/khW2oYV3rq8hX+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXZD-0004Gm-Lg; Fri, 03 May 2019 12:45:31 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYb-0002Pl-FJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:44:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51D3580D;
 Fri,  3 May 2019 05:44:53 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B1493F220;
 Fri,  3 May 2019 05:44:49 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 03/56] KVM: arm64: Delete orphaned declaration for
 __fpsimd_enabled()
Date: Fri,  3 May 2019 13:43:34 +0100
Message-Id: <20190503124427.190206-4-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054453_983264_38BBDECD 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpfX2Zwc2ltZF9lbmFibGVk
KCkgbm8gbG9uZ2VyIGV4aXN0cywgYnV0IGEgZGFuZ2xpbmcgZGVjbGFyYXRpb24gaGFzCnN1cnZp
dmVkIGluIGt2bV9oeXAuaC4KClRoaXMgcGF0Y2ggZ2V0cyByaWQgb2YgaXQuCgpTaWduZWQtb2Zm
LWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4KUmV2aWV3ZWQtYnk6IEFsZXgg
QmVubsOpZSA8YWxleC5iZW5uZWVAbGluYXJvLm9yZz4KVGVzdGVkLWJ5OiB6aGFuZy5sZWkgPHpo
YW5nLmxlaUBqcC5mdWppdHN1LmNvbT4KU2lnbmVkLW9mZi1ieTogTWFyYyBaeW5naWVyIDxtYXJj
Lnp5bmdpZXJAYXJtLmNvbT4KLS0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaCB8
IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20va3ZtX2h5
cC5oCmluZGV4IDRkYTc2NWYyY2NhNS4uZWY4YjgzOTRkM2QxIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2
bV9oeXAuaApAQCAtMTQ5LDcgKzE0OSw2IEBAIHZvaWQgX19kZWJ1Z19zd2l0Y2hfdG9faG9zdChz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpOwogCiB2b2lkIF9fZnBzaW1kX3NhdmVfc3RhdGUoc3RydWN0
IHVzZXJfZnBzaW1kX3N0YXRlICpmcF9yZWdzKTsKIHZvaWQgX19mcHNpbWRfcmVzdG9yZV9zdGF0
ZShzdHJ1Y3QgdXNlcl9mcHNpbWRfc3RhdGUgKmZwX3JlZ3MpOwotYm9vbCBfX2Zwc2ltZF9lbmFi
bGVkKHZvaWQpOwogCiB2b2lkIGFjdGl2YXRlX3RyYXBzX3ZoZV9sb2FkKHN0cnVjdCBrdm1fdmNw
dSAqdmNwdSk7CiB2b2lkIGRlYWN0aXZhdGVfdHJhcHNfdmhlX3B1dCh2b2lkKTsKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
