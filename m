Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A121A2997
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=shnTg/AiYRpuhI+9wTgfer8ls0s2Y+koMOzTeVPf678=; b=c1hDJXrV+VUZ3J
	0/r96ATCxQiFYHnvKpXMkRq3Kt0UNix8sa2T/qDNwebEFIjldeWOcLDa/mHaZwhz2i7hthK9lY5En
	27WcjmWqeHqxXQxKfvXyaN/SVEpVAHjmw1D27WlBBBHbZFI5dHsSBfvXNmz7kJva297zpwglbgXgd
	KYNvp5n5rVou6LXVn8jr7qjEmF/L92fY1BguBs24F+7jjH/UfMcN7axFdlyXVMoIritr/HtlHuLD6
	mL1TvyB8uA9RFwL2AJurSpksDbAfnUkaXN9yny3ibSSSpzKVQfQY32Q8YgqFy45q4Sq8LOKrvt+XY
	onHtcqdGQ4g8WCdly7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SlK-0005H9-Op; Thu, 29 Aug 2019 22:19:26 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlA-0005GU-EU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id a21so5710117edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/8WQyIgycnOeWzso8bRkFscVIfCDPQrAJMk5OTdiO0=;
 b=hf0z98o+qLl320eTFsvGEG0HuVQc7VmzREvRNXScZnFtaqhQtnAC5p8+ArjI5FFNUr
 dYJQvw+smb5nHepbtcYZ4cdwMedHuEwjIOo0dgoJQqccdacvR1mGE5ELmW/hUbMSS2vz
 3HVeR2qSvVIpBk3I6YwKEmopzAl+0PzvHFCziRBUM2L5Atz4sVuLg4uhxT2aLAWt/3Kz
 sr8Z7oCS68bNYcSFPSq8GXR6/7C9p2BhXDTe+bRqYVQ9GfnyHklYFxeFypasaj1p+5Y/
 S0vlvXYO5gBLaqG4sLCopOw1+7xhfrF/8bvbLPaMRJ/kQ2rx3yP5dOs/FOAJH4IDvee3
 rKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8/8WQyIgycnOeWzso8bRkFscVIfCDPQrAJMk5OTdiO0=;
 b=mT7lH+bfrcjf2cD6OP9eDZRM8HAz/LZxf0K0Y6P04OfSXFaXTY1fUkI3+Dgk/Ommb4
 h5kHdBLlF7h09Xa7hTo4Un8tyCLCOiwVoQQjfnYzkwumulK+NJIt7VGzM26wSUexXJnT
 +HhpwFtrmyVTQp/K0YkfiKc9KWRJreGa84ZtMES5GZ/UPnfmFadxykvsk0O/OW0F0VTF
 IbZ7p4EejTxGrkyRYsPdmOlgrKyO29GXES78HWV2HrNMhH4mqE4szq3xCwhCKxJGOL53
 EDgpd1zW35C5ywK/38oQjXj651Cma5+FqyxfVgw0iR2zbVdftYh11BTEI0dYrVyOMWuC
 GHtQ==
X-Gm-Message-State: APjAAAWflQeq5PrDZDqH1AQQhf61sWpQE6ZGgEeTyiqquu3UkW34Rmp1
 YunYb3A+2abvJ7hKT3Z+x74=
X-Google-Smtp-Source: APXvYqwdaLetoW06qWHrg42mkiSvAhpZ4E6lIjat9gqFx0UbFFBNwst/VZbJ7U6V6Gn2F6VAtFVm2w==
X-Received: by 2002:aa7:d80d:: with SMTP id v13mr7006500edq.168.1567117154945; 
 Thu, 29 Aug 2019 15:19:14 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id x42sm672008edm.77.2019.08.29.15.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:13 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 0/7] Replace Tegra FUSE API by nvmem API
Date: Fri, 30 Aug 2019 00:19:04 +0200
Message-Id: <20190829221911.24876-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151916_488893_D73B9A54 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The nvmem API provides a generic API to retrieve the kind of information
currently retrieved using the custom Tegra FUSE API. Convert the Tegra
FUSE driver to be an nvmem provider and export cells used by existing
drivers.

The three non-SoC drivers included in this series are meant to serve as
examples for how to use this. I'm not Cc'ing them to the subsystem
maintainers because the idea is to first merge the soc/tegra patches and
after that convert the consumers. Once the first patches are applied, I
will send out the consumers conversion patches to the respective
subsystems.

What's not included in this series is a cleanup patch that finally
removes the custom Tegra FUSE API. I'll follow up with that once these
patches have been applied.

Thierry

Thierry Reding (7):
  soc/tegra: fuse: Restore base on sysfs failure
  soc/tegra: fuse: Implement nvmem device
  soc/tegra: fuse: Add cell information
  soc/tegra: fuse: Register cell lookups for compatibility
  drm/nouveau: tegra: Use nvmem API
  phy: tegra: xusb: Use nvmem API
  thermal: tegra: Use nvmem API

 .../gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c   |  12 +-
 drivers/phy/tegra/xusb-tegra124.c             |  10 +-
 drivers/phy/tegra/xusb-tegra186.c             |   7 +-
 drivers/phy/tegra/xusb-tegra210.c             |  10 +-
 drivers/soc/tegra/fuse/fuse-tegra.c           | 193 +++++++++++++-----
 drivers/soc/tegra/fuse/fuse-tegra30.c         | 154 ++++++++++++++
 drivers/soc/tegra/fuse/fuse.h                 |   8 +
 drivers/thermal/tegra/soctherm-fuse.c         |  19 +-
 drivers/thermal/tegra/soctherm.c              |   4 +-
 drivers/thermal/tegra/soctherm.h              |   9 +-
 drivers/thermal/tegra/tegra124-soctherm.c     |   8 -
 drivers/thermal/tegra/tegra132-soctherm.c     |   8 -
 drivers/thermal/tegra/tegra210-soctherm.c     |   8 -
 13 files changed, 344 insertions(+), 106 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
