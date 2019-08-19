Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC2794D7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7zCBDUc2AAnN4HLBSQtVjC+okGCwNk4t6L4f/zmSjNc=; b=qKG+VvPUQ4qbL+mYXLXnlljb3r
	lHRhOJQOOb0gCwYYTXKO8ARfSmnD5CF59UO6/LdC0yR4Ejl/5MQsi6lryEriny5gWfEA7QZniScR7
	vc4a4V6p1g3zlJl1WBFyXuItoDJLQd8RvqrdcZFxq7FJlOIOolhFYGU4ind4b/yd1lcJA4EXGfTKN
	JXLNs/byecQaUXWulzzJRiWMGKyjARuKLaZ8aLBlVMvj86wiDZxE1/kRydQH7EZ5gfk+B+mXelra8
	zx275ogidLrrRXnxcfV2zLB2BCwno86J2r+R9xcoJBuDazkEdRz+5X4sPPaMYkZ/Nl8xsOE+xwopH
	G0O+syjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmzF-0007eA-Gr; Mon, 19 Aug 2019 19:06:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmye-0007RZ-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:06:02 +0000
Received: by mail-pl1-x644.google.com with SMTP id go14so1413210plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fYuzOL1IgGLo9fVS2sHsuYZrLb7Du5IAZMvtihsOq3M=;
 b=c//w3LBQM1mTo+Zl9XhJ4L/Zb2osvSzAIBgCYmdRJ3dJh+MXsLMUymn7vRmUiyXSij
 deAEfGmB8V/xT2zLkRaH9gdvYms6VA3FIwteL8u5+AOuCiEbqYs/ypJK9EnpXoSHToeF
 BgLlwIwnWPydi5788WmIZ/I8t9vD9zyVIAANhF/2QntX6WqMwcsANfBvOe1M3/xTgLUK
 lDJI7nvR4MrIZPsSVc7DERZsnE1UIuqqxoW6NWx7fJQdaDHbi8tO9GZ1go4c5zAR0Ly4
 Pgcvg1RNpYhjv8+szJ83HN/XS4R3/bDhjIPvADZ2wgnISol5BMQdcE3Jnw4qfeBpeObJ
 cAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fYuzOL1IgGLo9fVS2sHsuYZrLb7Du5IAZMvtihsOq3M=;
 b=JbQezRWcUtLnMtdVGFSVOA7IyDNqCGfoPw35nyT7/J/1iHNoZQ+xNQBhzXBGfjRXog
 4sXLRzmaIuh+HNgd7cZxGeWeAtWwv7P8wXnVh85VXs2nfJcDWQvYYDK94+H/h+IkOkZ5
 9DEHBCyp2LRds3eiQVLGWeg8nTuOqDxThrbR2x+Am0KCF19aM3ZGVCCeDiBGsjUhtO80
 dsm88SiuueQABu2UjtJpn/8fG/PZrQDCaDdmv8AlTIH07mdx3T/jBpX78XNawQ45BuxW
 ByF+VrUuJ0WBT5D8KksH+9Uzz9UaHI3XPKvWc32wTCcOnQM4A1hGs+m08VdpJXWkVi9Q
 WSjQ==
X-Gm-Message-State: APjAAAVtDhzh/uecHzkVzKkdCF8lo6qljNiUyuLnVTh09pHVKNRSpbk7
 CLassDtFnfX/bplyNOsP84k=
X-Google-Smtp-Source: APXvYqxY5XqakkUaHBCMo0u+PuLCWHqg+498IxvDmWYTGMumIcAE9Rf8K1KgXjSpDsCHnq/Nj80OHA==
X-Received: by 2002:a17:902:8f85:: with SMTP id
 z5mr7753652plo.328.1566241560250; 
 Mon, 19 Aug 2019 12:06:00 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o3sm27879pje.1.2019.08.19.12.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 12:05:59 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/3] Broadcom defconfig-arm64 changes for 5.4
Date: Mon, 19 Aug 2019 12:05:51 -0700
Message-Id: <20190819190552.11254-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819190552.11254-1-f.fainelli@gmail.com>
References: <20190819190552.11254-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120600_856330_3894D506 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig-arm64

for you to fetch changes up to d6cc9ddd23f8b113797152896462b27e2b213ece:

  Merge tag 'tags/bcm2835-defconfig-64-next-2019-08-15' into defconfig-arm64/next (2019-08-15 11:38:29 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs defconfig updates
for 5.4, please pull the following:

- Nicolas enables the Raspberry Pi CPUFREQ driver in the ARM64 defconfig file

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-defconfig-64-next-2019-08-15' into defconfig-arm64/next

Nicolas Saenz Julienne (1):
      arm64: defconfig: enable cpufreq support for RPi3

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
