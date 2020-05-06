Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4F41C65AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 03:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1oEJBdKF92HWdJFEE9ua9ni+8yrPqzwa9iG4pIvDdg=; b=AfcEEVcMvP4u+T
	i6syXoqU+LW4Y/VYTdwzPpP6GOj8dM7kpBzKqvckYPeEuIL1EMyeXz6JEcGqs8KBvE9OdjUFh/u4n
	2PAl4sTiOZqGlYVl4kPnMYia779vcbSFhmAx6e8m86tQGJwkioFentkjlo7z2H0kASQlOibCRWH5j
	tucQqbtIJAE/NLmGJ6YmDW/dw0+hDEiZ5rENqhbKWTk8OAau14SA6TTFc+xKkxwxxBXqgi090NqYn
	7sWAoSQBGIzlM8NmVwExjuaMNCij/0WLdu091cuzdG9c43Lj9DWqE4tKZxo5hRz/2aG/gxKhRGcKo
	3ijjfg7iwH2jLlzjx1TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW9CU-0005o8-Sb; Wed, 06 May 2020 01:50:18 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW9CL-00053E-KC
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 01:50:11 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a32so86051pje.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 18:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=1dVovmySIOWaygQ2CARSwWOU78brtemi+mf+nV6GoLA=;
 b=R6YVUynr9mHUA1a6DgFoX4yjXVcLT0lmUucV/4cK47Mh5xrxnTNbdiGfexYdEk7pJr
 LDJL1MrQjJZYXmMB8u5JsfICvnRarOwPmXdz2gEWLXyY8BbNCzHTpxVsjwjy/++Warxz
 8iI3iEO1+IKrdzY/1f2Xq3Gv0sjM4W9DbE7Bm9bTZcYwdwkPU95MNI1UgdbAm545L92F
 lsGb0YKQzCYBmw/Eh/jco++mQyhXS88LHgn3cS4HeopsYfMXUpodDcWsIv57zBoVADGM
 i9XTChPFjD5j/OwRrL35q1VjCBPfnIWLVRovBAKy/j30/k3Jw8JxJSjdu6R8Bhx42aAd
 wDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=1dVovmySIOWaygQ2CARSwWOU78brtemi+mf+nV6GoLA=;
 b=ZdbwmAu7UNgyFkRUoCRJjbkekeBVfsv22RtTLUbWKH6uPm4Y0nLKEHyZVpDhqV2VKT
 LW8hDfJLkHK3uDTR991ZCYXv+vmDuWNCsbmvqcOg9TglqYYImagLvebPo8BMtv1HHcFa
 Sm3QYGbAGtejyytc8qhucyzRNBkyUorwdiZAUsxDcU97R+MIsqj2epfy2hW/1oINOzU2
 QOmPGNlSq8Edr0YyGQupvJyZ4A6tQ0a5KY/FN9mfQ5K/34dqkadWD4umR/x9tFdTk4zc
 UVgZDKKX9cQnp45/PO/minJbPu0i96YZDRyQKm2zK0iBbbwC4L4GLPlpCqeMzoaNvDzg
 XFqQ==
X-Gm-Message-State: AGi0PuZ5738KwucRSdGbkalmK/ypPTrHssQVA34QPIKheqzAoVYYMS8d
 t/MR2gdFgTQt2avBi9swIdcr0g==
X-Google-Smtp-Source: APiQypK00aIQPf0YdPNmvZshEXKDEeKvi56bRydppqVMd50wnw4PGJkiH3t1YC+eYx0l+RXM03oobQ==
X-Received: by 2002:a17:902:b58e:: with SMTP id
 a14mr5233406pls.247.1588729808711; 
 Tue, 05 May 2020 18:50:08 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id t14sm330307pgr.61.2020.05.05.18.50.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 18:50:07 -0700 (PDT)
Message-ID: <5eb217cf.1c69fb81.9de5e.1c78@mx.google.com>
Date: Tue, 05 May 2020 18:50:07 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc4-77-g5afd75ffb0b1
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 25 boots: 1 failed,
 24 passed (v5.7-rc4-77-g5afd75ffb0b1)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_185009_691666_5A3FEFD9 
X-CRM114-Status: UNSURE (   4.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

arm64/for-kernelci boot: 25 boots: 1 failed, 24 passed (v5.7-rc4-77-g5afd75ffb0b1)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc4-77-g5afd75ffb0b1/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc4-77-g5afd75ffb0b1/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc4-77-g5afd75ffb0b1
Git Commit: 5afd75ffb0b15f0a6845c02ba1073e155897cd06
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 25 unique boards, 6 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          sun50i-a64-pine64-plus:
              lab-baylibre: new failure (last pass: v5.7-rc3-49-gaf3701612ccd)

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            sun50i-a64-pine64-plus: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
