Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76B51DE541
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 13:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oWb6B7OsYvEEC8KTK6/WjkBfd6Ye9wXOhFzyV01shl4=; b=risYt7uC/xoNjI
	PX0De/mQN0s7N59tUESzzbu4k4bTsHdH1JkvqE02IUspn2nutrNmUSK4cp/Jba5csp37rVIOFhMNk
	xrq3NlCAx0Ct4ioYx21oRNH2/7rxNGapwPoYHMQzoPupJqqKgihBMXaOdQmhneODgmEhiOlf6dSbj
	jh6WiYUH9C3LlVKeVHcaXusdCXabwAPC9DyaGpmNPuxybTbPi2YjANNMa+GDtc/eE3t3LINybFj9M
	VzstdSYpWvgjfzEoavXrOyu9zGTihS1Aed2EPS0G8O2Ms7yjYD72H7d1yAXBqhmemiL+w4cj40lTI
	r5HfKzgsNwAP27iO5PjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5k0-0008Jk-V0; Fri, 22 May 2020 11:21:28 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5jr-0008JO-2y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 11:21:20 +0000
Received: by mail-pj1-x1041.google.com with SMTP id z15so2190185pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 04:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=0tY84DfRTRtfABHCPtFyUeu1KqbmqKjPRk6x1IAI5io=;
 b=afKBH6HzinNYNMxKNDrPHXY1S+C9RWuBvJUcH9Z1i1j+3qkZqu3rnAqcM7N8wBE0an
 FT8DTYNicK3zpWnTDYhSVtGnhtL7NmnkESHZjA2FMtXFIh/P4a0XSMlHC+UAJ+QTOG22
 Dn4BpJLsdeqRhKzv4YBb4QtTcCIqM/uNOrp1TLWVUgakEWxpRD6QkdX2kwLgnyhJw84O
 Zl20WORBxWh9h4ur2uXFGFdxONQbpunMPkc1IoKyvxlvywpdnLTq5fBeEZ5FdfpZCRCC
 e3ISBDWeQ2Uekyfsr0Gk18fhcXzI2UpXaumD2ImiJssXjBubOIaAE7NpDLkeoxQT0hDd
 O5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=0tY84DfRTRtfABHCPtFyUeu1KqbmqKjPRk6x1IAI5io=;
 b=KGVtMH1bftAFh27Z6ZBf/krVaZPLZ2telm/PdA15KS3S/WRr0c3USwvDV0/jw12jd4
 igIPPHlSL9oBaUWjdjs8NgjLwHP+J8nXz34tEPNcwC8ql+i+rb5HgdguXgCBO+1hoCpt
 RRGTXrgXoku8lYP3/3X3coVz+9FirrTo5X8EbdAO1xEfggHtBqfNi7ZJ54xYV/htMqp3
 tVCZPKWB5t3Ht+CkHEO5khQpAVHaeOz20Ee0Dq4MJIB/s4+hAUEdiUPdhxwm78ylv9sv
 NNnGu4nlr5bLY+IEcC1mnPex5ZFnsYwjI20nlmFvHOTXIEB6FQARU95RFce1OsdjC7gu
 E1sA==
X-Gm-Message-State: AOAM530nbgHYye/z+Pz4Yy5oGDCOMWeluE30qnbN7aFasdRPesRNf7md
 uKV3jVamahQnmtdXPP9mtd88ow==
X-Google-Smtp-Source: ABdhPJybhraCaP5vOUZvcirtYezJV9gSdnJHFkn+AeL11v6JEGQDRpjOBknuXHcg2T30TELVALOdgg==
X-Received: by 2002:a17:902:ec01:: with SMTP id
 l1mr6353435pld.130.1590146476473; 
 Fri, 22 May 2020 04:21:16 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id a6sm6772568pfa.111.2020.05.22.04.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 04:21:15 -0700 (PDT)
Message-ID: <5ec7b5ab.1c69fb81.da2f5.01cf@mx.google.com>
Date: Fri, 22 May 2020 04:21:15 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc6-152-gf4582661223d
X-Kernelci-Report-Type: boot
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci boot: 23 boots: 0 failed,
 23 passed (v5.7-rc6-152-gf4582661223d)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_042119_130085_AF11729A 
X-CRM114-Status: UNSURE (   4.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.7-rc6-152-gf4582661223d/plan/baseline/

-------------------------------------------------------------------------------

arm64/for-kernelci boot: 23 boots: 0 failed, 23 passed (v5.7-rc6-152-gf4582661223d)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc6-152-gf4582661223d/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc6-152-gf4582661223d/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc6-152-gf4582661223d
Git Commit: f4582661223ddb7725bb2aa5a211c7e25a05816f
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 22 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
