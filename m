Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198456FC53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYKylzviErVFSu5zVnSd8PtW01Erb6wjZ6QZUTHw4Rs=; b=YcD54jNNyba6Ln
	als4qJDlQlUDWxTm04ue7Hg9ZgKyX2qPb5DcEc+0/KQfb6cqSg5Ov3/QAkJvA2pNvdax5I7ez7nQQ
	t1Y9uS6VEMVrDGUH/bWgyK2aeuzrTXqB/cbfI7/05M8UwBNFcmV4hjJeh1pyTBGU3YA5AjpvvEqtY
	KE0R66LCUp6megB+l+oiYPH/QsLIUDMAqGsBNIUdgbFhhjfVUImtAMBsIG7NZoI8TnR0SxxGmpt3/
	1pXZy2gTWqylouFW9ohA9uUPynv5T6Jgsnc8uselrbjQZMCAKTD5icHr8UeWGMpoTi3mJD+mkXnUp
	Nix27FDFew1YaJ5u39ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUlO-0007E2-Tk; Mon, 22 Jul 2019 09:37:47 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUl3-0007Db-0T
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:37:26 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d3583da0000>; Mon, 22 Jul 2019 02:37:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 22 Jul 2019 02:37:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 22 Jul 2019 02:37:23 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 22 Jul
 2019 09:37:20 +0000
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
 <64e37224-6661-ddb0-4394-83a16e1ccb61@nvidia.com>
 <BN8PR12MB3266E1FAC5B7874EFA69DD7BD3CB0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <25512348-5b98-aeb7-a6fb-f90376e66a84@nvidia.com>
 <BN8PR12MB32665C1A106D3DCBF89CEA54D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <49efad87-2f74-5804-af4c-33730f865c41@nvidia.com>
Date: Mon, 22 Jul 2019 10:37:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BN8PR12MB32665C1A106D3DCBF89CEA54D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563788251; bh=UJ0seHB+XN7Jd8VCDCnDcS3jZbxUmkRZdEKXTGpmU+M=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=c83Ai06+UTmxG7QV6Zri0El0rMs4N+Vfba7mgKAH5mCYGi9gfrZ1tjJUqTYqbkp0u
 atczBX+qG5MVadEdx/Q311ClTaGcKF5bQR1Hvufr/OtoACsQm3n0uDSc4HwkpK357S
 A+GfgHW/n1ToDqgAjVYOjdWBpQx5zA5nSL9zvigFKMrvUr7TlarWgoVnpPthIOHnyL
 8d35NN4TA7PxMQWlOQo28mac7ucnVl8joI/V968MYaZTVJuVsCZUb6rLCk5sGLk6Hx
 YDoBLRZFUF0zvoqDrZqfTsmE7uN5wgwHdA54DC36AvhNi9jxsGZnvh7HPxNeJio+Md
 f2/rfA26O0dAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_023725_060615_5832B0FD 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 22/07/2019 08:23, Jose Abreu wrote:
> From: Jon Hunter <jonathanh@nvidia.com>
> Date: Jul/19/2019, 14:35:52 (UTC+00:00)
> 
>>
>> On 19/07/2019 13:32, Jose Abreu wrote:
>>> From: Jon Hunter <jonathanh@nvidia.com>
>>> Date: Jul/19/2019, 13:30:10 (UTC+00:00)
>>>
>>>> I booted the board without using NFS and then started used dhclient to
>>>> bring up the network interface and it appears to be working fine. I can
>>>> even mount the NFS share fine. So it does appear to be particular to
>>>> using NFS to mount the rootfs.
>>>
>>> Damn. Can you send me your .config ?
>>
>> Yes no problem. Attached.
> 
> Can you compile your image without modules (i.e. all built-in) and let 
> me know if the error still happens ?

I simply removed the /lib/modules directory from the NFS share and
verified that I still see the same issue. So it is not loading the
modules that is a problem.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
