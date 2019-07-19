Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B586E172
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CHdl4Y4adw2G64OVwRFgjsQV/cFL+YIiEd2oqbC4bew=; b=eJq
	u0N9kiVsZFItyG5Ce6mjdjmk8mS+DCxnaQHXNQG+CmZNP0wSLasRNya+0YwFDSGcM0eN7m8rchlYn
	C1VZBewJ0DcmvQLgbE8s6JK46bVtDZCifj2at/f4dGKpeFoNbBmAZCBQq1b0vc3irDAyp7YEvzopU
	Tuqso2IB4RodOgKdhk1W0EHPQt8poVeqLgH6eSdIufYMVN7KJ4yvudRXUiYfn4szx2XAiTiL4uhL6
	p1mkg2ZmfK8p+TPkIcJc1Xv1CdWklpQiNcebWavjwrNdrW5tI7Hz8WB9HPT6pez50Phz23wGQgFRQ
	y9PSAHWNo2KzncBbT6RpQq0zi5bAxRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoN26-0000aj-Ka; Fri, 19 Jul 2019 07:10:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoN1W-0000ZK-SW
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:09:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id t132so14033640pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 00:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=0LeeAyTVsmLsUpPz7KDXnnPyr4L05PS3OGLUvnsErUM=;
 b=a86lshRVZo1JvdbvlNOzh2S2zd3nIg//DqFgL+WW7L8MWBICb0TJIBvAUGRdjviCYd
 P3Ah6m1xBLXnE/VLnZg3N0YXLE+kbAjqtj5lrnkpMfi+V1ZCO95IWOmVw0uXR8R0yg80
 Z/+Mf/94dAjeVtVmNJuhK1wRAOfJGdnjkDbQlgOO0bNu4kvIJ4ggnINhXHFSV9h3TP/r
 oqA2EIOv5PyMwZHbc2hxBvkCzB4k/3BC6lr9SgVTixxwUD+H6o+819s+e0Jlk/bL/wxw
 15YyeJwQAtV79qAHZ4k5Ntr/LumYeiJfUVxZ22pv5e9BV/lrkZkO0cESNWAJMBj4Ez7s
 2d1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0LeeAyTVsmLsUpPz7KDXnnPyr4L05PS3OGLUvnsErUM=;
 b=Swm/tzfqkb+GB2PDNrGajslORGwDj0g952lkFIXDjaYSJylUToZzZJXBfysDvQxKxb
 XomkaQyVgHqtM0d8co+UhtneQR2+owkAthCWbA814ULAPJxlEgFrPHpIdfQ1s1qCA+sl
 Kgt/i42yZBJ4l9fSV8NS1pHyuc9Fox1+/dywX4gsPX6EeRlkptpSC6NlUW4tLQkzgu1b
 4rbbSt0AtCqp+dwfNYZdspsdiyHoE4IYtsKdMwQkgruBDEI17Hx7ld2znvEEMOXpntv/
 KksaF4Eksmeuck32JXFEVMWCb82/bf8+mo1NQrsBO32IGVXwwF7j2gWaS7zsYphuE3mc
 V2dA==
X-Gm-Message-State: APjAAAUewr8NSiRuLACex07cAjaWvF7GyEtuz/eqwPd8CmIMRB6nHJUC
 LG4AXU9kMCrkX5zOu0tgLyZc
X-Google-Smtp-Source: APXvYqzrr0Go2Vx0z9CClLEHsJMpXca4xfICOrN1UqAeij1rNOA6ZEyLzOT3xu7pceNkPRgvRU9bEA==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr56809775pjb.30.1563520185267; 
 Fri, 19 Jul 2019 00:09:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:730b:4a40:d09e:c7ec:fbb:1676])
 by smtp.gmail.com with ESMTPSA id
 r6sm56259346pjb.22.2019.07.19.00.09.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 00:09:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 0/3] Add support for i.MXQXP AI_ML board
Date: Fri, 19 Jul 2019 12:39:23 +0530
Message-Id: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_000946_996280_A018F3D3 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for i.MXQXP AI_ML board from Einfochips.
This board is one of the Consumer Edition boards of the 96Boards family
based on i.MX8QXP SoC from NXP/Freescale.

The initial support includes following peripherals which are tested and
known to be working:

1. Debug serial via UART2
2. uSD
3. WiFi
4. Ethernet

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/imx8-ai-ml/arrow-development-tools

Thanks,
Mani

Changes in v2:

* Incorporated review comments from Dong (small cleanups)

Manivannan Sadhasivam (3):
  dt-bindings: Add Vendor prefix for Einfochips
  dt-bindings: arm: Document i.MX8QXP AI_ML board binding
  arm64: dts: freescale: Add support for i.MX8QXP AI_ML board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
