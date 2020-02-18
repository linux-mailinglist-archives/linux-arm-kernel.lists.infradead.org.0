Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C4161E94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpvqCDypghhKnNly+uCEZAzTmFSzwO+GSO9eYhB00sk=; b=rJMaicS8EOszn0
	6Rg3t1NEbrON3zfLxd/TbiLzzGVBbG9ZlUr4slIJT0pEnAuMf+48IhuZBCqEqPUzL/1+dHIlm0Ulb
	7dgf3abh5BEAN5TMmahXN5HCoVSWcIan+Fv0BGdWh1oucIuSPX2jgSq7vL5jDiV2l3jqPO5fSsnMq
	0KNVYn570IXC5xJGD0DY2ftTPpq+2GbOhZtji8K5P4/Cr4kZBSdVo0iSgkcl7ecfSZk3rsQQNNehC
	Ovbi0Jj2CBkUGoEXuJ3facrWe75p1zSbGPKUytDynk0H2oRbkDdpmhG9trnS+wevSsnzvdC8vQd0N
	bcP/uIN1QCeQaf4J+c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3rnO-0005Fu-49; Tue, 18 Feb 2020 01:35:30 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3rnF-0005FN-SB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:35:23 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2C406713D;
 Mon, 17 Feb 2020 20:35:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 20:35:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=3
 /frFdDog4FFMXYLrMEqlb9W6/lavkPu4eDG9CYrLUs=; b=TBjUAvH2+r4py/WeH
 dYAXfAV4xxtqVJJvqORkLcT/xfwC5knGW4m8noq+FusysuQMjxp9A9H9lNss2gnE
 ymgEbL6i0MGS6OF8k1usR5lR+Cg9edB4Rv9Ib/c3SSX2UApy0Xa0c00d3U3ox/o9
 4Q5K9XHW/gNfqp/j/Q0WXTD/9Qke/BMjRGiRYkbaheZ+HU2Jld0d6KfqMuxhuvr/
 OFqZyDIAvhvNiue09cak608wjlJRg9VirPCiEYtWK50FUC6uOZzuW/f2ekpg6F+M
 XIm0oTZZVUAWHUScEwFvVdjHnkB6zB5DnF6H0dAARSAY8Et9XLfz0qBp6j+TO5f/
 gZcfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=3/frFdDog4FFMXYLrMEqlb9W6/lavkPu4eDG9CYrL
 Us=; b=emEn5VRVxNTBoJPTmLWomfIy5R32M8Md760VVUhJ8eGdlPLXN/bBDeAhn
 +GcRJWZ+ZcfYF+TjHHHmpxUG2qZH9XzsdXTHFcnislY/u2Fx3s+0ze1T0G/q/Nr9
 pV0YUiWSfpM1yX7Qc08gt5hHW5RUaRe0kEN7x6p4rTO0uwbJYi5mzghsgYonmo5h
 UgrwwrrjA8pjcj8qu3DprW0R2++v1uvMz4mGtCPNJ5nt4KL8Ius1gwBwa8qRoyOd
 6SvpNR9WOVvc26Rp8jw00FcSlVDTCEUoYaNwABsoBbqg4v/t6Gctsh1lsY6TtMHY
 fD5VzybJD8UZnTSBy9Lg6S1ohvpbw==
X-ME-Sender: <xms:TT9LXgMZLVK3eoy7lHkwIhGNH59zEU_eNFtjj4jAdQj4T8gzQPs2xw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeejgdefhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:TT9LXo2V3EfTC9_V2ZPSxdf994TQft8hgcC1iX8yeLmBq9K211zslw>
 <xmx:TT9LXr3xwclyYDuE7X_abSeevmEbdYeyRHoI4C0PUBnTzHN2mAuSkg>
 <xmx:TT9LXmW8Slb9DKdlRHeHD8iOTo1pmbW9sKShTs1y-AM3XGHDPHyf9A>
 <xmx:UT9LXsmgCGu_GY9u1ruN_VtYA7ZhFghMMyHEI-o8EdG6-txapHEZVQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 88DCB3060BD1;
 Mon, 17 Feb 2020 20:35:08 -0500 (EST)
Subject: Re: [RFC PATCH 05/34] ASoC: sun8i-codec: Remove incorrect
 SND_SOC_DAIFMT_DSP_B
To: Mark Brown <broonie@kernel.org>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-6-samuel@sholland.org>
 <20200217150208.GG9304@sirena.org.uk>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <1cdcbc0d-39c7-25f2-68eb-a44e815fb9b8@sholland.org>
Date: Mon, 17 Feb 2020 19:35:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200217150208.GG9304@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_173522_052987_C56A0A23 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Myl=c3=a8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/17/20 9:02 AM, Mark Brown wrote:
> On Mon, Feb 17, 2020 at 12:42:21AM -0600, Samuel Holland wrote:
>> DSP_A and DSP_B are not interchangeable. The timing used by the codec in
>> DSP mode is consistent with DSP_A. This is verified with an EG25-G modem
>> connected to AIF2, as well as by comparing with the BSP driver.
>>
>> Remove the DSP_B option, as it is not supported by the hardware.
>>
>> Cc: stable@kernel.org
>> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> 
> This can only break things for existing systems using stable, if they
> haven't noticed a problem with DSP B they'll certainly notice failing to
> set up the DAI at all without it.

Are you suggesting that I drop this patch entirely, or only that I remove the CC
to stable (and/or Fixes: tag)? Is this something that can't be removed once it's
there, or is the concern about making user-visible changes on stable?

Thanks,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
