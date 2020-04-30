Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3F21BF9EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8SZyNwZqg1TmyWhb77/sFf9jowbCBlctIhj4tcL/j/o=; b=aMYth0iCjE8jJH
	1NRt7LhpY53yOs6OjWJECGtcgb5+3koo+6gGPGRz0kUEceZzCAHFmJLGSud6uhHkb8ykAvjWLTrTK
	8I70fWpJk+eBbxJsBNznCTYhhxvpwDyyCsT9T9XeuzjK8n4CrNJZSrncuaZWXgbEj1L/OUonQlXjB
	gXbF0JrtDTBaJhBEHKJCFwhM7V51hpXR3E/menWUvk3b5AbFUXjbZHWpurDhrQTrgrk1D5SSTbAEh
	V3AFARpuDUbJsVEZWtFOjK4htGHO6d4HDnZ8x7psLFn1H9v3u4BjuCFj8fWlbAieZm4QoEixmYJ4U
	8ADkrdz6xL6dqTJ34y8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9Z9-00053B-C7; Thu, 30 Apr 2020 13:49:27 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9Yj-0004uc-4p
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:49:08 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d184so2902754pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=S7j7yJSDMVWfWOigD4borMwZDM/OBHTlnM1gh3Z7erw=;
 b=Sr8PlZmWzlqu2sy3c+k1Pw7TPrEFCjC/T9aBK6aCJdd6pGI1e7wIX0KrQOSAZasIK6
 fZ/7rOR297KgR3mteh4M5AmTbRdIRxbk6PeK0DfrqjcXWX4lBR+J8/jEHf5H8cg8mqzS
 qnmjguXydHXwmKjR9ItFxMwTEwnKYuyPGeAWGQmo/IFoU90aBwMxJLCmTti19J1EOXRQ
 9remQU5lL6OHFdb822HvveUcNVyfQishHHptaHAqaS+XSfZToFTBoEQYNzFzGqkIqdu/
 73UR7XVbqrmgDoN9BfEjospmZGUzpAGDlf/XmQpXwbuXSMKYX2WM/k6ykO5AvM4fXYWk
 tIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=S7j7yJSDMVWfWOigD4borMwZDM/OBHTlnM1gh3Z7erw=;
 b=UFN8kCdQrTuqQVpJ7YB6URDgzr91XVOFZSczutvMonKQCp9EorfCMja4IeNwJsCuFj
 XabFvEDZ5bFS6Y6xNjbnZW5S5qISHL4Esv1RM1o/Ys40SbQJcoDEJEaohkjxxOPJmir9
 +AXLuvdKuU1f6j08Nmc0VlJmGqEj1+jQWbp2ukZx9dw+8YpXc6BpKUQ+nhQw5yekav5p
 i/r15kQqvOMoLK2Xtr1LGogdbMqdEE9UcVub0s36HAMCYgMA1I4Xwn2ikaROsPY40U+G
 9IThYMAjD5wHabQqg1PLZZZXY0eVof4aoub+VsYBm+k5uI3KTtRYrEjC4jMs1o4OajB0
 pnuw==
X-Gm-Message-State: AGi0PuaD2SeE+40/D7C2Br6mXgcpMiuN0qo8aKG6HjvbNJxDCODFryCX
 1UgCridEwBlr3xYb8n8TqdpQuw==
X-Google-Smtp-Source: APiQypL+10tlVEilXIpNDveO7iUE0bjfW6ErU0MY4GGfprMDlJWgK044jXu6dMqLxQVaA8+pNwrWCw==
X-Received: by 2002:a63:c70e:: with SMTP id n14mr3302236pgg.249.1588254539550; 
 Thu, 30 Apr 2020 06:48:59 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id f13sm30933pgr.14.2020.04.30.06.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 06:48:58 -0700 (PDT)
Message-ID: <5eaad74a.1c69fb81.e7d12.0163@mx.google.com>
Date: Thu, 30 Apr 2020 06:48:58 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc3-49-gaf3701612ccd
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 28 runs,
 0 regressions (v5.7-rc3-49-gaf3701612ccd)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_064901_269308_162242EF 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
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

arm64/for-kernelci baseline: 28 runs, 0 regressions (v5.7-rc3-49-gaf3701612ccd)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905d-p230         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
21  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
23  | rk3328-rock64                | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
24  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  
25  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
26  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
27  | sun50i-h6-pine-h64           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
28  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc3-49-gaf3701612ccd
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      af3701612ccd7308e2f040e9c9bf842c9fb69084 


Test Failures
-------------
                                                                       

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
24  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  

  Results:     85 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc3-49-gaf3701612ccd/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc3-49-gaf3701612ccd/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-9-g25091c539382/arm64/baseline/rootfs.cpio.gz     

  bootrr - 84 tests: 81  PASS, 3 FAIL, 0 SKIP
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
