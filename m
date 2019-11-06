Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ADFF2258
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+a+jAYXqCubj6FAT8bPU/kAuiGgTq3ThvutN/FsfDo0=; b=D/R8o447Eh+QU8
	49+fY0UnUe1NNRoQor44Er1cmTjILyEVSs2ZNWU1eyXcaxLwIfTCcddm/i676qqFuc5lYbmsOEZNl
	LAgX0DxiyZ3rIyYaSzoNdnVv0FaZ8uybypf8RokY/jx77kYLl2i53kzvHb3Gl8YESdywJJr5h9g1H
	JoU7bsAo+LeAuL+TL+grcwa9oHPAzoHm2tYSvpm7r8H3vMTskzyRXKjD24RiI67EVtOYO6+5e1B5m
	uVVHt+KuU22o7IWyaNYTaPKuOPcavVT4i9XzYNPhzjUacn8ZGRgkTobPnp79ldWyX2VwcVLH6AT3j
	bQ7VVgNPvUOn4HZB3kHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUQH-0002uO-Qb; Wed, 06 Nov 2019 23:09:09 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUQ8-0002t7-5F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:09:02 +0000
Received: by mail-wr1-x431.google.com with SMTP id e6so677849wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=Or7qF34rI/TwqlfVlknHhsSaeXPPIYl/oqNmZhNL1mE=;
 b=fLiAu60gkFNDJsjkxxr73uvtrsSeOp7F/fr/XSaI5XutNRPYUCJN7o//DtkKzEl0Dr
 BgSAs76bjqkZ53Cb5ZP7csJSo8RmcFIW+4O09lZveF5DJYbFMXlrUsCIfbGSb7Z8DVmD
 QqiSPyQpPGz0Jhd7waPMOVdj/27Px4Mri40J8/6Gc/vik6rj2D45ZuXuVtu0rHioEh7o
 jtyzA2S9S9D7ryQ7rVd282/Sh7g8stmBbwW/baGN9oPOnNF1VIlYVSx6Vy0787mGeUdb
 9mIxd0JUegpOHhmg6M6Sz8maHbXgwewLMACUM6UMTBFhEBE5cZjl1gY30XmMvj+7200t
 9s8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=Or7qF34rI/TwqlfVlknHhsSaeXPPIYl/oqNmZhNL1mE=;
 b=KztdoJ0cKTpwuB0lDuQKHFDLze7DP04EuNlZtDj3Q7exH3dQUbT7FDUwRRU8E2dm0y
 LH3TQmpWXfpTuvVHLn+XNVfcdR7F3A8yufjVZN8UNw20IWmKykL53vAqzeknwbv2Ffy+
 X9PlJEt6KrjpHDF4eXv8F6JUjUjLWRlIreKr8AG74MnGikJuQ/Q3Y0GB740BoAh0uq+A
 I3VWKb8jyLfwphtn49hbQFlnZpYMfZSG77UgCvm+6Mcp8G04No2bPf1f1qm/KEj3ctsZ
 XJDQGvqMvg91CRt3ry8fIwYe3vJ86Qu2LUZbS5RCi2dy+T8xTx9+NxgfViz2pjwO4n4B
 9N4g==
X-Gm-Message-State: APjAAAWRCSfB+rbellqqFwvWngVEx/jtGQ9OVwagFJU9f6ZV3kRYBRC4
 KveW+UhXYbHrho3iPktGxTpCrw==
X-Google-Smtp-Source: APXvYqzU3UiepW/oySNG73V6TOfzDT9K6jQTKyOdJrL4evTDEGUxx1s0APcrbSrgjobWLrcbr1owSA==
X-Received: by 2002:a05:6000:1181:: with SMTP id
 g1mr41810wrx.131.1573081732840; 
 Wed, 06 Nov 2019 15:08:52 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u187sm93873wme.15.2019.11.06.15.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:08:52 -0800 (PST)
Message-ID: <5dc35284.1c69fb81.51f9f.070d@mx.google.com>
Date: Wed, 06 Nov 2019 15:08:52 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.4-rc6-85-gd212d757c765
Subject: arm64/for-kernelci boot: 19 boots: 1 failed,
 17 passed with 1 untried/unknown (v5.4-rc6-85-gd212d757c765)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_150900_199120_50446C86 
X-CRM114-Status: UNSURE (   3.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
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

arm64/for-kernelci boot: 19 boots: 1 failed, 17 passed with 1 untried/unknown (v5.4-rc6-85-gd212d757c765)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.4-rc6-85-gd212d757c765/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.4-rc6-85-gd212d757c765/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.4-rc6-85-gd212d757c765
Git Commit: d212d757c76526077be6b659bf8cf0818221e438
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 16 unique boards, 7 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-gxl-s805x-libretech-ac:
              lab-baylibre: new failure (last pass: v5.4-rc5-74-g07d0b0abb45b)
          sun50i-h5-libretech-all-h3-cc:
              lab-baylibre: new failure (last pass: v5.4-rc5-74-g07d0b0abb45b)

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            meson-gxl-s805x-libretech-ac: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
