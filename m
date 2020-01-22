Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83B6144ADE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 05:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+itE2mogYGIb6Iyz5Q4gffr+F/+tUHsA0kW4IunQ4kU=; b=Qk/zaYyIaTWS0k
	99TAkVrLUOgLGQzcOml3f1aEPXJ11qdrad7MaPHKRjr9C+0QOeOodwRI/dNdQoIIvBrrhiPJg1Ccx
	NZcPWzW21JA/RYayhC5NPhvFVBZ40BUZ71AgUQVJdUhQ4gdr7vn42/kkseMWBcW1ClpWjKX5yAipM
	ANRA1J/rTNKZExZN8WjnZAjkFVsKnHNK88ws+7G16xOFK23c5dJD4AkZs1ZD6zn1Qe6Yo5DUvbAY4
	1ch0nV7YJTf2LcyXZOiKdQzzAaxpq8LIHnSbQDb7VOoDHaAJJUQDJpdlone031vOsFSqaghOwJDF1
	ekK8IHwqvxo1EBGGF+Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu7o9-0007Qq-1O; Wed, 22 Jan 2020 04:40:01 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu7ng-0007HY-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 04:39:34 +0000
Received: by mail-wm1-x32f.google.com with SMTP id f129so5724432wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 20:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=XO9LDP/m53vjE3XTIgoO4eN9ywqxL+pl/dkPQTc6noM=;
 b=z2Rmjhz+eQvaJFKNAaYn29+n2bPIc+blHDXTKwk+63yB51+bUGNdvleec/by1JSaO1
 ECHjipdKTJ/kHfHje8TgNVMAmCVMT6FTntb4P/0vRqlMMdKi21semuH6HnLtYSv2GtoV
 Ha16kj54pzOjnZuJqYhipCRmRmFVav+rqLvd7lTNELR9HZWhZXwlP8fH2mJy2eJm5dvL
 2g45R4Ijh+mzTFNF42Zr61vA2nc9NSM+9g6VNBNpaYhi975wHGL7EX+uuk1NQB3ZXUvt
 JI8ELOOkZt4h0OdJWrsKAS+a2wum5B/vgOFmpEvD2kYcR9K+ph0EYxxtIVVrRiczqzf3
 q7/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=XO9LDP/m53vjE3XTIgoO4eN9ywqxL+pl/dkPQTc6noM=;
 b=IAx0gqKk6JTWQv3W/zs9xYwzqU9nL2Wmj2zMVfi9iwQxw8J8SS5Pb/2ijcrjkuj5vK
 iXmYv5eGGa29I89doMwt14N2zEl7QBuJaNW5XbUQAB9/n/ZiOaKhy5Ai8dIzVViY5mzb
 Rg1nTp8duITkJKb1j4RlQRlUg4E6EiDlk4bUG6S2Jfk+xKDlFWMv9zQkIQuPchRGf8Z6
 DPV+T7fUOx5XnTGBrgTy7d+ltnxmgWio7xBESlqzKPpPlBjHSZJR5Bzb2Cxfmb/isErC
 uIxmoZCwlwab0uVASsgOg3UbPdJ1rf3vg422WRX6CNESO7C5maiSdB8uiNooz+qquxBb
 jXPw==
X-Gm-Message-State: APjAAAW03Y2OqAKo5luHWwFLo1BODLk1T1Yo0tfYEwPLoRnDVcgJbZLm
 VRTJ1XwBJdGzm5prHRnThfEefQ==
X-Google-Smtp-Source: APXvYqzrnTrS+0nMGMVcmjN/nJSRa+V0u3bqVlG9/nxno+Soj1egD+KpwALgGj5QYZzGbaJXPdkOXw==
X-Received: by 2002:a05:600c:1103:: with SMTP id
 b3mr579880wma.141.1579667970390; 
 Tue, 21 Jan 2020 20:39:30 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id k13sm54841112wrx.59.2020.01.21.20.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 20:39:29 -0800 (PST)
Message-ID: <5e27d201.1c69fb81.4be0.aea3@mx.google.com>
Date: Tue, 21 Jan 2020 20:39:29 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc7-76-g1fcfe766a119
Subject: arm64/for-kernelci baseline: 21 runs,
 0 regressions (v5.5-rc7-76-g1fcfe766a119)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_203932_916685_DD7AE9E8 
X-CRM114-Status: UNSURE (   4.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
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

arm64/for-kernelci baseline: 21 runs, 0 regressions (v5.5-rc7-76-g1fcfe766a119)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
2   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
3   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
17  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc7-76-g1fcfe766a119
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      1fcfe766a1195bfb7d3b248defba8c9787d0d41a 


Test Failures
-------------
  

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-76-g1fcfe766a119/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc7-76-g1fcfe766a119/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
