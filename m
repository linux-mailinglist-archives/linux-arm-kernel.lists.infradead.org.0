Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFC41E7A3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 12:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MCYuwFD5rOonYydj15V22CwG6ma7s22w+ZejoCCgVvM=; b=MRiH6FDIJ5wH4O
	s2JeXiWP+7fYGENmt5BPhdl0TA2BcQWnVycz11ShKsTj/Mr2HkXIs/yqIZz2fjgIKqHHbSN8W2pec
	n+JDBs4nUIwzaBMwjQ3mUMZmrLBpLs7StLwu6Dwb0hxtzgvu/C2rI15H3uIbim7R0MFsz3zQmPMRy
	yyZB5kzYXTJbItNDrEMoEqWobEVWJpEhWQxZ+ODdmVtUNjmo8T45uqTYxfMADJDi5Ff1acJr2wQBh
	ZDe1Uj8Otahpbc3vnNqcHWLQ4FXaB5VuW+ko13b5KKyeGGogDuIiGK5HmW3BjQajqcuTVurI7ZG8W
	M07g6WS/1pQKbNTTcsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec20-0006XD-VB; Fri, 29 May 2020 10:14:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec1d-0006LG-36
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 10:14:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so963853plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 03:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=+jQEgzEfe2F3/ZJF6I7g1U2FYFpMP9pijnty7dDfZTQ=;
 b=eN1HJwDD+SrbEmVjDZLLhHGctf3PKHdwq55vgsXyjbXWOEPrlFrFCqCkfGRhfSvQx7
 z5HyG/Ljxd8AahkpSTUYAAyxaRzNQySIe5jUg0SiRomMIUSBXnOmskL4t81fGC/WjVFz
 rO/z8sUIF2I0OAihKJVyBwmnRaPsk7v9P/eBhAnFSyKCWdQhOtOK3XTwIJGcyf8sHo/u
 uUYC4Jy0001GYzzIUmb8QjfHJxaou27LBLxY1Q3NLUci3b7LI5zDPm+/otRs1XQ9dxB8
 GHVo3W9CKejsTDfYnF5V2UvxvrU0gjt4xCPKSAiVg7EJYarTvmMLd8ATRJXIYlBWIETM
 UsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=+jQEgzEfe2F3/ZJF6I7g1U2FYFpMP9pijnty7dDfZTQ=;
 b=Iqz0mFvMcdQ2VzF786iX5kTS5iKh1UGFhhSklHDKOpy5uZLyA7NgG3AHnnd167LNlo
 Lak/MXRS8/nBEQUHDv+hm/bSEuvHT5bdCvLyOF/Vm17q6TGW94ENUMnCAnjNeZtBsZgN
 ShXbhjQi5DiCiDZcr08NRNlzlpphAdUT5YWh4I7BvVod2UzjQkUZoBiPBhdqKTzrqm3D
 Eg69dOGQEn3WnfDFkoc59/VdqNQbDgQQC5tPhp4/jD/RkfBPSZj/kjfGiHElk0vEG21b
 sPhq/VmjHR65PDryDoK8J3Xzs+bd970UtMn2DFtKMg2SjxbuM2CotMsFsRkkcmeQNPu4
 yyxw==
X-Gm-Message-State: AOAM533V8iFJCuOsFszLzUYTVCxQlN9jvwoqg2KXebR065Yy+45UMmBC
 drk37MCs0ptJa5el2Ytd8yoCDp4VzrA=
X-Google-Smtp-Source: ABdhPJw9DVpycbZLPG0FEy9xpzOu5UOm8tGWZFqOL+Env5sAre7UtcmybbgtjM505UgCKILD7BCgnQ==
X-Received: by 2002:a17:90a:dc10:: with SMTP id
 i16mr8599626pjv.137.1590747244637; 
 Fri, 29 May 2020 03:14:04 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id o21sm997114pfp.12.2020.05.29.03.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 03:14:03 -0700 (PDT)
Message-ID: <5ed0e06b.1c69fb81.e14d1.33c0@mx.google.com>
Date: Fri, 29 May 2020 03:14:03 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.7-rc7-156-g46909976c59d
Subject: arm64/for-kernelci baseline: 24 runs,
 2 regressions (v5.7-rc7-156-g46909976c59d)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031405_141900_901C3859 
X-CRM114-Status: UNSURE (   3.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

arm64/for-kernelci baseline: 24 runs, 2 regressions (v5.7-rc7-156-g46909976c59d)

Regressions Summary
-------------------

platform                     | arch  | lab          | compiler | defconfig | results
-----------------------------+-------+--------------+----------+-----------+--------
bcm2837-rpi-3-b              | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    
meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:  https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.7-rc7-156-g46909976c59d/plan/baseline/

  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc7-156-g46909976c59d
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      46909976c59d6f251cede6280611aac5b6813867 


Test Regressions
---------------- 


platform                     | arch  | lab          | compiler | defconfig | results
-----------------------------+-------+--------------+----------+-----------+--------
bcm2837-rpi-3-b              | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:     https://kernelci.org/test/plan/id/5ed0d69e283f18e1e01dba70

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc7-156-g46909976c59d/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc7-156-g46909976c59d/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz 

  * baseline.dmesg.crit: https://kernelci.org/test/case/id/5ed0d69e283f18e1e01dba73
      new failure (last pass: v5.7-rc6-152-gf4582661223d)
      3 lines 


platform                     | arch  | lab          | compiler | defconfig | results
-----------------------------+-------+--------------+----------+-----------+--------
meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:     https://kernelci.org/test/plan/id/5ed0d880a257a2135c1dba73

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc7-156-g46909976c59d/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc7-156-g46909976c59d/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz 

  * baseline.dmesg.emerg: https://kernelci.org/test/case/id/5ed0d880a257a2135c1dba78
      new failure (last pass: v5.7-rc6-124-g96bc42ff0a82)
      2 lines  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
