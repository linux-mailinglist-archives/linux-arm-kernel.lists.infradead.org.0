Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B4C1FD2CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l0zXsMTGVitqk4+w1hURJ4y9mKLqizaaI4g/2ibEMY=; b=HT+YNeQxfxfCQB
	UV1MxIKeVWOLngfDG66s0SiIUQCxh3Bq6ECtR4qe/GuIOs0iZ9vrkQPS+Or7yyehEz/s817XRRVB4
	1IToHFrHSwz85Hwa4yWsLPtb8TztOuN22N8PnT6ovK8L9qrPwFVEOolKJjFSaFkP0j2utv1sc3FPJ
	53032cNgwMSbTPc7REOnXzjiqHEZ8/INeHGUD/riU1tB70LHm3pnMOTFprHNwlcIpZ1Zt/hfZshWu
	XESfyliLAvuP6BcVOLskzXQbhpEGyyxBYjGsErclhD072bb61dF5VAmsFpTbJlPyumuISq/YR8Gw0
	Kq8LCxtIn1UJJxI7JIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbHE-0001j3-9x; Wed, 17 Jun 2020 16:51:04 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEf-0005rJ-MV; Wed, 17 Jun 2020 16:48:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so2528658edq.4;
 Wed, 17 Jun 2020 09:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fOhYKXX9hi+9MVHQhHY4sI0Y8sLNLyLXejCOvgcKKQA=;
 b=HUcUY14XiOkgINSgtEcMP6dwMeU1iUCpAavOYpWWvcVsh9XJTa5DtQjSFtnFPZZkj0
 Oa7QNVwBIslc9t6Nh6P7i0srtKtpqD24pR8l2nFKt31ELaSdZj/Ycbe8cxhUKr9HKmpN
 vOqvXiQOrmtlRHg3DWzvmyaSzf0bGKG7L1sDV0331ySBiCYWFWW4YNFQBe49jpYqxObU
 mwEynxqcr8CHDGWoUwuDv/hijrkEjuULX/FaIeUoz5pu7o7TMksFy/jGDs4Uy66kQ5Wk
 okV7lrH0CSJwnz9J3uMVyNBlawa+8iQwV9grYTcYJiVEXWU9fEkj73bl+9Ouk4dcS/y4
 bgbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fOhYKXX9hi+9MVHQhHY4sI0Y8sLNLyLXejCOvgcKKQA=;
 b=IgP+38t0pQvDVT4mrglGS9KIE5+AMagSTNciP7kNyvX7WC8CaK87Wv4qNQD9UVpkwe
 v8zRbAKB65Sn0BFvYGvZeCLUCrD2+bOvfO73O5u3JTafd6py1B9mz6yV21tA/hYKzSCT
 abWifT4d0HOPw33sQCgr/gssW0XRxSWvOJJBO8Nis0wUC0mnKPwulGOiCrCHXM3vWa6r
 Yai4Piij1AJAQofMKn4xDKiByQwjJ5XZKuQPaSB7xBTZ6NnY4FLvqJ8hZwRstDsKtGwt
 jSl4P2m8Rcz3r6KIpxTTCjuHEotuGY9MDK5wtgvLQx60iXX8N8/hBPlMbEJSubULsgaO
 JP7g==
X-Gm-Message-State: AOAM532nwADVax3PBoGUC2lDx0Y0btXblJgk3EkB3xGCf28dS/XHb09J
 KMWxaJTXH9VyMeR8MaGS6Oi0SPHlEaY=
X-Google-Smtp-Source: ABdhPJwGHl1xZxgFACdA/VlCPqa/bNkM9owgM5dNiTwaSed9JoosVOhxU8MsEZ5Dh2Qw0s1ywW03nw==
X-Received: by 2002:a50:fc0d:: with SMTP id i13mr87504edr.260.1592412504023;
 Wed, 17 Jun 2020 09:48:24 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:23 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 07/11] arm: dts: owl-s500: Add DMA controller
Date: Wed, 17 Jun 2020 19:48:07 +0300
Message-Id: <5b942daad7854c50faabbc9ce8e24c2ade74f641.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094825_806170_10FAEB57 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DMA controller node for Actions Semi S500 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/owl-s500.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
index ac3d04c75dd5..0f4fc5487dad 100644
--- a/arch/arm/boot/dts/owl-s500.dtsi
+++ b/arch/arm/boot/dts/owl-s500.dtsi
@@ -205,5 +205,19 @@ sps: power-controller@b01b0100 {
 			reg = <0xb01b0100 0x100>;
 			#power-domain-cells = <1>;
 		};
+
+		dma: dma-controller@b0260000 {
+			compatible = "actions,s900-dma";
+			reg = <0xb0260000 0xd00>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <12>;
+			dma-requests = <46>;
+			clocks = <&cmu CLK_DMAC>;
+			power-domains = <&sps S500_PD_DMA>;
+		};
 	};
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
