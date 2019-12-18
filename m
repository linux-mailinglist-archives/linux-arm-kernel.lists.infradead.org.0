Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E3B1249F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=eipeivpa38pgnOpJqFTK19PM7N4442ZYyKqoauU/PUE=; b=j+gQz0n4tUR67l
	5SY6R6kjnjS2ut4bnuV44UzK/1QoorLxbYHdOpH+xIixYbkvSBYl4jEfEw19GmfhxmP2iLmwAIi9g
	Vvuz/HrUWiyITn/G+S/JqOsaS0rHf+wv0MG2CRpk7uq+GPtzPoEq9lmpfSC1pmLNcKunfd8VIS2Tk
	e706orJE/SUycrZFil/HtOo5CkDzQVG1gtGxDMNMPv75iPHaRSiTV21UabTDWZq9TwPZhSneI0A/E
	Bv6hs+b0l+CQgLi/3mq+f8jivwqnGHIbTXOx7vBnCY6avMM2fEZ8X/YK9TKeh/+A0h4MdzVWN4ruO
	bR5qrUBYx1RnJ43/TgjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaZE-0004H7-E6; Wed, 18 Dec 2019 14:44:48 +0000
Received: from mail-vi1eur04on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::600]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaZ5-0004GW-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:44:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXd1vMvWJbUUz+hu81eRwKQMM133w37ya9YF9vHMp82fVuvpckP6QIiZBLS0Uzk/4vvha2OiHgtjwNkxYGX7pVR7M4JWudBjoFAUnGOxjqM5rt9AMXq6J5eeTznM1xLiZynaLWP/njjDPNTT7ZOFiwWAz534coOQg1tPQw5yKL3zuOUimteqpifi3/PCSzOXGiaImmwyn+/bxfiNauYiRzCRNsexE3CusaZC4eCUXWKVF+IKdSZMrBvmG/6YavYApcWxY3ajv0fYQbp3innJq99C1OSunmupaWtemWFIfhUQJMFSR5+FXvA4SooYTnk0zXl0S1+jJitNd9Fqpr/ydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OdV3EJ+hp+kdZ/ajSy90qb5vqDrqZMwVp3BywZUxBiQ=;
 b=KQkhGEVbHT3I7wvst2dZ5UNCrJCWnA3z4WdwUN6YN2cQhLbnMOGhiO6d2NUS9zDXPGPofJ60g72FakKrutXDWakI5PU8vhh51PjMjRETFMf6QSJtsYtMeubzJh9rQrF+cHmevNEUcHrohQ6Lp9ESgmjzuNEgG0UT64f+0tL/yMcI2ayFDPXeF+Jg5nzAcmdfOzO32chBVhj+M3q71OKHoeuZayuXTIVhwG//etqTrVIndUco5gMhwrBzS02DX4Sqmoj8zj1uPX8P8n2TsGjj3SEpvseCVtAvVETuaYXJmN5pof18U7wOruNVE3OCKi9IRM5xKbP1zQI06PARmntiew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OdV3EJ+hp+kdZ/ajSy90qb5vqDrqZMwVp3BywZUxBiQ=;
 b=KQcLaQL0kYgO6MN1Gvk8Bsz5SXvords0o+lE8kckM58AL2vh8Lh5FzlhBwbquBF4A4UhSgWSd0iOWlXVaD7uTmfl2g8y28l4mQVjUos67F/AnaTHc2ocM7GTW3FRgnzLqRjWYE9ReFLAREAlDhavJxA4aZ1jqgcQDbrtc6RjAPA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5280.eurprd04.prod.outlook.com (20.177.51.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Wed, 18 Dec 2019 14:44:36 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 14:44:36 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVoX4nPagdJ4eJVUSp7HmX0gzdZg==
Date: Wed, 18 Dec 2019 14:44:35 +0000
Message-ID: <VI1PR04MB70231CA0E3C4574211518359EE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d15f8f46-dc57-43df-1189-08d783c8cd80
x-ms-traffictypediagnostic: VI1PR04MB5280:|VI1PR04MB5280:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB528095B35C00D0C5DBB43D5EEE530@VI1PR04MB5280.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(366004)(396003)(136003)(189003)(199004)(2906002)(66946007)(44832011)(91956017)(8936002)(81156014)(8676002)(81166006)(76116006)(5660300002)(33656002)(4326008)(64756008)(52536014)(55016002)(66446008)(66476007)(66556008)(9686003)(86362001)(966005)(478600001)(45080400002)(316002)(54906003)(6916009)(186003)(71200400001)(53546011)(6506007)(7696005)(7416002)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5280;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hbpKrkgxlJfwurAKcCP2Kzj1ht+H/uYijVK73xIqvp2MnhJR4KJPxfYwGM/Qkxx9t5X4uqhgy9tz6hHLtaBNXsf7RLdr2NQVeWYlNlEIx+Uln3mNe35O4F4pMRPirgySmc3juXCwp6+oEiFrOdZRzoLi4NqATyhFDxBNCVfjGMoplyEWh8Y7B+WGAqe+v/58gVkEb45Gt47GpfZsmLvbnH9xMi0Bmih+DVDoTJx3D2WprvWR8Trj0mSGfLG+60GRvxe9/svqoZTt71UzKm872OZkcBWuYAG2NYd6nzKHE4NiM8CKlDmNQ1RWkKFK/G2UOOW03BBoQudxXbJxSOGkNn/cJcItYq2TCcz4fkdYsv9EaEagn8apK2KJrE9IrdXDDDpOegEZF1IlNTlVkIszS6ba7yAZW8kx7gSZV5Fybu8HH3/w7NIZlAR8OgfcL00KSrunBlQl3Tsu6qwZ3GBit2X6cOMHYuP3mAeWJifjX7Yrkhhu0tIp12Tz6W7NdtY1+MOdABOvZiqalvRwSf6ZvA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d15f8f46-dc57-43df-1189-08d783c8cd80
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 14:44:35.9041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xOF73bfyDwOQJcFjPsOPV/mfgK0bBJUiNiEbwJhGrOhu43SkYnr7AZshDY1lnJ6NIiELPLGNbCpgYlE6v2YQOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064439_265066_737FF264 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:600 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.12.2019 15:35, Adam Ford wrote:
> On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> This adds support for dynamic scaling of the DDR Controller (ddrc)
>> present on i.MX8M series chips. Actual frequency switching is
>> implemented inside TF-A, this driver wraps the SMC calls and
>> synchronizes the clk tree.
>>
>> DRAM frequency switching requires clock manipulation but during this operation
>> DRAM itself is briefly inaccessible so this operation is performed a SMC call
>> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
>> is updated to correspond to hardware configuration.
>>
>> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
>> manually: the driver will prepare/enable the new parents ahead of switching (so
>> that the expected roots are enabled) and afterwards it will call clk_set_parent
>> to ensure the parents in clock framework are up-to-date.
>>
>> This series is useful standalone and roughly similar to devfreq drivers for
>> tegra and rockchip.
>>
>> Running at lower dram rates saves power but can affect the functionality of
>> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
>> will some separately.
>>
>> This series has no dependencies outside linux-next. The driver depends
>> on features from the NXP branch of TF-A and will cleanly fail to probe
>> on mainline. There are also plans to upstream dram dvfs in TF-A.
>>
>> Changes since v6:
>> * Replace ARCH_MXC || COMPILE_TEST with ARCH_MXC && HAVE_ARM_SMCCC
>> * Collect reviews
>> Link to v6: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11244283%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275120308&amp;sdata=ZEZnG6pijjj4MObC99c6%2BvC8BFEfT1KLVxbJCNocoWw%3D&amp;reserved=0
>>
>> I'd rather not fix COMPILE_TEST with ifdefs for this driver, if anything
>> that should be fixed in smccc header. ARCH_MXC doesn't imply SMCCC, it
>> also covers some very old chips which don't have it.
>>
>> Resending full series because that's the standard method.
>>
>> Changes since v5:
>> * Fix a dram_apb/dram_alt mixup in imx8m_ddrc_set_freq
>> * Make clk_get_parent_by_index static (kbuild robot)
>> * Adjust messages in imx8m_ddrc_set_freq
>> * Use a for loop inside imx8m_ddrc_check_opps instead of while
>> * More elaborate description in dt-bindings file.
>> Link to v5: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11240289%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275130306&amp;sdata=mMqglPQign%2B6NHgmDYoZ74%2FZeThGI6%2FgNkajo1VaHTI%3D&amp;reserved=0
>>
>> Changes since v4:
>> * Restore empty _get_dev_status: testing shows this is *NOT* optional. If
>> absent then switching to simple_ondemand governor will trigger an Oops.
>> * Keep clk registration on single-line in clk-imx8m* for consistency with rest
>> of the file.
>> * Drop explicit "select PM_OPP"
>> * Check for NULL new_dram_core_parent
>> * Rename "out_dis_" labels to out_disable_*
>> * Use dev_warn on imx8m_ddrc_set_freq error paths after SMC call (where
>> operation is not abandoned).
>> * More elaborate error messages in imx8m_ddrc_target
>> * More elaborate checks when fetching clks in imx8m_ddrc_set_freq
>> * Rename ddrc nodes to memory-controller@* as per devicetree.org "Generic Names
>> Recommendation"
>> * Defer perf support, it requires perf changes to fetch PMU by DT
>> Link to v4: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11235685%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275130306&amp;sdata=LXG4bo0l7FOttZIolJE73CK67AAAW72xfx8yq3Vld7o%3D&amp;reserved=0
>>
>> Changes since v3:
>> * Rename to imx8m-ddrc. Similar blocks are present on imx7d and imx8qxp/imx8qm
>> but soc integration is different.
>> * Move dt bindings to /memory-controllers/fsl/
>> * Fix dt validation issues
>> * Fix imx8mm.dtsi ddrc referencing ddrc_opp_table which is only defined in evk
>> * Move opps to child of ddrc device node
>> * Only add imx_ddrc_get_dev_status in perf patch.
>> * Adjust print messages
>> Link to v3: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11221935%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275130306&amp;sdata=%2FFGddgm7jq87j7tz6gNd%2B7V%2BGX4KF5RaPsnXK2kITdQ%3D&amp;reserved=0
>>
>> Changes since v2:
>> * Add support for entire imx8m family including imx8mq B0.
>> * Also mark dram PLLs as CLK_GET_RATE_NO_CACHE (required for imx8mq b0 low OPP)
>> * Explicitly update dram pll rate at the end of imx_ddrc_set_freq.
>> * Use do_div in imx-ddrc (kbuild robot)
>> * Improve explanations around adding CLK_GET_RATE_NO_CACHE to dram clks.
>> (Stephen Boyd)
>> * Handle ddrc devfreq-events earlier for fewer probe defers.
>> * Validate DDRC opp tables versus firmware: supported OPPs depend on board and
>> SOC revision.
>> * Move DDRC opp tables to board dts because they can vary based on ram type on
>> board.
>> * Verify DDRC rate is changed in clk tree and otherwise report an error.
>> * Change imx_ddrc_freq.rate to be measure in MT/s and round down from HZ in
>> imx_ddrc_find_freq instead.
>> * Split away from NOC scaling and interconnect support.
>> Link to v2: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11104113%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275130306&amp;sdata=3hh0dR1h4Esc6qo79QQKH%2FkUQjrOUgLANR0PcIz1Pss%3D&amp;reserved=0
>>
>> Changes since v1:
>> * bindings: Stop using "contains" for "compatible"
>> * bindings: Set "additionalProperties: false" and document missing stuff.
>> * Remove (c) from NXP copyright notice
>> * Fix various checkpatch issues
>> * Remove unused dram_alt_root clk from imx-ddrc
>> Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11090649%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb7adb366b79f4c564c7908d783bf23ae%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637122729275130306&amp;sdata=Hj6NEmoaRHoR%2BQpFoUDdTlybO%2FSTatO2fFo20UGLJf0%3D&amp;reserved=0
>>
>> Leonard Crestez (5):
>>    clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
>>    clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
>>    dt-bindings: memory: Add bindings for imx8m ddr controller
>>    PM / devfreq: Add dynamic scaling for imx8m ddr controller
>>    arm64: dts: imx8m: Add ddr controller nodes
>>
>>   .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
>>   arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
>>   arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
>>   .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
>>   arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
>>   arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
>>   arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
>>   drivers/clk/imx/clk-imx8mm.c                  |  11 +-
>>   drivers/clk/imx/clk-imx8mn.c                  |  12 +-
>>   drivers/clk/imx/clk-imx8mq.c                  |  12 +-
>>   drivers/clk/imx/clk-pll14xx.c                 |   7 +
>>   drivers/clk/imx/clk.h                         |   1 +
>>   drivers/devfreq/Kconfig                       |   9 +
> 
> Since there is a Kconfig change, should there me a defconfig change?

Yes, you need to enable CONFIG_ARM_IMX8M_DDRC_DEVFREQ in order to test 
this. Enabling as "m" should work.

>>   drivers/devfreq/Makefile                      |   1 +
>>   drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
>>   15 files changed, 670 insertions(+), 10 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>>   create mode 100644 drivers/devfreq/imx8m-ddrc.c
> 
> I applied the whole series against 5.5-rc1 and I am trying to test it.
> I know the 4.14 kernel NXP posted on Code Aurora is capable to
> lowering the DDRC controller to 25MHz on the 8MM when the video is
> off.  Since there is no video support yet for the 8MM, I was expecting
> to see the DDRC clock to be at or around 25MHz.
> 
> Using debug FS, I can see the dram core clock is still running at
> 750MHz, and measuring power, it shows something consistent with what I
> see on the Code Aurora kernel with video turned on and the clock at
> 750MHz.
> 
> Is there some way to get the dram_core_clk to drop to 25MHz to see
> some power reduction?  The same commands used in the Yocto build don't
> apply here since we don't have video.

Current upstream driver just keeps current frequency by default. Try the 
following:

cd /sys/class/devfreq/devices/devfreq0
echo userspace > governor
echo 25000000 > userspace/set_freq
cat /sys/kernel/debug/clk/dram_core_clk/clk_rate
echo 750000000 > userspace/set_freq
cat /sys/kernel/debug/clk/dram_core_clk/clk_rate

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
