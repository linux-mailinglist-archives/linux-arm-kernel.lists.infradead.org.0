Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB60211DE9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0xN5w5r4pgr5LeVcWXFz9pxgBFqieDG05NUJyMLgBGA=; b=MGTC9Q92cHwMCk
	gykPnXrcjTb56x5dFdjaW4I20176y/CZmlh3Vj8IjN1TfM9ZO3QhDfEJIeuT0KT4qb2mbuqTsLznr
	wnKtqGIKfjR1jWGWuhmkx/QQThqB1Uw6syR4+s5McxsQB0VQjkPPh0XkGtflebpnR6xozOk3RFWUD
	Jx3RK8Y68O04AjR+MK/dSpEpFa7NW1os7yWKp52zLNya0UXVTwozwUixWoocACmmiNwc5H75u4ipo
	Q3AzMZpBO1ndbAkCB/LdN5qrvojnoarwOMwgE5NIMqFH0P3HpkIDLVqkxXdlqRLfpQgFWjLis9Flx
	gRsoGHZc6NDJkUplD/5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffJd-0004sY-Pq; Fri, 13 Dec 2019 07:24:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffJY-0004rz-Ej
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:24:41 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C43E22527;
 Fri, 13 Dec 2019 07:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576221879;
 bh=UJOcuiK3ixX2rYyqQ3xVgxA+rehXX7Onup49ad9LIxM=;
 h=From:To:Cc:Subject:Date:From;
 b=xt9g7vzEgw+yoGRY2BQ+YyBfP3QnfE+sVGdJkgEOYOyG43Im4y5mFssgaG7yc4/35
 iHDZmCilf893Kyhe3EtfpV9GXYFS2A1Su65udSt6SnbT2C6tjb2Utt1HePM5CiYpOi
 jJu8s7vvzIrqSLWrRil25sDnu+xH7F7UQ9sdjEJc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: samsung: Fix missing OF and GPIOLIB dependency on
 S3C24xx and S3C64xx
Date: Fri, 13 Dec 2019 08:24:33 +0100
Message-Id: <1576221873-28738-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_232440_517265_03FA6F36 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen Zhou <chenzhou10@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsIFNhbXN1bmcgcGluY3RybCBkcml2ZXJzIHNlbGVjdCBjb21tb24gcGFydCAtIFBJTkNUUkxf
U0FNU1VORyB3aGljaCB1c2VzCmJvdGggT0YgYW5kIEdQSU9MSUIgaW5zaWRlLiAgSG93ZXZlciBv
bmx5IEV4eW5vcyBkcml2ZXJzIGRlcGVuZCBvbiB0aGVzZSwKdGhlcmVmb3JlIGFmdGVyIGVuYWJs
aW5nIENPTVBJTEVfVEVTVCwgb24geDg2XzY0IGJ1aWxkIG9mIFMzQzY0eHggZHJpdmVyCmZhaWxl
ZDoKCiAgICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9waW5jdHJsLXNhbXN1bmcuYzogSW4gZnVu
Y3Rpb24g4oCYc2Ftc3VuZ19ncGlvbGliX3JlZ2lzdGVy4oCZOgogICAgZHJpdmVycy9waW5jdHJs
L3NhbXN1bmcvcGluY3RybC1zYW1zdW5nLmM6OTY5OjU6IGVycm9yOiDigJhzdHJ1Y3QgZ3Bpb19j
aGlw4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYb2Zfbm9kZeKAmQogICAgICAgZ2MtPm9mX25v
ZGUgPSBiYW5rLT5vZl9ub2RlOwogICAgICAgICBeCgpSZXdvcmsgdGhlIGRlcGVuZGVuY2llcyBz
byBhbGwgU2Ftc3VuZyBkcml2ZXJzIGFuZCBjb21tb24KUElOQ1RSTF9TQU1TVU5HIHBhcnQgZGVw
ZW5kIG9uIE9GX0dQSU8gKHdoaWNoIGlzIGRlZmF1bHQgeWVzIGlmIEdQSU9MSUIKYW5kIE9GIGFy
ZSBlbmFibGVkKS4KClJlcG9ydGVkLWJ5OiBDaGVuIFpob3UgPGNoZW56aG91MTBAaHVhd2VpLmNv
bT4KU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgot
LS0KIGRyaXZlcnMvcGluY3RybC9zYW1zdW5nL0tjb25maWcgfCA2ICsrKystLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3BpbmN0cmwvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9waW5jdHJsL3NhbXN1bmcvS2Nv
bmZpZwppbmRleCA3NzljMGU5ZWNhM2YuLmRmZDgwNWU3Njg2MiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9waW5jdHJsL3NhbXN1bmcvS2NvbmZpZworKysgYi9kcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9L
Y29uZmlnCkBAIC00LDEyICs0LDEzIEBACiAjCiBjb25maWcgUElOQ1RSTF9TQU1TVU5HCiAJYm9v
bAorCWRlcGVuZHMgb24gT0ZfR1BJTwogCXNlbGVjdCBQSU5NVVgKIAlzZWxlY3QgUElOQ09ORgog
CiBjb25maWcgUElOQ1RSTF9FWFlOT1MKIAlib29sICJQaW5jdHJsIGNvbW1vbiBkcml2ZXIgcGFy
dCBmb3IgU2Ftc3VuZyBFeHlub3MgU29DcyIKLQlkZXBlbmRzIG9uIE9GICYmIEdQSU9MSUIKKwlk
ZXBlbmRzIG9uIE9GX0dQSU8KIAlkZXBlbmRzIG9uIEFSQ0hfRVhZTk9TIHx8IEFSQ0hfUzVQVjIx
MCB8fCBDT01QSUxFX1RFU1QKIAlzZWxlY3QgUElOQ1RSTF9TQU1TVU5HCiAJc2VsZWN0IFBJTkNU
UkxfRVhZTk9TX0FSTSBpZiBBUk0gJiYgKEFSQ0hfRVhZTk9TIHx8IEFSQ0hfUzVQVjIxMCkKQEAg
LTI1LDExICsyNiwxMiBAQCBjb25maWcgUElOQ1RSTF9FWFlOT1NfQVJNNjQKIAogY29uZmlnIFBJ
TkNUUkxfUzNDMjRYWAogCWJvb2wgIlNhbXN1bmcgUzNDMjRYWCBTb0MgcGluY3RybCBkcml2ZXIi
Ci0JZGVwZW5kcyBvbiBPRgorCWRlcGVuZHMgb24gT0ZfR1BJTwogCWRlcGVuZHMgb24gQVJDSF9T
M0MyNFhYIHx8IENPTVBJTEVfVEVTVAogCXNlbGVjdCBQSU5DVFJMX1NBTVNVTkcKIAogY29uZmln
IFBJTkNUUkxfUzNDNjRYWAogCWJvb2wgIlNhbXN1bmcgUzNDNjRYWCBTb0MgcGluY3RybCBkcml2
ZXIiCisJZGVwZW5kcyBvbiBPRl9HUElPCiAJZGVwZW5kcyBvbiBBUkNIX1MzQzY0WFggfHwgQ09N
UElMRV9URVNUCiAJc2VsZWN0IFBJTkNUUkxfU0FNU1VORwotLSAKMi43LjQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
