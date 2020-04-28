Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25311BCF9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JjPEZs9wKnnHzX5CXkkF7j9bS4Md7Lm0FglybCNFVSI=; b=tLl5p0lYCtdhFRAyBJ2IqvEMQ
	/Nw8w5KL9L4xgWGkQBjmbZ3aQ3oGDa3mBN4Ug5DPUcheEQAUZppQWqr8tTuAqzixpQFqFERhWCMT0
	DCrODb7l6DaHQ7Cp3zoJASOmYfA4KZPa7Z7fA/bSXCNs15FWpOJuwqtXzJmJXt+4RGinbDhBU3r4n
	aFFfSzSbwQrGatz3Ru1SSSc5kPuaoa2UWF9LQabOmKPfjOVQ4wtqXzHdzRmDoFUEnXNphQ5wajd2H
	avGu8/H6oA/wIKJT63bOh5Dxo+n9mkKG5lJSEEkW7xdefE1trXIzqt+LhONxS6d3FHMo5ewdumJBl
	f5OBOIV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYWG-0001gu-3f; Tue, 28 Apr 2020 22:16:00 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYW6-0001f7-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:15:51 +0000
IronPort-SDR: QiJhk2AdzM/pcckKmVAGJtZSc2Aoqsn5SE1E0xgiyPCUeLnybQrmi2SaVY0TFpPLk7P85tAkEa
 /AZm4XkN8nxw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 15:15:48 -0700
IronPort-SDR: eRV6iaBNmKKuN9h0cUBLeme0Sl6sh7Bxij2kPN/7HSwyuHGDVtHBvl9TUo5UT2VOlL6q4wkR8Y
 IizTU+otdEww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="249293993"
Received: from asehgal-mobl.amr.corp.intel.com (HELO [10.254.29.183])
 ([10.254.29.183])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2020 15:15:41 -0700
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
To: Arnd Bergmann <arnd@arndb.de>
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
 <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
Date: Tue, 28 Apr 2020 17:15:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_151550_546582_CAB67D17 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Mark Brown <broonie@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 sound-open-firmware@alsa-project.org, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org




>> Thanks Arnd, do you mind sharing your config?
> 
> https://pastebin.com/HRX5xi3R

will give it a try, thanks!

>> We noticed last week that
>> there's a depend/select confusion might be simpler to fix, see
>> https://github.com/thesofproject/linux/pull/2047/commits
>>
>> If I look at the first line I see a IMX_DSP=n which looks exactly like
>> what we wanted to fix.
> 
> Yes, I think that fix addresses the build warning as well, but looking
> more closely I don't think it's what you want: If you do this on
> a config that has the IMX_DSP disabled, it would appear to the
> user that you have enabled the drivers, but the actual code is still
> disabled.

Are you sure? we added a select IMX_DSP, so not sure how it can be disabled?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
