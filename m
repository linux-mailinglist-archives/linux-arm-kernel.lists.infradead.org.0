Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D0B12F479
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BjDZUAnMGoMO3/3bBcgJXjEEXXOH1U9rbzGhTUG2AAU=; b=V3oCzatKlzeo9F
	y3Rkv59vBZd/4StKsXO9mmzEqnTzIWc2s7vrW1eOn2xi1S2DrVrL0AyrXnbCqtTgWSRBL/oALuYmW
	1B1Uq9VNN+ZdU+7DrzgBylfpi00qZtGB5Iv7PI7oW6TNDjYbt63+0SJumpnHGfHuF9fQfzty5Hmnl
	T1WZhGCx9Uen3b+JB6UPsSo81hxpFEHF/qIsly3ub3BUklTXFa2HAqzGwWZTNmkdg0928x0mYvsWf
	mzeA0WxE7bB+Y/5yHJ+ouD+qAT3m7YEBsRnQvH1ePull23XkI8NBX/9wTIRclltp9NbK8dEynfK7N
	lqpMoM/0mFgiyZ+w6cWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inG4w-0000qP-N6; Fri, 03 Jan 2020 06:04:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inG4p-0000pt-SW; Fri, 03 Jan 2020 06:04:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B688BADD2;
 Fri,  3 Jan 2020 06:04:49 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH] arm64: dts: realtek: rtd16xx: Add memory reservations
Date: Fri,  3 Jan 2020 07:04:40 +0100
Message-Id: <20200103060441.1109-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_220452_072247_E72100F0 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVzZXJ2ZSBtZW1vcnkgcmVnaW9ucyBmb3IgUlBDIGFuZCBURUUuCgpGaXhlczogZTVhOWUyMzc2
MDhkICgiYXJtNjQ6IGR0czogcmVhbHRlazogQWRkIFJURDE2MTkgU29DIGFuZCBSZWFsdGVrIE1q
b2xuaXIgRVZCIikKQ2M6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgpTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxNnh4LmR0c2kKaW5kZXggM2M3MGEwZGEzMjllLi40ZGM2YzlmMTNjNDMgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQpAQCAtMTQsNiArMTQsMjUgQEAK
IAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkjc2l6ZS1jZWxscyA9IDwxPjsKIAorCXJlc2VydmVk
LW1lbW9yeSB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwxPjsK
KwkJcmFuZ2VzOworCisJCXJwY19jb21tOiBycGNAMmYwMDAgeworCQkJcmVnID0gPDB4MmYwMDAg
MHgxMDAwPjsKKwkJfTsKKworCQlycGNfcmluZ2J1ZjogcnBjQDFmZmUwMDAgeworCQkJcmVnID0g
PDB4MWZmZTAwMCAweDQwMDA+OworCQl9OworCisJCXRlZTogdGVlQDEwMTAwMDAwIHsKKwkJCXJl
ZyA9IDwweDEwMTAwMDAwIDB4ZjAwMDAwPjsKKwkJCW5vLW1hcDsKKwkJfTsKKwl9OworCiAJY3B1
cyB7CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxscyA9IDwwPjsKLS0gCjIu
MTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
