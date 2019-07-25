Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BE774A32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMsJm9sc9WfUT6g1XXEwi+HjkYvNB/s4poQcXk5sgYU=; b=qV1P7ZYxQT50aJ
	cHVedqQCpwoTvAb3qH2EcP1UNy77Su7n6Q3cDFo0DFfFl6oaTnpyFayde+EsXPWktDA3wC2NGmbwJ
	9olgBOiT9W7cEoifWQlfzbH77zfF955xgGb7w0c8QWk442ow4ezgV+qY1EyFTnn0vgVEMlsqYVcbh
	gfdlSOCA58ZJ4x9/Cfnwp0Tb4FTABT0LRrQO9+Pwhi+EUdddUNB2Hz6NdGYBsgrFz12J782EI8C8G
	GbM/yGINmyHOzkc8P0t/UWB/TelH7KR6KhB3O6+FDHMyiOHuTV9PExcgSGdLCoyWNzTtBlO7J3q0m
	3EeX9gk/8GYEDoH7/9yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaKC-0004ui-Nv; Thu, 25 Jul 2019 09:46:13 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaJs-0004uN-Nk
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:45:54 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d397a500000>; Thu, 25 Jul 2019 02:45:52 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 25 Jul 2019 02:45:51 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 25 Jul 2019 02:45:51 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 25 Jul
 2019 09:45:48 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, Ilias Apalodimas
 <ilias.apalodimas@linaro.org>
References: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <20190723.115112.1824255524103179323.davem@davemloft.net>
 <20190724085427.GA10736@apalos>
 <BYAPR12MB3269AA9955844E317B62A239D3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <20190724095310.GA12991@apalos>
 <BYAPR12MB3269C5766F553438ECFF2C9BD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <33de62bf-2f8a-bf00-9260-418b12bed24c@nvidia.com>
 <BYAPR12MB32696F0A2BFDF69F31C4311CD3C60@BYAPR12MB3269.namprd12.prod.outlook.com>
 <a07c3480-af03-a61b-4e9c-d9ceb29ce622@nvidia.com>
 <BYAPR12MB3269F4E62B64484B08F90998D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <d2658b7d-1f24-70f7-fafe-b60a0fd7d240@nvidia.com>
Date: Thu, 25 Jul 2019 10:45:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR12MB3269F4E62B64484B08F90998D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564047952; bh=5isgglopm7SeJ86vy3+jPoE2tjL+r8qlKxtTv2QKBHM=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=UOPEEsvkrrYBFIWOd177XUvGoLoWRcDIklaeRlE6HdJ86bODEuxFdAKOnXSsl7TQj
 C1BlC2kjEQ0OhI0uEKzvHK9P8cFLhTi9bOecyjyqn+yeZ5oJTX4F0fA21jvxkmoMGW
 TNukEvfcPf42Mg3iQLiGz6vTTPRGJWuSlRF4vZIshHT3rYR/wZStZWNFVVkYAUtTdd
 e5axWio9Qs/BMnGYpAWXNM8SBrmW/SE92TcRbIn7zHU7j0fR3D8FXMdI5wfJW2vgh6
 LWbcupZd1chBOxvamcdQX84cb/usJkiRoWPgbFY/h+z97ZHmL8OzwA12q1uekPsgVZ
 PMCZNteWQgGFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_024552_787609_B9D0DB61 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "wens@csie.org" <wens@csie.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 David Miller <davem@davemloft.net>, "lists@bofh.nu" <lists@bofh.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 25/07/2019 08:44, Jose Abreu wrote:

...

> OK. Can you please test what Ilias mentioned ?
> 
> Basically you can hard-code the order to 0 in 
> alloc_dma_rx_desc_resources():
> - pp_params.order = DIV_ROUND_UP(priv->dma_buf_sz, PAGE_SIZE);
> + pp_params.order = 0;
> 
> Unless you use a MTU > PAGE_SIZE.

I made the change but unfortunately the issue persists.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
