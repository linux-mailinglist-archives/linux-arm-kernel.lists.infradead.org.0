Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5861C13D0C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sZgV8djVtEeNkt52R6omCCibKePLk0Eq+NnGEG3HAjo=; b=EZ4WRys79uEKuY
	x675jxL4tZ7zg0w2wnNYguaIw70X8WFN/g43Iy6nY9ovq1/8VF0S4hOcHAgN7U5e/DE+DVzRyempZ
	ixxILaDwYFrb4fY/+tyIHfxLDxwfrsdTVs8/OFCz4QJ/AIRmSSvvtrBcZekddMeCWvjtoH9j7EEKf
	jgYCm1+pndQyibaE9Xnh6AhOhpQUlOAoJUIF4Tckt6C2CrW2SLcTp/zs0tBnRYzhS8Edi0n8BT1Wh
	tP8fT3e2u4OMyXf5YolnxNsPyrWuA0qIT7Wl+3IuTGC35tZb7Gx04mFVtL4X5gCZMXpDhvD+YIPnc
	hGJDHoNed8dwg24YtILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsO2-0000ZN-F4; Wed, 15 Jan 2020 23:47:46 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsNt-0000Ym-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 23:47:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id q9so1849949wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 15:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=E6eOT+luuURx+6H5XQ3j4cUCvkHyOALijudtqHqbnA0=;
 b=KoLd7uv/VB7J5v8MkuwO5uYYSWB8ORJnoyaghsSf+0mhWpqMl4ISp/N4DzbBO3GZLr
 WETVxpeVswgQ2lBWonMpeaS0D/lIVgR7GFcWjgYp3ypUZamI8u8on8mYH3/SiUtqe6Qp
 5gm1dgsYfkaoR3zNCMeaxsAl8Fo6AGwxHRkWJw9swFuHwv6J7iwvxCncEzX23IN2APui
 1n8MOtHm+hkqh5Y531CLcbSgwBQYZedDKAAbc+n+wJ0veUw3s08iDChAVFHRyvrokc/8
 oP1frU3fP3GVs3xWao+dH9liSuQoXB5SpkbPNtkaAIFkv4bllnIIYFIlbC1IcFMQaN1Y
 P8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=E6eOT+luuURx+6H5XQ3j4cUCvkHyOALijudtqHqbnA0=;
 b=BZuTw4Uw0LhGtXHhMUzY1Ett/ROiwe51YfcTEmf0KMekxNCvGSAgaETy4uPsXbrLMq
 CCjrSea6xZH8zEWJxkXKpcEt5r3QsIuuujNtCur/2fc+wwqunSMmfG3sFV2CHyD8S7Ac
 hIflOHmo/eCu8MCU6aNUI5MAAuSdAaSFjI60B82lEzuufbDS1TV5HfovLf/x5/C636T5
 9IvhJjLSHHbcnmqDQDWhVGJtApw7O5gpFCPlBinasZy9C8/czVidLBj6GiQjN7pEDAwY
 03GQWbIvrezahLHydrC2E/ePw6o/n54aA/oh3feBK9n/7W9r7eDGcGq8CcRHK95rZMcm
 wtJw==
X-Gm-Message-State: APjAAAWbqtB5mNbE4bzfuO+eeWKMD/u9CYj2hKu+dUYDooHakMfeJHpf
 ELEwobSe/dMWs+llngUUsRJHqA==
X-Google-Smtp-Source: APXvYqxGwg438HmfjNQ8PZIDMp7T/07J39QeS8hMmvowWbp8FYK78Qc4qvt4ZxqMHskIQ3tEFTVu/Q==
X-Received: by 2002:a1c:49c2:: with SMTP id w185mr2589384wma.138.1579132055898; 
 Wed, 15 Jan 2020 15:47:35 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id f1sm2055230wmc.45.2020.01.15.15.47.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 15:47:35 -0800 (PST)
Message-ID: <5e1fa497.1c69fb81.352ea.8ee0@mx.google.com>
Date: Wed, 15 Jan 2020 15:47:35 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc6-47-g40f39e8372fe
Subject: arm64/for-kernelci baseline: 22 runs,
 2 regressions (v5.5-rc6-47-g40f39e8372fe)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_154737_510953_F72CA4EC 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
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

arm64/for-kernelci baseline: 22 runs, 2 regressions (v5.5-rc6-47-g40f39e8372fe)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 0/1    
3   | meson-g12a-sei510            | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
4   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    
6   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
17  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
20  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc6-47-g40f39e8372fe
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      40f39e8372fe0ae2e061d26075a49b2f47515c8d 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-47-g40f39e8372fe/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-47-g40f39e8372fe/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc6-40-ge31626d443db)   
            

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
5   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre  | gcc-8    | defconfig | 0/1    

  Results:     0 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-47-g40f39e8372fe/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-g12b-a311d-khadas-vim3.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-47-g40f39e8372fe/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-g12b-a311d-khadas-vim3.html
  Rootfs:      https://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-8-gd700ebb99e8f/arm64/baseline/rootfs.cpio.gz  

  1 tests: 0 PASS, 1 FAIL, 0 SKIP
    * login:
        new failure (last pass: v5.5-rc6-40-ge31626d443db)   
                                                         

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
