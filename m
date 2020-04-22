Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEA11B36E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 07:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/NxM9VYyMDqQfzBYO6JniMUy9omb2mMf5N+NeVqiZo=; b=qEnnSY9V7yeOMO
	mGfH0+mPmEBcwvnTsbhVvGF8fJghSNXVJAsCht60nwB1dHq/VObJofKY03sJOjlvshXObdkoKkwg3
	RhjghLOl7jnFYduZmFcEDMoeZhQpCnRs28Qbl0nCuSJpyTanH9Gcog8Rl2DM1H+fvC7YHz1MTCPCP
	hjp4UnYEZlkEji91OLUldr4dS22iIUxU6Q067K/Puc+BX+B3bjuZQ9hDsglJXoho5f/Eikw0a7Gf7
	LXQSR6BN8ZlLbDDV748wpOHtxVshCxEnbcc3JuYqiZPnWZws0tOSOvvaHk2TsWYqgHgu+e1kxT4lw
	3C7R+1OZ8uAfMOy33dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR86Y-000083-CJ; Wed, 22 Apr 2020 05:39:26 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR86P-00006t-Kr; Wed, 22 Apr 2020 05:39:18 +0000
IronPort-SDR: IA/KZU1k/hs0f5+beMoQGx4UEv0rGgnKa0WLdxPloA+sWKy9OvM0PiL5EgwXpATuMSADg/n2hK
 E8F9yvMOubqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 22:39:13 -0700
IronPort-SDR: AboEqZaXGpccJr0IPJJXmM82rMMNExbbsE3I1ZPkQSgGlgX+c/9qqnQGFz1kAYZ34LJHYfJEeA
 INzyAyN1iVBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,412,1580803200"; d="scan'208";a="245882690"
Received: from dtzimme-mobl.amr.corp.intel.com ([10.251.145.143])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2020 22:39:13 -0700
Message-ID: <d20cc18d0fa10b52437e0ac29ea98792e0a3d45d.camel@linux.intel.com>
Subject: Re: [PATCH 0/4] ASoC:: don't use snd_soc_rtdcom_lookup()
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown
 <broonie@kernel.org>
Date: Tue, 21 Apr 2020 22:39:13 -0700
In-Reply-To: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
References: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_223917_693858_F2BE0EE3 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>,
 YueHaibing <yuehaibing@huawei.com>, Eason Yen <eason.yen@mediatek.com>,
 Jie Yang <yang.jie@linux.intel.com>, alsa-devel@alsa-project.org,
 Jiaxin Yu <jiaxin.yu@mediatek.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, linux-mediatek@lists.infradead.org,
 Shunli Wang <shunli.wang@mediatek.com>, Allison Randal <allison@lohutok.net>,
 Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-22 at 13:46 +0900, Kuninori Morimoto wrote:
> Hi Mark
> Cc related engineer
> 
> These patches are tring to not to use snd_soc_rtdcom_lookup()
> function
> on each drivers as much as possible,  because we might have same name
> component under multi component situation.
> It can't find correct component in such case.
> 
> I tried to add new feature on each drivers to not to use it,
> but I can't test.
> Thus, these patches should get Acked-by or Tested-by from each
> drivers
> user/maintenor. Please test these.
> 
> After these patches, Intel / SOF drivers are still using
> snd_soc_rtdcom_lookup(). Because it is very complex, I couldn't try
> not to use it.
> If possible, each drivers should try to not use it,
> and it should be removed from ASoC.
Morimoti-san,

For my education, I understand the concept of multi-cpu/codec
components, but when or who would need multiple platform components?
This would help me able to remove the snd_soc_rtdcom_lookup() call in
SOF.

Thanks,
Ranjani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
