Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03FE17A700
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBv7QGHWyiAumz8wgmCj7vArEGPebMAs6IvF8wfSfTI=; b=YNyFe34ejwGRH8
	cih/g6YcHLdZJNDqhnchkIVtXUN7qblRaumA/6TWIqM96XqmBTYeFj5cmqzh0pU3bfF2NBw9AEgWb
	rOivInheUlf9kQUIVRkYXyu8S4LZVJv/oIX7VO+9OYVZ7l6uqz3dP7SXZP5Opi1DtYOzTDn9pMs4d
	jZJef4v9uqlk1VNoBeXeACTjwt9G62CiQBb/XQtGxJq3CCBW07zxf1kl6OaKkYz0O5eZeYgA6E3H6
	U1NT+6JuLxPG179T9xnnxWKS5YWHFmvH7c+mDhR1XzX6eP8e/5PCBAv6jHeqPK7wPetaHBAV/5sHe
	XmolGvNvC7UwcV5HDv6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r3g-0006Z0-Ve; Thu, 05 Mar 2020 14:01:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r2O-0004Lr-U1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:59:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C7481A06B1;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1FFE21A06AB;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 815072059D;
 Thu,  5 Mar 2020 14:59:40 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/5] dt-bindings: crypto: sahara: use generic node name
Date: Thu,  5 Mar 2020 15:59:05 +0200
Message-Id: <20200305135909.8180-2-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305135909.8180-1-horia.geanta@nxp.com>
References: <20200305135909.8180-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_055945_100556_779EA72F 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3J5cHRvIG5vZGUgc2hvdWxkIHVzZSB0aGUgImNyeXB0byIgZ2VuZXJpYyBuYW1pbmcsCmFuZCBu
b3QgYSBzcGVjaWZpYyBvbmUuCgpTaWduZWQtb2ZmLWJ5OiBIb3JpYSBHZWFudMSDIDxob3JpYS5n
ZWFudGFAbnhwLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5
cHRvL2ZzbC1pbXgtc2FoYXJhLnR4dCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jcnlwdG8vZnNsLWlteC1zYWhhcmEudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtaW14LXNhaGFyYS50eHQKaW5kZXggZThhMzVjNzFl
OTQ3Li5kYjY5MGIxMGU1ODIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9jcnlwdG8vZnNsLWlteC1zYWhhcmEudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLWlteC1zYWhhcmEudHh0CkBAIC04LDcgKzgsNyBA
QCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCiBFeGFtcGxlOgogCi1zYWhAMTAwMjUwMDAgeworc2Fo
OiBjcnlwdG9AMTAwMjUwMDAgewogCWNvbXBhdGlibGUgPSAiZnNsLGlteDI3LXNhaGFyYSI7CiAJ
cmVnID0gPAkweDEwMDI1MDAwIDB4ODAwPjsKIAlpbnRlcnJ1cHRzID0gPDc1PjsKLS0gCjIuMTcu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
