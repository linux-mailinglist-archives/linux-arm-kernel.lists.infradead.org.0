Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E20A1582B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Iq5WSpyV1hN9eU6ZydVp5KuER3cS6ajyP8G6vzLvTU=; b=Jrm
	Og6VaaTKI4d8BM41Kd23NFJsuNuCwwrDNO39mv/uJ1do5BmkcwLXwP+OEgFlGng19Ygw6vr3edLOy
	9i5EPUYg8Ce4KHgmLiGWPtBkM7qM619x/r/jnCLuQpAJfeUMTcTzj2wQoInol1QdvfK/l+011qcz2
	qQ6j5zs0phr/9gps+IFGnxD0+3YE1MV0PTIND162jOWSegQrh6LCX2snh5cQgg9IItoKLeKm0BCwN
	zkW7bKng63xHUWxWfcCi3p5EqBkqmq+q9avpyPIc/cHe+m0yJ2sqwbSU7fuARrLIin4wi0KsZKJlo
	yloe4BfI/cqCUssXBdT+h8Yf9J66x0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr5N-0004vy-65; Tue, 07 May 2019 03:48:09 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5F-0004vZ-KN
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:03 +0000
Received: by mail-yw1-xc42.google.com with SMTP id q185so12135827ywe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=vwpq98YJ0Me8yXK9/G6YxbZBlCqfybSzFLdp1Z+pOQE=;
 b=srJ6wlV3qOXZko89AgOwYOZb/10Ki2lElwqiEuC4ayIXEU3IMgkxVi5cJYOe/RDzwq
 9k0OEc2NLF/BC/NPnCQi4IkL+rR2sofVWjK3j2I2cBgf9diWbunp7QXl7+Mw6YJxeSlW
 2uWoIr//uOTaMZLxA2788f92fKWCa9ZrpNRYn7DlNSoExn2A98lEggNG+6pbLkchg4Dw
 tmtl/1JuXhKYJAFFQjKVOxor20GhB3cizS9H9FWkuZihUvoWbeAKR4A+SHzIzMA9uhui
 cfsx2Z5gF0w+1eYFRHMlIxlp7KAuUG4mdWQDpt4w0UyD18bRb7kQ4azP075jocuMwsVr
 wF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vwpq98YJ0Me8yXK9/G6YxbZBlCqfybSzFLdp1Z+pOQE=;
 b=cCECjaPBPYAfZ8OIdArQCx/Uiw8TAU/TCNBKVPHuaRDgG5lNJrcvQ1Bn/YS11AUBV+
 PM1knZ546qakR+e5SOsqh6XAk8h3XvXSyRKpl/T26TwW2R6FtSkmSOH/3memxBR5aJz7
 3ajAgUikE9/vbp0aDpqph9juMVcckdeNC0OJHT/vglrUcqUn2tcXW8TebkC14/WnBUk4
 rBEGpB9m3PoHpJo47fXHc/2iXZlZeozPEYVWQhjFsd+q1P96IuFkv6fH/RLqezuHeRkV
 719FC1iNPkBuXeMFDrvqCZlevXFgGiMUcip0HvkgzLfAs8skyGafpaVcPVYhhsp1tldF
 rtdw==
X-Gm-Message-State: APjAAAXEBs5fmgWpdVNGoefXYuK/zZD5UX4DbL2ytFqnBIMPSTrH5egU
 vmCb8Cb71aV8tqRezcR6WjvWow==
X-Google-Smtp-Source: APXvYqxMJJJGkNItXoBsjGM30eiEd/HgErgxSmdMTCmsjn8zO4w2TMC4BSeUZpUNIddQg7Ppnp3V/w==
X-Received: by 2002:a25:814e:: with SMTP id j14mr19579576ybm.482.1557200878698; 
 Mon, 06 May 2019 20:47:58 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:47:57 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 00/17] dts: Update DT bindings for CoreSight replicator and
 funnel
