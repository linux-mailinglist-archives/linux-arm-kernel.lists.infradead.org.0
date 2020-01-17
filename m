Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E4C140ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XVpsik/owfclH3HeL00PLwgmsHke1tzRNgZefl1QRuo=; b=bSI9tpnMg3AtFD
	4+7Cmq8VyPYmoJQZWs+CuToj1l+3P8a0uAQ2F4mC4ltTVL6cRYGr7c36wryu2SlP2jMl/dZrMIm4i
	pNCszuNKEOH7MYyKHhOXAvprIqXTswWvDHLQg87PJU7axtH3gPIRUxgq8ZQscghbthlwjNpKmqxfd
	Nm9c8+r3ZrMT8ABmhPgMrn2NFBZ1vsV48+lKTHqgS1sfdcqdvipeyufMo21korDAlgih6YhPtEVdH
	en6ahUW7L+Ze2Azk/7ZdFJ9EyKs6F7DdMaY2eBwasjol19tWlMOJCHkVpO+WLjuXULun3Lq2WSaaB
	8oJeyAdRjkLLhmtleUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRjU-0002sH-8r; Fri, 17 Jan 2020 13:32:16 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRj7-0002l2-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:31:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id u2so7624323wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 05:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=fly7MhhiJ7e5rfOA518aMZC1xAEWDl0ckbozYK8IUIg=;
 b=r94mZOtl3lyRgn1MCDiA/q+NnMmSv9RztimJ02Fu6kz3EcMITR0dIBYvQyBXAmqybL
 MMPJK8kC39+eDX2aSeRkC7iqJ2gGS1Cj96tpe+1wwVNfx+c294Smo+DP6QDPjWYgqgGW
 Gio/x6Y46moP4Iw3kHNgrHUBq7EquumOKSEC5Ds2Roz1vRHk6D+7NxVhareVbaBlVVq5
 PmcqLkrqaB4Ph+LofhPRqptzaramMMpv1ldcYFot1kcRTWdAWpPITi0ONW75qvlrrnqp
 Tiq5NCctx4YvvWBKDB26EPCVB1LsZXF95nkDettcggBKjFi+z16hNlRthVFEm5+j4YzP
 a2aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=fly7MhhiJ7e5rfOA518aMZC1xAEWDl0ckbozYK8IUIg=;
 b=R29yG3JKofCgGXx+BO1z1GyjIKBOn3r4pSE3YYP0XIjYHvqZgLG/+z9Be0IKJWagUL
 TKPGTZ0Qmh2SZQCLYf4Fm3wvLOA+FF3K5LOE1O7+Vl0JPwn3AOAze8gehw5Hpl/hVrsW
 w/p9PI2rnt/n8lie4dpXT7SOlGSqUXtzJIsfNJllHlt89hUzCO44HYpMnd61Z2jTBHOO
 XW/fhxPrTM7M6pucjNKncZrXj7orQVASSaPvwnXEgPBNQXpgjAAp1Jl3+kEzLGFVXBiu
 TgltBZ/h8DV0qYoaZsFVk+UMbCN8BqSoaaKZfdvCWpOkIsg3iDAOuZ5GHBPVzI4OGDhj
 3+YQ==
X-Gm-Message-State: APjAAAVybNKD/XHBM2m/nJnWG9fRKjiz2qcIiPjYXp0RccLs7aEg9CGv
 HUl6wFGGkS0uIBO3+kFyBt+iVg==
X-Google-Smtp-Source: APXvYqxM2gSL+jqUWh9u36S/MFQBi86+4KBpeNwShfv7uIILnbelAY1CaYN2F3Wvb1zXtQ+x5Ub+nA==
X-Received: by 2002:a1c:8055:: with SMTP id b82mr4627676wmd.127.1579267911885; 
 Fri, 17 Jan 2020 05:31:51 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id m7sm34293021wrr.40.2020.01.17.05.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 05:31:51 -0800 (PST)
Message-ID: <5e21b747.1c69fb81.ceb6a.d45f@mx.google.com>
Date: Fri, 17 Jan 2020 05:31:51 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc6-61-g2556a8d3927a
Subject: arm64/for-kernelci baseline: 26 runs,
 4 regressions (v5.5-rc6-61-g2556a8d3927a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_053153_615443_FE848B77 
X-CRM114-Status: UNSURE (   4.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
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

arm64/for-kernelci baseline: 26 runs, 4 regressions (v5.5-rc6-61-g2556a8d3927a)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 4/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-u200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905d-p230         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
12  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
20  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
21  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
23  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  
24  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
25  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
26  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc6-61-g2556a8d3927a
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      2556a8d3927ad14ba52e6bd7203cb80caca4895c 


Test Failures
-------------
  

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 4/5    

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz     

  dmesg - 3 tests: 2  PASS, 1 FAIL, 0 SKIP
    * crit:
        new failure (last pass: v5.5-rc6-60-gb260f5eb4e57)
        3 lines    
      

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc6-60-gb260f5eb4e57)   
            

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
11  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s905x-khadas-vim.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s905x-khadas-vim.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc6-60-gb260f5eb4e57)   
                              

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
20  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-r8a7795-salvator-x.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-baylibre/baseline-r8a7795-salvator-x.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc6-60-gb260f5eb4e57)   
            

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
23  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-61-g2556a8d3927a/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
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
