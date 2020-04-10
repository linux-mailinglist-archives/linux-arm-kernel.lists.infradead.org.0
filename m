Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A201A3D82
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+PD0T9tJIKtw1DMt8FWzbgu+Zo5OtK7ZzYHa3RKXCDI=; b=FT9EXajgjtoqRv
	Ib54Lv86NtjSPFfynEEECLgjOW/4K+zbSk/hgMfJoGS45FBDBaz4nVjXpzT05Zmz2z7+TW1ZMqMST
	VahEOPd6KbCi4DKxKnyecVcsGBHHjFTIsZ/JNQyZHD+fM1C/0McOox8GniUnlf16IN0rUW8o9fWsN
	vJzJoxtSydS3cyhcGaLs0FEvc89TGPsHjHsjed70y4e25G24xcmqfSdWUm2qTLJ+4UvkRPvREOLYU
	nPmMuUFDRUHqN45q0WMOqzZJkDpnJBs+WOxmqMlXi48mrrOeVoTOHwLbULK+4rEv0hAOeYxdqEV81
	30E/Gn1O9gHqdcnupxhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhpx-0002Qz-Kk; Fri, 10 Apr 2020 00:48:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhpl-0002Ps-Vp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:47:51 +0000
Received: by mail-ed1-x543.google.com with SMTP id v1so531769edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AaXKqqNhWwXTEhyoNjhEC/wZ5IBgda9BijmlHrsyAzs=;
 b=rlX6YEU9uaIFZ8ZG6zqSY97HPpxFwjg8LybI2X+embhgop3KgGzATQRsGQwNSfDQ7a
 VZu9Eh8ZQtzQ+O7iooYPpAsdzCgUvQ9uqz83rrrhC7DOGgejll1BoyqsB4/ttHFCmGgP
 8fUyKOkmEzER5DlcJpUfau8Hh4gBy46CktuIR1nSXmI4s4zC3oXHHPKZU30Q1XO63rVk
 YrgfBJPbZwdYhuu4G4qCtXV7gmoStSKSemfQCt2kM4ks1UzMJI04G7CeVAjV0uguRA9Z
 DVrZZoZRM8RTidVfCzcc0m1ypTJNYBrLdVaMrsHffulpw1xNU0U2CCxRpaECGy/KbGXS
 3ZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AaXKqqNhWwXTEhyoNjhEC/wZ5IBgda9BijmlHrsyAzs=;
 b=RtEDRWF1Hv1NMYU5VpFs8tNYjb/WHvlX9WnXbM05Tz3NT8pjTRpHw4juKMeG5WhwAR
 YhN9oBtXIyoLRanGvKbfI6dW1Mo6LyJWGI6OoHQTdoX/KCDxOB7tULHs9wAmJB5WUr4+
 2hwDQPT1N43VCLCHJcGCSOefOLLi6adplto+n9DIBWBvWmHsISjHDDTFRgpOvO27tjGf
 BN8s9s2/OvVVpPhrhgaFK7+6aP4izZSJu05RvDy5I0yNiWaEpLY2eNM2aZVsoDwJ3A0x
 40ce67yNFqRskgsqTrA8pkjjJi1SJeQHd13yhP8+8sXlRsmzcleUBZOACIsGCXvfvFBD
 KMlQ==
X-Gm-Message-State: AGi0Pubj+vZjXAa/+5bVqcPvOZ+CZcDsC1CqD1gcPrxFfwyGHY/FsARR
 OXQw5QrTIat8iu1IefUVIiA=
X-Google-Smtp-Source: APiQypIDgPP5SYnSGNGLtJlzJvRK3ujDA4LiVyVvMnB5ny2rpXt+EMRELOoEoRsm95Z4o7IVoL/mEA==
X-Received: by 2002:aa7:c893:: with SMTP id p19mr2597008eds.19.1586479666469; 
 Thu, 09 Apr 2020 17:47:46 -0700 (PDT)
Received: from Ansuel-XPS.localdomain
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.googlemail.com with ESMTPSA id z16sm30523edm.52.2020.04.09.17.47.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 17:47:45 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/4] Move tx-deempth and tx swing to pci.txt
Date: Fri, 10 Apr 2020 02:47:34 +0200
Message-Id: <20200410004738.19668-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_174750_047469_D51A49D9 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In pushing some fixes to pcie qcom driver, one of the patch had to make
some fixes to tx deempth and tx swing. It was suggested to propose this
to the generic pci.txt as they are actually standard parameter than can
be tuned per board. I also notice these property are already used in
imx6 driver so this would also help to generalize it.

Ansuel Smith (4):
  devicetree: bindings: pci: document tx-deempth tx swing and rx-eq
    property
  drivers: pci: dwc: pci-imx6: update binding to generic name
  arm: dts: imx6: update pci binding to generic name
  devicetree: bindings: pci: fsl,imx6q-pcie: rename tx deemph and swing

 .../devicetree/bindings/pci/fsl,imx6q-pcie.txt | 12 ++++++------
 Documentation/devicetree/bindings/pci/pci.txt  | 18 ++++++++++++++++++
 arch/arm/boot/dts/imx6q-ba16.dtsi              |  4 ++--
 arch/arm/boot/dts/imx6qdl-var-dart.dtsi        |  4 ++--
 arch/arm/boot/dts/imx7d.dtsi                   |  2 +-
 drivers/pci/controller/dwc/pci-imx6.c          | 12 ++++++------
 6 files changed, 35 insertions(+), 17 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
