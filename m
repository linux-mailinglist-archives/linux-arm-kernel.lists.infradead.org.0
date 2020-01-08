Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D065134EBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5OFhWHaMXHrBQf4ot8rn78rD29vlvh1nlPumiu6PieQ=; b=GFTt3joyn8Sg/s
	rTOHWAjoZNdCS3oy3YP+bqD0xKqyI9zrAo+2Kt7pKrHIe/XH055wIbK0toNYu2o45slZw4yHKDIH9
	tAAPEeonE+Eh0QAccBZy2GFhVTxKzCdCm+QiEf16lK3cGICdZCjuur+2IwyvKF3G8FRe+c9ZzZOdx
	UVjWEwm9lNvNWRoGExe0G+1murR9E1slxomn2aGgGfshLSAuAiiPTgMwHL2x6TBpvuypajq79KZDj
	FPpZHIVws+FXvFg7hroxCeNztug58SETDU3G5ax2y3eyQCxGbirX7Vsq5zPm4JvqxOhApGgWeX1B2
	/QFhstW1RKW/B4Jj0OZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIjj-0000J6-PB; Wed, 08 Jan 2020 21:19:31 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIjc-0000I2-0u
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:19:25 +0000
Received: by mail-wm1-x332.google.com with SMTP id b19so481328wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 13:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=rmTBfk3pcYbbsaYh52YdJrHZ9dZk3Sgc0NbZkHF277M=;
 b=qP11fo0vw8PCNYkyAo4hv94U1uKNxOrevmEB1bg/xDALZotDKnFtIomFhUovA7D0J7
 /oDiv5tjqeCMDlF+tBh9ZZ1N2vTdGXWv8Wp9Kf3k4Mu6exT7d4mG+7ncrQIFwLm2bB0E
 GhZPJJjZ/fUJSH8qzc/Ht8g0fgHbz3TU+YNCOA9xZUl53+RB5yoZd/SBdXqwe076fklB
 n2AWZ8GmL16ioJXnlUV7rgBL4qjaLau+qTR7IJjt520UW120b2ZFnXfgob8VD85WvXOL
 M+AdQXA2HGGqaXo5Vyg0Iw4yokXIOXaobbaPlaofnjfZg+6APTaxXS1y2C1LBRxZfNwJ
 yhbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=rmTBfk3pcYbbsaYh52YdJrHZ9dZk3Sgc0NbZkHF277M=;
 b=roIwYuaG4R7tUbaMbZxy7F4oNMEESJvNfFV/Qif1iYk8gcJRsrD6lvTXjglKBn18kK
 SG+42h2a3OL/3Dif6WpQw64XaLCpMarzCWrz9SnRekxI2DwSk5YVpvsCJMyETRglRtda
 futByCid8lj4rZacvdLojd4/DQ+TiQuZsYLEeHLvf5ozBX6+c07JZ89ASoyci/5e30HS
 Gicwdoisgx0c/2B4BJr5V2u9KL+5t4/lDf77IJ7kl41pfxKScpkvU/ix5yOGo81t/NLN
 1L7AzMmllHhcfZbOhJdYsqYzXIb3wg6eIaZXWmNSoK7hPHHo9Pt3t+uo5tf06LAGshLO
 uypw==
X-Gm-Message-State: APjAAAUZuti+IeEENEJxZE3OF+iZp3luAVF/k+yJFx9XNjoTKsQEkcGD
 LZb44uxE77iJHg83zS0io2jJIg==
X-Google-Smtp-Source: APXvYqyq5m0wxCBL1Tkx6a4UCjlYVr5vztMKHqi3+ffRZt7PmSHlcoOv+7mJx3c8S2FUR1x3oKpgDA==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr600678wmc.145.1578518362343; 
 Wed, 08 Jan 2020 13:19:22 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id t25sm404707wmj.19.2020.01.08.13.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 13:19:21 -0800 (PST)
Message-ID: <5e164759.1c69fb81.7fd83.2488@mx.google.com>
Date: Wed, 08 Jan 2020 13:19:21 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Kernel: v5.5-rc5-28-gaef73191765a
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci boot: 26 boots: 2 failed,
 24 passed (v5.5-rc5-28-gaef73191765a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_131924_067096_10FDA3ED 
X-CRM114-Status: UNSURE (   3.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
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

arm64/for-kernelci boot: 26 boots: 2 failed, 24 passed (v5.5-rc5-28-gaef73191765a)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc5-28-gaef73191765a/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc5-28-gaef73191765a/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc5-28-gaef73191765a
Git Commit: aef73191765a88cadc0a627cdc070e5a0086b015
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 7 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          bcm2837-rpi-3-b:
              lab-baylibre: new failure (last pass: v5.4-rc8-104-gfbaa9209b833)
          meson-gxl-s905d-p230:
              lab-baylibre: new failure (last pass: v5.4-rc8-104-gfbaa9209b833)

Boot Failures Detected:

arm64:
    defconfig:
        gcc-8:
            bcm2837-rpi-3-b: 1 failed lab
            meson-gxl-s905d-p230: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
