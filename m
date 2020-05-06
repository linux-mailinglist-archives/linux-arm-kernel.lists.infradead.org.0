Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7B51C65AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 03:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+c4vUgFk0OuWdhteHo/ojz/0Jjl/Njcfahf9BiL+C10=; b=jfrep0ec0VXI1y
	oBhH/B+Lf7mT76JHVvvK1G0J0p4UfNCxho9f+WCYIt+RSUVMswEnLKzRTfr4NldoqeTHJ1wwRPnbP
	p68urgj2CeyBZQBxF13vayk8kyiLwI+/OtBh1Pv2nILGZQOrkqjkvPVIZdaxiiYDYJ7+t45lXSHDz
	sgiHXTTWKJ2LDEE5PmFDGlwlNNeokmakeBUwnkGBNWdC4/7xBP4qPB1imnTD9lqkGSYAxaypOh0wj
	8Y5vMDLj3hIbH9FFQOtvxlg+IPRM0VhSHxZnQo0c4Lmmz+7y97FMwyhfMip+2aLaulHtmrwuenc/C
	iQMBRVEx+N+SXNseFuBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW9Cj-0005zc-Qn; Wed, 06 May 2020 01:50:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW9CV-0005wF-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 01:50:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id d184so215393pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 18:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=1+7m7tAhvZzOQDo+Ofo8Emrc7Rr9XE6tinqilLe5oyM=;
 b=0XSC9DDRK1Y7yIdvilIITI1H1HObihWobe6d+WQpsz2hzLcJsoMGzEY1AFZenQL4Sp
 dNPjY5nWenufMfT2/m1r/KBpqCMdpG0fFKt1BnZuKj5uCobfSWAZZHo2ju8w6SwBSsSY
 wjQ6eQHyMXj0JIildRYvhy/2K+wslrsjEpb8qDB12v4syYWH/O1EUA4YmmbS9Cv9dGHX
 /g24rvDq09D2HzPos8gtAvqQDuQ9d16S7NrxcmJVOZD0k3pS9I+QvSGURhOMijBJ4YuX
 124ZGMBSFNrSOHsi0Y27Wu0RrAfXXQjxokD53kSXg5S23rVIHug4t2+TWnkMwgakvoi3
 U7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=1+7m7tAhvZzOQDo+Ofo8Emrc7Rr9XE6tinqilLe5oyM=;
 b=F6BFWaFcnwZP3TN7sc0YgTv/d3WVs/3+z1UiHWkppsIzPU3TYzLQT7Ax1w5qBjv/lH
 f7tskLS/GxHxb573lHKHc6N1g9HSVbFcsuAYNcrUCFzsb5nTgN5tZTIy8wpxj3V7JpVG
 XlC78/MFGq24/BjF08pzOy7vu1owaVfHb6Bnw8oZQIXstSKTkU2rJHjmTN0qzz/BBbpH
 2JlhNbjV1qDn1B2yuS+1JlXjPh/qO6/C+FmrX6WpLto3GLJcb0vfLDnR9Zhu02aRruqM
 oUzWbrBVt7Aos19jfO3zLvbN1o3MgU3VHOsQ45xd0m0Hfsl0HOSPwugg+GS8bcw96Iwk
 KZYg==
X-Gm-Message-State: AGi0PubhtcY0tZh6gxH7y5OZeBBKWJV3tp+OyXXcIU6NJMPm+0EgTgd5
 J8WRjK4nm+9s6ue0vxCWhyKC2w==
X-Google-Smtp-Source: APiQypKeKqkPPHzxg4xZw8Aat2rurpySEoX6pQy5xZ0h/YUeP8GVupBzRsSjN1OIAURFLGQRDgcBrQ==
X-Received: by 2002:a63:7c4:: with SMTP id 187mr5363076pgh.59.1588729819308;
 Tue, 05 May 2020 18:50:19 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id z28sm137965pfr.3.2020.05.05.18.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 18:50:18 -0700 (PDT)
Message-ID: <5eb217da.1c69fb81.34db.0acf@mx.google.com>
Date: Tue, 05 May 2020 18:50:18 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc4-77-g5afd75ffb0b1
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 24 runs,
 0 regressions (v5.7-rc4-77-g5afd75ffb0b1)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_185019_943504_9ECB0F49 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

arm64/for-kernelci baseline: 24 runs, 0 regressions (v5.7-rc4-77-g5afd75ffb0b1)

Test results summary
--------------------

run | platform                     | arch  | lab          | compiler | defconfig | results
----+------------------------------+-------+--------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
7   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
8   | meson-g12b-odroid-n2         | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
9   | meson-gxbb-p200              | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s805x-p241         | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905d-p230         | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
14  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
15  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
16  | meson-gxm-q200               | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
17  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
18  | meson-sm1-sei610             | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
20  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
21  | rk3328-rock64                | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
23  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    
24  | sun50i-h6-pine-h64           | arm64 | lab-baylibre | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc4-77-g5afd75ffb0b1
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      5afd75ffb0b15f0a6845c02ba1073e155897cd06 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
