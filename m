Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9398C1FD999
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 01:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fzKx1ifkxMAutn58f5na7hkEIg/GlhyRn7+2tj2BSEg=; b=eCA
	xjHN9UEnUCR3qIo52z2eOMWcj/tZEEkuDw1AhREsEjDZUrF5dcH8WB4/QIXmfnIk/qlZEgjNCBfyt
	5RSv6AEWFDOK6IqHIKofXARll1Wyzbx4KJQNYXGsAexf/P0U8DQakg7mRXL/uyHP9JfQocnTxNhBz
	RDKfE7if4ppZXgZujI6l4Xwh+xUeB7QJk6LPQO+JAAmFiHfiX6pMx5qX8aZakcOQTyWTvdhEO82Ju
	Nn91QzoMn+9qnGdVSg8Mq6Lpy7wRF/GLXa1wMWL0vn6/yQ8Qx6oziJSFvQJSochjz20ph2kxYWgYQ
	oHhJRUnmjUmIcAjJIK4Z2akjQK9/5Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlhPK-0003K0-Ob; Wed, 17 Jun 2020 23:23:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlhPA-0003JM-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 23:23:42 +0000
Received: by mail-qt1-x841.google.com with SMTP id z2so953254qts.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 16:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M1W5JCcAmvM3NM9z+y7B1BH7N1sBcCpXiGiIv6U/evo=;
 b=sJD9gstBLDX4rtShLtMERYrPXWxSNfaNzs7fTTPyCSOEWeNsOYHeNTnQ6vIF8W6t7y
 TMpa4pStguSQRy4YUH5LYBBi0HFLgVcC3ZCjYT1ldiZmNxuXnMo1FgynZT+cSQrSRZs3
 nWcm/snvLBUSL71mXKlpoS8WMsBKAWW31doW8BgxlZee0Yi5y/xu0pxUr1FbBMuTyvc6
 whUH7Qzneu/e1nz7ERUZmx2UWPqZnNA0yvKTYbtAkKqUF9PiwZkitv6+z7LXRl8U1tKX
 99ae4HzNj1JfupFMhoD2yooRGdBo27/a1ShtoRNCcfS86spsGEwOFKuoEtrzSFwRLxUw
 2ouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M1W5JCcAmvM3NM9z+y7B1BH7N1sBcCpXiGiIv6U/evo=;
 b=JUcOI2MC4h19+jYdmP0xxIzKWuQZ4xZQx4c9yNGiIQI12SMOay6ZOZTSZYU7shCtTv
 woZ+grtnqyrlTI+zrreXd0NatOfTNH/ytbxOabahmKtjOhFh7H1EItP0Qdz8B2G5EVLQ
 7qev23O6Z0eGpqHtw7MRpCm36YbQq47PvlGc3kwUVK0DPQBGPUH7S+oSPHM7yLv9x/cY
 174mUahOpxB6vSG/XwVmIvINsEKQXKDt7xnMAm/zc0qFXDxGHAYuxlp56T8x25x73NiS
 W0Xo0kDojlRKYNjASVuxDG+HHEtfA3+ZQqRIhT2uEPel6VGqemvuLqs2hJw6Ry+WNFzp
 G4jA==
X-Gm-Message-State: AOAM533t0RGFGb+mjy6DWgM1tbuaXEbr0caRIM2Hs4GcE/hMb+oYhpBd
 Fzi5axo6CmtubAsEvovm5io=
X-Google-Smtp-Source: ABdhPJwqWjv1azBUyucrsIvWMF7FrFMPejZ/YHWjciIWSAp3XcMAeD9171II+TCI10VvWhq9tKz0tw==
X-Received: by 2002:ac8:6bd3:: with SMTP id b19mr1609791qtt.27.1592436219429; 
 Wed, 17 Jun 2020 16:23:39 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:92b:9524:444f:ca0e:d637])
 by smtp.gmail.com with ESMTPSA id
 70sm1357551qkk.10.2020.06.17.16.23.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 16:23:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] ARM: dts: imx6qdl-sabresd: Pass phy-reset-duration
Date: Wed, 17 Jun 2020 20:22:48 -0300
Message-Id: <20200617232249.7201-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_162341_023427_28C14FA6 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

According to the AR8031 datasheet:

"When using crystal, clock is generated internally after the power is
stable. In order to get reliable power-on-reset, it is recommended to
keep asserting the reset low signal long enough (10 ms) to ensure the
clock is stable and clock-to-reset (1 ms) requirement is satisfied."

Pass the 'phy-reset-duration' property to meet such requirement.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
index 28b35ccb3757..9697211b7693 100644
--- a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
@@ -204,6 +204,7 @@
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii-id";
 	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <10>;
 	fsl,magic-packet;
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
