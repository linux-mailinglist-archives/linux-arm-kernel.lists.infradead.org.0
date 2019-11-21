Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C571048B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 03:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=08wNbjCZB2B9j5/j2J/fPDHpDuZS9z3dKlE7qX0t81M=; b=Kn/wxAqDbZlDvK
	YA/5ooMGRTA/RBOFCNoogtCl5k6o/8ukxyWEyzF+0cGZ1NxNXQdLsvP0KVc3AMLktnIGV3edSa5It
	UxT5TobBdG4C4dAbmkxyfVIa+PWqtte8VkJYXxcQPMcc83/LEr9zOPHOebgsqVveuv5j4a1ZuFsET
	CWYkHlnzyxByBvNTsqx4cEjV4atvi7BihLjFiHaUYQ5UpWcQp+OGQDg2yHD2DWY2+EmCZBylk0jOP
	XDOPnWUmgGHcoH1VoEbZ9n82hWqBZP9wnwd87/UL6Fkyl08D5w/I/5DxkgR8xY5e+Mp9/Zh5vcUA+
	Imikejz7ZJmHAKOzpovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXcVN-00015X-VJ; Thu, 21 Nov 2019 02:47:37 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXcV1-0000yV-B8
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 02:47:16 +0000
Received: by mail-wm1-x331.google.com with SMTP id b11so1950562wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 18:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=+6eDPzNOmUZnpKRhr82Z1Yi7FQEr5PDk4pLX2pBFhEw=;
 b=LPSjM1GB12sCMGOzEva9j9MPYic1wBTib5Xkay/LyRWbw4QKAkygMUtWsgQs9wN1zU
 gVIwMVq3NqiSkIEmbi3zWtqUgxwfBnTOXoieo7Qp0NOltvoE1EyEj2/VsNBd1vkvr5FK
 aO+RmY2Fo4aQ8SaMlAzZuPO0IAwaKsouC3mo98ysIm3rlS1cxbNdcfBW8BlMZyfKtZKn
 IgxbsXBDMS16VKvBcKscL8Sm7xe9GR8t5fratLM1O1SrsOvV+PqovC908GMnby8BDzq7
 iAPlX/m3H3WsxSeRhXg2Kz67mIiFcakrMdR4ZhOl+7LOlfy9/R91g96ASvcUzrwimvkE
 tC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=+6eDPzNOmUZnpKRhr82Z1Yi7FQEr5PDk4pLX2pBFhEw=;
 b=tuDy/M2QQg2j912hknw20mMIjgTC7jZIhOCpYpv45keCc7zQX6ER0C9uNYlfvjULzp
 v9CA/kiQpLkgJT7C2t1PHTa/0upXn/36rWkQwPf4SStmZY6YZU178/sdvtEYeRbQhoB4
 DMNXXaeXp8SC0zUAQkcOlxxynUwBAprtdzHK8/L4nakrXkQXcUyuRYLacDI0cC/7MFP9
 JHMcCgzVnUI8GCEw5i2wOeS3TWqNauE4a35/BaK6hG/xvqLrbVCi8Pl4TowPFZIB3Cps
 Mm0xbOC218H/DfKdbrb2yWqgVY2CbLI0Q47iN8o2MqebWnFdkWN4ngkjfgCx/garrvIR
 T6Ig==
X-Gm-Message-State: APjAAAUM5HERHMkymcznTEnkjUrjlyb2BcSN2AmkfITK3cxzrcKlnKbj
 n5aC2o9z/7BBbIwPik4gaN6mSw==
X-Google-Smtp-Source: APXvYqxy6rv3+CmOWKztXOHqKWyPjEXkSjUwm5BS4ldZ+yIKjj5MTA+wVT8U/gZZyas+U/zq/4Hw4Q==
X-Received: by 2002:a7b:cd92:: with SMTP id y18mr1693861wmj.52.1574304433660; 
 Wed, 20 Nov 2019 18:47:13 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id q15sm1477277wrs.91.2019.11.20.18.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 18:47:13 -0800 (PST)
Message-ID: <5dd5fab1.1c69fb81.22bb5.755e@mx.google.com>
Date: Wed, 20 Nov 2019 18:47:13 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.4-rc8-104-gfbaa9209b833
Subject: arm64/for-kernelci baseline: 26 runs,
 0 regressions (v5.4-rc8-104-gfbaa9209b833)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_184715_380794_8C6893D3 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci baseline: 26 runs, 0 regressions (v5.4-rc8-104-gfbaa9209b833)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-u200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905d-p230         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
20  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
23  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 82/82  
24  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
25  | sun50i-h6-pine-h64           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
26  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.4-rc8-104-gfbaa9209b833
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      fbaa9209b833102c942d5fa8b5b08010220d2cf4 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc8-104-gfbaa9209b833/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc8-104-gfbaa9209b833/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz       

  dmesg - 3 tests: 1  PASS, 2 FAIL, 0 SKIP
    * alert:
        never passed
        11 lines
    * emerg:
        never passed
        2 lines  
                                                                              

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
