Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096B9E254C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uyd2nEtMssJWxlBTUE0Bf2o6zsbDSxQFOs1F3N196Q8=; b=rnxX8nsctbONeRHf/AJozY6WEl
	WQZbL0kLfylFe0xDUlQqO6FkgbXAdfnq7UiVCPqZdbN+TdizLocmgfVmA5tbnoI3iLyRc/OUW0M0l
	yMxSO6mjnb1FqKw91nB0CBFOgrIEUoD9z1w/hIGfx6k0NE3v8e9J7b7P/ktCBzS4ykIkJrrm93SO+
	tlk31hnr+brMOLfb+EMe0+MgHV3HWhxzXPIRquZOR3pHCyvcnXDf28cycNbANcoq/nQLZuvQUg/Pt
	v4MFgXBBPB9/R+7+YCm8+sqJQOuGvmSqzc2s5mLQDJE0eAkoPsNnxby+FflRGIa4pl72S1f0fC15i
	vgW97Wvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOBw-0004tG-Gm; Wed, 23 Oct 2019 21:29:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOBC-000487-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:28:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so473137wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 14:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=B5BP+iy9Dw6TC0iXJXl+O2DCAguFM7XWQSxmi4PlsCg=;
 b=A8SwA7tmsvy+Ku46V8pzkVODGdRpgDEjWS7GFwMVkOFPvPIbypU6YUdXTctAt0ZV+2
 B1nkvYA3Rr4fNJBOjVCdrXJkyDE2yEwQLNrGdS6K0jt0flQWr4ARO1F/0+wb9HfNlfrF
 bOS8exfpwR5Oqzw0dukDjZi5c1lQs+Y6j4gBZDwynHgWGCJSU7CttAmjzvoJQiMsRLG8
 wYyyfebFs1EHijp59YE3erKXKBBbtWOMYusWHNlAjogvGJNOn2CEuCq0xZSxtNlx4rKj
 RWLIpvXriQbxf5F2aVoqyRUJjhsOmsWuelIArTYjXAijNQng+Zupevfm4ymU9mAbjd9z
 Bd7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=B5BP+iy9Dw6TC0iXJXl+O2DCAguFM7XWQSxmi4PlsCg=;
 b=iiXsymLzOoFDXHwbYsaYjO39VtQV6buAROLw9rxryPJT/G8OT6w8GNjByvrPq41h5g
 jSxlx+e6XtyDGjG5SQ7662Joe1TWFkFZD2Nf+6UaO/WvK+AqfwfDM/MgUWCMpTqNIe6z
 UtiZd99YwKSx7RrHbeoQv7sxmdBvH6H//7E58e+KxyjkYjiioeddEQ4Cjbjk1t1vHAP+
 Jx7V7FIR2QCn3XGJ08l9eb9cKWeYV+CVoSJzz1Mww7HgRtQ6oeX3rNKj2620OADsyZ6/
 dB6up/VMpv2UGh927hJii2jDsYlZG+9CahVhvFJxwCF6ChfBFB5s/VwYskoetZkU32BY
 8U2A==
X-Gm-Message-State: APjAAAVGkm9GcvzlrXPbq+XMg4Sgj8mKPYZO7P/nD+vZVBRUmfwUiwf4
 3CRYbHz+xqgBiBFe2bJE5Rk=
X-Google-Smtp-Source: APXvYqwktFY+GMTEm1fU86Kb5++rg4f2bCCrhgJFd4wS9JNSjWdm8NA29jv0jehhowjxWEFeXj0O0g==
X-Received: by 2002:a1c:410a:: with SMTP id o10mr1723176wma.117.1571866109198; 
 Wed, 23 Oct 2019 14:28:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l8sm6493609wru.22.2019.10.23.14.28.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:28:28 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] Broadcom soc changes for 5.5
Date: Wed, 23 Oct 2019 14:28:13 -0700
Message-Id: <20191023212814.30622-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023212814.30622-1-f.fainelli@gmail.com>
References: <20191023212814.30622-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142830_756479_CF2F2EBD 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de,
 Scott Branden <scott.branden@broadcom.com>, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, Ben Dooks <ben.dooks@codethink.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/soc

for you to fetch changes up to 72c630020b243e2971d5e9ccdcb1ca492a537930:

  Merge tag 'tags/bcm2835-soc-next-2019-10-15' into soc/next (2019-10-16 15:15:00 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs machine/Kconfig
updates for 5.5, please pull the following:

- Stefan adds a machine descriptor for BCM2711 (Raspberry Pi 4) which
  sets up the appropriate DMA aperture for the Pi peripherals to work
  (1GB window at 3GB offset)

- Ben fixes a number of sparse warnings for the Kona SMC code and the
  BCM2836 SMP code

----------------------------------------------------------------
Ben Dooks (2):
      ARM: bcm: include local platsmp.h for bcm2836_smp_ops
      ARM: bcm: fix missing __iomem in bcm_kona_smc.c

Florian Fainelli (1):
      Merge tag 'tags/bcm2835-soc-next-2019-10-15' into soc/next

Stefan Wahren (1):
      ARM: bcm: Add support for BCM2711 SoC

 arch/arm/mach-bcm/Kconfig        |  4 +++-
 arch/arm/mach-bcm/Makefile       |  3 ++-
 arch/arm/mach-bcm/bcm2711.c      | 24 ++++++++++++++++++++++++
 arch/arm/mach-bcm/bcm_kona_smc.c |  2 +-
 arch/arm/mach-bcm/platsmp.c      |  2 ++
 arch/arm64/Kconfig.platforms     |  5 +++--
 6 files changed, 35 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
