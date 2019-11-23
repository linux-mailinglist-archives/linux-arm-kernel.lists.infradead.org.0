Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2375108080
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+jhvyvu2NjA0Le/4jFFhSzh7b18qU5aWGg6MEwNSoM=; b=eREu3mIfk3IS4f
	8VP6PNTZ0KJKue1AomjeCfZf9BadZjt4ubbKKT+ZGPaM2iFNeWxeyPTJjjWP/smcePbubN2Q/Wj2x
	jNyBZPQKjS/Qw6n4eKpNAmemOehjUqdlPxAcNAiNhTcg/dpVqXQT7xB/XxC1jjnbGSMiaNqUavWrl
	BBX7qMKkmfVBLIwXbOzi0ra89aAwD9A0HlgPLOoEtDG9mzA90qtfSrAkZT4c00GJOyaPvaHz7svPx
	gpQb6Rh6u8OXVNzvyr7TgUWWFovKhE0vaeLHjoUoc5WHKaoAFfc8m4lhnwzF70yIJyaHnh/sqSIWa
	ITC4EavrjsZdJsnGZF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYcCs-0007u2-40; Sat, 23 Nov 2019 20:40:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYcAZ-0004YY-8f; Sat, 23 Nov 2019 20:38:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2AB49B14F;
 Sat, 23 Nov 2019 20:38:12 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 7/8] ARM: dts: rtd1195: Add Realtek Horseradish EVB
Date: Sat, 23 Nov 2019 21:37:58 +0100
Message-Id: <20191123203759.20708-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191123203759.20708-1-afaerber@suse.de>
References: <20191123203759.20708-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_123815_484206_5276287C 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgRGV2aWNlIFRyZWUgZm9yIFJlYWx0ZWsncyBSVEQxMTk1IEVWQiAiSG9yc2VyYWRpc2gi
LgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0K
IHY0OiBOZXcKIAogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAg
MSArCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LWhvcnNlcmFkaXNoLmR0cyB8IDMyICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtaG9yc2Vy
YWRpc2guZHRzCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgYi9hcmNo
L2FybS9ib290L2R0cy9NYWtlZmlsZQppbmRleCA0ODUzYTEzYzhjZjIuLjdmMTQxMGVhN2RmZiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvTWFrZWZpbGUKQEAgLTg2Niw2ICs4NjYsNyBAQCBkdGItJChDT05GSUdfQVJDSF9SREEp
ICs9IFwKIAlyZGE4ODEwcGwtb3JhbmdlcGktMmctaW90LmR0YiBcCiAJcmRhODgxMHBsLW9yYW5n
ZXBpLWk5Ni5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IFwKKwlydGQxMTk1LWhv
cnNlcmFkaXNoLmR0YiBcCiAJcnRkMTE5NS1tZWxlLXgxMDAwLmR0YgogZHRiLSQoQ09ORklHX0FS
Q0hfUkVBTFZJRVcpICs9IFwKIAlhcm0tcmVhbHZpZXctcGIxMTc2LmR0YiBcCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LWhvcnNlcmFkaXNoLmR0cyBiL2FyY2gvYXJtL2Jv
b3QvZHRzL3J0ZDExOTUtaG9yc2VyYWRpc2guZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uOWQwNmQzZDM0Yzc0Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS1ob3JzZXJhZGlzaC5kdHMKQEAgLTAsMCArMSwzMiBAQAorLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkK
Ky8qCisgKiBDb3B5cmlnaHQgKGMpIDIwMTkgQW5kcmVhcyBGw6RyYmVyCisgKi8KKworL2R0cy12
MS87CisKKyNpbmNsdWRlICJydGQxMTk1LmR0c2kiCisKKy8geworCWNvbXBhdGlibGUgPSAicmVh
bHRlayxob3JzZXJhZGlzaCIsICJyZWFsdGVrLHJ0ZDExOTUiOworCW1vZGVsID0gIlJlYWx0ZWsg
SG9yc2VyYWRpc2ggRVZCIjsKKworCWFsaWFzZXMgeworCQlzZXJpYWwwID0gJnVhcnQwOworCX07
CisKKwljaG9zZW4geworCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwwOjExNTIwMG44IjsKKwl9Owor
CisJbWVtb3J5QGE4MDAgeworCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHgw
MDAwYTgwMCAweDE3ZmY1ODAwPiwgLyogYm9vdCBST00gdG8gci1idXMgKi8KKwkJICAgICAgPDB4
MTgwNzAwMDAgMHgwMDA5MDAwMD4sIC8qIHItYnVzIHRvIE5PUiBmbGFzaCAqLworCQkgICAgICA8
MHgxOTEwMDAwMCAweDI2ZjAwMDAwPjsgLyogTk9SIGZsYXNoIHRvIDEgR2lCICovCisJfTsKK307
CisKKyZ1YXJ0MCB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
