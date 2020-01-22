Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3869145CE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 21:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ehAYwfXksfDLV69R4rN0v44Qq0Ccikv6oowFRVTTrf8=; b=hVmbEAhErN6WrT
	0XJC0ZkdcDF15+1nlQziqd5l8Ry1K5hHNsPOHxoL1UPe/g7b/Z886vd+eNbueigWN/K9Sbk+2ToAa
	614D90MuYMLFzzBLlcig9XcBU6OSNgtK8/fxi+bK3RE8RhzT8h3mNw872zyVmR0rjZZmktf7s5d1P
	wM35TdBosARkgNyrcnfcPwp/Lhkyuyu+/jW7L9eUmNNISSgQq0bqPWZrhXJ978PkTCgii1MZp6m5T
	wMNgKmPCSpPp4luNRp7M//qlp1R1G3gCaWiNumPoFQQUNMszh4LKC0FiAU0vk7YN7CzbA+RnTyt/o
	S5jnawUaQrK8K2/+hx5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuMKc-0001H0-CT; Wed, 22 Jan 2020 20:10:30 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuMKQ-0001Dt-Ht
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 20:10:19 +0000
Received: by mail-wm1-x330.google.com with SMTP id p17so64318wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 12:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=kXVByR+dETLRy89jNAi0E4Nq4e40venir4KS1cqqsNc=;
 b=lIv0uUo810hoFJtg/qZUuOLY9Ht8VWhYS6MGcYwPteEaeLvf3mmANqG94VSOZFkBBQ
 NQhMy6eLVLO518Xx4jtnaxuI7sg9ga1/3eb+O0Tm0HcitVYGI/7JnrRAPTxnUa+3zUNe
 2MQ1xyIjYFxK3iaPiJvubdEUGUMyJBSkOJD/7DZ6ztOUAFTpJKKvZHLbHY3X2SLjMELu
 A6XGtO6t9AgRPNYvLrTMduYhhW73DV8U8l3gxGXA2O6IrMVfMkQ2ecLfM5pIu89rCFs5
 g30rnkMztamgur9anftInz2aPQ4Jmjfps0+SHqFxS7ItbtY8dmZXSVdlF+x0cbdlRoiL
 RGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=kXVByR+dETLRy89jNAi0E4Nq4e40venir4KS1cqqsNc=;
 b=TS2aHgJzbJrIN/5h3J1XRnpcRUXQg5X9+80YY6oUAcSq9SR8RuytI/DG4fF/WhZhwt
 XrZZXKIjw/KgXdMKsvfgvt51pdbUYqsoo33D96N6gDbl9mottx0ERZGnXk9CGo8DQ3wa
 tHCIJwO6zVOV44XkiBdpm/rg7nUZNdBJGG/0pM3ZXbGu6uG4IXU+M3yQut+HH8PeBwv/
 CSClipUerlEYxMZwYu9gbcsiOYzanoSZrL8aqvmv2OdSOuiH5m58QUs/cwXGlxhgOonL
 kdoz2AluLRqsB5I03+sinZ27+RjRhSHZPkZpo78mvoojk8s8lJIDpiCal4pPqkmhC3qe
 I5bg==
X-Gm-Message-State: APjAAAVjQmuaIHMyCPx01ZiYsTh/axz664qujD6PDxzgHQ2psh729Bvt
 oiWkDp+v6yg3/hwEk8rctQKZJA==
X-Google-Smtp-Source: APXvYqz0uDX9504gY1HDtqibrmZ2UVfRCxHK1CjUScX8hR6y2OfbNniUC0wYZQ92SrAXrP6e8VK9gA==
X-Received: by 2002:a1c:f210:: with SMTP id s16mr4436816wmc.57.1579723815950; 
 Wed, 22 Jan 2020 12:10:15 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id l6sm5817504wmf.21.2020.01.22.12.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 12:10:15 -0800 (PST)
Message-ID: <5e28ac27.1c69fb81.e2b83.800b@mx.google.com>
Date: Wed, 22 Jan 2020 12:10:15 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc7-78-g7bf8ec415871
Subject: arm64/for-kernelci baseline: 20 runs,
 0 regressions (v5.5-rc7-78-g7bf8ec415871)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_121018_596934_6A831407 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
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

arm64/for-kernelci baseline: 20 runs, 0 regressions (v5.5-rc7-78-g7bf8ec415871)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
2   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
3   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
15  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | r8a7795-salvator-x           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | r8a7796-m3ulcb               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
19  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
20  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc7-78-g7bf8ec415871
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      7bf8ec415871eeb90108d33f31293f2917c8e022 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
