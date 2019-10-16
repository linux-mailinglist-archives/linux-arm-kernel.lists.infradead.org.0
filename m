Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEE7D91CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TowiocKS2AB+hp8Mk0wNiCj530MHVJdqpyTyfNZAJsY=; b=OXKAbZecC02SO9
	GG20vAvDhtJfIQ8/7Dm+nqsn7jlpA1Y42ti9GRJ7qHQHcAlLgKGnywbib58bIhPNBtqWiDvxCdVlk
	qpgZgBj7VtwCLzKDqrTuJm4FUYKTdSUBm5OrqEdip/WJnYAKbHWSkjcSrCJcEuBbVJ3Wxlc56Zlkp
	EECGeHxHoZ6aaB0X73b6sLJDRajZU1rgYBS+McQxprnZbfC2siwHRPg0pKNCs2hm4gdcMWgku+6CH
	s6vA/uhVW7hoq+laoRlH+xWRj86mUMnU2VfNAQzRYA7bxX8pCqgPDs4m0f8h5Gorh+hzUlbWbmF2d
	mqwiMeUt9ng8ZCdnSHmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKitw-0004Bk-0I; Wed, 16 Oct 2019 12:59:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKith-00049s-TK
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so4636617wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N52hlJnsfFIOOWTHvFp/qjBhOkVh3s/l10lTxbzvdwk=;
 b=lxHREG00JgRNJN6vqVyEtnpLxHeOiwhECvF8ZrlixdqphxFqPyZHJEbdLiUFpK5SxV
 bKWIQk8vpKf7Y1IeVvFkibBp2+Lt7P3G16+cJMZPe1PIwVVBauK6sVJBRVZnFqt1rH39
 W+GBk+3Ogq7gbeddPnEDV9dDaF+gDFpKhFNSFNy0e0bKONaXdPDS6w6yV+9yCYSReH29
 HHjnMyLp7yEddLgg8k3gNp5znnJ+Ks99dK/EFJZzluq5mwmbLCt7PLnF//eIjt8PbS9D
 XTBC9nHpO5jzHnSTvJMIPx0eboVaw6KXgl+xegAjONo0nMXeaNB98Xa2heuZRBDQs4Ow
 UWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N52hlJnsfFIOOWTHvFp/qjBhOkVh3s/l10lTxbzvdwk=;
 b=AuAK82gCLGMZz0b7+42J/zElcSuhvizY4WgchOFSEfs9wXHjS+g6xhI3AcFPPbuwsc
 aN2bMnt5fcxifYGljmGb4LzWJImea5fZ3evBY3T4Y3ZRPmVwLbI+7kb7+JQobTahc+TO
 YwnXo13WMdC6JzplIqwoRLWB2hyS7EXVnqbIm7iEqMtWz1IA9zAmaW3+MfRMgFryaqnT
 zMpgvt12kivoXgxy4XYlaKN/kLEkRLklZ/6wCuYqQo+K4RHqhSqo0Tsp3yMNK/4rkezo
 UbWR7q2IZk7VUVKd21o1WLUdRmfX62+BVDe2h99cnSfUOsjKZ3I+AQeZhIo6r+3j3qNd
 V2jw==
X-Gm-Message-State: APjAAAW3azZf4Mc5UWbEVOqMVHKitiqAK0bxQaHuzNBrXinGz0hZunko
 I2qUTMpgM7+TtV4OJ2U69yg=
X-Google-Smtp-Source: APXvYqzKpAaGL8t4/0n/9ji8fdyWLeBwMB4yNHH6Lmwr42XuwpJfsJQWrH/atvz/Z0NRGwU8chBFAw==
X-Received: by 2002:a7b:cf28:: with SMTP id m8mr3366592wmg.63.1571230761785;
 Wed, 16 Oct 2019 05:59:21 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id l9sm2253916wme.45.2019.10.16.05.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:20 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 0/5] clk: tegra: SOR clock rework
Date: Wed, 16 Oct 2019 14:59:14 +0200
Message-Id: <20191016125919.1773898-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055925_973978_0F50C162 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Hi Mike, Stephen,

this is a small series that I've been carrying around for a while now.
The goal is to rework the SOR clock implementation on older chips to
make it compatible with the implementation on Tegra186 and later. The
reason is that Tegra186 and later implement this as part of the BPMP
(a coprocessor used for boot and power management). BPMP's SOR clock
implementation is slightly different from the implementation that we
currently have in the CCF driver for earlier SoCs.

The SOR clock is used to drive HDMI and DP outputs on Tegra boards and
the differences in the clock handling make it very cumbersome to deal
with the clock in a unified way in the display driver. After these
patches, however, they work similarly enough to allow the same code path
to be used in the display driver.

Given that this set of patches needs to go in at the same time as the
Tegra display driver changes, it'd be great if you could provide an
Acked-by so that I can take these through the Tegra tree (or the Tegra
DRM tree). There aren't any build-time dependencies between this and the
display driver changes, but HDMI/DP won't be functional if this is
merged at a different time than the display driver changes. The display
driver changes themselves are fairly large and it isn't exactly clear
when they will get merged, so things will have to be carefully
coordinated, which will be easier if I do that myself.

Thanks,
Thierry

Thierry Reding (5):
  clk: tegra: Remove last remains of TEGRA210_CLK_SOR1_SRC
  clk: tegra: Move SOR0 implementation to Tegra124
  clk: tegra: Rename sor0_lvds to sor0_out
  clk: tegra: Reimplement SOR clock on Tegra124
  clk: tegra: Reimplement SOR clocks on Tegra210

 drivers/clk/tegra/clk-id.h                    |  4 +-
 drivers/clk/tegra/clk-tegra-periph.c          |  8 --
 drivers/clk/tegra/clk-tegra124.c              | 55 +++++++++++++-
 drivers/clk/tegra/clk-tegra210.c              | 75 ++++++++++++++-----
 .../dt-bindings/clock/tegra124-car-common.h   |  2 +-
 include/dt-bindings/clock/tegra210-car.h      |  5 +-
 6 files changed, 116 insertions(+), 33 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
