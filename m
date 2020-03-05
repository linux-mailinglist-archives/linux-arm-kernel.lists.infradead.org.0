Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCB617A6F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUn8gKLxZy7BXjUNkUzCpOfz2SIH7dcvD+V2O4eKh7Y=; b=af6MIrTiRCLJCZ
	uQ8SVhLm8UhNznFXVO8UUfeIsYRgN4jX7+GFsMheMlx8Fus+89IhFNmVtFpn+cDbr9y8fdHgILm6Q
	qSAhVtyIjRroxGCdRNnce/2gQkiNCqrxzgtAU4jpYQzfBw3NhEBMpO8tCgwcSgtzSyfgB2unuL4b1
	Icxf7QyZel0wbNW/Cq0A3x+UJ7NTMYHKdIDZ3iPUncEq5Nm7Mn/yPh8AM+nDsWOhCuRt5UFTe1A7J
	aAxGzQ84yddo2SAI29yMyiYcBEpNfaLL1Y9NdpKebA6h94UwfYOWcX1bYvXDAWxeIGjzH91iID5g4
	0qubT4AcsQaKj6Z6hh6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r2u-0004Xz-Bi; Thu, 05 Mar 2020 14:00:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r2O-0004Ls-Lr
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:59:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CDF62200710;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C053D20057C;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 305F72059D;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/5] dt-bindings: crypto: dcp: use generic node name
Date: Thu,  5 Mar 2020 15:59:06 +0200
Message-Id: <20200305135909.8180-3-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305135909.8180-1-horia.geanta@nxp.com>
References: <20200305135909.8180-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_055944_854723_0015C2AB 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
b3QgdGhlICJkY3AiIHNwZWNpZmljIG9uZS4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMg
PGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9jcnlwdG8vZnNsLWRjcC50eHQgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvY3J5cHRvL2ZzbC1kY3AudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2NyeXB0by9mc2wtZGNwLnR4dAppbmRleCA0ZTRkMzg3ZTM4YTUuLjUxMzQ5OWZj
ZGI1YiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0
by9mc2wtZGNwLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5
cHRvL2ZzbC1kY3AudHh0CkBAIC0xMSw3ICsxMSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAK
IEV4YW1wbGU6CiAKLWRjcEA4MDAyODAwMCB7CitkY3A6IGNyeXB0b0A4MDAyODAwMCB7CiAJY29t
cGF0aWJsZSA9ICJmc2wsaW14MjgtZGNwIiwgImZzbCxpbXgyMy1kY3AiOwogCXJlZyA9IDwweDgw
MDI4MDAwIDB4MjAwMD47CiAJaW50ZXJydXB0cyA9IDw1MiA1Mz47Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
