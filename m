Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB72134EBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:19:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=on0hH9kyFoAclzLWsuFJaX2hBiHgxNVX5OecTTLctV4=; b=YKGs656rMORcwL
	CA9qvtgeMLuk8S+U/a0a6WLLLI0OXp47XRlktXOnkxWuT49QXWotiyKyhSOSWJeyHQeeWV8zE6mhn
	Yqapxz/cfip6MPidIm039Yr3mw1iiiRax7qvJkl8TWU4lkfAJ5z2Fqd1y2BQ4K8nUJFWAokzOG6xu
	jCrZ3NJ3Pc6roRuJSF8Sze1zBt4ZCVdB5bic6TDG4Zj1LIfdPa3Q6jHt6xfl8f29eOKfdpCBdC0+k
	lhpmv22ATzuOpk/5+6cja1qVXmQuP/BTtYZcX8Nak+CuG985YqNG22zezZsFFB7KWju04hQyzQGl3
	TVaPSZpyOPsfD+6DW6dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIk3-0000Yr-Ld; Wed, 08 Jan 2020 21:19:51 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIjg-0000IU-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:19:30 +0000
Received: by mail-wr1-x432.google.com with SMTP id c9so4977311wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 13:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=lU4vTdbJz+fKcZLPt3rNSIOi7i7yPhlTb7YsoilpxS4=;
 b=pkq1kw7IMw40tZjf9aDF+9ZuN76S9CC/x/iCfQBI4SczpLAlMhegGyss61g6M8BXzW
 FwPyYSVaQS19VaTF2t0gt9K2YImD3i1gkEF7VXRjh31kofm1FGpcp4dcylpjBMH0F+Aq
 XDfpeN3s7IGO3E8St+npQW/JiMQX7caPtDWqy7vhpwavuEP43pgkhr24KEKU0Ge1wd6C
 Ne83gIBo9EY83bJDikCmKrY3AEWd5TlsGFdzpleHsjChGC3/zr3F20MaCkrOejEfsyjN
 yWxTXdhQW+wMcWSltTfatoqkCahHK53NUcIVrr33uJJl+eANxqbmWZzEvcJl2bccdrdi
 HAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=lU4vTdbJz+fKcZLPt3rNSIOi7i7yPhlTb7YsoilpxS4=;
 b=fA/PUh5YGKoUXEXq1o7yMeAgapc6Spw7b+K/vPye+tNinUS9zOgIHsFPmJsxFEcJqO
 erZMIU/j5zsA+Saw2+AbQghWYRyuLCF6EnE99UW2m/t/nMURhzajYbcfc0SJOPPGv5fb
 K1zuYfQSpzZM0a7WpPPGXoKW23/U4BBRG4WteAyvHRXAq35Sxv7p+UWFqUsJN7s2YXkc
 amINL2I+mBlWx5mY795STxDbNOOzh8aeCTdevK+jn04YDPtJjGDs7XrqPF6t8ffdCwbv
 +qZlraZPP2Xgl1p+Exwp9hERyiGUkeJFJL0nkKlZasawWCsoSrTJCSVCqA4M7itVLg3h
 NPuQ==
X-Gm-Message-State: APjAAAVENhQvk1GjV8jkv2J7adnTMePwih1LfwXIPNPQ4e9px14VV11K
 1d+QeGVmXml8/pC/VmpUsfHnKw==
X-Google-Smtp-Source: APXvYqwUk92EIJUKg9cB/6tcbS/wXU9+JIsgb+1/7de4iog5vz0qKT0mhsNL0Wwka2EX4E0haJpKWA==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr7105519wrs.213.1578518364214; 
 Wed, 08 Jan 2020 13:19:24 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id x10sm6150571wrp.58.2020.01.08.13.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 13:19:23 -0800 (PST)
Message-ID: <5e16475b.1c69fb81.a461a.df49@mx.google.com>
Date: Wed, 08 Jan 2020 13:19:23 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Kernel: v5.5-rc5-28-gaef73191765a
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci baseline: 25 runs,
 4 regressions (v5.5-rc5-28-gaef73191765a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_131928_500864_16A2C871 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

arm64/for-kernelci baseline: 25 runs, 4 regressions (v5.5-rc5-28-gaef73191765a)

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
7   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s905d-p230         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
14  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
19  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
22  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  
23  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
24  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
25  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc5-28-gaef73191765a
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      aef73191765a88cadc0a627cdc070e5a0086b015 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
13  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxm-q200.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxm-q200.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.4-rc8-104-gfbaa9209b833)   
                              

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
22  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc5-28-gaef73191765a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz     

  bootrr - 78 tests: 75  PASS, 3 FAIL, 0 SKIP
    * cros-ec-sensors-accel0-probed:
        new failure (last pass: v5.4-rc8-104-gfbaa9209b833)
    * cros-ec-sensors-accel1-probed:
        new failure (last pass: v5.4-rc8-104-gfbaa9209b833)
    * cros-ec-sensors-gyro0-probed:
        new failure (last pass: v5.4-rc8-104-gfbaa9209b833)    
               

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
