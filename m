Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD813FC33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 23:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1pQ7gdPQ6vbr5kHFd1usiGZYLW+bohHrqdY99ST+ITs=; b=hjWcKc6Oh5Xcxb
	WTQ3UwLONYGQ73+Uxko267qtB7GABKPiYmopkiuKohrX17OD9LD+aqv+eEy55wjyw3cJuiCM9v8AK
	8yYINp6JgJQrDDoTUo/UIWu+TPQMh9v6UbCrHfbiyhAzk5oLL2bAT8qifBBZg3tMduXtO7dtV9CkP
	7nx2mSK/IEAe57vqf3YKxG+yX0W48CPVLH7uPMYPFUAEvTTw7dZTkA6gO1mREqX94+CqhYKPbpaTR
	mQSOt/+JDoX9RmKDJxuqZrpd+VAR6BsJcgA5JznHWQmI2H5+fOyE+8xPFD22rxcnY/P4oAkP7Zeuo
	h8jtvSmlszDpn9QJlbDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isDee-0000Os-Ck; Thu, 16 Jan 2020 22:30:20 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isDeA-0000H2-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 22:29:52 +0000
Received: by mail-wr1-x42d.google.com with SMTP id g17so20770555wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 14:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=9EyDtiOVShLoEvNh2gjvL9JiKyqlF/lZ2sf0W/nhNwo=;
 b=HFVZghugeIX2jjrLzEVr/kxtByecZ3IXYJ4ZIDOTIqQpuyjkbGhBh4hxpAUYYSF0B+
 fI52liua4P3Oyfpwta3Uiig1OGIGZ2qBbBlKzdLp0MCUIQrcgs3gc2C1bWWjGINPtGoD
 7UygKBsx+FGp6tEJLydzGdCfGVF5H3nVMg52DutxJlLtBwCi6+XhILeaELisJMlUFyR5
 r9VCmi0TdwAdZU1ST7gH8JMVLhEauqYPqAka3bPoyG4U0dZYomJZqS2dsRYXjpqTrRJN
 FWaWJQa//s4shn9U618VkWP6fkYTDmJ2/boDqfbGg7rJqdnvWS4HEM/J2pxczocFlNco
 fmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=9EyDtiOVShLoEvNh2gjvL9JiKyqlF/lZ2sf0W/nhNwo=;
 b=BgyJ7LdpSgQw+wUaWqzfm5KLfzn2av68UDzWWCEZcH7AF9ki0HhCgDAAalKbHDo1qX
 Kbk7/IihjQFxoHX1grfaTTZuCxg4VqVGUWVw6jaIFbRktLs7A7P41BQdzZz99k7UkVwa
 8fKrrP3NkXIWVzRvoZr2Eq3iLwakX2ALHFOwicUyQmNXHTRixn2QjzvYUiLPtC3+1QS1
 J0eBmz+HUt7UrMaDAh2roj2D29EM3F2X6yMkSgsl7t5v9YvSkUHOK5wQZ+MJld2MCufv
 vxkJqCujKhS5hRevgkDUYBb5xT6CdKiCXMlSZeKtVc9ehAc4oe7zUnU9m1qkFzi5pAzi
 RKRg==
X-Gm-Message-State: APjAAAV2TutFS4q/THQJzErpAWkTO91vAyyzEtDcrhDgpXKpG4e7LIoR
 xCsJHDpatCioorb8YGsVu2Eqmw==
X-Google-Smtp-Source: APXvYqwsl1FQNUhPvxzaveSyXXHfBNmzPBG+ilT9vXXBE8+8vMp6S1nYBxowQbj2icBBP0OX6GZGPw==
X-Received: by 2002:adf:cd03:: with SMTP id w3mr5520598wrm.191.1579213785316; 
 Thu, 16 Jan 2020 14:29:45 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id x14sm1989666wmj.42.2020.01.16.14.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 14:29:44 -0800 (PST)
Message-ID: <5e20e3d8.1c69fb81.c4a41.946c@mx.google.com>
Date: Thu, 16 Jan 2020 14:29:44 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc6-60-gb260f5eb4e57
Subject: arm64/for-kernelci baseline: 23 runs,
 0 regressions (v5.5-rc6-60-gb260f5eb4e57)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_142950_475305_857CAD06 
X-CRM114-Status: UNSURE (   4.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
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

arm64/for-kernelci baseline: 23 runs, 0 regressions (v5.5-rc6-60-gb260f5eb4e57)

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
7   | meson-gxbb-p200              | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-p241         | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
12  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
13  | meson-sm1-sei610             | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
14  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv2        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
16  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
18  | r8a7795-salvator-x           | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
19  | r8a7796-m3ulcb               | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
20  | r8a7796-m3ulcb               | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre  | gcc-8    | defconfig | 5/5    
23  | sun50i-h6-pine-h64           | arm64 | lab-collabora | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc6-60-gb260f5eb4e57
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      b260f5eb4e571549f47906273e7b53ad8c0087c4 


Test Failures
-------------
     

run | platform                     | arch  | lab           | compiler | defconfig | results
----+------------------------------+-------+---------------+----------+-----------+--------
2   | hip07-d05                    | arm64 | lab-collabora | gcc-8    | defconfig | 3/5    

  Results:     3 PASS, 2 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-60-gb260f5eb4e57/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-60-gb260f5eb4e57/arm64/defconfig/gcc-8/lab-collabora/baseline-hip07-d05.html
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
21  | rk3399-gru-kevin             | arm64 | lab-collabora | gcc-8    | defconfig | 79/82  

  Results:     79 PASS, 3 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-60-gb260f5eb4e57/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.5-rc6-60-gb260f5eb4e57/arm64/defconfig/gcc-8/lab-collabora/baseline-rk3399-gru-kevin.html
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
