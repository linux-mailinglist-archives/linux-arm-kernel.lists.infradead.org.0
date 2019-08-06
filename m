Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F6082F14
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PI3gXDdZCWz54PPRSoIyNgDTpW5wOP51XYicZfYmsE8=; b=rs2xRoX4lrCvfs
	g9tuxAUgZSr7wSfJm6EGPTyFAm80ZeAuBcgJO89vVPfrL/w9TBihTlXxfvfTDfUYAn8kRQfRdMvwp
	YhUodNr3LlbfCsto76dZwH5pKQc6VlBuXKCMj7xF9FL2G9jnxoaikZtH3G6b+aY0VeM9oYWc0l09p
	aDjlfYX0B5g6tbUlJfp2kja2H4Qz45lsocP6LM11SXqCE+HtwxZ22rGRsX1PSglcmCdrTcHgttWju
	7FmPd+EOPzXa4SZcr09zeWuGToarfYLBVB8fo0EdQGA4Y4WBEOWFL9dhCW7mS+zyPjsX1B/6iSAb+
	Q6OCFqcMetEtMPuszOBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huw7E-0007a0-0a; Tue, 06 Aug 2019 09:50:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huw71-0007ZC-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:50:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so77544917wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 02:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR9AZT/YDTInU9+YBz6pXMm816wSfM4wzlR1DgdPSTo=;
 b=01D8s1Q83HQIaEzHNLAeEGXDLx5exn9je9X3eFRcKcfmSUdFximps8ev0hxN7OHFo3
 NG2fT8+GrUXx4No4yvM9qZ5X+CzImJSWFodIsWDDdy9t1b+YpY5cWQOy5bmoe4glLzrn
 5dt8WSAI/aQMHTJ8oS5zoICASi/RGhMGymuQ1ltqkIGVwUXLZ1N9iypI5sbFNc4K2Sh2
 oE/mTUt2gMhH+/VRGWAWfDRk2J2Dd+VjkFs4bvZgbkoVT9PedkARa4WrmgN0fc2SvZ4O
 r8Hg35fr+HDLcWJ2ARsQlnkmcTFQVCSbNGTS0W/YkAZlU240sWrYOxh+hNM5ZE1E1J6j
 kySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR9AZT/YDTInU9+YBz6pXMm816wSfM4wzlR1DgdPSTo=;
 b=P5pHE6OUvTJ+B1KcLDoYNBOPJA0F66g+Ni4/x2Zn+zirdI2Xt/v+g2Ht2H1KuYo+mG
 WZ2E4rPCO3rG7CnDAM6XxRtG7q3tCIxU24wqtTBgYa5uk7cvps1dYjwsKswrXYK+AkuV
 SR1GTrsAAZebRDPO7udEP0uyg5iCl0LjH+AS9w1c+IGhipVLT8xMh5yak7/z3v8Cy7+A
 StGlTDL2nteAsKlytPnju3NN0bYEfWo/NkynKXX95jNLTT51efNGFTnOWsrYiox5Q2SZ
 c3X3fBXBBf1GdyGYslftF7aGNlTzvlvJlb0NTmVBtqxaIhXzuCYdtaZ+uu41zgo2eR4l
 wFUg==
X-Gm-Message-State: APjAAAVU0OxS93CbuXvi8kqhbL63OIXSNWXKTYbzUxDsj+DB7gHgPeMe
 WZzI9BSKzTU466EZjzlq3u8b+w==
X-Google-Smtp-Source: APXvYqxsiIzJezgCwkrreRZ71gp/fn0cBu6In2uUwfEVFYSgvXVBLB7sp+DXVqSHhsu/NHLt74v6UQ==
X-Received: by 2002:a1c:107:: with SMTP id 7mr3807202wmb.84.1565085033769;
 Tue, 06 Aug 2019 02:50:33 -0700 (PDT)
Received: from radium.local ([2a01:e34:ecba:5540:2c05:40e4:899d:aef0])
 by smtp.gmail.com with ESMTPSA id p18sm91017343wrm.16.2019.08.06.02.50.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 02:50:33 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: rjw@rjwysocki.net,
	viresh.kumar@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH] cpufreq: mediatek-cpufreq: Add compatible for MT8516
Date: Tue,  6 Aug 2019 11:50:29 +0200
Message-Id: <20190806095029.4758-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_025035_503915_7D7BF22B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible for MT8516 in order to take advantage of the
MediaTek CPUFreq driver for Mediatek's MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/cpufreq/mediatek-cpufreq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index f14f3a85f2f7..10bc06f5dd45 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -535,6 +535,7 @@ static const struct of_device_id mtk_cpufreq_machines[] __initconst = {
 	{ .compatible = "mediatek,mt817x", },
 	{ .compatible = "mediatek,mt8173", },
 	{ .compatible = "mediatek,mt8176", },
+	{ .compatible = "mediatek,mt8516", },
 
 	{ }
 };
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
