Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD57164E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGIQ86tHYJoobj8ioLl400I5yjGGN8qb5JpZ07Ds5vU=; b=gApYudc4dm9EkW
	eDoa8EcmhQXMwZ70uMiBQlL2lk2ZrSqnP9iP46T2Rv1Ld7S3/EkCzMDQhjlxpM+KpKr9Eyev8xr4w
	qYqDYQN8dhW6AA7IBFLmuGJaO6cVkfzaWLtGyjN63sILe5eeVPOuV7Y/60uPogu8wUVeYPGIzijG9
	sf18ERxYn3AYWhgvOwsvFuRdchd3IG6q/29UoYLHmjdi+pRkIldoTgVTPjVOLnnsNbDnj0HdM6iHM
	FXkql+hSS0ymw9XADFsWQmPojPyvE4SC3U8PNe/spyCJQi+6VkPdHAyYDsYNgCerFe3KZj7Y0atyx
	H2hrv3Q3pzjCZ+pWPmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsCF-0006ha-T0; Tue, 23 Jul 2019 10:39:03 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsBs-0006cZ-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:38:41 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d36e3ac0000>; Tue, 23 Jul 2019 03:38:38 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 23 Jul 2019 03:38:40 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 23 Jul 2019 03:38:40 -0700
Received: from [10.21.132.148] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 23 Jul
 2019 10:38:35 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, Lars Persson <lists@bofh.nu>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
 <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
 <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
 <BN8PR12MB3266664ECA192E02C06061EED3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <BYAPR12MB3269A725AFDDA21E92946558D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <ab14f31f-2045-b1be-d31f-2a81b8527dac@nvidia.com>
 <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <2ad7bf21-1f1f-db0f-2358-4901b7988b7d@nvidia.com>
Date: Tue, 23 Jul 2019 11:38:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563878318; bh=TSX0vsbM4hlh2BIH8botP8IIgJ57VFrMnkO9PEsjFiU=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=SLWuek9Aad242GhpJ3cjl7QUaspjMq8XtmMQsVUN7uLuU1ky5UNTYfiS8I7ieq1vc
 J/+ZLQkdyE97RV1hsIoJ6BIpmCOOid8NDVDazvI2DmITdcVMGOVA+Izsa4zAlLdQaQ
 Bq0DBnCNSsl6jvg1EPBgFCn0+BVZRyJ7q+pHWJUvfGQgTtSCsdlD81BuZy8ZbVyPzZ
 E/7/UFyEWSflInoM9SfjLSOb/GZBvskPqvsbCr7xW5D7bx8sityJMKPg6EpSiVcjAS
 1+YdFxs8ODPw5pcugXm04Mry4B8L8DFjaQHIuKKSDs34jZStVfTitx9zMYyW34qJsb
 Fe0dlqwrFLtog==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_033840_675173_9C58B3FE 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 23/07/2019 11:07, Jose Abreu wrote:
> From: Jon Hunter <jonathanh@nvidia.com>
> Date: Jul/23/2019, 11:01:24 (UTC+00:00)
> 
>> This appears to be a winner and by disabling the SMMU for the ethernet
>> controller and reverting commit 954a03be033c7cef80ddc232e7cbdb17df735663
>> this worked! So yes appears to be related to the SMMU being enabled. We
>> had to enable the SMMU for ethernet recently due to commit
>> 954a03be033c7cef80ddc232e7cbdb17df735663.
> 
> Finally :)
> 
> However, from "git show 954a03be033c7cef80ddc232e7cbdb17df735663":
> 
> +         There are few reasons to allow unmatched stream bypass, and
> +         even fewer good ones.  If saying YES here breaks your board
> +         you should work on fixing your board.
> 
> So, how can we fix this ? Is your ethernet DT node marked as 
> "dma-coherent;" ?

TBH I have no idea. I can't say I fully understand your change or how it
is breaking things for us.

Currently, the Tegra DT binding does not have 'dma-coherent' set. I see
this is optional, but I am not sure how you determine whether or not
this should be set.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