Date: Tue,  7 May 2019 11:47:17 +0800
Message-Id: <20190507034734.20622-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204801_698840_ED844CBF 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Guodong Xu <guodong.xu@linaro.org>, Baolin Wang <baolin.wang@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Leo Yan <leo.yan@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Chunyan Zhang <zhang.chunyan@linaro.org>, David Brown <david.brown@linaro.org>,
 Andy Gross <agross@kernel.org>, Haojian Zhuang <haojian.zhuang@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Chris Healy <cphealy@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the DT bindings consolidatoins for CoreSight replicator and funnel
is ready for kernel v5.2 merge window [1], this patch set is to update
the related CoreSight DT bindings for platforms; IIUC, this patch set
will be safe for merging into kernel v5.2 because the dependency
patches in [1] will be landed into mainline kernel v5.2 cycle.

In this patch set, it tries to update below two compatible strings to
the latest strings:

  s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
  s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"

Please note, some platforms have two continuous patches, one is for
updating static replicator compatible string and another is for dynamic
funnel change; and other platforms have only one patch since it only
needs to change for dynamic funnel.

Avoid to introduce merging confliction, I rebased this patch set on
linux-next branch with last commit fcdb095ad001 ("Add linux-next
specific files for 20190506").

This patch set has been tested on Arm Juno and Hikey620 boards, other
platforms are only compilation passing.

P.s. when use scirpt/checkpatch.pl, it reports the warnings as below. I
think we can ignore this warnings for this patch set, please review if
this makes sense for you.

WARNING: line over 80 characters
#29: FILE: arch/arm/boot/dts/imx7s.dtsi:178:
+                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";

[1] https://archive.armlinux.org.uk/lurker/message/20190412.102734.2afbb29a.en.html

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
Cc: Orson Zhai <orsonzhai@gmail.com>
Cc: Baolin Wang <baolin.wang@linaro.org>


Leo Yan (17):
  ARM: dts: hip04: Update coresight bindings for replicator
  ARM: dts: hip04: Update coresight bindings for funnel
  ARM: dts: imx7s: Update coresight bindings for replicator
  ARM: dts: imx7s: Update coresight bindings for funnel
  ARM: dts: qcom-apq8064: Update coresight bindings for replicator
  ARM: dts: qcom-apq8064: Update coresight bindings for funnel
  ARM: dts: ste: Update coresight bindings for replicator
  ARM: dts: ste: Update coresight bindings for funnel
  ARM: dts: vexpress-v2p-ca15_a7: Update coresight bindings for
    replicator
  ARM: dts: vexpress-v2p-ca15_a7: Update coresight bindings for funnel
  ARM: dts: qcom-msm8974: Update coresight bindings for funnel
  arm64: dts: hi6220: Update coresight bindings for replicator
  arm64: dts: hi6220: Update coresight bindings for funnel
  arm64: dts: juno: Update coresight bindings for funnel
  arm64: dts: qcom-msm8916: Update coresight bindings for funnel
  arm64: dts: sc9836: Update coresight bindings for funnel
  arm64: dts: sc9860: Update coresight bindings for funnel

 arch/arm/boot/dts/hip04.dtsi                   | 18 +++++++++---------
 arch/arm/boot/dts/imx7s.dtsi                   |  6 +++---
 arch/arm/boot/dts/qcom-apq8064.dtsi            |  4 ++--
 arch/arm/boot/dts/qcom-msm8974.dtsi            |  6 +++---
 arch/arm/boot/dts/ste-dbx5x0.dtsi              |  4 ++--
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts     |  4 ++--
 arch/arm64/boot/dts/arm/juno-base.dtsi         |  6 +++---
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi      |  4 ++--
 .../boot/dts/hisilicon/hi6220-coresight.dtsi   |  6 +++---
 arch/arm64/boot/dts/qcom/msm8916.dtsi          |  4 ++--
 arch/arm64/boot/dts/sprd/sc9836.dtsi           |  2 +-
 arch/arm64/boot/dts/sprd/sc9860.dtsi           |  8 ++++----
 12 files changed, 36 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
