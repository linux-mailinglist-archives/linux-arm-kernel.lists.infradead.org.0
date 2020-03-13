Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF04A184D23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YOhfmrTuLV6tHRGzrzGeHlSTQgGX+X7SmRb62uoYRA=; b=c6elof5F5NJfv9
	tlzL4cvtfiWSIO1x5ud3G+a58cFJlinRzk8xVqICoL97mz58SmGeph9VXzESWj3y7lhFB/kc2Lo90
	Oi2cPSx+R5kS3nTI6QfHyz1eoZ60AOJV5pJ6GFZ2Abo4DAaTaZSOqBPt3rxr+neatMU2S8VFfeUAi
	MjbzIagqpqNeaqUDCfO9En1PIQghRKbu0MWE+nDfoUqDLR3QXG3QZrs0oNHdSCc/7/CJ5bA6v/w0T
	Eph+Huc3b7m0/sB1/WBBZFP2Sn8YmqL/2iF6HICUg9FKC8MDUi3HystnN7U24Pd7qyeNTeyCc5m9e
	1SFnrQDTEs7tOnOyTb9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnff-00010a-I1; Fri, 13 Mar 2020 17:00:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneL-0008Km-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id g62so11098596wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pl3mvQUZlYeLm1+9mgGrbjOiFn06n8Rmi/zI05KnQ6c=;
 b=aKUCCumZnOm/aOCa1h+Bu2EL821dLnsht0b922Vfoip5qX6Z5JPEHlIl8ibmvo3/Xx
 tp8f0d7WGTvmSZC1ztxXf/WWYbpv6CXcgbMIB+ysQWJBv1pJYnx6d3NONoOpkjY8m202
 RZx+dZwSdJ8GT+DjnRUYvaL8DJ3vN8A0cXaIzL+kRoJZmsDzIghLoxdFtfGGQHw4m/mz
 Ncs2X0DymxvJXcELii9hyH+2XIFBhgzlJg4eUVD2FCsbHRtQ8MDlh09UQ3xZLLnhJNqn
 D3EJXmOjPQ82HO5h7PwdkapiTd7LLLFdHtGkz1o173WSuqIjkvAwVL9zUFp+6ySbhTcx
 0e0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pl3mvQUZlYeLm1+9mgGrbjOiFn06n8Rmi/zI05KnQ6c=;
 b=sTHa0w0aPhvdgnbkrBOu84kMoYlPlZWxmz5RuJLw+T9apsFPWvvDVrV9Mjm5os56u6
 VmRGvD2BBxKrfPzWptN9WjGzEVLkmyzQilgpDSnmihS/i/uyEjCXyrjh8gTKFUKJ+WgS
 C914hRZGwpYk7yR+7uodpG+kTSdRokHYMMK4ZbSboh+8HWUozw4saHyHxRFlc2dt0FWw
 /L0oSmCS93HXO1sxrhIFN8lt461/kAhJyWO+Em9W5Sn5pFQqZ66F/BoMG1IdjZP0lGeR
 f7uEue2Ii07KCKwfcuLTm9iPZVkR0x1MHxS0U+yV15OuNTcAyNbRo59OvE2Ren4gpolh
 TSVg==
X-Gm-Message-State: ANhLgQ2F//9g71eiXbEbcIJkq8o0lEQz7wZFQeRo3tdj6iR+KX8VmreT
 opZTBRovOqDx5/QF0IqPz2qyJ/CI
X-Google-Smtp-Source: ADFU+vubdaUjSrckubQn283ZoaceATczfJE+/H8q4lZRJsVazTtdHkVB7euKf6/lnLil+u8FJlutow==
X-Received: by 2002:a1c:41d4:: with SMTP id o203mr11378963wma.1.1584118743682; 
 Fri, 13 Mar 2020 09:59:03 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id m11sm33643370wrn.92.2020.03.13.09.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:02 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 05/10] ARM: tegra: Core changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:43 +0100
Message-Id: <20200313165848.2915133-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095905_230754_58C7F4B3 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm-core

for you to fetch changes up to 650a941c341b880dae451e36dd8e47f3762a3909:

  ARM: tegra: cpuidle: Remove unnecessary memory barrier (2020-03-13 11:23:10 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Core changes for v5.7-rc1

These patches a preparatory work to move the CPU idle drivers into
drivers/cpuidle.

----------------------------------------------------------------
Dmitry Osipenko (11):
      ARM: tegra: Compile sleep-tegra20/30.S unconditionally
      ARM: tegra: Add tegra_pm_park_secondary_cpu()
      ARM: tegra: Remove pen-locking from cpuidle-tegra20
      ARM: tegra: Change tegra_set_cpu_in_lp2() type to void
      ARM: tegra: Propagate error from tegra_idle_lp2_last()
      ARM: tegra: Expose PM functions required for new cpuidle driver
      ARM: tegra: Rename some of the newly exposed PM functions
      ARM: tegra: Make outer_disable() open-coded
      ARM: tegra: cpuidle: Handle case where secondary CPU hangs on entering LP2
      ARM: tegra: cpuidle: Make abort_flag atomic
      ARM: tegra: cpuidle: Remove unnecessary memory barrier

 arch/arm/mach-tegra/Makefile                     |   6 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c           |   9 +-
 arch/arm/mach-tegra/cpuidle-tegra20.c            | 111 ++++++++-------
 arch/arm/mach-tegra/cpuidle-tegra30.c            |  27 ++--
 arch/arm/mach-tegra/irq.c                        |   3 +-
 arch/arm/mach-tegra/pm.c                         |  54 ++++---
 arch/arm/mach-tegra/pm.h                         |   4 -
 arch/arm/mach-tegra/reset-handler.S              |  11 --
 arch/arm/mach-tegra/reset.h                      |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S              | 170 -----------------------
 arch/arm/mach-tegra/sleep-tegra30.S              |   6 +-
 arch/arm/mach-tegra/sleep.h                      |  15 --
 arch/arm/mach-tegra/tegra.c                      |   1 -
 {arch/arm/mach-tegra => include/soc/tegra}/irq.h |   8 +-
 include/soc/tegra/pm.h                           |  31 +++++
 15 files changed, 150 insertions(+), 315 deletions(-)
 rename {arch/arm/mach-tegra => include/soc/tegra}/irq.h (59%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
