Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9A41457B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 15:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P6b4l+e7xkppnyfwJu5ec04lShSTG2EAQWBFCQA1PfY=; b=lNWsaOzzNJBnzQ
	dn8kB95khXB8IQpYM/okJ89VjQquB1o+z6U2dVkK00BQZ+L5O/e1R73PxZzbEfIxr5EcDyxKeytJe
	+Uuy9ej+JQ0WtHjqoGqscisIZijB8AmmUTkpZUwy2pIX4L8KxaRzko0lpoDVC+mHCJI/7hfD8z/mo
	DQsHqGaptelBiOmQxnmFB5Op1/Q1Di341I5rrZ1nPgDXDA0nvU3A/4Z916YVZ6f7StkSagevX5cJ1
	zJW9oGi85gOS5Beop2Mfa22za8+XETOjiZaR2WjKJJ1X9IMXE66LqwHKU0SPDMkSFk43ERYlb6bJ+
	ZByVOnrPnGSSE03aXy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGv7-0003G4-PY; Wed, 22 Jan 2020 14:23:49 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGuf-00035J-CE
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 14:23:22 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 20so7370717wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 06:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=swFpaLLs3ZA0J0FqSwPY1XmOCzYG1LmbhFonIjriq+k=;
 b=ZPqf4qMxAcXO1ib2YLHjokh7biPurUVKPq9IovBr4yABE1wNwV5KkVOta+kkW00njq
 jsbHfrVEN0GCVZZoeme/E/T1GfU1geBcd4l6c4PX4FrVdp5qr0vvQmQynsqGvuGCgz9Y
 x5IH1GkHTRE8IMv95o5k6fiByacF6xKRAQ70tjwO+I68dg5bP4u3OmLKsXh81hfCgMBV
 bHzPWtlqXS/DbyJZGvZuaVkLmj+55QS0wTf/Bm/6zeO5WikP4WrYpIdk2HwfuLmBbmcS
 E50wEW7iGuORQ4Wwc5eQQ7eBbQMIH+5KSd4UelnzOhrEprjRIeUHyOcTsZ5P3bCvV88u
 iXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=swFpaLLs3ZA0J0FqSwPY1XmOCzYG1LmbhFonIjriq+k=;
 b=sehNzynAfvEdoXIWx5z2nbyU9wpRsyn6giwrycqSwVr0YiPWxKJA7uN2trcjh1CDRa
 ttVMI41kj3obPvd7DXan7+79eP1H3cRRiGLppQLIFcUjcBWWtr6aIZhF/ymzw+o5gxRK
 IZA4GIt0LMQJwLPQKPi9F4Dqo+YirwJ67dVCabQIGxxHcG/E3CSt+EBqWdVmW1TkXCLJ
 1ETefcvCluSOB3SVcrBCmXyloMttnXXostGrGA+Yh9lB+i0iYQGz2YoGgx+SVLKe+Tqu
 rznBdij6054vc8fPCeKz7XP9f873wHBKng5sfwhVgQIaeg31LCCBcEI1zEmZv5vxUEbG
 gSCQ==
X-Gm-Message-State: APjAAAUfBJWHPdUEUZbTViTTxij2c4eon5MW/5z1XrWl+XB+oq0pHegT
 F6cUJU1oRn6GaVc+1qfqcdaRMQ==
X-Google-Smtp-Source: APXvYqx2Af0XRxXNXTVipG98jHTlw+flpwBgKh9UjYhmjJCX/CnDfFDQVGkvsyQhL9r3/eRd76Y2mA==
X-Received: by 2002:a05:600c:218b:: with SMTP id
 e11mr3458309wme.121.1579702998006; 
 Wed, 22 Jan 2020 06:23:18 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id d10sm59382223wrw.64.2020.01.22.06.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 06:23:17 -0800 (PST)
Message-ID: <5e285ad5.1c69fb81.d31c0.c8b5@mx.google.com>
Date: Wed, 22 Jan 2020 06:23:17 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: test
X-Kernelci-Kernel: v5.5-rc7-77-gae2b4b8eca96
Subject: arm64/for-kernelci baseline: 23 runs,
 0 regressions (v5.5-rc7-77-gae2b4b8eca96)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_062321_419169_C4E5F516 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
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

arm64/for-kernelci baseline: 23 runs, 0 regressions (v5.5-rc7-77-gae2b4b8eca96)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
2   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
3   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-gxbb-p200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-p241         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
15  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | qemu_arm64-virt-gicv2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | qemu_arm64-virt-gicv3        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
19  | r8a7795-salvator-x           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
20  | r8a7796-m3ulcb               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
21  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
22  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
23  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.5-rc7-77-gae2b4b8eca96
  URL:      git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      ae2b4b8eca96d473698cde211897e6dc4ce33fc7 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
