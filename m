Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EF210F1B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/t8Cy1oFXiXSZDbkL4AwcAxu2a+GDsq0GDOqF/MS2c=; b=YER63bLXKW8fbJ
	zikIsu2U4BeIDZq8pUQ7VZ78zEQeOFxEWsK2j2wKL12ghKPbT4QZurWNTyACrCmvx7Q1GoV6C8ziF
	MNuYbDDkq8n35j8hgKqolY4EtjnMm5rm+UN/Z4mR7dLUOp6XPpRLZPLwpBXRnTgECPGBI0HStMj1H
	VEOij0ll0kmMe6Z4Erm1ZlvzJgVvyAmQ8XsuTaJtBoRcK/hQE0yuIHvBkO1su+nJAMZt8KdShGxhe
	81IXu2/cYgRDwoPuKLehTx+v0Bef8PKEhqUskBlrTxJkXG296G3GF2Aw8TicAo5V+PRTd8CW2MPeg
	8y9GYEJiwscU0tpQrHfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibscF-0003qB-P4; Mon, 02 Dec 2019 20:48:19 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsc6-0003oY-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:48:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=36x8kOQD1A+EaV2wnpbyrxx04DG69+sUUw8lPbX6jwg=; b=b9opIgHRJj1JrgkU2C/XFZLRHV
 1tpe2oivJsRYn0SK63s60lOaUfttudXfPNyUZxw2LI9FJOKmX8lUy/Y6tfztTHumZyVev8lzaUkm4
 b2ZAdNLxUxouspoomCPnHeGG0ALc3/EpTxBfH8VU3PdfgrTvU5aaWGcHCq9T5elr2mkc=;
Received: from p200300ccff066f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff06:6f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ibsbu-0007pY-Dv; Mon, 02 Dec 2019 21:47:58 +0100
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1ibsbu-0001lB-63; Mon, 02 Dec 2019 21:47:58 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, letux-kernel@openphoenux.org
Subject: [PATCH 1/2] media: dt-bindings: media: fsl-pxp: add missing imx6sll
Date: Mon,  2 Dec 2019 21:47:47 +0100
Message-Id: <20191202204748.6718-2-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202204748.6718-1-andreas@kemnade.info>
References: <20191202204748.6718-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_124811_073061_07ADC3EB 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6SLL also has a pxp, so mention it among others in the bindings doc.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 Documentation/devicetree/bindings/media/fsl-pxp.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/fsl-pxp.txt b/Documentation/devicetree/bindings/media/fsl-pxp.txt
index 2477e7f87381..f8090e06530d 100644
--- a/Documentation/devicetree/bindings/media/fsl-pxp.txt
+++ b/Documentation/devicetree/bindings/media/fsl-pxp.txt
@@ -8,7 +8,7 @@ i.MX SoCs from i.MX23 to i.MX7.
 
 Required properties:
 - compatible: should be "fsl,<soc>-pxp", where SoC can be one of imx23, imx28,
-  imx6dl, imx6sl, imx6ul, imx6sx, imx6ull, or imx7d.
+  imx6dl, imx6sl, imx6sll, imx6ul, imx6sx, imx6ull, or imx7d.
 - reg: the register base and size for the device registers
 - interrupts: the PXP interrupt, two interrupts for imx6ull and imx7d.
 - clock-names: should be "axi"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
