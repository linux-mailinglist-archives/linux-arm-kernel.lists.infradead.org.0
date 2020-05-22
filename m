Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B51DE8F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmLc3209/29hZ85dbsgxVJpzZkiHii+wYVw0wkIOXN0=; b=LebfpMF2FvQ6VU
	lAlXa48tIfvwrgOQ3ZJAs6lvPnYS9x/vqTYgqb9StobLQzgn3M8lRSg8Jl/+etNBEY8mwtYoL0NBH
	vSijIQPL6tLSMte8xutKloECbiOqqWN52VqjQDscsJumNKnYsnS7lziryKo202FHWxSBeg3ew0gfY
	P4Rc/x1Z5MVscmEylcKyedcPAEN4eCNHpsdRCWR3YLwe91EsUek2Sd4bQXyrbQjFPOOpvl0XEnH0m
	y4grfVSKF2zUaQ/byPVEj8g/eiWszUNJBf5db0bc2cauNuYULC5WABuCVj1nT8lTii5aKYSMR7r+o
	qoUMvRcgGcq6ec+zttbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8fw-0000La-Kr; Fri, 22 May 2020 14:29:28 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8fQ-00009n-6G
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:28:57 +0000
Received: by mail-ed1-x541.google.com with SMTP id k19so9402501edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WI4+/uH938EIDn69nDQS6vmjp90OmdUCi8WdIQDbQo0=;
 b=vdqSIsZIFtJtuZIAM4bIPwpqWIqdva/j/NLNJ87Kk6jfrjJKLGfmmJFbO6aUs5zxUM
 iPatkRMHPgcKePxrjW4pgYiNO2Lc+4ZkMmuczfSeWosrV8g3Tf97FwOEX8OaUsvYnaeq
 0YgkgXltn+KVFP+AMhRcCQoYDZbnIAgRfDo0rVqY0ZAVg63ja0tqXL6+IQyJLHPLpizY
 DuNwDVge7Ha59fuMTZOuRYq6AVlmJP53lXuddoQSaKo+3SYpGblv32nrwKuTH72Ke1Rv
 EhyU3tquIEs4PecoTM+GoAm57mWOJ9bCqJ+D7BKNXmROoIeD8fmGwtegtpL+k73BpIcv
 KPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WI4+/uH938EIDn69nDQS6vmjp90OmdUCi8WdIQDbQo0=;
 b=NXoVluqmuAuXYzYzXDzxa0I9h7SSz754/2svsfU6A6Kz0k9tOGHH35SEPE0d6Ol8xi
 v+e9TInBhUUnPBqMXzpIqxNb4Qz3hWcpLGD5hx31JLebJIF8I5J4kcGTQxhn3BC8KpYd
 zuMk6tRZOVdxW0eSEQyqRv+lsc/pggURjeOJ4zYEeyZCHsuCUPNw3czlk4SDhu6K+2J1
 iqlP/cq27gUui+d26Iqb6IbeBCbSWjlsqE27ZY6bIlMkhXhm1ty0kO/f4pHbCedWZ5kV
 qTlsm5KfH+V72Xb8pz/37WXCHILqJpjZAYSP8VzfoQ3jZ1DBsPhRC/SKCx7bJwLJmKo/
 LaGg==
X-Gm-Message-State: AOAM533y1QLaTFSOhfZ2YhtyzFG7HlDPDWzuaXg6lg9Gh9t0oXiiHLOU
 8Dm5/USaiy0pKSUebXFzXl4=
X-Google-Smtp-Source: ABdhPJx/BfuIcHzgOQ4mWrsqkbb6uvS3caDGtihgw2Om1uuNNfC3hPSGjG+mAUQWd8EGgBR+Ohzk5w==
X-Received: by 2002:a50:f40d:: with SMTP id r13mr3015576edm.93.1590157733924; 
 Fri, 22 May 2020 07:28:53 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id mb1sm8492656ejb.109.2020.05.22.07.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 07:28:52 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL v2 08/11] soc/tegra: Changes for v5.8-rc1
Date: Fri, 22 May 2020 16:28:45 +0200
Message-Id: <20200522142846.2376224-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-9-thierry.reding@gmail.com>
References: <20200515145311.1580134-9-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_072856_233278_09D05F1C 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-soc-v2

for you to fetch changes up to df701a76a6419e66b566457a5b3fcdd314e48fd9:

  soc/tegra: pmc: Enable PMIC wake event on Tegra210 (2020-05-22 14:55:54 +0200)

On top of the previous pull request this contains a missing patch to
enable resume from suspend by the PMIC, like we already do an Tegra186
and Tegra194.

Thanks,
Thierry

----------------------------------------------------------------
soc/tegra: Changes for v5.8-rc1

Enables Tegra210, Tegra186 and Tegra194 to be woken from suspend by the
PMIC and exports a bit more information about SoCs via sysfs.

----------------------------------------------------------------
Arnd Bergmann (1):
      soc: tegra: Fix tegra_pmc_get_suspend_mode definition

Corentin Labbe (1):
      soc/tegra: pmc: Select GENERIC_PINCONF

Jon Hunter (5):
      soc/tegra: fuse: Add custom SoC attributes
      soc/tegra: fuse: Trivial clean-up of tegra_init_revision()
      soc/tegra: fuse: Update the SoC revision attribute to display a name
      soc/tegra: pmc: Enable PMIC wake event on Tegra194
      soc/tegra: pmc: Enable PMIC wake event on Tegra210

Thierry Reding (1):
      soc/tegra: pmc: Enable PMIC wake event on Tegra186

 drivers/soc/tegra/Kconfig              |  1 +
 drivers/soc/tegra/fuse/fuse-tegra.c    | 57 +++++++++++++++++++++++++++++++++-
 drivers/soc/tegra/fuse/fuse-tegra20.c  |  1 +
 drivers/soc/tegra/fuse/fuse-tegra30.c  |  6 ++++
 drivers/soc/tegra/fuse/fuse.h          |  8 +++++
 drivers/soc/tegra/fuse/tegra-apbmisc.c | 32 +++++++++++--------
 drivers/soc/tegra/pmc.c                |  3 ++
 include/soc/tegra/pmc.h                | 15 +++++----
 8 files changed, 103 insertions(+), 20 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
