Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3DEB2EE3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FIvuNFZBcdWwKa0/zCJcCw+LVoLpgM/TT/JPt9Tz1HQ=; b=j2y
	IcXvkRKV4aKqen7WSAOKK64rI5AGCQkGrbQO5VnNxKqyl5DKM7dPIwGtRyiGli2pEv8RSCEP5ioL9
	nTWEATfkrOdvYEOWbkhO1pneMZFqcGED6gE3bWWxvmIvkRcd3lH59cGKmReTzRgStP3lZ2ukSGvOw
	YB2QErk7Uct9PHWtPEgJMRANa8U0oy7ZU0LyE3nRENYHq/bqRGBh6fE0oAE69gSSLaUuDkBNRW6e0
	MmiLrKxgtWZ2YXQsaiyTGgHD0MBG7h3eHLgFGZbsVEq9g9Qe4UJmUvChsSZV81LxYY1RH6SujhBSQ
	BsyVqzm7CjQ0CmM8zwXoI6tHyAKsIJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9OX8-0007Ks-8V; Sun, 15 Sep 2019 07:01:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9OWX-0007K6-HW; Sun, 15 Sep 2019 07:00:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id q12so217283pff.9;
 Sun, 15 Sep 2019 00:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qTxLl5voUFSb9X26smlelj8GYPRuvUJLayWNlgtrH8I=;
 b=W6CL0NcuOOKiayvD0SZ2TQ8KNDiXRiTQoN+morrL2hU5DijtUSqNQM3zTPPdChx0j/
 c9lrCWh+xKTHyxxva/vhIr6blk0ZF4gNl8oeb4lQyJCAMSzutvtbb66WFQPn2HfYdsMk
 AeqKA36ulAIJuaFlkr0pr9FOryh9s/7wNXjtdaXl2rStcGrzQc5tWeXRmc5PSgJTryRx
 wkZr1oSCapdVN3YouuleEWUawIH6Rb3RXCMV7KRZDGbEaEtTnwsMizb827nV9Y1NCj0v
 k5QZj8DW+4x9hWs0Qn2BQo6H3+H26M6mXG+bmVw7gWsUGS4e88Ii21n0nX13wa58MBZ+
 GeGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qTxLl5voUFSb9X26smlelj8GYPRuvUJLayWNlgtrH8I=;
 b=FdW1wJK5DxCAi57u0LhpjjniguQiZXI4r+fB+UTNfmfuM1esrk9b9VLu5Ozb81kyvL
 /P22pXkAo+rnIg2jjpIki8HV4S5HMmdcsEpQfMCMBqRZy7Rn4c4gpaFxxZhudZ6aD2dF
 sBrYx6zB7wQT5zj6YoFeHvfuWPMsVWvTWwXKgaawftXchmAI9BxQipZFNrR3BifFjvhz
 B0xH/H3EXct0EmaNh8rHbSCZzlKYXVG8jtS3CgoADDQlC6GhxO6MNfryVOoFgN//yzED
 UDzZFwblTe3AzVaFVbrZ3KxsSna91wavWvAOCGLs7oZfzOx+e0565kdrvpUFMl6ZgYqF
 zBJQ==
X-Gm-Message-State: APjAAAXXe/TR5KRhyW7S9FCHIf9Bi1hTH9VgwP+W6gIm4lLO3yaXLbK6
 NacdDIdGBqlCPJXmMtUp9bE=
X-Google-Smtp-Source: APXvYqzDLofZo0Q9BogI7k5yAM89atbsKPZgSNVhbxB/0fbNPWM4aT0+glaa5BRRGORfoywzP7hEIw==
X-Received: by 2002:a63:5222:: with SMTP id g34mr16131609pgb.405.1568530836882; 
 Sun, 15 Sep 2019 00:00:36 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id 197sm16699453pge.39.2019.09.15.00.00.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:00:35 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: dan.j.williams@intel.com, vkoul@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org, agross@kernel.org, sean.wang@mediatek.com,
 matthias.bgg@gmail.com, maxime.ripard@bootlin.com, wens@csie.org,
 lars@metafoo.de, afaerber@suse.de, manivannan.sadhasivam@linaro.org
Subject: [PATCH 0/9] added helper macros to remove duplicate code from probe
 functions of the platform drivers
Date: Sun, 15 Sep 2019 12:30:03 +0530
Message-Id: <20190915070003.21260-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_000041_924140_795E72C3 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 satendrasingh.thakur@hcl.com, dmaengine@vger.kernel.org,
 Satendra Singh Thakur <sst2005@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. For most of the platform drivers's probe include following steps

-memory allocation for driver's private structure
-getting io resources
-io remapping resources
-getting irq number
-registering irq
-setting driver's private data
-getting clock
-preparing and enabling clock

2. We have defined a set of macros to combine some or all of
the above mentioned steps. This will remove redundant/duplicate
code in drivers' probe functions of platform drivers.

devm_platform_probe_helper(pdev, priv, clk_name);
devm_platform_probe_helper_clk(pdev, priv, clk_name);
devm_platform_probe_helper_irq(pdev, priv, clk_name,
irq_hndlr, irq_flags, irq_name, irq_devid);
devm_platform_probe_helper_all(pdev, priv, clk_name,
irq_hndlr, irq_flags, irq_name, irq_devid);
devm_platform_probe_helper_all_data(pdev, priv, clk_name,
irq_hndlr, irq_flags, irq_name, irq_devid);

3. Code is made devres compatible (wherever required)
The functions: clk_get, request_irq, kzalloc, platform_get_resource
are replaced with their devm_* counterparts.

4. Few bugs are also fixed.

Satendra Singh Thakur (9):
  probe/dma : added helper macros to remove redundant/duplicate code
    from probe functions of the dma controller drivers
  probe/dma/jz4740: removed redundant code from jz4740 dma controller's 
       probe function
  probe/dma/zx: removed redundant code from zx dma controller's probe
    function
  probe/dma/qcom-bam: removed redundant code from qcom bam dma
    controller's probe function
  probe/dma/mtk-hs: removed redundant code from mediatek hs dma
    controller's probe function
  probe/dma/sun6i: removed redundant code from sun6i dma controller's
    probe function
  probe/dma/sun4i: removed redundant code from sun4i dma controller's
    probe function
  probe/dma/axi: removed redundant code from axi dma controller's probe
    function
  probe/dma/owl: removed redundant code from owl dma controller's probe
    function

 drivers/dma/dma-axi-dmac.c       |  28 ++---
 drivers/dma/dma-jz4740.c         |  33 +++---
 drivers/dma/mediatek/mtk-hsdma.c |  38 +++----
 drivers/dma/owl-dma.c            |  29 ++---
 drivers/dma/qcom/bam_dma.c       |  71 +++++-------
 drivers/dma/sun4i-dma.c          |  30 ++----
 drivers/dma/sun6i-dma.c          |  30 ++----
 drivers/dma/zx_dma.c             |  35 ++----
 include/linux/probe-helper.h     | 179 +++++++++++++++++++++++++++++++
 9 files changed, 280 insertions(+), 193 deletions(-)
 create mode 100644 include/linux/probe-helper.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
