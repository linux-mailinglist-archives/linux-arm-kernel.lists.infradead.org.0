Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955C113B918
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULQJj7tgIfXhGN3Nk5kwA8P+r3Enhg1mx41S0du1nSQ=; b=uTuysVWQDL7uee
	yMjjAk5qsyO+P0WhiiiUpMHD+BcSNNHfkQ91GQulQ3kTPF1IBbeiosqwFJhh7Yp7WzX54HkAeS4Su
	5d30kiRK9bZz6vvcuT4r9QCdGj8BXxbG+VgYDqGgtBHxuvtJPMQh4gKmNVKdD9raUibZVrnVRr52F
	sUKW92Y7cr1pZqZf8D1LkVeg/KB0v7Gp38qiwDYgnNG4OXIm4hCqW8BfAEC+0vab30pMKf1AQtRMb
	IbDyjVSnP8Ng33NPLOyLburG3DMUYx4L795id47D3vObKlQZJf7ddz3UVjEgECU3rmJHfArLWPuoO
	dcIlyFHEIL/3pt2fzInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbMl-0003gO-Oe; Wed, 15 Jan 2020 05:37:19 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbMO-0003UD-Pw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:36:58 +0000
Received: by mail-wr1-x429.google.com with SMTP id d16so14464538wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=LjeUzNp5E+Qoo0VYKMK9oiAKr2hyerXcmR+HBzD8cMM=;
 b=UprzhXALmtG3INTgz0SCkEHvmS5XxEvOzMGO+ca66VW+KkZTNB4pyofzD4epGsEsHh
 1yZmywQWLk6QrvBBXEUWf42H30hQwSON2zVTeKT2LiCP5Ufzmzxd8CucSLtqcqFjfPc6
 9Gg6pwVDsZU22LyRlbXelztPXuw4e+C957GJTbbOyEfs/iJP6rI4M4y1VhfXTM9jGn9z
 QpFOwPTB+H0OjavFDquDGcDTyhMNjf5h0kXpQweCTESSltZZP8JD8WRMtLQ6XDIRG9Sf
 sIr/godYBiFnv4SQGPzDtV8LFAc1HXBURodlOjsRIM42ChGyvzSKI6se70+j/NTJblWw
 pj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=LjeUzNp5E+Qoo0VYKMK9oiAKr2hyerXcmR+HBzD8cMM=;
 b=A5E73NhuJOWvbpZcA4ALOfUBRx4B5pSAvGqKwXe2C6KDxXw+Usn09jQF4cEGgyLM8H
 N44NpjOTTkqViiRRWACA7kaBaASV/rajw67/K9LAgWlm8/wKMgC/hSDWc0wbLjXTpA8d
 9jWKTlhLwiGgV6FtRx3CQD0dG24vDYqKZf0mF0D7C0HdC9gHW8ljCNgX4bxI5z+8zHyc
 M1Nm83nWEOBiKClASgNUp/p2Tqoj4avXswf62tVKHp8ayPJgMv1/lJXfUjx5qUjlOi3U
 NLNJQ1ZyUc/RvBuNv4PIzYB/pa1nCAY49vEfh49LkpBBmpLd1hQYy2lgGT84PsFgLiF8
 gVqA==
X-Gm-Message-State: APjAAAWOH+FSRap+caNJ1f/2UQKVMK7YUGJXPjdZOz27ifCrHvpSJpRc
 SN+XsqcGShynmo1KrVQcJogfow==
X-Google-Smtp-Source: APXvYqwv+KJBgtwamuu7osbAI+irvB7F7fN8Ek7tX8ZGRnqf9t6qG+GbafL3aKFVOw7r5VA3Aydq5w==
X-Received: by 2002:adf:b605:: with SMTP id f5mr28456655wre.383.1579066615157; 
 Tue, 14 Jan 2020 21:36:55 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id f207sm23756782wme.9.2020.01.14.21.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 21:36:54 -0800 (PST)
Message-ID: <5e1ea4f6.1c69fb81.14abf.35e7@mx.google.com>
Date: Tue, 14 Jan 2020 21:36:54 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc6-40-ge31626d443db
Subject: arm64/for-kernelci baseline: 26 runs,
 0 regressions (v5.5-rc6-40-ge31626d443db)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_213656_843446_661BC292 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
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

arm64/for-kernelci baseline: 26 runs, 0 regressions (v5.5-rc6-40-ge31626d443db)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905d-p230         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
20  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
23  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  
24  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
25  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
26  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc6-40-ge31626d443db
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      e31626d443db6933723cf756816cd0af6c9b8d89 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-40-ge31626d443db/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-40-ge31626d443db/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
23  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-40-ge31626d443db/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-40-ge31626d443db/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
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
