Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E18F225A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AO1qNcfB23WeR+5jRCam4tJgTkgvaWlXAOffR/mKpIY=; b=lN2km6RyQKAuAN
	fRxb5ztAzz7NZOgDWEkVlKPPwezBmrgIvLv8+/OhmyJnA63nNv81rAptc+cgc7f/srbjomUmLYA1c
	CfUgDhXJj9lszrO9IxyI8uMp/l2GgqwPRlUjocxhpDsUKegMvMDfIqSdYJWUFHm6SPVIQgb35cY5S
	qLogL+JlP/CVB3P5j+VDq6tNftXepK+ewvG8JYpPCccMLtcOEQu9upedy2+n38dQz7DO0uYbemCqN
	0bs0inmpsb702uyga72OF2mbya9XAcEmVTdaLJUX8bWn5kcpB6S2DhFIo+b6xMdU2L6eCnud2ywci
	Xj6+SnfzzVGfqK7TAxZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUQc-00035w-DQ; Wed, 06 Nov 2019 23:09:30 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUQB-0002tr-4F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:09:04 +0000
Received: by mail-wm1-x32b.google.com with SMTP id x4so82415wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=jpHq96yrdZm660UQ14vGklqYdpcfSClx5Rja/SjoEGE=;
 b=D74SjkEbD8G2mL1e/k38/qPXSsxxk4D9eMr4g9/pMFDGXKwqIylwj7aCTfzstIEXlu
 wwxRkobR3AiR2NTftFc/ONNcBnTd1eAhHLDWwhkPsYi/8vJ8UVGIP6Rh2Zpjab5ADKAl
 iz6mHnjOEwf9N27jtcDLhUPlmtVdf110kK66ZfALRVnaoEG6mUp/Rp2CzilrjqT2rVzp
 zhSmYi3HhscZ1+HYGromR1tIVR1Jg6v/EJrM8ikn0hsiGdH5IvnfP8GgydKaOBRqSbrm
 mgg/E2HtQbqc2nK+wJnaU2dHo4W/pDy1XRPetIyCzOhCH/C7MfIaKY4grtevbpr//HQN
 pZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=jpHq96yrdZm660UQ14vGklqYdpcfSClx5Rja/SjoEGE=;
 b=BiJXavsbf2MFh4v6DGQjGRwuuEzA7VNCWcUUYQJW9i2oWaEyUObDZXhfwsUe2i4avB
 jEF9sGar4HXZoMnZP1sRZXVNOVrFXUC39CSFfBWyzMQ46sK1VcOoWZRoj+AOW/6k/cke
 5p8kXV5o+Wviy28wX8hIt46zewzpLcDd3NbY7i2WiDo2AKgGW9qHfyQzGP4Z0n+zJRee
 sEu1rjc5fC2pcLu1TSneb33RbXQMF7rlPYse/K2lh9iXxp774QG1buuvTeVAmF8jCiHW
 8CfftsHe7r4N2f0VyHEC6GpYVbMm8+UmITyGF++wy2eXUcmBxEKSUvUVjhkpqKwlA09x
 rNIA==
X-Gm-Message-State: APjAAAVHfX/KMYjP0QuldCUYaEIDHIh1gzOZO28mYxTxVm5mBgrkvjxn
 MgmjFR/bs7Y+edquOO7zFhIYwg==
X-Google-Smtp-Source: APXvYqxmQlJ/tBKCKYmm0beQ7AppS7GSbcv2tLslXjr0emdpphcDCxFg5VJY3WMbwDpXhYdtpAAWbA==
X-Received: by 2002:a1c:3c43:: with SMTP id j64mr36626wma.13.1573081741416;
 Wed, 06 Nov 2019 15:09:01 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id x7sm251254wrg.63.2019.11.06.15.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:09:00 -0800 (PST)
Message-ID: <5dc3528c.1c69fb81.f357e.1476@mx.google.com>
Date: Wed, 06 Nov 2019 15:09:00 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.4-rc6-85-gd212d757c765
Subject: arm64/for-kernelci baseline: 18 runs,
 0 regressions (v5.4-rc6-85-gd212d757c765)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_150903_167158_A0A92C67 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
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

arm64/for-kernelci baseline: 18 runs, 0 regressions (v5.4-rc6-85-gd212d757c765)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
11  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
13  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
16  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 82/82  
17  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | sun50i-h6-pine-h64           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.4-rc6-85-gd212d757c765
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      d212d757c76526077be6b659bf8cf0818221e438 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc6-85-gd212d757c765/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.4-rc6-85-gd212d757c765/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
