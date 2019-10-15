Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42188D77D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 15:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8T/QE6yOwv6w1o0YyzvXi1NchPzPVo38cCRHXXrswvg=; b=dv7Vf0OPIXli65
	LL6OAyyWM8es3SV7ioCwjObZm7J/eq8zAK6pvb8yXv2wa3ORXCHkmt8Nx0dwkzWD05S/IS6SpWN4N
	N6Cw54oOfRXjmaxJsn6P3zfoB+0fNXbOKvNb74/q3/m4PNHEd28uQ9Zh/2UkvW85GX0ky4zNbEsbE
	Fm0Ybc3RUYGjbRxxPU/jaxR26uG+Xmj4/RQFfAsJtVFX7xnrpzUk1dSjgykM0MmKaVGBiQcAVWQAU
	StRdgKJUEygpdLjp5+AgkappPNEPMmpwkfe4SXHDx8Hd8SDMmwGNdh4a87LZDea/mBNoMWAuD7Wc8
	WBq/m9ypGb5DGKkte7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNMY-0003rP-8D; Tue, 15 Oct 2019 13:59:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNMQ-0003q4-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 13:59:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so12554543pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 06:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQHiqCpXSZVn47ppjdn/hXFH8fLHSyXwnH+G+uWWB+o=;
 b=PG4f7wI6q1dk3mWzLjlecyFFuvz+MvCpjU3+a7kNFzGR7+KG8pztW0pVXuGsU77+pv
 Tg8rtN7LMGYs4zKs5btLmvUm9LQLkZFr1ldniygmnAf3ZgCm9oFHL6dB761IEtafw71x
 r3p2EZl05GyvwaCibRuHibodBjLm20HnBo6IOoMtdRGvCnJioNod0RqSRazny9zmXdhC
 Uny2R0HlAZj0hbtVf7G6mF+mVYMM3XRrXP+dOS/N5qdk8e4e5Kl+fi2fD7iP3JkslAfb
 w3FCwwCDNbH/NTKTNlx57+tap11uYFOB8Lf2DKSvM/LBpQb/kx/Wf/o/vIupQc7uS0MP
 DnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQHiqCpXSZVn47ppjdn/hXFH8fLHSyXwnH+G+uWWB+o=;
 b=LMdyk3FOsqMREHh9kY7544GW8CT1TXRRediAPinvOO+xDccdqzsUtEGRMWY3idiiBJ
 6jXE/yFGLF5F4h2Fq+9/L3JdG4XZ2s6F7+swtPaIc1A9Zl/51THxmBwtJ+lytIbmqQ64
 Ku1/ZQDqzFlcDn1bq0XyAOu/eT041cBnNzkMnBiiMK5ccSQ8gbP7SvX1aODmrCwasyS0
 +0Jo1ExPMnLsjGT2YT17qA+1dImEI8D2Baa5UbH11aaesur15C9mPeCmnQXo93NSbp9b
 IHm56+q3Ej0X3mnWZoO1qwHaX+hYIwLvPcHbULWC/ftPENgZTQYSJm2Cx8U2+imjxoQM
 gXtA==
X-Gm-Message-State: APjAAAWK+3DcuTTK/JDwb6OMFVgjENHulxaYLMgm3RIACPVMCEyAu/8B
 vT/5zdAJlDx1qk2YS+/ZnpA=
X-Google-Smtp-Source: APXvYqyXWaPbhXkHRvEhA4Oc8Ytcwswmvg4C2Aw1yEvsNR9Wkx6j5txbHhxZQ54W+B9d7pRnyjZ1/g==
X-Received: by 2002:a17:90a:1617:: with SMTP id
 n23mr43135972pja.75.1571147976272; 
 Tue, 15 Oct 2019 06:59:36 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id m123sm24503127pfb.133.2019.10.15.06.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 06:59:35 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] media: imx7-mipi-csis: Add a check for devm_regulator_get
Date: Tue, 15 Oct 2019 21:59:15 +0800
Message-Id: <20191015135915.6530-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_065938_294884_D307A6B9 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_regulator_get may return an error but mipi_csis_phy_init misses
a check for it.
This may lead to problems when regulator_set_voltage uses the unchecked
pointer.
This patch adds a check for devm_regulator_get to avoid potential risk.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.

 drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..e8a6acaa969e 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
 static int mipi_csis_phy_init(struct csi_state *state)
 {
 	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
+	if (IS_ERR(state->mipi_phy_regulator))
+		return PTR_ERR(state->mipi_phy_regulator);
 
 	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
 				     1000000);
@@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	mipi_csis_phy_init(state);
+	ret = mipi_csis_phy_init(state);
+	if (ret < 0)
+		return ret;
+
 	mipi_csis_phy_reset(state);
 
 	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
