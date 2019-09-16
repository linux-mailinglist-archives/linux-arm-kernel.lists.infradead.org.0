Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BB6B3EE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLxTkfVCWesH2A8b1y4vD8LU/wsD9cEAF0IkelUS4ig=; b=HCXKRjQmXkkrwE
	B7krUm/mEkI6SqlvHhktjHb0P6xiC8+L2/0HwOeAD5iq39CKEUj13A3K4eI/Cc6zYG0QCF6aumN7+
	iUbTlH9gRBIVH2x/76xorW/fX9g+p4OAEqTDTmx4ah6lRO0eoQ4XTFU+DdPkV18T31JcFiiKr530z
	V5hIDZ0QGNHqpa9Pllys19aKX1nTHArhAStgVMQJtN19IuFWzNqRIcu4QxJzCEGJd/V1ERagU7vY3
	JJ/2Nj/OmOPTMfBW6R8EJHa6gJJ1MSRqUoh4CdWogKEncUm5KQgeQBw4KJ88UZPZPl5txKJJA8FJG
	Ivbp3k7rtwXqqV3X9/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tpR-0001R6-E2; Mon, 16 Sep 2019 16:26:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tp8-0001QC-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:26:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1BC2B80EA;
 Mon, 16 Sep 2019 16:26:28 +0000 (UTC)
Date: Mon, 16 Sep 2019 09:25:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 6/8] ARM: dts: omap36xx: using OPP1G needs to control
 the abb_ldo
Message-ID: <20190916162553.GC52127@atomide.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <59a0f6267c75859c25665548db2e8a9c4229d3b4.1568224033.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59a0f6267c75859c25665548db2e8a9c4229d3b4.1568224033.git.hns@goldelico.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_092558_759038_8101B03D 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [190911 17:48]:
> See DM3730,DM275 data sheet (SPRS685B) footnote (6) in Table 4-19
> which says that ABB must be switched to FBB mode when using the
> OPP1G.
> 
> The LOD definition abb_mpu_iva already exists so that we need
> to add plumbing for vbb-supply = <&abb_mpu_iva>
> and define two voltage vectors for each OPP so that the abb LDO
> is also updated by the ti-cpufreq driver.
> 
> We also must switch the ti_cpufreq_soc_data to multi_regulator.
> 
> Note: reading out the abb reglator voltage to verify that
> it does do transitions can be done by
> 
> cat /sys/devices/platform/68000000.ocp/483072f0.regulator-abb-mpu/regulator/regulator.*/microvolts
> 
> Likewise, read the twl4030 provided VDD voltage by
> 
> cat /sys/devices/platform/68000000.ocp/48070000.i2c/i2c-0/0-0048/48070000.i2c:twl@48:regulator-vdd1/regulator/regulator.*/microvolts
> 
> Note: to check if the ABB FBB is enabled/disabled, check
> registers
> 
> PRM_LDO_ABB_CTRL 0x483072F4 bit 3:0 1=bypass 5=FBB
> PRM_LDO_ABB_SETUP 0x483072F0 0x00=bypass 0x11=FBB
> 
> e.g.
> 
> /dev/mem opened.
> Memory mapped at address 0xb6fe4000.
> Value at address 0x483072F4 (0xb6fe42f4): 0x3205
> /dev/mem opened.
> Memory mapped at address 0xb6f89000.
> Value at address 0x483072F4 (0xb6f892f4): 0x3201
> 
> Note: omap34xx and am3517 have/need no comparable LDO
> or mechanism.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
