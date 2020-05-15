Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360F91D529D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NiNjfnqoc4p+VcXUKpuScupeSTL5gc9Zz/rZW0zl5k=; b=dumLai0k4dYpet
	Ijjmfkzm/GOQfXtgMDBdvMq8ad3tbheFnq8dL/WRq/IXlzSp5kgJ6AQmlm6TatTMyLop5nUPs3Qm0
	KIQsVq/PVzxX2qMJOcreaP/wt1O34s+2a4bvhckegpp921v9Wbm/Hu50q91q9QxXx04W0gtMq6TCz
	B0rbGDqvjtUUwYSWO+auJPWfoDZNz5Ienf6yz2nWbdFRtoovTJlCxgyzNpKLPLGzq1b11aoG19bdz
	WJ/Gtb3G3/R7O2kwtCBqGeTIF/PUSQqiAvEv8xTvJJizgZiMWnNyteoHJHSloL/Pe1b5IycLBKNeO
	/63g+IPbBleESH4a72kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbjD-0001Pg-QU; Fri, 15 May 2020 14:54:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiD-0000uO-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so2612926wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=daJIaHtEcsY5ucOdxwXsEadgUyi229pnexQf+rQw1kE=;
 b=rof2rvoEmfhNVAMRabYVfiC8mwUFzqLo5XQZtVhYYWCKa/rBWl7+ZOstKaX7aFhIH8
 oX0eGFuJwSbvNCBu0hqD6E73YM3PtnJnKuwFSfpDzWoKZO/GZeiiV8Qa/lLkWSDB5bx7
 +RpmDU2DWyvQ9sPZj1QdeqP/l9r8Yi0EB9/vwxzHUjDDa9EmphcFZLFzC4wvT6qJ+l11
 +Cqk6fu7yF1aVMQaAHLbOHeBrfG68BDXE5kU/fHSSVIVNUBNUHBdpCEYewBDNsLydZzV
 ug82ZL3wDDhQZHZtQSv1ueQeEY2Zz6nyNsd2UvCN8OBrGPZLTyA4KELT9NW4qdcB8CvR
 wlrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=daJIaHtEcsY5ucOdxwXsEadgUyi229pnexQf+rQw1kE=;
 b=E+g6t758xV6ujLQMMWT1Pa/D61PWWEde+2Cz6aZk28qm2v2zaByMgbmENTH1XpEoSQ
 u/d3VMw1zYoSyvz6ZbPAVl4S+C1jTT5ymK+B460qRplkr8W6P1S+UYligwcUFteiyB4n
 jWVskfiTNj8X9n6ZqhdHeG6f/y7Mwgp4qb3oHcwDZH1T+x2UFkBwOenqZIaZo8YrJDnk
 1lXO2b5Q8D2WqQOZ3lOJMAc6vacZDoKlIPMlDWT1q0419j5/nXM3fzswad0k4a8bMP9o
 DzLBIDjQlnDkd9M45tIkj1gIShS+L8s25kmQZ74qsPbOsWS4F8Ir5St4gayHzqy1xt5w
 PLHg==
X-Gm-Message-State: AOAM530zyJFCn1artxCmKbmQGs7wS7DnSmi1Zm61M4u2EWIvgavg6Ioi
 HaSqINJXBrPpHKahAiTiAwY=
X-Google-Smtp-Source: ABdhPJzxsM3zV+aHCxZa6T3PLyBezMGeRRfXMUDrHsSap/mVYjf8XlvDByTCRNAGgCaH20BksqoXog==
X-Received: by 2002:a1c:7305:: with SMTP id d5mr4548864wmb.85.1589554399790;
 Fri, 15 May 2020 07:53:19 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id x17sm3903589wrp.71.2020.05.15.07.53.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:18 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 02/11] cpuidle: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:02 +0200
Message-Id: <20200515145311.1580134-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075321_041925_C5DCDF84 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-cpuidle

for you to fetch changes up to fafd62e7688096dcfe4107d7a2f6c7c6eb6045de:

  cpuidle: tegra: Support CPU cluster power-down state on Tegra30 (2020-05-06 18:42:55 +0200)

Thanks,
Thierry

----------------------------------------------------------------
cpuidle: Changes for v5.8-rc1

These changes add support for cluster power-down on Tegra30.

----------------------------------------------------------------
Dmitry Osipenko (4):
      firmware: tf: Different way of L2 cache enabling after LP2 suspend
      ARM: tegra: Initialize r0 register for firmware wake-up
      ARM: tegra: Do not fully reinitialize L2 on resume
      cpuidle: tegra: Support CPU cluster power-down state on Tegra30

Thierry Reding (3):
      firmware: tegra: Make BPMP a regular driver
      Merge branch 'for-5.8/firmware' into for-5.8/arm/core
      Merge branch 'for-5.8/arm/core' into for-5.8/cpuidle

 arch/arm/mach-tegra/pm.c                     |  4 ++++
 arch/arm/mach-tegra/reset-handler.S          |  7 ++++++-
 drivers/cpuidle/cpuidle-tegra.c              |  1 -
 drivers/firmware/tegra/bpmp.c                |  9 +++------
 drivers/firmware/trusted_foundations.c       | 21 +++++++++++++++++++--
 include/linux/firmware/trusted_foundations.h |  1 +
 6 files changed, 33 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
