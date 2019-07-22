Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEB06FF2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 14:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yj+bb9OJBz39gPfOTMiG3kPMdk6o/jjo24ofq9OAuOA=; b=Y85K09Nv97eTSi
	F40DXokEUHnURoYiIEArg+c/RXEFQ9MVRIY8lnofUcVM5qvYPyR3z7ayFIB7tqL/coS71Dz8GhCk3
	qKnen5ze05ORmQXPDVCzIOzbTFjgd3WQJfJo6x5b1YmxI2id44RmtFqfTh/szwSHLuAqJ0caT/Dp7
	SYDVdRvn0DBP4uFZcOWe8im8jemu6umNmBQ1OKJpoy25d5rX98NFil0RcyPMl+j34H+xKXzXeBZl2
	/IAFc4vju9b79RQmyXvGV/FqdW7lcIhHXVgSKqMq/f3xjHq/pJhQt1MdoSFmDiqvxa2W9ewyoBAkU
	IrkOwPESYTf9fGTNykyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpX4w-0007KV-1d; Mon, 22 Jul 2019 12:06:06 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpX4b-0007Jx-Ha
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 12:05:46 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d35a6970001>; Mon, 22 Jul 2019 05:05:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 22 Jul 2019 05:05:43 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 22 Jul 2019 05:05:43 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 22 Jul
 2019 12:05:40 +0000
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
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <11557fe0-0cba-cb49-0fb6-ad24792d4a53@nvidia.com>
Date: Mon, 22 Jul 2019 13:05:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BN8PR12MB326661846D53AAEE315A7434D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563797144; bh=Wct+IzEygVqP6Q8TYVaAVumlDUN4cfz/yif6Gxo/tw8=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=PNibAy43DkOfCZXujQ+oIlkFaXMLgCtH1v+taBS8cGUIiU0evlUB7V9zOXN4sQOau
 HlQ4f4dK9AZN04vDcSvwaokfFbBvcHTcgrGaBQ2jBm6uoQiDS6Fa/lqKjLCWaRnNYb
 ZbQP59O2rdrAfbZZ5iYZozxEymBlIFVUaZb3A54R58A8Ank3/+p5eJ1IjTOOEJWqhf
 G5QiV1aLp0nAtT9itlBMwOopzCCwzrSn7M57P/jxyOdqI+oyUDuYGo1YeNrwNsA7C0
 AHKsFt8bngZn0DkdDvzgxQSKQyrv/4GjvvIwuxX3fJfXB7GM4SCwLoARbh5u+/SVCD
 imJ38IlTHve3g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_050545_600040_3711A478 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 22/07/2019 12:39, Jose Abreu wrote:
> From: Lars Persson <lists@bofh.nu>
> Date: Jul/22/2019, 12:11:50 (UTC+00:00)
> 
>> On Mon, Jul 22, 2019 at 12:18 PM Ilias Apalodimas
>> <ilias.apalodimas@linaro.org> wrote:
>>>
>>> On Thu, Jul 18, 2019 at 07:48:04AM +0000, Jose Abreu wrote:
>>>> From: Jon Hunter <jonathanh@nvidia.com>
>>>> Date: Jul/17/2019, 19:58:53 (UTC+00:00)
>>>>
>>>>> Let me know if you have any thoughts.
>>>>
>>>> Can you try attached patch ?
>>>>
>>>
>>> The log says  someone calls panic() right?
>>> Can we trye and figure were that happens during the stmmac init phase?
>>>
>>
>> The reason for the panic is hidden in this one line of the kernel logs:
>> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
>>
>> The init process is killed by SIGSEGV (signal 11 = 0xb).
>>
>> I would suggest you look for data corruption bugs in the RX path. If
>> the code is fetched from the NFS mount then a corrupt RX buffer can
>> trigger a crash in userspace.
>>
>> /Lars
> 
> 
> Jon, I'm not familiar with ARM. Are the buffer addresses being allocated 
> in a coherent region ? Can you try attached patch which adds full memory 
> barrier before the sync ?

TBH I am not sure about the buffer addresses either. The attached patch
did not help. Same problem persists.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
