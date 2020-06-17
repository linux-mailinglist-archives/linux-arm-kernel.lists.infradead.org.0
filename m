Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C667C1FD99A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 01:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FT+ljcYIEx9yWOcLK1DSNgn877mxEJgm/448FVXLwp4=; b=mVChKt0WCZSk+QzyJ5lTPdGOMW
	z5rUZH+/6EjjfqFkEErRKQUpLBzQO6TIJasTbrOJ/m5FmTZIFaziMx0ZhMwSyK3Bz1oaTYhyQvdw9
	2mYlYgLtpl7NwK4hhTzbhpFe4lRb8Mx2GT8Hn3i+jj/vv2NiHN5co5JrYzjaCwcZOLwJOdqCk2vD1
	cyOhcN38XZklyrwPUDz6X5N0YlnBmodVsbW7e/CMN7I49Ho1+nUCSGvUlXTfuNCCFlArrtG22UIdr
	JTCJFhdIZy7LtUZpuc9DepG3DmzYYfTlbwzf2YavMBGZDKwm77kxmvLwMibPscOf+y4OMpGE/SpMq
	19o1wCwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlhPZ-0003S8-FJ; Wed, 17 Jun 2020 23:24:05 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlhPD-0003Jm-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 23:23:45 +0000
Received: by mail-qt1-x842.google.com with SMTP id z2so953347qts.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 16:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xFbmZ2mBad+QESgZ3lzL2w1td3mq39Msg/iEa+3hrWU=;
 b=PydwoDGCeyJGnjQd6dXyQGeTKXjdVeLYfxsY7SEB+6a0jSVW0Oo0UJRvBJPInJBiJN
 0V9SfMv4m3oAehHFgH/cJoPtXZNpvUP9cM7TLQv592+2kqbnfk66kgo2+qlurNQGJ3JG
 Gy3M/QAN+SYbIps+kBkVx6u0yxjxMbU2tiHbuspcUuyC0LBKySmvfbMKaR/8m24qu4Pg
 Vbd9LBB94XXX5lbdL5ix4AGlpwV1Is4qt/y1HlNtRAKVTXktiR6mrSw83no2FujNTAe3
 YwhY4oTXJUDPX1/uV7aDiERSCSPYDAvpIwhTpzKWwPTym4G2iM1d8A8SZsv7/AnlJspC
 95gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xFbmZ2mBad+QESgZ3lzL2w1td3mq39Msg/iEa+3hrWU=;
 b=H18ryk4x/V3i4qMiY+Pd23LSAcxn2P7gSTuqpfrDV7YVDQcH+7a4y/1JqdE2niqkyE
 fLowlhClrsxtSLH8yaLMXN+zD56qudbQqlsE4WtQxjB/+tOBYHDWzg6uIxIjF60WblZz
 eCdmzz85FJUaztdFMdcb1Nca+3A2/n8ZHx77jSn1f9BjoRze5VQz+TBlPAJ7/haKS+nU
 Z39BlZBWQq88TSF7EiSwrxmlvrTfaIMDQJ2T3fhbeCozdbXqV9itvemjJ9ziIWVhnFPW
 3ghEnuIIkuiPr4yJIKPMk6524NL0qogDQZG+JKhq/L/4OyaDFlC5Yn+N7lGRHm5UzEqY
 DD1Q==
X-Gm-Message-State: AOAM5313LXHj+nZwyDg0A0RelMWzItERDouVmFmAsZXwAeYXGgqrT+lu
 Owftupkzv4BWNZ/zkPjCZ2E=
X-Google-Smtp-Source: ABdhPJwU28vc5bbv3CFTYs8fJzYxU1v95JhiyqYw4VI2fPPFD0Gh2K0emzSaKP1m6VJ9DZXKWbzQsA==
X-Received: by 2002:ac8:3f70:: with SMTP id w45mr1618201qtk.253.1592436222770; 
 Wed, 17 Jun 2020 16:23:42 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:92b:9524:444f:ca0e:d637])
 by smtp.gmail.com with ESMTPSA id
 70sm1357551qkk.10.2020.06.17.16.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 16:23:41 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] ARM: dts: imx6qdl-sabresd: Add an mdio node
Date: Wed, 17 Jun 2020 20:22:49 -0300
Message-Id: <20200617232249.7201-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200617232249.7201-1-festevam@gmail.com>
References: <20200617232249.7201-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_162343_905864_93CE5385 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx6qdl-sabresd has an Atheros AR8031 Ethernet PHY at address 1.

The AR8031 provides a 125MHz clock to the ENET_REF_CLK i.MX6 pin.

Improve the Ethernet representation by adding an mdio node with such
information.

An advantage of adding the mdio node is that the AR8031 initialization
code in the mx6sabresd board file in U-Boot can totally be removed.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
index 9697211b7693..fb70ae0811af 100644
--- a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
@@ -203,10 +203,21 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
+	phy-handle = <&phy>;
 	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
 	phy-reset-duration = <10>;
 	fsl,magic-packet;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy: ethernet-phy@1 {
+			reg = <1>;
+			qca,clk-out-frequency = <125000000>;
+		};
+	};
 };
 
 &hdmi {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
