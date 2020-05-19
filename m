Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0AF1D9059
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 08:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TLn0IHqqSUGAsTQkgmcpjjEm1NPHgEM99ensIlArCCQ=; b=VUqy72oj5mjLUB
	8OrOc7VR+C3384TXMMhzRS0gvogh/KA/gXFpTAQGKYYOM33xBTNmg6bkBtjQ/+bxdyB93fq+7ZzwG
	rEJ2g2/hdgtIBb8k47O/BTWnMJA7vhYJLYT3vIaT2rpoxTeuuhle6OKNs8WXYqZcB/VH6jXiBoAmA
	Ylh0LWSJiiAwEkxJ+VGCfbQEaev4d6DuuiC/GijYMEHYSw9sRE95SvIccxadvkzsZxoPPEYk7zPRC
	ki9KLVzzkb0d9YmRg8MjHNNHZTmNUwgKNfUrKAVxRLOcE4fTsRWQwEH065Ku4CYbQqG3Uo850LLkQ
	JCnayJq8L6CCRM/EUmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaw8Z-00044D-VQ; Tue, 19 May 2020 06:54:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaw8D-0003vE-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 06:53:42 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s69so905962pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 23:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=Ja14eDCvTavmsN8lMxWdH3+F7uMEpoJeeWQPefK/qCg=;
 b=cGeyi1qn9Z/1ZCxVUencAUm62naS2/oXNRxGUWteXtPsDxFww4Pk50zEwTwNFd32AS
 Et0XdagF9A0my1UbalAZ7ukPrAikxD/gloXJ/fL0IbP1SBnErjDHCebtMAcx4VI5d7VB
 H2U+A2ZaKRMsAODeUWFRipA3FMEUi6RRQ1lVBWNrrj/NXERk6Wd7+vcp5L/hmw0sTFWn
 BzUCF0gviQso0MJtDQoD51ZWWNRX7YUs+R/wPs3aLhNwAHgoPhd5k4bj7wYsEyDWPU5R
 IjIENl0oNnHhXK0R0mvGvI+8/8iyYELNrCbpQoyk/+uWAk+ZxfuqmijFNqRWT/TkkKPp
 NSrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=Ja14eDCvTavmsN8lMxWdH3+F7uMEpoJeeWQPefK/qCg=;
 b=ptY4FN8NKUIHirdOrUqvHxBev57vYOE1lX5hF/kQwgVaGv8rVw4WcAhMw3H3vo3tBi
 T4cpl1NjDyvjf5cTsyu1AQ/AtyVypRoXpM8vSRU0+rOXexWh5zGOQ+nq1LkF9Vkrqxn/
 uqFc1xh9zsHS/4ExEE/HYWYovkmzogTQts2MyPKeNL7ds7t0S1TcqL1WHnnV4WuHl3bv
 9nKwI0/KvS4UqEKLpQYUKVJ/u6Is/+O9pL6THp9nG0KPPQsq09mZNbFbt3YjQZH+eYMh
 4HUGpvbVHN8kr+lTgXOx/tCQuEHXHH+OiWekhBskXGNRFUCBwskfH2bKgJVITJib+lTw
 RXnA==
X-Gm-Message-State: AOAM533nHFvMEcQoplBfUhecHQ084lnG/wMe2ML3rmO/+zz8K0lh7NDW
 qN2/VpNIzEfnoQU/q5WKdJIVew==
X-Google-Smtp-Source: ABdhPJzqtCE8wO53LqLgV9gkIc2h1LMCF6Vw+eW/XLo33Umz0OgeCL0dAtHoK+5d5GjrFgfVCjAOhA==
X-Received: by 2002:a17:90a:cd03:: with SMTP id
 d3mr3464986pju.233.1589871220450; 
 Mon, 18 May 2020 23:53:40 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id q5sm6277335pfl.199.2020.05.18.23.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 23:53:39 -0700 (PDT)
Message-ID: <5ec38273.1c69fb81.689d7.fc2b@mx.google.com>
Date: Mon, 18 May 2020 23:53:39 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc6-124-g96bc42ff0a82
X-Kernelci-Report-Type: boot
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci boot: 26 boots: 0 failed,
 26 passed (v5.7-rc6-124-g96bc42ff0a82)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_235341_411483_304FB5EA 
X-CRM114-Status: UNSURE (   5.34  )
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
https://kernelci.org/test/job/arm64/branch/for-kernelci/kernel/v5.7-rc6-124-g96bc42ff0a82/plan/baseline/

-------------------------------------------------------------------------------

arm64/for-kernelci boot: 26 boots: 0 failed, 26 passed (v5.7-rc6-124-g96bc42ff0a82)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc6-124-g96bc42ff0a82/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc6-124-g96bc42ff0a82/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc6-124-g96bc42ff0a82
Git Commit: 96bc42ff0a82ea44f220ea721a5835e479ec8cea
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
