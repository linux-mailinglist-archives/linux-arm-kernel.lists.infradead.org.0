Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0F66E67F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 15:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77u+/WfroFg/ecnNP6yyKz0RJRoOAuH3V74mAQ07rLM=; b=chgvrXPvdqMuS/
	pVaPY2fvTrrriSeOWFI5dgL3kt5RnSk/2b74JHEXC600icjN48d4elUKULewsfxn/6d0nkJKosJB2
	UENPouwwmWsyTMVfA3g36A28+r42WBY7rUgkem6/x853ri8+IbsRDk2Ohgo9amq21nbxzcV3T3lwk
	lK8QXlOgkQVvzPGc+rn3ffeK/aZBoj18cmu6OuK04QA3NFyC9SUNG+ErAVvLU+smjpV/zlH5y9pHW
	SlLhbryn3EwcmQXRyXxU5TI3OQqBJ6ehT2BA8Vn82aRdrsnxRG3dC2fBEOjtz3E19uVPnchloHAHL
	6ogpTY0hf5hGviFt5Byg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoT0x-0004Gb-RY; Fri, 19 Jul 2019 13:33:35 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoT0Z-0004Fm-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 13:33:13 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d31c69b0000>; Fri, 19 Jul 2019 06:33:15 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 19 Jul 2019 06:33:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 19 Jul 2019 06:33:08 -0700
Received: from [10.26.11.13] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 19 Jul
 2019 13:33:05 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <6a6bac84-1d29-2740-1636-d3adb26b6bcc@nvidia.com>
 <BN8PR12MB3266960A104A7CDBB4E59192D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <bc9ab3c5-b1b9-26d4-7b73-01474328eafa@nvidia.com>
 <BN8PR12MB3266989D15E017A789E14282D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <4db855e4-1d59-d30b-154c-e7a2aa1c9047@nvidia.com>
 <BN8PR12MB3266FD9CF18691EDEF05A4B8D3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <BN8PR12MB32669EDE5784FDBEA90D022FD3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <ad37f1f0-421d-9038-9200-96b137f72b4d@nvidia.com>
Date: Fri, 19 Jul 2019 14:33:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BN8PR12MB32669EDE5784FDBEA90D022FD3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563543195; bh=tuRNal0qoWvjaqkxu4u2m3rwznQIGl+erS3fOMRlguA=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=lH+C3YboX0/0f8CVaRQHuslY4cM6GY1G+8WwpwlxyDcRsrKyd1o32Mxh/m+biCd88
 2ooA5gTT2a+XcLmFVvuwQy3hIkTFUWrx/imBetO6NMyppItNvi1Z/nvFtmI5VZVnGE
 WyPy6p/p+f6+1YKh34vd+ZMyxcvlVOcB9kY5Y1wcUlQLala3S1Lp3jVEAOPXKEErF6
 8EiqEwYwqG4x5CZpLaCtxBl9WrSzV3iQgGLoBMhW92uSvnRI4snHQIW9s4+q0loko7
 xIAAf9PJ7IEVksOQLUZr5aLY2ACd90RX+P2Or0bNHFzoBZZU/7yxgWyAqL4MDr1yXL
 8Cfc39cJB2lGg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_063312_042899_D0456A9C 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/07/2019 13:28, Jose Abreu wrote:
> From: Jose Abreu <joabreu@synopsys.com>
> Date: Jul/19/2019, 11:25:41 (UTC+00:00)
> 
>> Thanks. Can you add attached patch and check if WARN is triggered ? 
> 
> BTW, also add the attached one in this mail. The WARN will probably 
> never get triggered without it.
> 
> Can you also print "buf->addr" after the WARN_ON ?

I added this patch, but still no warning.

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
