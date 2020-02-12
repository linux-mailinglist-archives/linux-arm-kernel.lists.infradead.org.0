Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B15315AAD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N2SF60200uxzpd2YoNDP5pbPcwP+0VDFLuS8KwSCRgg=; b=kd7mrUjU8GvD9x
	gaziqN0b82pukuBX5lquAgnF+TdOIeucAu8cvvU8Mp4BmpVGL58kchVgms+rWAFGirb9eQE8FHlRM
	Gl4xfTfE8bsfgu/4vw71LmNDTqNGF/crqQzNq9EA0+fZOgRxqOMzlpXx13+EKXyztwTcH1jsBne5T
	5kNmW2j6iKlVWnFpKlwh6cBVHsmATaLwk5xrgzbIwZn5KK6wTwJAMcABwHwGArgxaThTpLPIYWcl/
	M0Y9OtWNKe+zb36vbQxZ/YuCxTsWe4/FC/cODKqQLEIIhuX8N8VPLKJSXK+1qnrMwnJvEHb9/Skos
	cFKFz7ZF/qy8obySMHZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1spL-0004cC-AU; Wed, 12 Feb 2020 14:17:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1spE-0004bl-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:17:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id m10so4806616wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 06:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LwGwjsE161QKaZxxfEh4p9giXbnfmZYI+gQ4RyZqzRM=;
 b=xpJQ2n7iz3OLop+srmqVp2xSid1hQiWJDRkGordH3NJI4gVP8vUI2quU2a6zuNQSYa
 t4Z1/XOYIoSsMaBXCv2IijvHQUQJPKZ9kVXYnT9XLAUMP35zDq4hg3782+qQ0/CawA6/
 p4GQxTXeGQ2+A8PSpFLlQEvjvaHxCwj3gRbSvcGSEAmQALt3RduFAYJA8Y+wJS4Bl4qp
 ipvNXtNbEw0f5/VQsmyE5rcooarTlpfk0RCLk283wzNsOTX+wis4pkhoWL6YLLuxc5ro
 HxA7GVpdisDLuGREK0xGlPhrhq+l3+4wdvsy4acQTHRyvg29vO2vRiq2HswKiKS3AAKw
 UYIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=LwGwjsE161QKaZxxfEh4p9giXbnfmZYI+gQ4RyZqzRM=;
 b=j7pSuXw+f0lBlWw1psYwlMe/3n3RyQF1VngTPtoc13yweAdP49TcZVngkX8zTF8hFb
 ygDmgps9Tn54ryduzgSqohrqaptf15i37AK4EsUfG6AuqK6HI06hdcF0W0lrMEbtnisH
 SJGlEZN4J3Oab1dDkDEsxeAp62KSoxNB43OaxCkiurUYAmf2q211fmsAHHDt3FgMyK4X
 VwnS5OyzzmobcWmx4iD68EUbpgV4OsSuQ3SHn32pZBVmxYSkH/ak5Q+e4aoiCq/+ohWC
 LbJL0Xj0l3pG1Jqs57CwcbXXV1ja4Ka2PqA3/8uBWTqCi9TnpqfSbK2tDmmGRAIuMdYV
 zOQg==
X-Gm-Message-State: APjAAAX5ufSOdAqpIHN06nlmoV4cqF/sLMPXTrWshITn5Nxf8EBwirrm
 6UzcjgGBKyPvLKaimwkMkIq4sQ==
X-Google-Smtp-Source: APXvYqy5MQ0xJFtURF5infE1DyoAcLJYC9xHBVxAmBgueHqbGr4Q/KMtujLl9eu7440cf5BIeiY7qg==
X-Received: by 2002:a1c:1d13:: with SMTP id d19mr6708371wmd.163.1581517030745; 
 Wed, 12 Feb 2020 06:17:10 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id h2sm826355wrt.45.2020.02.12.06.17.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 06:17:09 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH] fpga: zynq: Remove clk_get error message for probe defer
Date: Wed, 12 Feb 2020 15:17:08 +0100
Message-Id: <0060e55f0b8d3a57e129d7eb096267cc96eae846.1581517026.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_061712_967915_9E042F90 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Moritz Fischer <mdf@kernel.org>, linux-fpga@vger.kernel.org,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

In probe, the driver checks for devm_clk_get return and print error
message in the failing case. However for -EPROBE_DEFER this message is
confusing so avoid it.

The similar change was done also by commit 28910cee898c
("fpga: xilinx-pr-decoupler: Remove clk_get error message for probe defer")

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/fpga/zynq-fpga.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/fpga/zynq-fpga.c b/drivers/fpga/zynq-fpga.c
index ee7765049607..07fa8d9ec675 100644
--- a/drivers/fpga/zynq-fpga.c
+++ b/drivers/fpga/zynq-fpga.c
@@ -583,7 +583,8 @@ static int zynq_fpga_probe(struct platform_device *pdev)
 
 	priv->clk = devm_clk_get(dev, "ref_clk");
 	if (IS_ERR(priv->clk)) {
-		dev_err(dev, "input clock not found\n");
+		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
+			dev_err(dev, "input clock not found\n");
 		return PTR_ERR(priv->clk);
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
