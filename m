Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B23ECF4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nhfm2hwThaELzYBAIi5cmBzNLlgKaY0zcvaY0hpZN8o=; b=Arel2fS28QbNo3
	Zw9JjjIuCtjrecjiS/RMQyBNQNevo3iQYHXc5An3/3zQtUiaColvxlhPxEBH6D6AvvUtcnJkotc3t
	Xg54D/f7d2cTgGHS8qzVZpK7e46xPkp4bNrI79B92NtB88kyukShsZiccpXIaRAFQOSnFiosxQ2/x
	RwWz+ACrw6gxtcgRQhalqiH77a6TLNGawrss4EU3cI3VaYe3LErPOT3PE2OJSHvr3dc/Iuzit6+VZ
	F8k6+b68K7d7Oks0MpaIjAQMvDiRL0rvTvGdnaNvytJxUDAsboHV/iBzUqu5AChUH/JfGw/ocLKKS
	OcERO/eKyXLy3brb93nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQufk-0000Jx-Tz; Sat, 02 Nov 2019 14:46:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuej-0007uQ-MQ
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so12445233wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MAOpf19Rv+QTNeLC4ay/kzy/vxHx95YXt4ybf6UxezE=;
 b=cEFeNCO996rwT9dLDb6PazDHruS2DXgFrmVk1ZCp1mheM3zejbF+Aml+a+wzdZzSc5
 CKMmKWiEP4KwznsXm7b2nS0ZAjgnAtWAehw5fCZUh7DVuhIcFVe7IhZz74bobBwGkiSw
 0Gv6VRQ9zzUgIQsoiC8wGMhqK6ejk0dPhDLYew8OVCXXLVMwwNDwkOAr1/xowhYjCj8Z
 oK9hK/DC/HTYRDmlwZYLYdAhFb5l+qScBa1gIMeDNO8uhesH/qkFg0bNlqytFrNf9QBB
 1EOicvAr4+rhx4SrRFuuIm6wEUH5ot/xqdILc5zmCiLQYJmQHbcn19IobBWs7iT/nEV7
 d1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MAOpf19Rv+QTNeLC4ay/kzy/vxHx95YXt4ybf6UxezE=;
 b=IJiffmXxTFXwBthajdYtxflCMOUTM48WmBX75kkfqzSCsVdc0eOKX/P6YDMr9g4zkd
 HaI8AMEJLSaQHY+2AXnp4sUHxl/PjQnVPaApFyT4MZ73okGhd79OYTO74X2y+V4GT0+3
 /caZkUUwdjfkLktKrcn8DKTUe4oSZBAMgo+KekyvoyE7Q7xbEIzEtSQ6RKoWsvc1i/Zi
 PVemqMLdBH2KkORtz4DHP04HKhUHxhGE2Qx3nN0WI5CS+IqsoSujDLrcz5sit9RrDFCO
 sbbgIb/gsGp4tDjwm59zMF0TMGh02nKsSr+/HWNvZKpGJ9cPrqU4h/K82bAS/fpcVb0S
 8SSA==
X-Gm-Message-State: APjAAAXcMD6cX4EINfSi6+MDQExVKftv5I6ENdMD8nhjDvgAbyRZ0zc7
 tj2Aj2FIMEU2U/FSOnraQkQ=
X-Google-Smtp-Source: APXvYqyIQFzQNCJzpwCJ4MiClLrIPj/lcQNwCnZ335IGacM0xM2T8DQIC+FbKlpxmErLOgp8QNIEnw==
X-Received: by 2002:adf:f68f:: with SMTP id v15mr14435612wrp.171.1572705932280; 
 Sat, 02 Nov 2019 07:45:32 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t134sm13522661wmt.24.2019.11.02.07.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 5/8] ARM: tegra: Core changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:18 +0100
Message-Id: <20191102144521.3863321-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074533_752835_17555398 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-arm-core

for you to fetch changes up to 91d7ff5aa7e3edd9ab99a424099476ed5667b152:

  ARM: tegra: Use WFE for power-gating on Tegra30 (2019-10-29 14:32:01 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Core changes for v5.5-rc1

Contains two fixes for CPU idle and suspend/resume on early Tegra SoCs.

----------------------------------------------------------------
Dmitry Osipenko (2):
      ARM: tegra: Fix FLOW_CTLR_HALT register clobbering by tegra_resume()
      ARM: tegra: Use WFE for power-gating on Tegra30

 arch/arm/mach-tegra/reset-handler.S |  6 +++---
 arch/arm/mach-tegra/sleep-tegra30.S |  4 +++-
 drivers/soc/tegra/flowctrl.c        | 19 +++++++++++++++++--
 3 files changed, 23 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
