Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6248D1E7A3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 12:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SOWZf9yNX6CdcSiAWUh/GXDgLkS4Np5vmo+dUrEpx4U=; b=jRGvjPxUtVIIG9
	IGQ/OwSaBkO99M33hy1f1ed6d5yvLIt+IeWwvtqAr9m0kU6YFwuGfPjeadvw5Zx/rsdWL6OeVNS3W
	jKq52By0coTxz6g3h8ajnBvyhQ13c1vSHHtlx7Xs1V2ZpU3DjzFgYOOGULnnIT7Ru/DXgWYSIJoRi
	6MXTqdnjKf7N2drDJYWEHF9H0/TBio3qTsx6ibJNsaEan/oeHEfiF+x4uH+0d27DFcxwk2LaWvRH1
	ith+pfdGFMLE83+xuEVHV/viroJGCx0cxgm4/FXYZ5+NNsqw8P9XRx3gAMinrpK8quPqgWtQCOvak
	wN6rT9hPXAIFd34QozUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec1p-0006N8-Ax; Fri, 29 May 2020 10:14:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec1c-0006Kq-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 10:14:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so962543plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 03:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=f/txR9ODEbeDoZAKvYXB1b76biE/9ykLAWICkyNWIJA=;
 b=NIs8+FwyAK2zmgP0LfsXlcCWqO8wJ+Qz4JnWGMv/Dmp+8uniKbGJi11Wj2RjIGyHAn
 miOlBtKXDy9L7rP5BFtwhoizCm/iheVz60b2vk3FXiaOHVlI6sp+6SC5Qsiw3LmDaHeO
 N6WIoLZpycZ30m70D4g2zdLUSCBH4oq6EZDq7DrdYoxPekmxFvjT08prDIyCWu7WIyu6
 XAKBBPi4AVvphp2+d4oEjxgqHDNxk9qoMTOqfBD7JO5LwXPzYRjAoPQ6wR5egdDSWfya
 3DJY/+xJlUZYO13hUSYwdVz2WiIHm6hNfEitNtIsQNTvzGPfNCyQ3ER7QgMom5qT1KO3
 vlcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=f/txR9ODEbeDoZAKvYXB1b76biE/9ykLAWICkyNWIJA=;
 b=YoS5rWAbOepMkDNM6BiwTTZ6mhnhKMqt0H7k7Kkto81E+MKgO8Py61QqAtNOcTmaXH
 7XBYGjBDoZj9vS5YsHNEdn59WYOtcxc3SKU4CEIhKil7n5RzqDDgrg3i5OkKq+FDRBky
 cwcrTQ8Yig9ODpZssxCoJlete/AYitU1sHBHtsg6+v2q3HO1eopMgJ05azCj5exlbXa6
 dQ5eMKZMqEowvaap4X4TxtSa1NVzURKNODjSXARgvlX4zIdBAl4oNcv7V6oBGU4mdxhj
 blhJe1aso6I958xywLz6p7TpkvrFMUy4VEuVcX2n09Bl2i86L9+vjNw4ALgutz1RrkVh
 LidA==
X-Gm-Message-State: AOAM532qLOTsHiMubyKxjQoihu1nEZx+D53w+H5dBgRsx3iFF9UZj3V9
 8oDaERUbhm9YWAtKP7jrpfdu3w==
X-Google-Smtp-Source: ABdhPJyHywEJyi4pfNRhnScsYN5KzcrCs7WSKHffxo8Bllz7wOB+SuqVvSdhzht0Nw42/VTkDy4zPg==
X-Received: by 2002:a17:902:b193:: with SMTP id
 s19mr8119481plr.33.1590747244132; 
 Fri, 29 May 2020 03:14:04 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id v12sm7235691pjt.32.2020.05.29.03.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 03:14:03 -0700 (PDT)
Message-ID: <5ed0e06b.1c69fb81.6c3cd.9887@mx.google.com>
Date: Fri, 29 May 2020 03:14:03 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.7-rc7-156-g46909976c59d
Subject: arm64/for-kernelci boot: 25 boots: 0 failed,
 25 passed (v5.7-rc7-156-g46909976c59d)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031404_747833_889BD65A 
X-CRM114-Status: UNSURE (   4.78  )
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

******************************************
* WARNING: Boot tests are now deprecated *
******************************************

As kernelci.org is expanding its functional testing capabilities, the concept
of boot testing is now deprecated.  Boot results are scheduled to be dropped on
*5th June 2020*.  The full schedule for boot tests deprecation is available on
this GitHub issue: https://github.com/kernelci/kernelci-backend/issues/238

The new equivalent is the *baseline* test suite which also runs sanity checks
using dmesg and bootrr: https://github.com/kernelci/bootrr

See the *baseline results for this kernel revision* on this page:
https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.7-rc7-156-g46909976c59d/plan/baseline/

-------------------------------------------------------------------------------

arm64/for-kernelci boot: 25 boots: 0 failed, 25 passed (v5.7-rc7-156-g46909976c59d)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc7-156-g46909976c59d/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc7-156-g46909976c59d/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc7-156-g46909976c59d
Git Commit: 46909976c59d6f251cede6280611aac5b6813867
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 22 unique boards, 6 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
