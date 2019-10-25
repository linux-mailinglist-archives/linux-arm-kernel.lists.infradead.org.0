Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB7BE52F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dDGJ6iasEitn2AjEq4vUK07M+XlhqMB6mRIhVLvW2c4=; b=NrQ
	J0cDz6RfGGk86RgkTDvb3kptKpMtdM4zmW9m8/HTFzklLe8MSOgXrr26T6NvVJPPCpkZoDe0rQ6x3
	hK0yZEPwLbzFLNuZZ70Vx8Yc7OyYlKFKjEZOD2R58HX6/5zaJb+BZ0Q+McUzeNBPChU4mSq0yxwQK
	KQMTK2SPvX4RGiiRSIMTFtN/LwMxr3w4BpG5zJqCyRBxBWTztjnvMaXLvKn0qk2w4iCbRc2lGoeCF
	iF2aDEcP31gnjLO28XM6IgelBjxLNBjCQ4KKpp/ae1WAwK2ghHxC8np1hFen82cW9DNl9AMyVv+bU
	CkOmHSo7YVzPt7dXzd6yjsN6hDvTqwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3vd-00011F-3a; Fri, 25 Oct 2019 18:03:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3ru-0004vJ-Rs
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:59:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id v19so2076061pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=unR/WpfWQtLnGQnVJ3by74evvy2oa+5Uab8WgXeyAOE=;
 b=UJvxtYwH9CGFkhirLQqu+rJtutpY1tWkr0flVmuS0Babg4DFzpDp05K3KnQ8twaZiN
 +BBYOmr2jN1sMSIL9K0URLOOLTXtEJXXAx0biRbmUzyhYd3CyxSUYDiR/PbetdFM8KbG
 mJlwQavQlCGDYNmm5n+WNQH6sO0aZl/kw20fL+xByx0qsQ4zJRb7SuQSmLLWDGMqH8mN
 J4v5YTQ3TLHFTfmECzZ+VlH+pIZ7dKUz6nPePhGYW23nReE4ncBLxC/Ry0cxRr5VRuv2
 a8i+EbPkU2FT2pWcT3Sjy6n0fPdS8JIJ7sibUjGKyYafF9SE1KXbPrBu04RSfjW6RFD4
 A/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=unR/WpfWQtLnGQnVJ3by74evvy2oa+5Uab8WgXeyAOE=;
 b=kcCEgyyk2GNnh/KuofpklPgjRqjmlj/VnPcgT6LFY9Hctkhb0RDTJUpvPefcGlZn24
 2oWi5ltQDy69/gMqfWhfe6ebFgtQjylKThMiBE99g2Dc0kn6jgpB5pUd3IzQaSUzhUzL
 iYeeHofMAdMjolYpBI1c+J2B2bOlk2KCxDCJSKG0sdvjOAfg7OLG+apsZbcNpNmVhfuU
 t32u6rwAS/XevtmAQI+2ckeRFT9zsMYM15nNFSr5WI9MMc5eXF6ivDKiJbfTFeMdbOLr
 NFo9+bZCgEBi+b/86pZnNQwhm1nVXqyOiVy8O1eMQBal0gACK4Q4auh40Gaga6pdMJCo
 pyOg==
X-Gm-Message-State: APjAAAXPUPkbSVPQw8VLMmotR39iBR3yRs6D0BTs7DR0wtxUy54Y6vqJ
 aB3yeXhloF8Q6hBdz5kSAflU
X-Google-Smtp-Source: APXvYqwqGQ38V7Ub8lavu+bHjXLvP5YFKQZgt51D74jM8Myzon3TzVpmB6KO12QNI/CECFGWcyO9+g==
X-Received: by 2002:a65:464b:: with SMTP id k11mr6073160pgr.263.1572026361779; 
 Fri, 25 Oct 2019 10:59:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7108:7f86:4131:5b00:9fc5:5eaa])
 by smtp.gmail.com with ESMTPSA id r13sm3430303pfg.3.2019.10.25.10.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:59:21 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v3 0/2] Add IMX296 CMOS image sensor support
Date: Fri, 25 Oct 2019 23:29:06 +0530
Message-Id: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105923_093360_BA50137F 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for IMX296 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. The sensor is
capable of outputting frames in CSI2 format (1 Lane). In the case
of sensor resolution, driver only supports 1440x1088 at 30 FPS.

The driver has been validated using Framos IMX296 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v3:

* Fixed the reference to video-interfaces.txt in binding.

Changes in v2:

* Switched to YAML binding

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
  media: i2c: Add IMX296 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx296.yaml |  98 +++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx296.c                    | 733 ++++++++++++++++++
 5 files changed, 851 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
 create mode 100644 drivers/media/i2c/imx296.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
