Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9B6D59F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 05:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yNAv+XhuZkBNRqAv3FpWyfnnrTa7L+PgOkbRiFLGlEE=; b=tnm9fKiW9TXSrL
	mxwUop9KPJP3/DA/mjSBLpGLKcd0LNANB5EU5riLvaqUWKVFA+aQ0wNQXRWWXilTUIs5TZ5kCtfYj
	ayyfHaaTc21CrsyjwtuGIgMuQehCYv+1HfFWvnHf47MejliAtn80nOpTBEHRZjlSg3IM1bSthYkeD
	7iYoCwnaJd57hx3IXAd4r6BieefU/t8PBHCxcqbHiAOv/6uWtlLj8C+wroa3xrjhnxgpyogcraJTh
	2Puou9tqW5BkdHx2AOwRhMrHVWeJ0LnkHo/N1YEzAh7dHalnwssVo3A8naf5BWMdHLK58z9JXPjhd
	DUgsI2QVnYIz8P0zvh+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJr2m-00054i-BQ; Mon, 14 Oct 2019 03:29:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJr2f-000547-5A
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 03:29:06 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1F5D9200378;
 Mon, 14 Oct 2019 05:29:00 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 09C99200364;
 Mon, 14 Oct 2019 05:28:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D6FD8402E2;
 Mon, 14 Oct 2019 11:28:52 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/1] ARM: dts: imx7s: Add power domain for imx7d HSIC
Date: Mon, 14 Oct 2019 11:26:28 +0800
Message-Id: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_202905_336276_A6AC767E 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Peter Chen <peter.chen@nxp.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T3RoZXJ3aXNlLCB0aGUgc3lzdGVtIHdpbGwgaGFuZyBpZiBVU0IgZHJpdmVyIHRyeSB0byBhY2Nl
c3MKcG9ydHNjIHJlZ2lzdGVyLgoKQ2M6IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4K
U2lnbmVkLW9mZi1ieTogUGV0ZXIgQ2hlbiA8cGV0ZXIuY2hlbkBueHAuY29tPgotLS0KIGFyY2gv
YXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3cy5kdHNpIGIv
YXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQppbmRleCBjMWE0ZmZmNWNlZGEuLmE1YjM4MGY1
MzBmOCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQorKysgYi9hcmNo
L2FybS9ib290L2R0cy9pbXg3cy5kdHNpCkBAIC02NTgsNiArNjU4LDEyIEBACiAJCQkJCQlyZWcg
PSA8MT47CiAJCQkJCQlwb3dlci1zdXBwbHkgPSA8JnJlZ18xcDBkPjsKIAkJCQkJfTsKKworCQkJ
CQlwZ2NfaHNpY19waHk6IHBvd2VyLWRvbWFpbkAyIHsKKwkJCQkJCSNwb3dlci1kb21haW4tY2Vs
bHMgPSA8MD47CisJCQkJCQlyZWcgPSA8Mj47CisJCQkJCQlwb3dlci1zdXBwbHkgPSA8JnJlZ18x
cDI+OworCQkJCQl9OwogCQkJCX07CiAJCQl9OwogCQl9OwpAQCAtMTEwMSw2ICsxMTA3LDcgQEAK
IAkJCQljb21wYXRpYmxlID0gImZzbCxpbXg3ZC11c2IiLCAiZnNsLGlteDI3LXVzYiI7CiAJCQkJ
cmVnID0gPDB4MzBiMzAwMDAgMHgyMDA+OwogCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQlwb3dlci1kb21haW5zID0gPCZwZ2NfaHNpY19waHk+
OwogCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg3RF9VU0JfQ1RSTF9DTEs+OwogCQkJCWZzbCx1c2Jw
aHkgPSA8JnVzYnBoeW5vcDM+OwogCQkJCWZzbCx1c2JtaXNjID0gPCZ1c2JtaXNjMyAwPjsKLS0g
CjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
