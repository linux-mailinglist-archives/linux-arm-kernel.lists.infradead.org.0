Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92F61FD55B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 21:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SyFIKYH5MOt8pST2+85Io/Pc2tsTth7yX36Hc6Am/FM=; b=IQn7stSJTuy2AM
	sbvB2xNsfUYOMDwI03vDJis7ZvRwbJnx3WVFR9vLeKufeEkpUNlzTKRhKHxugDnE5jKQeM8olXqK6
	WP7a15gj4YGCnWKvdutbBXSdDEEI+JjXJQzh5vdJOFNPNUxdk2w8i+A8GR3W7toHy37LKnd8zb2ot
	nOJAKPHZFMwCZWqNsYdtMCmf4qbJFGIC1NFdvi+O078mOXIP7Y1pCiQqOTsY0GHdU9dIgbH/3mpQl
	Nu517EbSh2iHnsyqn2sXWu6NGDbkkrBNMBzgl3+WGImnYcJCKjYqT15dxtUAEmqwhXJkYcbdxU1/z
	vx/A9tzdndyHvkO0y3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlddN-0001gE-DJ; Wed, 17 Jun 2020 19:22:05 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlddA-0001eM-IX
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 19:21:53 +0000
Received: by mail-pj1-x102c.google.com with SMTP id i12so1449854pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 12:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=o1aUz4WZqMNKDwP4gjvS29atJu0epT3vBg3ViKrDL3s=;
 b=JKX7PHaEhzBq0KNPHLM5dBvB9PfmRefe2yZ0K/xh85bCmhnhXi2romIiW7QtmTgqZc
 IA4xbNi03c+tuVnmedBHirpUFln0as6/UcnXInudlmNmLNkZH18VVfvqskHIWLzJUIOT
 yQy/X9cldlxFHtuKrmnd5L9WSjEiGgjPZW3c2L5/Q5RsbZhEoqgXIg2m6/LnbcDFveZW
 qfLPqFPt8KEc0WacXcqWAS1Ajo7meuSSG0mc1+bs4gYBt03eMXutKDiT9MnMiGuVvtF7
 q9mFMoLMLRr942W5TchmENW5CkqnQ3/kpCehLn8ztCN3WsuGVs6FVSJ60GrVm7HIwZ1f
 0V6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=o1aUz4WZqMNKDwP4gjvS29atJu0epT3vBg3ViKrDL3s=;
 b=B91kx0fqjfx8tz7oA0RRRgbIaynkEUV0peoda0B/nc8Y9XWEJ84GPbVmcva9QqSsmd
 xUC7QIF8Ru5V6+nw7In3gI579gASTi017dqEGADG1Rb7u23u31M6FnuSxzV66t/KuzO3
 wQQpa8esCDiTdhU1FkW8eiaGjNWNcOPKmbYdJ6vFe1snS68CGcOWHJCo8BbMGdIcP+dG
 Vu99VzOYOWqlN8vHwAuNgnjglocAYb5ggQll7m1LAyrKVFDF8UANbAfhrCIiZNVm6WUu
 dbm0o+f8d5PopNfP7+7HZfWJektLIWBuQZ4D3GvXSrH4jbW/qBd0VHiySWSjuGNlolrK
 /Htw==
X-Gm-Message-State: AOAM530WxPrs13yIjUJb92yGFfcGs2YGmzLtKSvn15RVlUgn8j8ptDCg
 vDHa2KhT2/tn5uzwEgr4kiMaTA==
X-Google-Smtp-Source: ABdhPJwVPXCOmvkp+d8c+tbqemzERXsgbGqGwUbZGLUarDkO+XUJO6xB5u3gxz/sOTQ9k+68HVncZw==
X-Received: by 2002:a17:90a:7c4e:: with SMTP id
 e14mr612307pjl.52.1592421711762; 
 Wed, 17 Jun 2020 12:21:51 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id r8sm546465pgn.19.2020.06.17.12.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 12:21:50 -0700 (PDT)
Message-ID: <5eea6d4e.1c69fb81.b67fa.1f1c@mx.google.com>
Date: Wed, 17 Jun 2020 12:21:50 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: test
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.8-rc1-8-gb9249cba25a5
Subject: arm64/for-kernelci baseline: 22 runs,
 1 regressions (v5.8-rc1-8-gb9249cba25a5)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org,
 kernelci-results@groups.io
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_122152_623302_0A88A2C9 
X-CRM114-Status: UNSURE (   3.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
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

arm64/for-kernelci baseline: 22 runs, 1 regressions (v5.8-rc1-8-gb9249cba25a5)

Regressions Summary
-------------------

platform                     | arch  | lab          | compiler | defconfig | results
-----------------------------+-------+--------------+----------+-----------+--------
meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:  https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.8-rc1-8-gb9249cba25a5/plan/baseline/

  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.8-rc1-8-gb9249cba25a5
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      b9249cba25a5dce5de87e5404503a5e11832c2dd 


Test Regressions
---------------- 


platform                     | arch  | lab          | compiler | defconfig | results
-----------------------------+-------+--------------+----------+-----------+--------
meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre | gcc-8    | defconfig | 4/5    

  Details:     https://kernelci.org/test/plan/id/5eea637e3559c1c82997bf10

  Results:     4 PASS, 1 FAIL, 0 SKIP
  Full config: defconfig
  Compiler:    gcc-8 (aarch64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0)
  Plain log:   https://storage.kernelci.org//arm64/for-kernelci/v5.8-rc1-8-gb9249cba25a5/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.txt
  HTML log:    https://storage.kernelci.org//arm64/for-kernelci/v5.8-rc1-8-gb9249cba25a5/arm64/defconfig/gcc-8/lab-baylibre/baseline-meson-gxl-s805x-libretech-ac.html
  Rootfs:      http://storage.kernelci.org/images/rootfs/buildroot/kci-2019.02-11-g17e793fa4728/arm64/baseline/rootfs.cpio.gz 

  * baseline.dmesg.emerg: https://kernelci.org/test/case/id/5eea637e3559c1c82997bf15
      failing since 19 days (last pass: v5.7-rc6-124-g96bc42ff0a82, first fail: v5.7-rc7-156-g46909976c59d)
      2 lines  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
