Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BFC13BB67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogyK6fWQVW+aPbivJsRSzpIOu9XSpUPzLfcMKsZEhTI=; b=pusWDp47m/6usG
	m3nuXJzcWN/8ZVqaEfpNeFd4qZ3oaoGQbMFKUZ7LQKDAVkvoyCRmC6WmMuRJeSaXFuxHmJOAgFP0d
	CLfVY2ujThkWyKUsRSWBrFBgOY3kqd6SytotDnQWoOITpN4d8quIVO+7rjL4lSI7VSgJ6KhbeSY7j
	d6OldFqxHONguo91eF41/Vy8hDRjfCfNr2gY0mrJHW1TWJ/rTMNSEnxGMmGzkMNvTaEmgSbCZtAfO
	JUkWZ9iP9Fv9YumeD6rv/rENe1Au1HiPRgKvUQKdC1gMvgb4Lb2Ytqrs9S0iLxtNG3i4XEEpyl0so
	7F42jSRK7i0kpmdJ69+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireGg-0002li-O7; Wed, 15 Jan 2020 08:43:14 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireGL-0002jn-Tp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:42:58 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B4FE61A05BB;
 Wed, 15 Jan 2020 09:42:48 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A7BD81A0028;
 Wed, 15 Jan 2020 09:42:48 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0757220340;
 Wed, 15 Jan 2020 09:42:47 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: clock: imx8mn: add SNVS clock
Date: Wed, 15 Jan 2020 10:42:23 +0200
Message-Id: <20200115084225.30464-2-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200115084225.30464-1-horia.geanta@nxp.com>
References: <20200115084225.30464-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_004254_097147_A16E9A73 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Ci0tLQog
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9pbXg4bW4tY2xvY2suaCB8IDQgKysrLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svaW14OG1uLWNsb2NrLmggYi9pbmNsdWRlL2R0LWJpbmRp
bmdzL2Nsb2NrL2lteDhtbi1jbG9jay5oCmluZGV4IDBmMmI4NDIzY2UxZC4uNDM4ODNmZTY1ZGI1
IDEwMDY0NAotLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2lteDhtbi1jbG9jay5oCisr
KyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svaW14OG1uLWNsb2NrLmgKQEAgLTIyOCw2ICsy
MjgsOCBAQAogI2RlZmluZSBJTVg4TU5fU1lTX1BMTDJfMzMzTV9DRwkJCTIwOQogI2RlZmluZSBJ
TVg4TU5fU1lTX1BMTDJfNTAwTV9DRwkJCTIxMAogCi0jZGVmaW5lIElNWDhNTl9DTEtfRU5ECQkJ
CTIxMQorI2RlZmluZSBJTVg4TU5fQ0xLX1NOVlNfUk9PVAkJCTIxMQorCisjZGVmaW5lIElNWDhN
Tl9DTEtfRU5ECQkJCTIxMgogCiAjZW5kaWYKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
