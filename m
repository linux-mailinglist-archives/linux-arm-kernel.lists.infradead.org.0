Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DAF1D9058
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 08:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C/hoe0CRpRZwEAJPT/bOoFDfrcOIfDeUjQX9QTLgBVg=; b=bwc/n580QZYl2O
	dl2prBBO4nTo1xZBoKCNSbhnZl9RbiSqqmahTnVtPOrKzAhEaljODeL/MrBXjUO0QPYU3Fzez3X04
	CRtjLF1GeM67JR5abWjRIANG/fsoUmMWh5nw2lXAPEJRQ7LbTXXI2eiYllGyzAekjZMU0jEtvdiNt
	Mdcms8neL6iPAC7GLZuJQ8ca751kAEYFX/zJBEr9GSgXKpwT8Taq6u5u+G9PnKuEB37HlW1ck3Q78
	Zqh+SNgcmjw3cQXJ+BefZd6q+IigotHd9cxCXiNvpQf1w4lTE5r5MLotOVJARy1qMA7VZ6zOaJLtV
	FWQ8fvHTjLj1DJ0zmWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaw8N-0003vw-CN; Tue, 19 May 2020 06:53:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaw8D-0003vF-A8
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 06:53:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so5228427plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 23:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=Af86rZezDrdFMMLicglNAWrBIg6TVakCB3KO2nqpLLo=;
 b=bE+NXasgSesBkuBHkZ6kC7qImUP8fPurWp1dSmlZQuKNrcX/yIpzPnP28DcOZZ0Glw
 WJAZiwkxbfT9wik0SW5xB4IJo0NxhEHQ5+wHRWxvW9rC71fQGeWMpK3Wr3fpW3b/CPwI
 DjS2xJMcec/XE8ZoYfcUfUlGR/WUG6KNgQarM9gwWy/K0pvmJFvtRY8loCHIOSPYrZEF
 lPNTb8luR5I+zPS27y4PylVFbKAFIkpVv8exHPOVBjmiug4J8EUvcsvWXSvM/IdUlkcl
 /DhlX1tpGRQzgCkqg2o/W+2nS+CRDpruesUiZbMBfu5dsmIkQjgCbVA9yt55qJP6RAC8
 ABJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=Af86rZezDrdFMMLicglNAWrBIg6TVakCB3KO2nqpLLo=;
 b=Dgk3fB2GfbPyTzb/6dZ7s63pRUPIPH0k30wDku162yE8RWheEIg6o0sQOfDRsWOEoP
 o7kHI3NO9/BgpUnr2aj67D3j/UP8ZfiU8wG4oWQRTazf7KLaiZ36OIAbcMfFkhgtEnPe
 qeo44dCCKXQExUn6OsbxsCIv4c0jswyznHuI+MNxPWJpqxrjpDYVjV1h8s6VkXteNTyR
 G+MXXml1r38FmqxNz6X0fqWnWBYm7zaW60tRsPfrwk6g1J3pj6cqHhhhnPYM+dMLbFkT
 uhff5g6d2d+Fd6a4CE209unJ8WgEaTePWHnH5xqSpkiajjDKo7DcdzEGNoAFLy9xMjbh
 JunQ==
X-Gm-Message-State: AOAM530cvm6XfkufuQn6or7PhEUgXCkBK5yQMfa62GxG2PuUDeDg1Wey
 L0ZTu7bd0/dSxaAXZFr0YhaqTg==
X-Google-Smtp-Source: ABdhPJzgPyqS9gz5MP9MBwPZa0rHK+IednsP+jxw0M5IJmIBnssKDEkc0rCX1Gucxy1qdHIQo1KBkA==
X-Received: by 2002:a17:90a:cd02:: with SMTP id
 d2mr3427154pju.207.1589871220806; 
 Mon, 18 May 2020 23:53:40 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id i11sm1219993pjs.44.2020.05.18.23.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 23:53:39 -0700 (PDT)
Message-ID: <5ec38273.1c69fb81.6e888.4a1e@mx.google.com>
Date: Mon, 18 May 2020 23:53:39 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc6-124-g96bc42ff0a82
X-Kernelci-Report-Type: test
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci baseline: 24 runs,
 1 regressions (v5.7-rc6-124-g96bc42ff0a82)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_235341_351103_5DDEEFED 
X-CRM114-Status: UNSURE (   4.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

arm64/for-kernelci baseline: 24 runs, 1 regressions (v5.7-rc6-124-g96bc42ff0a82)

Regressions Summary
-------------------

platform        | arch  | lab          | compiler | defconfig | results
----------------+-------+--------------+----------+-----------+--------
bcm2837-rpi-3-b | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:  https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.7-rc6-124-g96bc42ff0a82/plan/baseline/

  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.7-rc6-124-g96bc42ff0a82
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      96bc42ff0a82ea44f220ea721a5835e479ec8cea 


Test Regressions
---------------- 


platform        | arch  | lab          | compiler | defconfig | results
----------------+-------+--------------+----------+-----------+--------
bcm2837-rpi-3-b | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:     https://kernelci.org/test/plan/id/5ec36d7f4f34ecf15e4397c1

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc6-124-g96bc42ff0a82/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.7-rc6-124-g96bc42ff0a82/arm64/defconfig/gcc-8/lab-baylibre/baseline-bcm2837-rpi-3-b.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz 

  * baseline.dmesg.crit: https://kernelci.org/test/case/id/5ec36d7f4f34ecf15e4397c4
      new failure (last pass: v5.7-rc5-98-g51f14e2c02e8)
      1 lines  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
