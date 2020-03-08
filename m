Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CA717D4CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEedt+TmptgqsmRKW6z3W7OyuEJSsRWQgM9ntoM77Pw=; b=gaDe7/ab1YAgFl
	jSOmsX2AIG7Ujbdy8lwXlhkZqxFZqX0cwvyUEv+v676yGNvN+HeARunGY/43aT9T92tgTmxZDLixT
	xGdrjrOg39xkEKjrWZ0iIU9AuUVpbRjxYiIBwaggF+EI+wkyrejzmthJvHGPhg/g57Nw0tTufgrSN
	CdKJjzB/0uPprJBaX4B1zM9L1RpVeJD4AezssLVjxXYJts+kYPlzwFwspekLbZWZ2RaN2CHRZ/KzY
	Nl1qO+5aVm7ldlExCLtHYf09uuI++MkHjlgjDDPAkaF8eV0TBVCFBwg9ZUpDomBBfFwOoINGftqjJ
	qRprHvC/wxPC49seknNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAyrw-0000rV-Ml; Sun, 08 Mar 2020 16:33:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrF-0000dX-En
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4F375B01F;
 Sun,  8 Mar 2020 16:32:46 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 03/11] ARM: Prepare Sunplus Plus1 SoC family
Date: Sun,  8 Mar 2020 17:32:21 +0100
Message-Id: <20200308163230.4002-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093253_654974_BD768444 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <linux@armlinux.org.uk>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFy
Y2gvYXJtL0tjb25maWcgICAgICAgICAgICAgIHwgIDIgKysKIGFyY2gvYXJtL01ha2VmaWxlICAg
ICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm0vbWFjaC1zdW5wbHVzL0tjb25maWcgfCAxMCArKysr
KysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9tYWNoLXN1bnBsdXMvS2NvbmZpZwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L0tjb25maWcgYi9hcmNoL2FybS9LY29uZmlnCmluZGV4IDFkY2M2NGJkMzYyMS4uZjk0NjE0MDk1
MmI2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9LY29uZmlnCisrKyBiL2FyY2gvYXJtL0tjb25maWcK
QEAgLTcyMiw2ICs3MjIsOCBAQCBzb3VyY2UgImFyY2gvYXJtL21hY2gtc3RpL0tjb25maWciCiAK
IHNvdXJjZSAiYXJjaC9hcm0vbWFjaC1zdG0zMi9LY29uZmlnIgogCitzb3VyY2UgImFyY2gvYXJt
L21hY2gtc3VucGx1cy9LY29uZmlnIgorCiBzb3VyY2UgImFyY2gvYXJtL21hY2gtc3VueGkvS2Nv
bmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXRhbmdvL0tjb25maWciCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9NYWtlZmlsZSBiL2FyY2gvYXJtL01ha2VmaWxlCmluZGV4IDkzOTdmZTc2NmIz
MS4uZjA1MGVjYTZiM2I2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9NYWtlZmlsZQorKysgYi9hcmNo
L2FybS9NYWtlZmlsZQpAQCAtMTU4LDYgKzE1OCw3IEBAIHRleHRvZnMtJChDT05GSUdfQVJDSF9N
U004WDYwKSA6PSAweDAwMjA4MDAwCiB0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfTVNNODk2MCkgOj0g
MHgwMDIwODAwMAogdGV4dG9mcy0kKENPTkZJR19BUkNIX01FU09OKSA6PSAweDAwMjA4MDAwCiB0
ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfQVhYSUEpIDo9IDB4MDAzMDgwMDAKK3RleHRvZnMtJChDT05G
SUdfQVJDSF9TVU5QTFVTKSA6PSAweDAwMzA4MDAwCiAKICMgTWFjaGluZSBkaXJlY3RvcnkgbmFt
ZS4gIFRoaXMgbGlzdCBpcyBzb3J0ZWQgYWxwaGFudW1lcmljYWxseQogIyBieSBDT05GSUdfKiBt
YWNybyBuYW1lLgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1zdW5wbHVzL0tjb25maWcgYi9h
cmNoL2FybS9tYWNoLXN1bnBsdXMvS2NvbmZpZwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLmMyMGIzMzhlNTBjOAotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL21h
Y2gtc3VucGx1cy9LY29uZmlnCkBAIC0wLDAgKzEsMTAgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKK21lbnVjb25maWcgQVJDSF9TVU5QTFVTCisJYm9vbCAiU3VucGx1cyBT
b0NzIgorCWRlcGVuZHMgb24gQVJDSF9NVUxUSV9WNworCXNlbGVjdCBBUk1fR0lDCisJc2VsZWN0
IEFSTV9HTE9CQUxfVElNRVIKKwlzZWxlY3QgQ0xLU1JDX0FSTV9HTE9CQUxfVElNRVJfU0NIRURf
Q0xPQ0sKKwlzZWxlY3QgR0VORVJJQ19JUlFfQ0hJUAorCWhlbHAKKwkgIFRoaXMgZW5hYmxlcyBz
dXBwb3J0IGZvciB0aGUgU3VucGx1cyBQbHVzMSAoU1A3MDIxKSBTb0MgZmFtaWx5LgotLSAKMi4x
Ni40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
