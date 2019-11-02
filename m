Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F67ECF49
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFRVPUefhDvI0iQh53SBLDgHliTp2X0nAzhXtWpudaU=; b=Oz1lFZBIX4QS+x
	ToxOm1b8PUYaATOXb2f64+HNxZiBxd2FejwgRIlAXhy8ZfguLmvf3LBKpLK4AkSnwggSLfotrbB7Q
	bHC2S8S50F5Wo1wfnM4pMRDew6SPJnlJHYuWaGpUeaFiblPWAqT4RszhCqD9/5A5IrIZr7/Q8uMiQ
	//hXlxTGADA4xdewQWfubkGRERLPD66iMd0Z++Nmt/QzHDHDuSSFPAB2Nb6gP9C153xSB1s81ECoq
	3U6jIf8BuGqaJwWRbWE6q4KRrF5FGCsjV2xYTzpGFBMXrGryeFoGgNlO8tn5BSSf4iunYE9IWLQEb
	TMCx9JxnTKwu243WkI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQufW-00007R-7X; Sat, 02 Nov 2019 14:46:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQueh-0007sA-Rd
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so11773884wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9+c6JA866ZsshhQV7b+6UdNrWp/cQGsISTbLdkXsyrw=;
 b=kG1b8nSfc+7pfwklgIVovNo8OzY7JYqaaklfQ35aZ89l165ub7TaXe9ES4fh8qvTz1
 k9Qi7nz009XH35TFFn87khzjWonTHHS1vOM8/uRkqICMYoLWe/LAf6evX7c3z2/mH8gD
 a2Ox6KkoJYjPpra0EKeUzOqEpz1isGb7PmcR5NBHaSR5K4YuyGGArPWxqQkHWaQ03vZL
 Dwt3urKrwws0LpiP8DpKObcsSLNHq0qJOAK/SKcA3vSuL2EgQrB22L+a9EmiAoj0+2JB
 H8mCv68jh9rNiZS/U2cJOBqA1+jEHtoGwpjHBBvjd+JPbsjsuQruFbDOqM9nWeSTY8Jr
 C+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9+c6JA866ZsshhQV7b+6UdNrWp/cQGsISTbLdkXsyrw=;
 b=K3Pzx8KuSo8bR6f6ShIXebtd7nfv8WixHfb/J/0wsM5jKreed8oOueJ0U7x9pq6jTx
 SE/1zV/LmhC6ym7soTCR0uAfzCLzQr+oW7BwvHW30xfeoWOw3jYLjaeZeXvW7T67CZ07
 75LIdE0s/70EkKDa0OngyE0VdTPm/JimoTW65Z2VseskOcvhF5Mte5WYYsD87fjEAy0t
 iWZQCoK5RpCuW3/aIUfwlTYz4G9qBD66j9oI94zr5WH34GtA6BrCmZ2R2wDoftiaubmY
 bvJRBDV3hfnZ6lGLQZsfCOmsUM5MlSZ/F5kaZDqhzlPjU2MLjY7HPIiOIgaTQAhHEezz
 DGiw==
X-Gm-Message-State: APjAAAV5zgqt4mt6gT4ZvnXLLFagcpYUVtHjHaIwnCEy+RkGLd7tHIfk
 Nct/cWbgggzMzKHjQ09S4vE=
X-Google-Smtp-Source: APXvYqyRFSezm7QaTZ6i0UVZvaed0y1Z8d84UQscxrJkRYb+LggIyyADKx8sZT72Fbf3ig+0kVihMw==
X-Received: by 2002:a05:600c:2054:: with SMTP id
 p20mr2529711wmg.177.1572705930388; 
 Sat, 02 Nov 2019 07:45:30 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w15sm10926330wro.65.2019.11.02.07.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:29 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 4/8] soc/tegra: Changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:17 +0100
Message-Id: <20191102144521.3863321-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074531_908164_53EAB89C 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-soc

for you to fetch changes up to 69dfb3d4a89afccca1d8f282e49ad1362100cc43:

  soc/tegra: pmc: Remove unnecessary memory barrier (2019-10-29 14:36:24 +0100)

Thanks,
Thierry

----------------------------------------------------------------
soc/tegra: Changes for v5.5-rc1

Adds wake event support on Tegra210, implements the NVMEM API for the
Tegra FUSE block and adds coupled regulators support for Tegra20 and
Tegra30.

----------------------------------------------------------------
Dmitry Osipenko (4):
      soc/tegra: regulators: Add regulators coupler for Tegra20
      soc/tegra: regulators: Add regulators coupler for Tegra30
      soc/tegra: pmc: Query PCLK clock rate at probe time
      soc/tegra: pmc: Remove unnecessary memory barrier

Nagarjuna Kristam (1):
      soc/tegra: fuse: Add FUSE clock check in tegra_fuse_readl()

Sowjanya Komatineni (4):
      soc/tegra: pmc: Support wake events on more Tegra SoCs
      soc/tegra: pmc: Add wake event support on Tegra210
      soc/tegra: pmc: Configure core power request polarity
      soc/tegra: pmc: Configure deep sleep control settings

Thierry Reding (5):
      soc/tegra: pmc: Fix crashes for hierarchical interrupts
      soc/tegra: fuse: Restore base on sysfs failure
      soc/tegra: fuse: Implement nvmem device
      soc/tegra: fuse: Add cell information
      soc/tegra: fuse: Register cell lookups for compatibility

 drivers/soc/tegra/Kconfig              |  10 +
 drivers/soc/tegra/Makefile             |   2 +
 drivers/soc/tegra/fuse/fuse-tegra.c    | 198 +++++++++++++-----
 drivers/soc/tegra/fuse/fuse-tegra30.c  | 154 ++++++++++++++
 drivers/soc/tegra/fuse/fuse.h          |   8 +
 drivers/soc/tegra/pmc.c                | 232 +++++++++++++++++++--
 drivers/soc/tegra/regulators-tegra20.c | 365 +++++++++++++++++++++++++++++++++
 drivers/soc/tegra/regulators-tegra30.c | 317 ++++++++++++++++++++++++++++
 8 files changed, 1212 insertions(+), 74 deletions(-)
 create mode 100644 drivers/soc/tegra/regulators-tegra20.c
 create mode 100644 drivers/soc/tegra/regulators-tegra30.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
