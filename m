Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DF31CA074
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LTV9G3ioKsUahsHGFARvOCS016vTNn9w88e5rGmGIj0=; b=PM5C16cQ37UTGa
	ctk5xD5Vrn1iROv5q687CdUzeWYO7qEfqLhosEeeu8SaZDSKG2QBuvn96v0L0t3QPzRioTTpw5NAo
	XRkTpXu9xIwdupwigWOU9Mbuyz5qz+L0Q044Z0CYNJGjWJ3ecjlg9JNT92QKYXaSfKyH2uCPzkDk6
	7aoe6U3mXgMQwl1NLAg5i8JkgRJROXHnTnA0Ho/nPakrb2xyhHKyB546/NvWYylkXffTsD5LJd5JM
	5nIq7X1PPfeFZW6Oa68yZV1blWbNyUCqINp7iio5J3dA9J7LIHBVRqkYfG6gA41kQLA2R7HQCBXbu
	/rNyMBBQiwP6Liq28xrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsK8-0006CF-G1; Fri, 08 May 2020 02:01:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsJv-000684-1T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 02:01:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so126721pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 19:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=SrCQ36L+3av25SO9ggmqrBY2JiTp6xdN5lP3dGRM/1g=;
 b=0fldsX0kn5+Mnhu6LGV4vCA94HFveiigOuZ0j1ihGzPASEOLcypPx/Mvoz2fegwpuy
 ByhFe52UbYmpWam0Ikz5MGZVW6sAECg8K2g5d/S2krg78LPL9GpCFAQJm6wQRYVsnuXD
 s7y5Dw9FRgMPLKDkgKpJFPmdV3S3TaKzPVnmqpCfCbnHd3tZeja3otri+4mun1iEMjG5
 QsMRh3W0dcZ1D2b0VZrzFylefcKSRBLHBiaX1a2LMKB34cbgoYHMcHb93o9mR87IvGPR
 Ck90ZI6lR7uI/y7rAKUvyU1kG8oe0n1sx8iO1wnDilCgftpL9BXIR4jFAJ7ecl7YM/9j
 zRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=SrCQ36L+3av25SO9ggmqrBY2JiTp6xdN5lP3dGRM/1g=;
 b=qlAuU12nIUEQ/83xPKMNYpQrZIj5/XCE1oNTGvJVJmXTkq3xggyUBgJUfQNb3lD+QL
 hM3tfue9kOukYo1HBoJARI4YdXZ/nVdHNw+y/anp5CN+CDvj+8FvY1NRK/N3WSKfzxXY
 QHhUgh+aSXZUxbbeJCTiIp730+VYM2Tj8hsz/NeoLmDRic49Kxy9+n+DuBS+ZGFYZczf
 R2l4rw1JaODK80dj3ylyNPNORYMlux4I5xPBzZVeh8ajbyCDzmGs/DGPhQHMfz2NSLPB
 D66xubNUhFLMzWozr3ZZLkFdIPsRe1cUmQt7gFOWcoGTPvpRgsIg7PMtgDzoz/VH8zko
 fxfw==
X-Gm-Message-State: AGi0PubJo/ytMV1NmF1wciSGQuY7LekKbM2h1QhAqhh81c7NJTXS+EdL
 eSyYJR8VKaOIaFoTh1eL8TReGA==
X-Google-Smtp-Source: APiQypLVleGoOvKRUmYe6x4dzisVDzOVklO6Z5kIOJszn5zzelXZ1bbUOAkjVsj+UjQ6mk+hBL+pPw==
X-Received: by 2002:aa7:979c:: with SMTP id o28mr288298pfp.265.1588903258021; 
 Thu, 07 May 2020 19:00:58 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id fy21sm942456pjb.25.2020.05.07.19.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 19:00:57 -0700 (PDT)
Message-ID: <5eb4bd59.1c69fb81.5fa01.4105@mx.google.com>
Date: Thu, 07 May 2020 19:00:57 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc4-89-gc1c5ead13189
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 25 runs,
 0 regressions (v5.7-rc4-89-gc1c5ead13189)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_190059_098092_2226CC39 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

arm64/for-kernelci baseline: 25 runs, 0 regressions (v5.7-rc4-89-gc1c5ead13189)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
3   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
4   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
20  | rk3328-rock64                | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
23  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
24  | sun50i-h6-pine-h64           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
25  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc4-89-gc1c5ead13189
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      c1c5ead13189568cadef4f1dfb13f67d42183d3c 


Test Failures
-------------
        

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
3   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc4-89-gc1c5ead13189/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc4-89-gc1c5ead13189/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz       

  dmesg - 3 tests: 1  PASS, 2 FAIL, 0 SKIP
    * alert:
        never passed
        11 lines
    * emerg:
        never passed
        2 lines  
                                                         

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  

  Results:     85 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc4-89-gc1c5ead13189/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc4-89-gc1c5ead13189/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz     

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
