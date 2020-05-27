Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415421E491A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVBITWGrxOBLOeHTqjgbTnkH07As8NTZDSxdLV0Ke34=; b=krDOqGc3esua3g
	UmKaDt/fsPw2EKBhQo+ybocDXnpt8r/Ue30lTwDUpWlzjDKzLcGI2h6bYkL953q1MI4Ll8xkXgQEH
	mrXMcs6DGs4X35TNfxdpXojjrdLiWmUTemr+/l1cQplh+3gKYYkQW+O9UPb5W/oKC+8/YyEp+z5XD
	4NqxCSATLd8hvoj47QESXrUeQTYIFQedGryh6b3UZRpAPuvz50kW6agAxpDOXXa7nMKR2bPlpOrmW
	Y/D2Zuyo8RIL35rMc78YVzu9RiiDzXal00z1fcnoyUC5+kAs6469kFrRtXtKfYVBt6sEev7f0q0mb
	LVhpkYsuZffJD2dVIlgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyWA-0005vC-I5; Wed, 27 May 2020 16:02:58 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJB-00066W-Mv; Wed, 27 May 2020 15:49:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D3E3D582005;
 Wed, 27 May 2020 11:49:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2I5zMakGdefyc
 AHM9J30Y7T2xEqngHoH53dlRgc3XbQ=; b=GDPfI1e5KUvbj23n5X227mloVFY/3
 t4ZnnUqAy/V3vYC+s/+6lMhmuG6BtTkgtEbtVzCK94xHj2Q4HA8PR2ZpDuq56By3
 DxgK6hq6FzzbDnvoNjb4XRc5cufhUaM+mYmQ2bBT1FiFV7zIgfKSk3S8q1WcfZGa
 /GjPj0dKNEsd1PXwsfFGN30JySBg37GWLtTjEMlJwyaOnXSm44KQKaVkXVSjdKk1
 mYQCIh0Qza9H5KMKa4z7Lb/1N6lX94AWMlOG9mR+Xh81E7Xu2uxQlqZHeWUFHLjz
 A7Zw9upBF1pbzNOxoXQALpubQutmyZnP2fb5UBvRNgTfhutbsA8XRlN7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2I5zMakGdefycAHM9J30Y7T2xEqngHoH53dlRgc3XbQ=; b=smWN56+f
 1pwLp2iGMWQSidpEwae8QUOnqW840OQijmct90Dz6zXB6VOYcQmO9RjZfXY/rJSa
 l/Ei/x2nOpNOwmEVtD0n3drmA0ayxudShPW9ezpeP+Uhdm4qPe1U/Ri0p5ygMGLz
 fKkOgxQn+peJ3Xy6PVAB/hdJ3lFPuObAWwb9pFPzQwKITqgzB0eQrZaniug2ryk8
 2CnqmlBdCdcXRqlcYfP62H+qgaVBkw13tlkHnNnBQQ/ETBGkHWDQW6lgb7kT10im
 KmmPdnkGp9HRgD8gbUGNsiEETxL5w5pSc8Um3e8daSFqAJbcLxkJEo6NHHeeYdYC
 g/h/65WiMaQrNw==
X-ME-Sender: <xms:DIzOXnXWO_lISxlUCitH0rnMi4dKb6xYO7PsRyUpc23fbq_uej2VXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:DIzOXvmJ-VLAYX7qZ8v_tQ4_-ZFCAXRL07JbpEF6cARKfTiu9UKe-Q>
 <xmx:DIzOXjbNIZ1MgebVYfsSEM9A8JT1D2v51Vpk3OC615B3pUrb3zZLkA>
 <xmx:DIzOXiVQbowtYBPCONx9JBbLeqp_fX-AKEne-jAcExujoqViiPQBOg>
 <xmx:DIzOXijEe9LvUU_f5KZSujyNyDIGd8kLTiMlvpBXyrygEKgS4FDRQQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 78ABA3280060;
 Wed, 27 May 2020 11:49:32 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 010/105] dt-bindings: display: vc4: Document BCM2711 VC5
Date: Wed, 27 May 2020 17:47:40 +0200
Message-Id: <c92be0086d086cd763160bec08c81dd8b8fd32e6.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084933_904516_76C596B0 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
