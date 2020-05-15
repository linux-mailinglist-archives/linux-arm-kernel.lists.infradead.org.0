Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3231D52A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TH7PD9a1Xr4YqLevR8eOqq19GLPzmAAZS1j9qDuQuzk=; b=MmoMTDB+Pn/7l7
	Angci7NxQkBez1l0U5qDyAxc3zdPuPKUZTnrL/SbZ0lWZgg5aqEPeSINLwbCv4/I0l1QvWoUO2HpD
	SI0kHbfj9ProHPP+tDgc5Rwe6jVmgykjuBBcIAv9G1xH7Y4MCMCoQIC98EMM67SDy8oSZdVhUoD2n
	YcXsjiNXxNTMsQObmvhLUVNNP1wllnhcyiIYHdYr7HMe7PmR3C3gPqlpnGNCSOsBV88IiLZ5yAVOt
	em03ZjcTfhdUyu80HGgra/a2gBVS0VRPcGGSBdFHo1BlAvlaDdauA1WMbU6veFW8tX9NvTcvMVdOS
	rDS6GwnbvazOX97oAcPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbl4-0005Te-H4; Fri, 15 May 2020 14:56:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiO-00012S-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id w64so2979659wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7/M3vJWfG1Iqpp3J3L+tQPhMOxfEZSLbbAZe6XXYpPI=;
 b=iHWXtDzN0eZuyf52qAbulgbixodq3rnKNxB0ayhZ9tHWB3LeWO809X6OiSHopTBhXG
 6paNWSAnmYiqEWZh0KEPmgve+MNC/+wppK9jQirhNDUBZJbxQkxZNqPitO0HWWbSLh8F
 l5gn6vzcNYs3r0ncsvC4LU+FqV23lQ3v1pq79M32qEUuRyrILTPmDyk4N65uSjQ07zK/
 tIo+ru5AFz06LZ4Ss2E5N6yh7ecZwkcFy5L8tGhxi2B+0tler7syYOKIJCxMI44MZCcg
 Q+yta8AfbN4NAbc7yL1howFDlrYb4P02FQoCbF9+Ii/ftFJpjYVEpuj7ds6k1fGLI0hd
 3ivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7/M3vJWfG1Iqpp3J3L+tQPhMOxfEZSLbbAZe6XXYpPI=;
 b=QkP21EwHbLb/3ynbmeG0y8z/k94bPdCrR2qglX3OrgwEKtUPkar3w2WGSWY58GCzCs
 JXqM04TWSk+i233FMwzdU0ONB0USKz+2XZEWPp0vSCarPV7XMczB3BSpMDrP7NsfN5PB
 WtbqNhIJC9YQmKiKRjuZpsXKQNloW5F/bZE63d0srpPGhslpybgBu6fVW5xFGlkp0HU4
 OP5ofg8m+cQDzUfKir7rPSZ6r8HLQUnNbAgZLZgVfH4svTihD2nwXlPnCmgTBPHrWFdJ
 TxYufrN6hX0R3I1WTeoil57U/8MVl7u4MBqcB0oUWBBPWlOZRVtg8tXWNi0ZDLbWVR63
 NVuA==
X-Gm-Message-State: AOAM5328HU2RJjT/4EBRj2q/qrgcB0TMiF1t3CsBN8EGb9DJ65nFq0k9
 r26kfmz3suVd6BCCQ7J1QubufnyC
X-Google-Smtp-Source: ABdhPJysjrVJTeXIf4FOxp/8wYTTjb6m2bdgr0xP4mWY8rd/LsVamPLH2ZXcaB0gmzJgJi4jXIjtbg==
X-Received: by 2002:a1c:31d6:: with SMTP id x205mr4348071wmx.105.1589554410968; 
 Fri, 15 May 2020 07:53:30 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id h188sm4266082wme.8.2020.05.15.07.53.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:30 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 08/11] soc/tegra: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:08 +0200
Message-Id: <20200515145311.1580134-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075333_041877_9ACC55BB 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-soc

for you to fetch changes up to e4cc4f54be01b91b3e1b55430709d2a113f4e08f:

  soc: tegra: Fix tegra_pmc_get_suspend_mode definition (2020-05-07 22:03:10 +0200)

Thanks,
Thierry

----------------------------------------------------------------
soc/tegra: Changes for v5.8-rc1

Enables Tegra186 and Tegra194 to be woken from suspend by the PMIC and
exports a bit more information about SoCs via sysfs.

----------------------------------------------------------------
Arnd Bergmann (1):
      soc: tegra: Fix tegra_pmc_get_suspend_mode definition

Corentin Labbe (1):
      soc/tegra: pmc: Select GENERIC_PINCONF

Jon Hunter (4):
      soc/tegra: fuse: Add custom SoC attributes
      soc/tegra: fuse: Trivial clean-up of tegra_init_revision()
      soc/tegra: fuse: Update the SoC revision attribute to display a name
      soc/tegra: pmc: Enable PMIC wake event on Tegra194

Thierry Reding (1):
      soc/tegra: pmc: Enable PMIC wake event on Tegra186

 drivers/soc/tegra/Kconfig              |  1 +
 drivers/soc/tegra/fuse/fuse-tegra.c    | 57 +++++++++++++++++++++++++++++++++-
 drivers/soc/tegra/fuse/fuse-tegra20.c  |  1 +
 drivers/soc/tegra/fuse/fuse-tegra30.c  |  6 ++++
 drivers/soc/tegra/fuse/fuse.h          |  8 +++++
 drivers/soc/tegra/fuse/tegra-apbmisc.c | 32 +++++++++++--------
 drivers/soc/tegra/pmc.c                |  2 ++
 include/soc/tegra/pmc.h                | 15 +++++----
 8 files changed, 102 insertions(+), 20 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
