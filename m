Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2E516EE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EytuhC9RLTU30E7JWXyMwhcxnZq1OrOFMPn2MxWP18E=; b=HEd
	SvTSdRAN+1jflZ7rY3ZLJlcxuqgsfInGWtX1e4iYpVisYIzgFulvzSk1GHXWkuqk0BhUAvtz0BnRQ
	+UtM0/wowPpHZj8M+6oytwIGLLmilCu2Uowdw36qV/qylvWRmjh7h41cVY3zIWzBtfEFZZaSxs0Rq
	kkLTRkIjwMxpvwbBfnISuIWsiHTpGWSaugcpSOQRklQdD1ES+cq+x/aYK59o9/RK9oroCFSu/QJKR
	e7361aMxIroVNQ1QEj5w5gDscE574C7okSLKo+IjpHCbDOH8MzOmuvQ9w104Yxv7I/w30vH/iVq5k
	uoo3nn2sg4OdLccPQqzv9/xTz7wYlKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCBV-00039R-K0; Wed, 08 May 2019 02:19:53 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBM-00038V-Ip
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:19:47 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n76so6352396ywd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=53Jboj1jRgFvMb4WzHp98oy3I5nfTVXEAchn1y2EzOc=;
 b=RBlup3KPFNcyrB9ylm1qkvs0cblxy6flpxA0OYqN53KJ8PIAYu8bo8D+/x/2pvQsmM
 dl4wfuL8b02ODRM/SfXQfikr08d923wAv0kjMs9VhtlTv4EQiORgx3Rxhbwu9XcyWbHE
 mj0pse0+S5xQSdjyolPLlxWnNr4H+2+Jnopz28QnJz9ijG2nGcc4nXu1G7Nv9QoiIeo3
 L8i+OFgfTReIrAy3/4ipDRegLIPRsI3twnwK1LFJ5480U8fjuXKeZnCUwamHV9ZcDWbn
 OOw6DkQabvzVU9g9iQdPeluo3AWax/6Oxwan60wUvw95otfaUHekxnGsvNrLXPgH0/6P
 diaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=53Jboj1jRgFvMb4WzHp98oy3I5nfTVXEAchn1y2EzOc=;
 b=MRA+1HCzaBh3P12/6BUoGfBR/XpxU1t2DJTNc7DaTx4AZ9ZODfcpSXPJaHxGaPf/ul
 5zV7XSMclJCpRkBYMX5UJE/kZx2bPaoH3sNOlBvcwLBfSy4Q7Ws2UMWwqzia/X8B3wg2
 DTE4t+7RYlV8WPh4VYHCO1/oZavBkMZ+MwBdnQazLQ34eMZwSdkHunKeR0cnXmpwKDxu
 UKMZtXDs2tjU3QzvrXxPsj+yOLUBBI+I76Kl+068Gqodr5/Q3QUzKFgqfj5xN5WpawCW
 V+rgJ0b8YcT/UIwQCdGqaqG2I/SEOV46cuSbqNmQGCmrtdR9mUKSCOWOJg9yF0p+xLNp
 0eVw==
X-Gm-Message-State: APjAAAV0wB03tYBgrkJoXPnCs0xysQSVNdEGuHurlziq6Y7HkDinIMgp
 oaTY+UnntKPJJyK1XpNhuQt71w==
X-Google-Smtp-Source: APXvYqxIefpB6QOxsv5208c4eOzk2H+HjQbDo2jovyEHJ5xfkrhRDkweBqtP1NwPjRT6lpkVusJgxw==
X-Received: by 2002:a25:542:: with SMTP id 63mr23605669ybf.331.1557281980950; 
 Tue, 07 May 2019 19:19:40 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.19.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:19:39 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 00/11] dts: Update DT bindings for CoreSight replicator and
 funnel
Date: Wed,  8 May 2019 10:18:51 +0800
Message-Id: <20190508021902.10358-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_191944_623589_EA6AAF38 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Guodong Xu <guodong.xu@linaro.org>,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Chris Healy <cphealy@gmail.com>
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

== Changes for v2 ==
* Add explanation for the change in the commit logs. (Fabio)
* Merge the separate patches for funnel and replicator per DTS into
  a single patch. (Suzuki)


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


Leo Yan (11):
  ARM: dts: hip04: Update coresight DT bindings
  ARM: dts: imx7s: Update coresight DT bindings
  ARM: dts: qcom-apq8064: Update coresight DT bindings
  ARM: dts: ste: Update coresight DT bindings
  ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
  ARM: dts: qcom-msm8974: Update coresight DT bindings
  arm64: dts: hi6220: Update coresight DT bindings
  arm64: dts: juno: Update coresight DT bindings
  arm64: dts: qcom-msm8916: Update coresight DT bindings
  arm64: dts: sc9836: Update coresight DT bindings
  arm64: dts: sc9860: Update coresight DT bindings

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
