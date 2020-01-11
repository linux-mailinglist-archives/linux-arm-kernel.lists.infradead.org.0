Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E681E137AAE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tg88mJhoh/YEIJPAT1LAY5V04FV4DjRqv0NI+YNgvmo=; b=iPuEhLSbpHV+13
	EEPYKcKqj6Z6KoKgHpBlUvLjuHMx5QUIzeKcDkoll3xWTA/Oj5NM6R0cEdrclJGF4MGqe66XMdyv9
	cBiMVQf6W+NGuKBnING22jRsIDI7NKC2YLi7AxX3sS1t0Q3HYMubP7ldJ8eOya0EHFreEicpRZ6Di
	0GmdoQ9oGhucQ8dtuhTnFniriZaxmLL0I0ZNF20d+AloIjb26pT7TWWpI8+0hMWldz0tsCtxOeJ1y
	uqA5t46+MKOIVY33g/3PAWt0dbtWEBvpxCzne7/Ayl8ef5tzKDUJri386Ljgi0yoTGGuwBlh91Tl+
	FeH1p5bBbiSRESluvMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4m2-0007HC-Kn; Sat, 11 Jan 2020 00:37:06 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4l3-0006aP-5T
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:06 +0000
Received: by mail-wr1-x42c.google.com with SMTP id c9so3442226wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aWpAXNzFoYtxf2UeMCD20vvhdE5STvbqiF5TJSOU+4Y=;
 b=fBgp78rdrXpRlIt1ulc0IOC+sYpunb8zcV0yntvGiMK4Rq1GAR0kXFX0V2sCR79xcd
 Iua8ECLP+06o9zPYxHE9GOK/rQvjf5KzpJwqjrnHS+zv8j+rTKqzsSpGsGklnVXFQHQu
 Jddp3KHmIW2qQJxR5VNr5oJuTaN4/DSGkeayiNaCALXPw1HdDTm3i6DV86ruJVVMdew/
 Nc3KgOGRpEMWahspkCtJX+Cz7+2T8PNHMUBH4ZJT73qz2e4TZ/IMzOm7J7idN50/JPWt
 XD/XAyzcBPpq9NxgKKg2gVmOmDq/NCeEhTjVCCXLAldkJdjnYjpELLBA+HynUpa/mFda
 lkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aWpAXNzFoYtxf2UeMCD20vvhdE5STvbqiF5TJSOU+4Y=;
 b=Y6Ct0NM/6UIqcREKg8dKz+9aaNacsoecVD2uFmRR9+pndIqX9aDS1zKfea12gOrqSF
 Ww57/hncedyGwDFPrDuVcQYYDIlv93amEUPPY09YgYEOCBs5K8RDMSyXOCBYNLka3xBP
 uBrKXJjANIpa+Cxvmlc1qLF3Ox0aTNl+LxQ+tCDOccbgHYKazo1JcySMMGyMkviAjcqJ
 dZisFovefaB9LckzbI60EYXwANKaHf9Q9a6z4FlADR90WklwY6xEnutQKQVn+orVCEz9
 INZ10t5ZGW5rmbyq2s95xpmSEESOJef7hX4lKS/Ouy/cTtXhZKxQaMOlimdg7zn08NmH
 cHRg==
X-Gm-Message-State: APjAAAXeDNnabz2spEy0r2Xs1F6CCZDghueL9x+bmA9BgXXY9yc+nGWw
 DdWdO+zAIpEVF8ZeiTDS534=
X-Google-Smtp-Source: APXvYqyzp2HbmutsntCMdiaaHJ/1+fk+Rk4v4O+Q+fhHma9PbkMwjsZ7WmZHtELg/Mno1HMVzqGY5Q==
X-Received: by 2002:adf:de86:: with SMTP id w6mr6119495wrl.115.1578702963537; 
 Fri, 10 Jan 2020 16:36:03 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id m7sm4104792wma.39.2020.01.10.16.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:02 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 4/8] soc: tegra: Changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:49 +0100
Message-Id: <20200111003553.2411874-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163605_247860_F188851C 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-soc

for you to fetch changes up to 02676345e9b31ad8907af3755960e3cfef575f8d:

  soc/tegra: fuse: Unmap registers once they are not needed anymore (2020-01-10 15:59:43 +0100)

Thanks,
Thierry

----------------------------------------------------------------
soc: tegra: Changes for v5.6-rc1

This adds a couple of optimizations to how the chip ID and straps are
read and adds support for the FUSE block on Tegra194. Included is also a
small optimization for the coupled regulator driver to abort early if no
voltage change has occurred.

----------------------------------------------------------------
Dmitry Osipenko (6):
      soc/tegra: fuse: Add APB DMA dependency for Tegra20
      soc/tegra: regulators: Do nothing if voltage is unchanged
      soc/tegra: fuse: Cache values of straps and Chip ID registers
      soc/tegra: fuse: Warn if straps are not ready
      soc/tegra: fuse: Correct straps' address for older Tegra124 device trees
      soc/tegra: fuse: Unmap registers once they are not needed anymore

JC Kuo (1):
      soc/tegra: fuse: Add Tegra194 support

 drivers/soc/tegra/Kconfig              |  1 +
 drivers/soc/tegra/fuse/fuse-tegra.c    |  3 +++
 drivers/soc/tegra/fuse/fuse-tegra30.c  | 29 +++++++++++++++++++++++++++++
 drivers/soc/tegra/fuse/fuse.h          |  4 ++++
 drivers/soc/tegra/fuse/tegra-apbmisc.c | 34 ++++++++++++++++++++--------------
 drivers/soc/tegra/regulators-tegra20.c |  8 +++++++-
 drivers/soc/tegra/regulators-tegra30.c |  6 ++++++
 7 files changed, 70 insertions(+), 15 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
