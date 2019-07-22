Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447676FDC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=877J07QEGlt9b4T7fTcLZHjJpFD5Z0hVHoTahy4cM2w=; b=RJiTfHnXT4TCI9
	ZfppaAxmPfmTZM1QrdSAEjZrftXH9qDlcdw83l4gou8lRcf80EdDMn++z7Cg4Q2ew+Spn7FvOaCi6
	VxWp4Co1OilafHxAbXRCwfe64Fk4aMjT4o7vFi9Xvc+NNwchvrBCXtBd4N8V8qw9/+eqqyuhlPZcK
	2BblrPiPQX/48t3aRYYu5ISqMZ0NXhIsNXwOs4yfMCttxzbdP2/iQPfDzhx6HVM6Zo7G5ubhBJu2N
	PP101A6+DrrBS+20SZNIyW0h9CyHGUyxJlqLYGXW5i4/FZ82nx2ICJwcYLTeXvjWhKgtFvul0CxkE
	zi3Fzto3tnf4ZmyfjsoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVXu-0007o9-3O; Mon, 22 Jul 2019 10:27:54 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVXh-0007mh-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:27:43 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d358fa40000>; Mon, 22 Jul 2019 03:27:48 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 22 Jul 2019 03:27:41 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 22 Jul 2019 03:27:41 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 22 Jul
 2019 10:27:38 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
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
 <49efad87-2f74-5804-af4c-33730f865c41@nvidia.com>
 <BN8PR12MB3266362102CCB6B4DDE4BEA0D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
 <BN8PR12MB326667E86622C3ABD5CDE642D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <9bd0de50-cbfa-40ee-52e3-26adc1a59c43@nvidia.com>
Date: Mon, 22 Jul 2019 11:27:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BN8PR12MB326667E86622C3ABD5CDE642D3C40@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563791268; bh=p3thVhzOYfkF0ilrLvyx7ZdXmJoaxjmMRBaq/ySj/0I=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Xfcw92Bk1Os81HL717eUaqAlOCD3/2EIGWqpHLZ4xbTXACHxw5w/Slr1xqv+9xZOq
 rIdFNn1b1YHuUhwzwoZ0UUvwD8ovc7OsN8nvLsZ3++jdhs4IdMvK0wWdyGeeV90Jco
 HdExdy7dB/H7lOVS5wh9HxuTSN3uUFXs8TGuNxB7si5EWe11sNZmOjRU1o115iXpkE
 nrXaMRxOXfmKawkklhw4IG1MugC58worRj59YgH3LTYt+0H9QF2Ktb0cLfyoDHm0wW
 HUMnMscWpvz+QDAYse6UAmk+s9ABf/fvpYwoL3QBj/3JBeZCpHU2fgxW0BdMJib233
 y7RlfCm/t3MoA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_032741_832620_117EF76B 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
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


On 22/07/2019 10:57, Jose Abreu wrote:

...

> Also, please add attached patch. You'll get a compiler warning, just 
> disregard it.

Here you are ...

https://paste.ubuntu.com/p/H9Mvv37vN9/

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
