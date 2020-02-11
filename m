Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9888F159287
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/sW83SwNZAnN9XE6yTggKC5t2YvXwZx6EPThmGUHqQs=; b=ZPmE2ue6P3I3l7
	f0jrRbQ/NFdSlrsbnVSv9Q4bHEbPfkrSr5PmRcv+FFOfCSOSHD2uHjGaKC6CcA3+N7IKdknv+e8uv
	U6Vontrs/sM8s+FWiwTv2aNXFQsEr4rqIXCsAwvrNBELVMaQxPgfqwEw/wsjQbehnELgQTV3AGw0d
	7U/2kl0qbUKLFqXyB68mx6KmtBbpiOphxyzMjwnpc4bMmu2324rq2qzi+G8kMhlO5w154rwPFWlm5
	WieyhzbwVr8trWrDkzBEPVkFjluG6sAUm9ig633gTtOH203Y5vIWmh7KjuJLvJE5HurbVRBExcICZ
	M9ITXEAo+4WiIPYC6Dbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1X8l-0003Gz-7q; Tue, 11 Feb 2020 15:07:55 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1X8K-000375-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:07:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id z3so12811169wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 07:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=kExWXnUMNmKMKp+r84r3VAhT9Li3WhhSzp0l66jI8N4=;
 b=jGOj4CtLfq71+OU9ZuZAlnAYTq3v4PMViH6469CeaYg/IDOTzYiAUllrrQ6uQ5Exsa
 0guRRUi7R6Js4eGe4q++nctBVgn8xifugM1e2pNzXSqdD25I8xpO/2qWNNqhUY5Hg2R1
 a2GLWCa3/H4TZ20jT6GNY+h+D3bwkPxgIO/aVy+++1fIii8sM4StoX3Hmp64fglP4sWv
 +S73Bt1r5M8NriwLcPj9XVM1outMTCOARvQWEWCEu32jl/parh9s7VHQWiSLTtqXgjsY
 jVh/GxggE15IQ6uZO1wmoJxB6EYL4xErEnxqZte+wgwjRZnBeQtQmLTENW36IczpL0Gq
 n97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=kExWXnUMNmKMKp+r84r3VAhT9Li3WhhSzp0l66jI8N4=;
 b=Wd3D3Dj/kwdAwwoiRVURu8maxYyQQs89Mc+XDW47G86OCxllmTAOIaHgiCT1lfoWEa
 SpQdT2Zhqewj4rsboLzaAsMRkIOyOhvVnySticEy+1iGHGBwGfWTMSNq29tWy4ZjLShX
 RD4gwiA1SECdHbCX7HiPj1SodxtmmlpMtVlCH7fL7ttwKAG7BmI6KiUKqtoKG/LAfBEM
 6iDZlGdorBfDQ/FM89c3duDKMbowBeM/jS/vyaC/NqchhPeEydr3nrretkMt6wnL8H0K
 0caRDaGCXz7FqvK+UsMJcqDZ0UwIUKWDxuiIfDO2ca5+QjLBbD73qo+Gxgs91JOGJorL
 3ATw==
X-Gm-Message-State: APjAAAWTasUFO35z4OtskbpL4YpIsxTIX2NWQdYX6hP3DJjU6i/i7/nZ
 qWt1I0hBeEGw8yT6L2Lw6/ii+w==
X-Google-Smtp-Source: APXvYqxUqt4WNn+WgG9yosakUu6cis6cWCS+cEUWU3Fi15qEhi1lLATHWc7xUeQV4lcZTyDVtoAgKA==
X-Received: by 2002:a5d:6708:: with SMTP id o8mr9388935wru.296.1581433647139; 
 Tue, 11 Feb 2020 07:07:27 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id d16sm6237183wrg.27.2020.02.11.07.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 07:07:26 -0800 (PST)
Message-ID: <5e42c32e.1c69fb81.4625a.ed60@mx.google.com>
Date: Tue, 11 Feb 2020 07:07:26 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Report-Type: test
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc1-6-g74a44bed8d93
Subject: arm64/for-kernelci baseline: 25 runs,
 2 regressions (v5.6-rc1-6-g74a44bed8d93)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_070728_947689_806EC976 
X-CRM114-Status: UNSURE (   4.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
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

arm64/for-kernelci baseline: 25 runs, 2 regressions (v5.6-rc1-6-g74a44bed8d93)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 4/5    
2   | hip07-d05                    | arm64 | lab-collabora         | gcc-8    | defconfig | 3/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxbb-p200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s805x-p241         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 4/4    
15  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
20  | rk3399-gru-kevin             | arm64 | lab-collabora         | gcc-8    | defconfig | 79/82  
21  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 0/1    
23  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
24  | sun50i-h6-pine-h64           | arm64 | lab-collabora         | gcc-8    | defconfig | 5/5    
25  | sun50i-h6-pine-h64-model-b   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.6-rc1-6-g74a44bed8d93
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      74a44bed8d93782affb707a33469bda7052b4207 


Test Failures
-------------
  

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 4/5    

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz     

  dmesg - 3 tests: 2  PASS, 1 FAIL, 0 SKIP
    * crit:
        new failure (last pass: v5.5-rc7-78-g7bf8ec415871)
        2 lines    
      

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora         | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz     

  dmesg - 3 tests: 1  PASS, 2 FAIL, 0 SKIP
    * alert:
        never passed
        11 lines
    * emerg:
        never passed
        2 lines    
                                                         

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
20  | rk3399-gru-kevin             | arm64 | lab-collabora         | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz       

  bootrr - 78 tests: 75  PASS, 3 FAIL, 0 SKIP
    * cros-ec-sensors-accel0-probed:
        never passed
    * cros-ec-sensors-accel1-probed:
        never passed
    * cros-ec-sensors-gyro0-probed:
        never passed  
         

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-baylibre/baseline-sun50i-a64-pine64-plus.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.6-rc1-6-g74a44bed8d93/arm64/defconfig/gcc-8/lab-baylibre/baseline-sun50i-a64-pine64-plus.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc7-78-g7bf8ec415871)   
               

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
