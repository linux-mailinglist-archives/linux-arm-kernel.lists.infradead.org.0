Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EF11D09BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:18:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=POcUqGOXPpIwGiOteEDoC6CM3unzgqBayw04Z+Oh04c=; b=uY3BPpiSGn+7lk
	YIOknrgwkL+VAckMUyVODJUJN3wtWZQYX8xGJ2b1LyrARDSHIJ7Vqv68JGd8/6ShgR00Ro2lQ7q5L
	P8UTt1Ui3G2T2jjKXRlpxiPQ/sbjs8WIfqTfLdrrUAIhhvJDPmkCy6IdFbn62NKUsx2oODUdUyJUZ
	+so68QYV2OKDI4Res+hxNEQtwHN5uq0+7VU+Eu35FxdhgGmhJP6bp8FBw1aDHWz26H45YkStwr+d/
	yG947/urSuX9MdgUONSH3ycKmVLNVf5BMsTXW7nQ16QDONV4y2zSpjj47MdGoeYVsuKOp8TBrAPkb
	C43JRx//jl4237+nQq4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlef-0000aG-9h; Wed, 13 May 2020 07:18:13 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYle2-0000Hv-Cu
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:17:36 +0000
Received: by mail-pj1-x1043.google.com with SMTP id j13so577634pjm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 00:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=HMvCID+hvIawxUCAwd3eZEhYCJsehv5smpPPORvorLs=;
 b=BzpC7iQgi+GkPO7YJJ84bfS89vDLvIgFkC8DOGqssTKL8LHWBX4/fvYaFJ5KLLpkRU
 Po/L+RJhMcF8J0gGnlZgn2/OV0HKjRPsk4v8fm6LpZQJ44nr+YazsEpzuE5v6L3E/lpz
 JT+ZIvtyaG4DCd9xZGzT6nlnvnAQNChQPTFcYsGVf2C8xQQLzWEkVhzTFSUgEUqEjAtq
 veCqYwowpizgOtwKyiyLtyR17BLDtMgjisCAM7DLeuQEfWS5I/oAAL4CIPjC1BpXF0mu
 4xJXjRe2dDC65Naa6TQlkjxxWZGBZOTJ9GiZG6l6JeS6B5jmJYP1htEYBW3WSx/2a+nP
 yJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=HMvCID+hvIawxUCAwd3eZEhYCJsehv5smpPPORvorLs=;
 b=f1H6TBZv1UkJb8P7TjlarDHC8xk/wT5S7CXkAGfzwM0wBX27uiWran0VSX499vByTf
 0P7CcTnQC7adDNokRZMWkJwaN34of1j3yzOne9Gri+cKhJMTz3f2P9BVIdlwVl+1iFhS
 6uM7K64BMnBERVGVz4OSCsfXE0uXJVPw9WiAuAtONGORJM9mGbAGOnfk3CDd6rVQ0Dyx
 BNTJGgKnz5wIJ3nkR++ps7Bb9IbEMSYKqmGHAT4t3pJ2BdC1yrppQQxkJxGgl3FiwyeL
 b3la9QW9XmBI6od3IsmAw6VlYPjsQhhN5Uhohp3x6JnT20YJNJCuMTdsGanHIOWVuxvq
 IUrA==
X-Gm-Message-State: AGi0Pua8KvC1WKOuSHQpB9Wm+6Sp+Z7zIpyu96LPGCHQ1vF78JjS+awu
 oGePeB7G1wqSm5fvWt7+H5dJsw==
X-Google-Smtp-Source: APiQypKxBsRXhkeGGC1QWf7R19ozI9gCYLKM/uSB06ZkgUsTCjhUoykPl4VgJMTAst7y4WT948RE2w==
X-Received: by 2002:a17:90b:3115:: with SMTP id
 gc21mr31412880pjb.183.1589354253617; 
 Wed, 13 May 2020 00:17:33 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id i72sm14639268pfe.104.2020.05.13.00.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 00:17:33 -0700 (PDT)
Message-ID: <5ebb9f0d.1c69fb81.5a161.65b1@mx.google.com>
Date: Wed, 13 May 2020 00:17:33 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc5-98-g51f14e2c02e8
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 23 runs,
 0 regressions (v5.7-rc5-98-g51f14e2c02e8)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001734_480191_2789BC8D 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

arm64/for-kernelci baseline: 23 runs, 0 regressions (v5.7-rc5-98-g51f14e2c02e8)

Test results summary
--------------------

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
3   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    
4   | imx8mn-ddr4-evk              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
7   | meson-g12b-odroid-n2         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-q200               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
19  | rk3328-rock64                | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  
21  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
22  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
23  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc5-98-g51f14e2c02e8
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      51f14e2c02e8e96bfa07dd0561f18bc2ca9f534e 


Test Failures
-------------
        

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
3   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc5-98-g51f14e2c02e8/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc5-98-g51f14e2c02e8/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
20  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 85/88  

  Results:     85 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc5-98-g51f14e2c02e8/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc5-98-g51f14e2c02e8/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
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
