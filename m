Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C980143372
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 22:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHgXwJkwwDUXpyvB2EJZGK+mjQFzPC6uyp5SoM/NkWg=; b=lHRZBf2IhMA01R
	z7fnXCi5q5vQDZL43jdfgg7n7yMWbBgqgPKUP4R5IzGL0fmBoL+Mek9DbL52CIZRtB3bI5VUvOrDl
	cSAVzhIb+MATjjlTQOyS5zPKyd9efUvUghaoAA2+UAaKs36r08wUZuf4GQZcyoHwiRGDw9QY55T9V
	3gV8axCqD9PPJH0VAsXsUl0x/YCEP4eGX77ylxCOEcJdbmQC2CHOiQixPFEcaW7E9QL+QZnCSQSc1
	QELt8UNbbKKAS2TF2w2EJVz5E/XcZapqO6BtO2YhbOj9Pv4+gyDZW+81dk9P2RVcMjmHgz4qBBzU5
	THOrYywJ3xH38xx24SPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itelT-0006KX-TS; Mon, 20 Jan 2020 21:39:19 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itel2-000697-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 21:38:54 +0000
Received: by mail-wr1-x42f.google.com with SMTP id j42so1001796wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 13:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=JT8hpWCdvPVn85SOJW4+IIyZqiZHDIDiEewV3fD5lCw=;
 b=AUL9nkqFolsoupwgtxarM6UyVtd047HrIRlIMK1ySjVBLMnnUgLecM8obSuLqmHwIL
 eeQrR2x55vtPUpoJO7X7GaqzkZTyUfaV4BTOxtkzpT7YXT2DTkJVn5OSe/hsIB2vY0I2
 LX8WhRPz2A4zRvIzkjDnAyQBZrB2JgnFEUQw4Z0UBdMYmAvrHqiKqT7sowiHkX2pScIO
 SibYxS3muufo/EZDszq2Xpacup/amxXJd3qYvKE1y/jKOMMeGrY+Hn7vKP7SciR017vX
 IgxTwE2DMwnHDgyBlYCR4683ywbHVFAJriuPCszcKPNr36G2WeLXPHuxbBSijraNUjk7
 Wubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=JT8hpWCdvPVn85SOJW4+IIyZqiZHDIDiEewV3fD5lCw=;
 b=hlYMCiyggS2ypirFFSRV3qlp052syXHyxaW7VOJ59MdP/meeNyCCznDo5d9uPW+tEi
 h/ffme6dc22CNze9E0NalP0xMpZJWJKf2sETeBDr3FoBg65ZWDQTpwFarSefDQhtS0fw
 xeQeZugG4Kg1jDcH+kX7SCKOXadIg467LaavqYW0Sqw54VLefw6avOgEsklspv9+Q0TH
 SpPGuFxLyT37DjDD13hrd2CqL/jeBNijTc+5J6b3Tpto7oYuRqctfyYgVxh9diKfacYB
 4xq3GIOwcjJ2nwPWvOOLibqaYBdIrXIqV/WdKkrLPNskd4By7b6ZxtcgZfUw2RmyrbO4
 oyKw==
X-Gm-Message-State: APjAAAW+yLlTbO+NE7JF8ii3mjqynQrde1q43G169oURy1zqGKiTcXxk
 Pyy4P2sUfNTlIS0hzfK3oeZpCQ==
X-Google-Smtp-Source: APXvYqwAexb9CaOu2raK1HV5uipreUmp8evnAewgmE/AXCzxBQc/4CaEvnWWN5Mg7FjqrxbIUQwR3g==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr1453242wrq.196.1579556330987; 
 Mon, 20 Jan 2020 13:38:50 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id m3sm48000488wrs.53.2020.01.20.13.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 13:38:50 -0800 (PST)
Message-ID: <5e261dea.1c69fb81.52101.0a7c@mx.google.com>
Date: Mon, 20 Jan 2020 13:38:50 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc7-70-g46158a360c3a
Subject: arm64/for-kernelci baseline: 24 runs,
 0 regressions (v5.5-rc7-70-g46158a360c3a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_133852_479961_596B67B6 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

arm64/for-kernelci baseline: 24 runs, 0 regressions (v5.5-rc7-70-g46158a360c3a)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
23  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
24  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc7-70-g46158a360c3a
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      46158a360c3a354573d99b15c052116ab5f1f9eb 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-70-g46158a360c3a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-70-g46158a360c3a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz     

  dmesg - 3 tests: 1  PASS, 2 FAIL, 0 SKIP
    * alert:
        never passed
        11 lines
    * emerg:
        never passed
        2 lines    
                                                            

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-70-g46158a360c3a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-70-g46158a360c3a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz       

  bootrr - 78 tests: 75  PASS, 3 FAIL, 0 SKIP
    * cros-ec-sensors-accel0-probed:
        never passed
    * cros-ec-sensors-accel1-probed:
        never passed
    * cros-ec-sensors-gyro0-probed:
        never passed  
               

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
