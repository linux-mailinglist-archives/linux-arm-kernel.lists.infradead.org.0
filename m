Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570E1D315B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 21:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaF/MkFJJEwZFwT9BGPqYBNJAzST9Vgk75d+IZYA1h4=; b=Q4Y6get0TZVXaK
	npmNZ0g27K7neLKyr21RmRhMf+QbPTGUfYjM5rX8osSaYURJEDGQkVY85yzLLyFGZj9P2PX3wObZ7
	mbnapy6ZkASPDOvx4O5Ih6hdWjlcwnIASWF0xSqXXa+CJXqZQUw8FwQ462gaaldmkMR5udHn0fFPd
	mr2h1xrFbSbm1NtsKCZZRaHltncS/nOR3zCTmcRgZMKAYRiI6V679IACCbOUDgy46MgHlVPa8Whw4
	nr1dSMnPhUKZCRCb2/pK3HywPExaFdFG9qy+ZpM2dm6bLi35D5D8sXmUPwJ15918mxBlqObU4CjeI
	fKt0td7OI9bvfP07otxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIe5H-0007up-6D; Thu, 10 Oct 2019 19:26:47 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIe4o-0007le-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 19:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MwcU21sAN23PMIeSNVMb6B47OMp0NvPmhAUVkc8gq7A=; b=BC6mxSZ+07ih/TCqbztKjoZMwa
 UnrV2G1fRGkXOawuew8re13gyJPntX9QOIrUcqpKCw4Ct+y8df+wjsoBPTdu67N3neUXpVtGCSDUy
 /YPSwWU33jYTZZ/3JxX/UK8SOmypQtuSknxNvO5LemeUgyiaKj8XLCTT8CcOzNs3pWGM=;
Received: from p200300ccff13bb001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff13:bb00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iIe4e-0007Jq-Ec; Thu, 10 Oct 2019 21:26:11 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iIe4e-0007GY-3y; Thu, 10 Oct 2019 21:26:08 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 1/3] dt-bindings: arm: fsl: add compatible string for Kobo
 Clara HD
Date: Thu, 10 Oct 2019 21:23:55 +0200
Message-Id: <20191010192357.27884-2-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191010192357.27884-1-andreas@kemnade.info>
References: <20191010192357.27884-1-andreas@kemnade.info>
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_122618_381249_3D87F4D6 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This adds a compatible string for the Kobo Clara HD eBook reader.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Changes in v2: reordered, was 2/3
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0b..afa3bfeca0c08 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -148,6 +148,7 @@ properties:
         items:
           - enum:
               - fsl,imx6sll-evk
+              - kobo,clarahd
           - const: fsl,imx6sll
 
       - description: i.MX6SX based Boards
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
