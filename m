Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B2191570
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjTnusnyIQK5L8qATGKZXX+NRTXMqId00KDYGUGU8H0=; b=K3VDl0FMWTnEIa
	Al7PIGZbYuorr8zXyAoroBUWVH5ETKtsKla0spvoupyQP9ezE+MkWZzzAs3uchVdRCiuoJcSwQLvb
	UmSOkABrjY7+fjKH3N6Hw8Pta2WE9oGMWNkDiTtEn+NodIMJyK6+s0s4B1KTb8q8iHjMbkOx/ZaOt
	AuXWQw5ZPi78ZMVc+QWPJl5fHgi3mfPLEGLlM+LDebZq8Ekz9fX0zdscPqN+XZ+J8/PvTEcy4962q
	1CMP8LewABveLF4Vg9Dskvhnm33jkRUcBR83yOpNZy6SqQlC9tuCogA4ORvjdvctESDsDigCqPHxP
	TxWanOeVIFzjKS7uOtOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlxG-000203-HH; Tue, 24 Mar 2020 15:59:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlx4-0001yn-EV
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:58:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id c81so3784092wmd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7M4e9o8R/jlXCe3wT9wHDDQVcDFKUG87A79NboJcc9g=;
 b=z8TohSDzWj88TpVJhThWuXq681EwUXuzU9+8xtlGDkVL3r68Bl+dAIRrlT2C/sZuWo
 brgZVhD9TslO4j7iCZuuAuvA1LNNGdHkAG6Bo+yVOeqJEMhZiyp+/U1GiMi0df4BfusY
 mFwJpD+ixuHJOHOViP4SvpraMe/+EmG2GMAY0lXpZwLSA51RQLtAOoXFLVCj03WTTjdv
 frk/+6VRuOcKd7uC4oaRlLR+gJpOHytttAFZyTwKuLbqTEch6q/4DGJU+dD4yOa7vUu7
 U+JHXOv04ci6cB3rPq2aSqN62I6uOz3qMDEzJij+2pp4fT1/8Dz7cNuagSyb5pU6KKR0
 9imA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7M4e9o8R/jlXCe3wT9wHDDQVcDFKUG87A79NboJcc9g=;
 b=ZXB2kO8pB4wSEfKGqO3HaoZ5sQJ5L1RITWiosVNEL5UkhjDvwort4EIdGVnLloCaQh
 mdhZf/GFJv9Th00+SK0VWl5bKoP6TPv2m0Q7kTKXcoEtbckiwsrVbNjELT9gVk5kbTsh
 xot5O6X2MPs6lq8iu/W+2VIYWogoizUZMc4V0YsYu/+9Iul6VDcg66vT5JK8WVKTqfbu
 rC7OVFGtdP5meJnTOvW3WLFZkp+5j5HJx78VxvZZTS/ApEcLSoCfqbQ0TQ8L+Av/y23r
 Y/ODmHv49SESHi2vgVKCwk8YUODy7VHPjAHxxgIhbvYNGOhht+J+QCWWJbmV9P/4/7OW
 oi0Q==
X-Gm-Message-State: ANhLgQ2/Lf4L7g8/WlLWuRGfNIQHL3ABqlqH2C7D/anybqqk3Xvb7rxj
 q31FjcyXYkIC3Uu/y4JaTP8uAA==
X-Google-Smtp-Source: ADFU+vvN9RnVfxIazz7BTv+QNT+flflr45uROfuowXNpL/mjn+CLdjWfsK3biA4LZIq+XOLMJndlig==
X-Received: by 2002:a05:600c:2111:: with SMTP id
 u17mr6305800wml.158.1585065528914; 
 Tue, 24 Mar 2020 08:58:48 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:48 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 0/6] Qualcomm CCI & Camera for db410c & db845c
Date: Tue, 24 Mar 2020 16:58:36 +0100
Message-Id: <20200324155843.10719-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085850_510912_D5BAADDD 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series depends on the Qualcom CCI I2C driver series:
https://patchwork.kernel.org/cover/10569957/

This series enables basic camera functionality on the Qualcomm db410c and
db845c (RB3) platforms.

This includes building drivers as modules, adding devicetree nodes
for camera controllers, clocks, regulators and sensor nodes.


Loic Poulain (2):
  arm64: dts: msm8916: Add i2c-qcom-cci node
  arm64: dts: apq8016-sbc: Add CCI/Sensor nodes

Robert Foss (4):
  arm64: dts: sdm845: Add i2c-qcom-cci node
  arm64: dts: sdm845-db845c: Add pm_8998 gpio names
  arm64: dts: sdm845-db845c: Add ov8856 & ov7251 camera nodes
  arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI drivers

 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi  |  76 ++++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi      |  27 +++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 210 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       |  92 +++++++++
 arch/arm64/configs/defconfig               |   3 +
 5 files changed, 408 insertions(+)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
