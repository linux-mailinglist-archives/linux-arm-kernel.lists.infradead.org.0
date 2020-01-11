Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C76137AAD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQ9FBtnIDO3Ic6Ory07i41sYxOYh6CFkZrzlWjNfowU=; b=bqsfutwNzaS4Ea
	ubR4i9uAjeyvB01GLj4jrhp19PRLNs+r+qyL7R9U3zO+uR9rjKmlmpvg0MyrwBhlAFbInUysKkV9D
	umR87a7d0Gnqp0D8imjtZrM0fD2FYnPOugW18jtu8OMh7UH/A67uRYz3giX4Gp4F38agPh0hrluWV
	yxEKxJwmq4OTW3386o6sDZwa4glhisgioeE0GZfiydlq7FZig+Wey7MGX1CUwoHyGAOzZQ+hLj4em
	wpiYw20hVuUqPaOGJrrYHmBCxJCHhLqC8p7AIxKvZaccLJKrZwtByVXL2BJudo3c0a9j8Pn3IFOry
	hn3royE6UPduz0z0sspg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4lh-00070b-La; Sat, 11 Jan 2020 00:36:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4l1-0006a2-P5
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so3470008wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DfFWEYOrKeczPJ3XK4soniW4tzy+GmC4nNvc+3g9T8A=;
 b=ZI/nZUOZWUNvO+ce5wPUrutG+eMxHj+AVzCJ5WqbwSS75gn0tKvmDWCSEgxAbuzlYF
 NriseRMQmaKqAdj+n74NG/4X7ldVJOwvKwFJHF0/u1PxHNK5SLmEG4zlXpwfcFv2zVlf
 KbuMgkc2cNn22zPdLXHzdsmNZieyvMdMxtKgQ+/rSAVoP83cnxpy32C6LbHjTrVGigBj
 NfWspNnzYnzuUlrcGKklluYQNMsVOokcFYiU3BFlKG+cu2L3tcwOIEmbUVje2c/os9Gc
 wKcrcYtvhSOe+aHyZ/P5y+Y3ns+jokVM4Q/9CvBJqfMK/hn7Wr4Q9nlhZUmUxu+kWLKk
 XgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DfFWEYOrKeczPJ3XK4soniW4tzy+GmC4nNvc+3g9T8A=;
 b=bMjoeT4b2bzrYR9MYKlosTa91OzsYHi8jljagzwSn+UwWvSV/AtrDCI2Nagz8Ql6tN
 UTCFVftzK4/iwkqmH9mgOVrsiYK3coCJoMGyZA1cWc7/na2kJPNnIzyJsdkxkEJvp+qz
 8RVkl7U+7nQCqZi0I3ryMh0eLKNpwPv0dMsN4ERG7zXUbdvtSLsIhWvYYIrPL2ov9rs/
 rbTyBdiWbfYo7L69WxlefK7lXgc1e2S6sPaBXd5fP9vt1AsjOUsGfZ0FT6b+ESmlW6bw
 UpIrOjVVrMyWNeph64m3i1SAxg5NY+N3SOWKAudSXQVjpjzpR/X6Ng7nfZ/hYo8e7R0N
 tcFA==
X-Gm-Message-State: APjAAAVICGLOIkz8gwPE6wEssdjmtSNKExod+m52G/L7M58cGemmTJfB
 0HP6MLccNPlzHqcdipLbYX8=
X-Google-Smtp-Source: APXvYqykLEcbUN9GC32HzSWckg0KzGu4rjtF08ttP9eWJnZ6dHSn+yTU5MEIwnWbguQ1oskF2qV/wQ==
X-Received: by 2002:a5d:5267:: with SMTP id l7mr6372124wrc.84.1578702961948;
 Fri, 10 Jan 2020 16:36:01 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id w8sm4345050wmm.0.2020.01.10.16.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:01 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 3/8] memory: tegra: Changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:48 +0100
Message-Id: <20200111003553.2411874-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163603_811765_1FDC99D2 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-memory

for you to fetch changes up to 5e5eca6644873da93f5a32904f43220380f34e88:

  memory: tegra30-emc: Correct error message for timed out auto calibration (2020-01-10 15:48:48 +0100)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Changes for v5.6-rc1

This adds a couple of fixes for the Tegra30 EMC frequency scaling code
and adds support for EMC frequency scaling on Tegra186 and later.

----------------------------------------------------------------
Dmitry Osipenko (3):
      memory: tegra30-emc: Firm up suspend/resume sequence
      memory: tegra30-emc: Firm up hardware programming sequence
      memory: tegra30-emc: Correct error message for timed out auto calibration

Nicolin Chen (1):
      memory: tegra: Correct reset value of xusb_hostr

Thierry Reding (10):
      memory: tegra: Refashion EMC debugfs interface on Tegra124
      memory: tegra: Implement EMC debugfs interface on Tegra20
      memory: tegra: Implement EMC debugfs interface on Tegra30
      memory: tegra: Rename tegra_mc to tegra186_mc on Tegra186
      memory: tegra: Add per-SoC data for Tegra186
      memory: tegra: Extract memory client SID programming
      memory: tegra: Add system sleep support
      memory: tegra: Support DVFS on Tegra186 and later
      memory: tegra: Only include support for enabled SoCs
      memory: tegra: Add support for the Tegra194 memory controller

 drivers/memory/tegra/Makefile       |    3 +-
 drivers/memory/tegra/tegra124-emc.c |  185 ++++--
 drivers/memory/tegra/tegra186-emc.c |  293 ++++++++++
 drivers/memory/tegra/tegra186.c     | 1067 ++++++++++++++++++++++++++++++++++-
 drivers/memory/tegra/tegra20-emc.c  |  175 ++++++
 drivers/memory/tegra/tegra210.c     |    2 +-
 drivers/memory/tegra/tegra30-emc.c  |  352 +++++++++---
 7 files changed, 1928 insertions(+), 149 deletions(-)
 create mode 100644 drivers/memory/tegra/tegra186-emc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
