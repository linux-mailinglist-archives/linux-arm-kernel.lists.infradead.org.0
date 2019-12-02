Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EC510E8E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyJ1y0wfu9FmIzww8H0u48jBewOQbINs+KNilbiP+8E=; b=X4InlncperhqY9
	NfWDcr869i8W8WVnBkh7g51le0l3KInBpjzfL+Yw4aP/UbmmYRCIRwwq2BfK6nPuLZei0x4CLyAba
	chFbARAJ0cYF62C1/cSssTYUxpefV7UXXVWoT7AOFEZ/ROYroZnxWN/QgrfTSe51LALboPV99dEmk
	PVuftWOd9+kU1f49c60zSBVHz2hTh5vEVwpAz2ckF8WPiTwXm/YWvXJYU7OykKVtp/60WMk5y45xd
	h5Nm4CAEnLzVuxwaqjzEldBfghGv1tOGxjoWgiktAUByLS5wsPmOgSkigLZz02xRDs1IHeM1h0zIq
	1JITiK0W1XwFCrZtsouQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiz4-0007yg-Eu; Mon, 02 Dec 2019 10:31:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixH-0005CB-A4; Mon, 02 Dec 2019 10:29:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E18EB2B3;
 Mon,  2 Dec 2019 10:29:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 5/9] arm64: dts: realtek: rtd16xx: Carve out boot ROM from
 memory
Date: Mon,  2 Dec 2019 11:29:06 +0100
Message-Id: <20191202102910.26916-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022923_502415_DDC2D0E5 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXBkYXRlIE1qb2xuaXIgL21lbW9yeSBub2RlIHRvIGV4Y2x1ZGUgMC4uMHgyZGZmZiBmcm9tIHJl
ZyBlbnRyeS4KQWRkIHRoaXMgcmVnaW9uIHRvIC9zb2MgcmFuZ2VzIGluc3RlYWQuCgpTdWdnZXN0
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBKYW1lcyBUYWkgPGphbWVz
LnRhaUByZWFsdGVrLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPgotLS0KIFRPRE86IEFkZCBGaXhlcyBoZWFkZXIgb25jZSBSVEQxNjE5IGhhcyBh
IHN0YWJsZSAtcmMxIGJhc2VkIGNvbW1pdCBoYXNoLgoKIFRvIGJlIGZvbGxvd2VkIHVwIGJ5IHBh
dGNoIHVuc2hhZG93aW5nIG1vcmUgUkFNIGZyb20gL3NvYyAweDk4MDAwMDAwLi4weGZmZmZmZmZm
LAogb25jZSB3ZSBrbm93IHRoZSBoaWdoZXIgUkFNIHdpbmRvd3MuCiAKIHYyOiBOZXcKIAogYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2MTktbWpvbG5pci5kdHMgfCA1ICsrKy0tCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpICAgICAgICB8IDQgKysrLQog
MiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2MTktbWpvbG5pci5kdHMgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTYxOS1tam9sbmlyLmR0cwppbmRleCA0NGRk
NjdlMDQzMzUuLjkwZWQ2NjgxNDY4ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDE2MTktbWpvbG5pci5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDE2MTktbWpvbG5pci5kdHMKQEAgLTEsNiArMSw3IEBACiAvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQogLyoKICAqIENv
cHlyaWdodCAoYykgMjAxOSBSZWFsdGVrIFNlbWljb25kdWN0b3IgQ29ycC4KKyAqIENvcHlyaWdo
dCAoYykgMjAxOSBBbmRyZWFzIEbDpHJiZXIKICAqLwogCiAvZHRzLXYxLzsKQEAgLTExLDkgKzEy
LDkgQEAKIAljb21wYXRpYmxlID0gInJlYWx0ZWssbWpvbG5pciIsICJyZWFsdGVrLHJ0ZDE2MTki
OwogCW1vZGVsID0gIlJlYWx0ZWsgTWpvbG5pciBFVkIiOwogCi0JbWVtb3J5QDAgeworCW1lbW9y
eUAyZTAwMCB7CiAJCWRldmljZV90eXBlID0gIm1lbW9yeSI7Ci0JCXJlZyA9IDwweDAgMHg4MDAw
MDAwMD47CisJCXJlZyA9IDwweDJlMDAwIDB4N2ZmZDIwMDA+OyAvKiBib290IFJPTSB0byAyIEdp
QiAqLwogCX07CiAKIAljaG9zZW4gewpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDE2eHguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4
LmR0c2kKaW5kZXggYzdiYmYyYzdiYjdjLi42OWNjMGQ5NDFjOGQgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQpAQCAtMyw2ICszLDcgQEAKICAqIFJlYWx0ZWsgUlRE
MTZ4eCBTb0MgZmFtaWx5CiAgKgogICogQ29weXJpZ2h0IChjKSAyMDE5IFJlYWx0ZWsgU2VtaWNv
bmR1Y3RvciBDb3JwLgorICogQ29weXJpZ2h0IChjKSAyMDE5IEFuZHJlYXMgRsOkcmJlcgogICov
CiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+
CkBAIC0xMDcsNyArMTA4LDggQEAKIAkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKIAkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47CiAJCSNzaXplLWNlbGxzID0gPDE+OwotCQlyYW5nZXMgPSA8MHg5
ODAwMDAwMCAweDk4MDAwMDAwIDB4NjgwMDAwMDA+OworCQlyYW5nZXMgPSA8MHgwMDAwMDAwMCAw
eDAwMDAwMDAwIDB4MDAwMmUwMDA+LCAvKiBib290IFJPTSAqLworCQkJIDwweDk4MDAwMDAwIDB4
OTgwMDAwMDAgMHg2ODAwMDAwMD47CiAKIAkJcmJ1czogYnVzQDk4MDAwMDAwIHsKIAkJCWNvbXBh
dGlibGUgPSAic2ltcGxlLWJ1cyI7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
