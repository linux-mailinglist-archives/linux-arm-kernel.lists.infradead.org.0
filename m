Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D0CB8C26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EnE7aZmKTWD9BvpoWHMNGjkfwh3YI02nQgZqmy45zlc=; b=p3qJq1JOChzfpO
	eiX0UwrPN/+tOcA9PP+a4pEyRoxGqtGaXHTbOUb3GA5VC0yhYwrSd4QMxPX2PZz3Yk5ZQp0gNlo+o
	Sv8ZEhZCp/cIW3TR4HUdksF0wN/HwhlXbH8X2X/wYamghsJXTqPGDXoGJ7bbz76Vh/WLJXPrZ2wHn
	dL0zPXpGvTW+ulZVwxxyZp9ZGReSwguTE9s0BgtF/NKOdME/mSl6EheuD03elIyOYZu9w4FaFztX6
	xTgzTMzGgoQ9hXt1G6Jp+IUDhcDiZoQ9Mek3+ME6OYWPsvs///aDRHtitcM4nhSsngmPbfB2TX0Do
	AL2FiiBTQy1TS6vYj4IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDpr-0001k9-V7; Fri, 20 Sep 2019 08:00:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDpb-0001jU-Ua
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:59:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8K7ximS035593;
 Fri, 20 Sep 2019 02:59:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568966384;
 bh=fRna3Ce4+QZO4OTHHC6NwL1VdN3RV06uWyYjVpJ4w0w=;
 h=From:To:CC:Subject:Date;
 b=lYgP0KrTvECQvoCQYpcn36zdWF8tNJk54Ae3b1UWjSU3x8fLdBVJnC8OMs2NAvLHL
 rZwwsHP0KpKvQRSZelEz315DVRR0JEbLCSKrGzSRRkGWkm08aKuh/wFy1PA+NvkFI9
 gdIEHMjAO6ibWPdiN16npOUDgJN+XlUyy7cCy1Rk=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8K7xiDW057565
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Sep 2019 02:59:44 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 20
 Sep 2019 02:59:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 20 Sep 2019 02:59:40 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8K7xeXS118255;
 Fri, 20 Sep 2019 02:59:40 -0500
From: Keerthy <j-keerthy@ti.com>
To: <arnd@arndb.de>, <nsekhar@ti.com>, <olof@lixom.net>, <t-kristo@ti.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <tony@atomide.com>
Subject: [PATCH v2 linux-next 0/4] arm/arm64: configs: Convert all
 CONFIG_REMOTEPROC instances to y
Date: Fri, 20 Sep 2019 13:29:42 +0530
Message-ID: <20190920075946.13282-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_005956_075653_DD4E5283 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: j-keerthy@ti.com, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 linux-omap@vger.kernel.org, hch@lst.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6334150e9 changes CONFIG_REMOTEPROC to a boolean config
option that inhibits all defconfigs marking CONFIG_REMOTEPROC as
a module in compiling the remoteproc and dependent config options.

So convert all the instances to built in.

Boot tested for omap2plus_defconfig for dra7/am4/am3.

Any quick testing on other boards welcome. 

Patches apply on top of linux-next branch

Changes in v2:

Cc the right lists.

Keerthy (4):
  arm: configs: omap2plus_defconfig: Change CONFIG_REMOTEPROC from m to
    y
  arm: configs: davinci_all_defconfig: Change CONFIG_REMOTEPROC  from m
    to y
  arm: configs: multi_v7_defconfig: Change CONFIG_REMOTEPROC  from m to
    y
  arm64: configs: defconfig: Change CONFIG_REMOTEPROC from m to y

 arch/arm/configs/davinci_all_defconfig | 2 +-
 arch/arm/configs/multi_v7_defconfig    | 2 +-
 arch/arm/configs/omap2plus_defconfig   | 2 +-
 arch/arm64/configs/defconfig           | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
