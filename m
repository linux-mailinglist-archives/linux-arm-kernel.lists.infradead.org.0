Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B271B7A6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVBITWGrxOBLOeHTqjgbTnkH07As8NTZDSxdLV0Ke34=; b=ESrW1Uk8PHZZL4
	LYI+oCAl7fmjpPjZwXGS0XmQRr2SoQijj+b+/V8lYS3nzFxVO/4GrQv19fpzn5L5wVcyCEsy259ZI
	LhusTk7JB5AeCu8XRcYjuh/Ga7OwAjkxH4m0oHuUPiHyNVtEZfofpZszdUnR45BrVnZYyyCii38Dd
	b0l6ZCrPRtyhy058/RSvTm77O4DoZL1pJgpRG5f0FHO3lbgRxhtflUODdDyZnxPe7uNkZGM9u//3d
	xPAF3wuAW8g92lusUtyeXm0EDX+3BsGWyhtInpJBaiKaMrY1tndcxhFDtEzZV8QNBTbpODwS4c6pN
	wpRGHBUvoSBfPTZVhVzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Xn-0004wO-D0; Fri, 24 Apr 2020 15:47:11 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N6-0007vi-0o; Fri, 24 Apr 2020 15:36:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 6AA8F10AA;
 Fri, 24 Apr 2020 11:36:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2I5zMakGdefyc
 AHM9J30Y7T2xEqngHoH53dlRgc3XbQ=; b=BD1B4CN8zWU+fPz7IlbsH+rnyrL/K
 GmWvt/35ykWfkbGxhUf3nvgpM/HFzhC6z5mbrPEessL1hEz9R1N36E3rQfYI+jOX
 4NeMvWRfrYLX3CWXu8lALSxcJFtXgnijMRi1t93HqXYAt+/6Su/sJERGgtJYUKLy
 ss86uXwDxtAHwKXgtomXo8lToxz1CUKTyZkf+cKUBkRBtaz/7Gqe0XZlXOGN5Mxu
 LhfAac9FMdLJwAjB6XLz5MpFWNUFjdOqIZAqHwXM99H5iHt1MW5PTN96gc6aRwwc
 PdvRZrDN2H+GwHWfBheSDg2WnL2WJtgs0irTb+HE1jMwJlSAiKzOJ8Exw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2I5zMakGdefycAHM9J30Y7T2xEqngHoH53dlRgc3XbQ=; b=Pis+VpXI
 t0wmLmPGRLm+wsq/DgSmOoRh+9csdgurzenCAT4Ra6SxAyJYtkWgBcp6Mx9j0tRE
 on987iRDzEBBXlS/JnMLPgvTGYLdpSJOBU8mdAjUjy4nS1+nMBJiyxLfNeKgmCot
 UeeN0/zqrttVLPbV92LYnWIWbG0vFw5Wz0kIRejyZs5MnqKWJ+JL9VaUbbNt50/H
 mZnyWAimGdR+ar+ed45xnMdcohtr02DWUnD6oixn+LJwadBsYthTXGp9kNRmKwzT
 kYfVDSDgUHxYjR709uuYs2B4hUdW/JIt4fqM43JK1O7JHh93MAXZt1pFdzmjnRei
 fVCEHGAaADQTiw==
X-ME-Sender: <xms:ZQejXkufTVDwLok66FHM6BLrBJuB_BSbVYKOOazzTbfziom17RDw6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ZQejXo31Oh_FJDumAK97HP0x9cGyjm3g5i4OalhfqmvRBbCD4PkpUw>
 <xmx:ZQejXqFiow9NgvsiJn5lD0t8g-U3c-sZGhwV2nQv7IbJAA9lhLELnA>
 <xmx:ZQejXtPhBRvfTvRQfys8YUwSYQ3cfoYMHaeD8ma69SixaggyksKPvA>
 <xmx:ZgejXppFBIk2U4L8O8z2BDU1N5BMLE3_ww19HQbuONEucwCJCxwu5ZU3b7Y>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A6A0E3065D9A;
 Fri, 24 Apr 2020 11:36:05 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 31/91] dt-bindings: display: vc4: Document BCM2711 VC5
Date: Fri, 24 Apr 2020 17:34:12 +0200
Message-Id: <1fc211841ff633f59d64c3b074724a23f3606d72.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083610_521435_A2DB7A7C 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 comes with a new VideoCore. Add a compatible for it.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
index 0dcf0c397375..49a5e041aa49 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
@@ -17,6 +17,7 @@ description: >
 properties:
   compatible:
     enum:
+      - brcm,bcm2711-vc5
       - brcm,bcm2835-vc4
       - brcm,cygnus-vc4
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
