Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9865111A977
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDvY6WiPJafiV1jsC/ggNJuuSb6zVifTKveZwJAEV/U=; b=txrqELSzQ1zpHd
	x6vTSOX/wvZ3JscWgPontmfR2TstXdqiAubE883+0iS86mlxRhmyKI3DucGKpLbYUWBi8X7qA1hfJ
	bWPylz3ZcwctohHXUhDCw/du9qVf/l+asdGmM93eG2eJotSC/Dgok77XUYbNVVCrjVJYed0uBhWMK
	5s7u26Eb3Gdk6N0/yX0xMebDuGElm5WQUrxm3HMSlm08D+iFERUMGBlh1+uu9RnL103EhzoxJUbki
	aIKgP3YCr803KiaWQJDFunel/Uwo6Lz/NQrO+XGo+TDAvivGflRSaaUdv10V/8LPJ4cbkBoFcohNS
	UhFciPDp7TBXCJaJ/XHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezjU-0006Fe-4b; Wed, 11 Dec 2019 11:00:40 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezis-0004rL-HH; Wed, 11 Dec 2019 11:00:15 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5df0cc260000>; Wed, 11 Dec 2019 02:59:52 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 11 Dec 2019 02:59:59 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 11 Dec 2019 02:59:59 -0800
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Dec
 2019 10:59:57 +0000
Received: from [10.26.11.206] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Dec
 2019 10:59:53 +0000
Subject: Re: [PATCH] ASoC: rt5677: add SPI_MASTER dependency
To: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>
References: <20191210195333.648018-1-arnd@arndb.de>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <d739240f-aaa6-c310-9c68-16c1a08ce759@nvidia.com>
Date: Wed, 11 Dec 2019 10:59:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210195333.648018-1-arnd@arndb.de>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1576061992; bh=MQK8ZVgrVvXj2CCi28ItwK2/xlFo7vqiSDqFxR2ycEA=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=XYF0uUIPrfVZWGpMaViwy03efYcRVbDgtnOcU0FZmQogsvCRIi7nl5qF7oHsMi1cB
 UR126BMNKqOpTLRdnWGkSTzRk1y76Gg2XyJutGSZDP55Kvi80aBdQ2MWCt2l+Wm0QJ
 EKxVYbjxVxz/Bowr/qYlCXOlVyTcB0405ASX3VXwZJkuLpNzthrWpF8LH4dGkoMbD6
 2ZCio9eSOkANH2ysYs0lWfvl3zyd8Ck/BoCTPNDZSVOBwAcZTUp01vLexN1vtHDq50
 jhnyS/6aeYyuK7icmpNbnibMOIX9aTAM19weFl61QAtNC+aaUb7XGGeOforRV9Wm11
 FJug7rWvb8ObQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_030002_675233_F093DB96 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Cezary Rojewski <cezary.rojewski@intel.com>, linux-tegra@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Jie Yang <yang.jie@linux.intel.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ben Zhang <benzh@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Curtis Malainey <cujomalainey@chromium.org>, Jaroslav
 Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/12/2019 19:52, Arnd Bergmann wrote:
> When CONFIG_SPI is disabled, the newly added code for the DSP
> firmware loading fails to link:
> 
> ERROR: "rt5677_spi_hotword_detected" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
> ERROR: "rt5677_spi_write" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!

Would it be better if the above functions or the functions that call
these are conditional on CONFIG_SND_SOC_RT5677_SPI?

> Add a dependency to prevent this configuration.
> 
> Note: the does not work with the DT probing, as there is no binding

Are you missing 'SPI' or something here?

> for the SPI half of the driver, but nothing seems to be using that
> with the mainline kernel anyway.

From a Tegra perspective, given that we don't use SPI in conjunction
with the rt5677 codec, only I2C so far, I am not sure we should make the
tegra_rt5677 driver dependent upon it. We should be able to operate
without the SPI bits enabled.

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
