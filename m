Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDF8EC8EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 20:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dVX9yTC8/EKVVQGvW7A5AF4hNX4xfR7H+f4iydAIq6I=; b=c81ldYw2FTQ5bF
	QCihUxjnDt91nlkSyU5lT0sjvPSPH385/FAOXZy13GxJHVKoEmbwmS5zp+jfRkFU15EcV56LPtSu2
	/VoSbtJeNU/881/bofhvkTsWMsA6YjhRY943Mzj9bJ5+j/J3lrg+suiSVKvq1wWxJ1Lan2dKXuL0d
	mHWi/BQIUOkwCxlLH0ve4QJNitPIYMt0nvUFiaHqfa+YW63V6DnQ3jVdpnT15IzG6W5BWN0YShU3V
	cBrdYaAmwy1S7geRK+/BJLN5uObdaD9AKxTJ+dZa6e4L8aeOjddd48h2enr/fhr1VIXVJt8aI3wlW
	zbX6ltALlZ+OS4/sXnIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcJR-0001br-QV; Fri, 01 Nov 2019 19:10:21 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcJ1-0001VB-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 19:09:56 +0000
Received: by mail-wr1-x42a.google.com with SMTP id s1so10622925wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 12:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=pAWnpozCPbCh3iZB+Iwxx+FYKj+Ho6j4SKMumS7DZoM=;
 b=BpLNkKhGNwEpnCp7G/ewCiDv516JqUij8mrZoGJxBfrvDf/Ns/fFoig8DDVJXOyXE2
 YHfpBGOSfE7E8wQVb2+HX6ielpeyvs2nR6rJGYL1mNQc+urjF4sfedwMK9F9j4DNqhrD
 nIsx7TWiZs4cpWn7fIdNHK5jMiDnYgrhN8rjbZHBfsiItTbXnk5zLkRz1/ecyHLT91XF
 ax1UTwn6RGgiKuh7YpYGg7+0G7jCwPLCrYgXKS1A+BNuYwdkPPy7NciwdrDaEzuHrm+k
 MbhYPHor+PFB05b1rXkK8WfPUAd/vXXDdvWizIQ2k3X5OULtsbOPqKoAhcdSlvPvn47M
 6r9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=pAWnpozCPbCh3iZB+Iwxx+FYKj+Ho6j4SKMumS7DZoM=;
 b=qWQ/pVA1g1Kph+DsBReBhUzzElY6m7EjO9d3yuPzcyWmVsnb6Bf5tflTuVE1iDaeCz
 xenAzt2WNz/aX4K+NNVAw6PYd/Z/PQCGBuk0zKRB+dBB/vuW8iMYBRZHVElFaQJYUpjO
 8Ew4E1FRYQGiqtiyNNn2tLlh1Z6Z8S+AL7FW5UWWfU+WiRD30w/CsGflA5CVg9BmnrXL
 Qd+H3myT+a6vVEZIkBMAM+Tt9nLySdWJm16WytxehCFGa23l0Kv+UY4Vf0PXMYnhUYbE
 17O5IRr2zq+FfrOLWJhbym3+tphkOP4fLXIi5riOsKnyZuaAOXLvAEscC/9iKarwypCM
 wJfw==
X-Gm-Message-State: APjAAAV/D+vO6xsm8RUp2oy/qxxgqQybfw4w0/Ge9OMxQVLe92mN/0WA
 DEf1wHN5FOTukhaGlZOc5AO3SQ==
X-Google-Smtp-Source: APXvYqxCcSrbV0F6Or4LOYnXI2lMUQleQUwyOrItwZfIkHjxMKKpepFfQysg2LL4IrFymwQ8oUTL7g==
X-Received: by 2002:adf:e94e:: with SMTP id m14mr2946424wrn.233.1572635393751; 
 Fri, 01 Nov 2019 12:09:53 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id w81sm8102088wmg.5.2019.11.01.12.09.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 12:09:53 -0700 (PDT)
Message-ID: <5dbc8301.1c69fb81.54ce2.802f@mx.google.com>
Date: Fri, 01 Nov 2019 12:09:53 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: test
X-Kernelci-Tree: arm64
X-Kernelci-Branch: for-kernelci
X-Kernelci-Kernel: v5.4-rc5-74-g07d0b0abb45b
Subject: arm64/for-kernelci baseline: 18 runs,
 0 regressions (v5.4-rc5-74-g07d0b0abb45b)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_120955_047715_2615795D 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
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

arm64/for-kernelci baseline: 18 runs, 0 regressions (v5.4-rc5-74-g07d0b0abb45b)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
7   | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
12  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
14  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 82/82  
17  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | sun50i-h6-pine-h64           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.4-rc5-74-g07d0b0abb45b
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      07d0b0abb45b318fd8e8f9a3763d3301c3f67032 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc5-74-g07d0b0abb45b/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc5-74-g07d0b0abb45b/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
6   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc5-74-g07d0b0abb45b/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc5-74-g07d0b0abb45b/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        never passed   
                                          

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
