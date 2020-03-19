Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1D18AA7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 02:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4cH5CmcvUedXJBtYoEBK466nQIqAboI2REfR4gd4/wo=; b=tin3WCm8+GfTS2
	dqeQmRrDkJ4oVcuchq4/D46YCrinNkQsMdpEaTvpQzOixeWiWhtkS6j41aoLLf8Og5Q0ZLSRgM+At
	x6G9bVgzaOeCmRPcSB2edyi/J51Mdmn6MklAteo4ijueXYkzz2oDtVXpzj9hm8bw9efFhfpoZ0T6S
	4lz2NaXD5I3OLnoZFRkDW3knigDmIA3/WSxll0RuejJDeP3cHGeq+eWDAUq16pXa9qKyayG9tUWci
	p4ygFz2vGZy2uQnl1Jc1ZIP8yiD5OEUgdQ1Ps52CL3Zyu3IDr51JQhgu5I1QsxfRCFx0PX6+mfPaE
	SqW33igMBNyyGkwk9k7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEkPR-0002jm-DB; Thu, 19 Mar 2020 01:55:45 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEkPB-0002fh-65
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 01:55:31 +0000
Received: by mail-pl1-x62b.google.com with SMTP id t16so319767plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 18:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=PXAKwOVrVgpcVQqVloLknYoxyK9wHulSd4qBm5SkPvs=;
 b=NLK/jUzdtPqd0WfP6K6Ci+bpbxgu/DbIJnv7ZDTzsQd1+BYEi+NriYI1Uzdf+wcSJu
 7Yrac+2BFQxCD6yEKQXWAMxwE2PZDtP78LEWyGjqdOWYwXjHHBaFfXzhgnRdx+/t9pW1
 OnTTwnH8mJVWmGBzdiV7VxUaelKRQhXcOkenwsDa9ZUlN0NLwuwx1Hl00DA39CVi34M6
 f151vwPhHYtaGIvz/+ny+7zIh0y8treEt4YSXQyoY0ouMQc35e60b6Ju7MoqLXwV3dg/
 t8jdj8NTllWbEbyx0Pv5JyUTFuipYOQ4zoqD1gqGmtlI9Q8az8oo4uSTHB8z7v8dj6nl
 yKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=PXAKwOVrVgpcVQqVloLknYoxyK9wHulSd4qBm5SkPvs=;
 b=f9H4+8T6H1Kwfbnd+ANmdo2oODc/M3m84cB6y4uyoM1j5I+3eMLqIZvXDT6z2INamZ
 YwVLm9VMzHIKgolPEv7auI7voXPdu5P3wWeG0S6E4BP4xY6EZStAZZPwPo5g53cnELQe
 vlTD8n1T/XXWocFd1Yo5o8Q5fvCt/v/X04N/5COsdCHNxaHtIqrf9G9WvYvJtL6LrFg+
 x7mosSe/jyDLT8AmialZ2xQJQ9Wta6D/AbQ3XkC+fJCB8EJe6ZIGJiKMj0n4tW4ZSeKz
 BaF+r/Y5xxebx7d0LdpX29MoeBXZnUzSjtAsl/fl/m47cQVfr8L6D6q05orAZjW6V9ps
 ai+Q==
X-Gm-Message-State: ANhLgQ3E8GYeyhgaUQ2Fr+WWLH1ziltT2JtKuGfdoAeBo0N2lXxIJfhJ
 uPoq3W2Jw37qKx5ctiuOOySLB049SSI=
X-Google-Smtp-Source: ADFU+vt2ynzyuRRV6fLbrF3N2znlli9qm1rS6mqya6ubxzMxm6EyopoOt7Y1djjhIIV80ebSUFX7Eg==
X-Received: by 2002:a17:90a:fc97:: with SMTP id
 ci23mr1219995pjb.56.1584582927864; 
 Wed, 18 Mar 2020 18:55:27 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id p8sm278109pff.26.2020.03.18.18.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 18:55:27 -0700 (PDT)
Message-ID: <5e72d10f.1c69fb81.a4149.2276@mx.google.com>
Date: Wed, 18 Mar 2020 18:55:27 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-97-g825596c5c10b
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 22 runs,
 0 regressions (v5.6-rc6-97-g825596c5c10b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_185529_264834_4B2A0FBD 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci baseline: 22 runs, 0 regressions (v5.6-rc6-97-g825596c5c10b)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
15  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
19  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
20  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
21  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
22  | sun50i-h6-pine-h64-model-b   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.6-rc6-97-g825596c5c10b
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      825596c5c10b0f4093181bdc8e7b4fbc86228743 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
