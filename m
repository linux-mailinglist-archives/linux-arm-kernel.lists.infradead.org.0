Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46D1695AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8F083BJSN6+/OKpcOAihdqEX+fMwhu3oyQ2M4PPGbNE=; b=qwJqEBqY0z+r2f
	L3/1zmSgdStfqpo+AHq/aZQGAW7P/+g3u2AnfPpJdd8+eWmPZfDU5eLLa5Q2NO/PXsq9BMJQsOjDc
	Cptppu/FXkhp/3mdd2KgjxmXpJWrsfWKFBvLARS4WmWQtdPv8NpMEhqbXhnVWrr42/NYx2nBMONdb
	9lfPX1n/xikqSiEoZM2Giv/9sWkfipyZclzD7a7yTWroT/tBa0hTqQMiJobyR+LR+o1YSa3PKCGmx
	bkluN3HqriV40XVegKs1nPK57oHuI89uPb3yYERHpWBBW/ilLHkTYyXTEEaTTtHnjdCZAR93b9/TL
	gWH0YNs5I6i8c1u7Qo6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iLm-0003yO-Md; Sun, 23 Feb 2020 03:54:38 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iLb-0003y3-6A
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:54:28 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id D30BD141E;
 Sat, 22 Feb 2020 22:54:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 22:54:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=U
 tQ4ZCxViuOYrkl32VfE2T3Vc4NBhu7cH68gein0hZ8=; b=eH3O+UhtcNk39WqG7
 7++FXGFTX+4Z2PcXe3xjcwJsOODd4hxFQavwi0/mUwTIoxG9JBuAOmvs5HQJt990
 QIgs1pI/FaTRd3ev0T4IL+aTvVevCQh7OFSFWKaP/KY94r+EE9D8RHkP90X8PxFC
 oBLmR6XHSy54HBa/H14DQ7lYQ0J/Ydfp27ocjSVODTDsMZjhEZb10ccofds6YtNi
 oaCndzsfnBoKSmoY5aRfQXCd4KQVTdffKFdF/fHmCrQVYwGy8OLV2MowadGuAqHn
 YIqEA+IgJP8fQu88VichUhpYSu9m/bVcLBBWNImzHZQ0a/ObPiE6NmPeg6oxGd8W
 K6ySQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=UtQ4ZCxViuOYrkl32VfE2T3Vc4NBhu7cH68gein0h
 Z8=; b=GyuP/YCv6RLhHx+tybgAMZbAWarsj8Ii4R+BOab0Cw4iOfoJaifZtVc/6
 5Fd1ZIpBORlLHlM5LdItWCbg4TqjJbGHEkASpjlrm+3gGzqj/BwAaZuqBOH0YZxx
 XM34+pmlF976U4TwYysQcVWaDYNCrA75o/b6cM0a0sM3lmw8zmvMMPJXYX3Fpv4I
 yYjTsV717azlzXouTRBaux6jcJMDECw07ZfLymaJ80a20T9FvQsSwAYXw9m6V4Vd
 pFLgMxSD48vcLM7SooibOaf/fbhrA+Hv9V84TE7nSgj9bXlkh7UwPQfclWjLbRGz
 K9IGLkbdVO+s8xbaE9j7kamSgE9ZQ==
X-ME-Sender: <xms:avdRXiuiOsH3o0DSLtQ5DE1m9D-9YuzK8izj4qTuqAIMxZEQ3TuaEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:avdRXn51utho87JkjiCEVKsYSyaYUpq6F3T40tibOEYao28SHO_3Bw>
 <xmx:avdRXjN-2TXP4CKuwakTE1BqjwcSJb_74ylsLvfxdtvCfcsv01adtw>
 <xmx:avdRXrLkOPwWjIuYPLMnhvX-YnhSwzeK0a3As4WIj5J_T5iK2msXFw>
 <xmx:b_dRXgzcsgknp-tn_3NniTdvYlav4zzWm91Lza6tirW8ghCKDJ3peg>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4E23C3280059;
 Sat, 22 Feb 2020 22:54:18 -0500 (EST)
Subject: Re: [PATCH 5/8] ASoC: sun50i-codec-analog: Enable DAPM for headphone
 switch
To: Chen-Yu Tsai <wens@csie.org>
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-6-samuel@sholland.org>
 <CAGb2v65v=wPJNxPfOzp2bcevk0qoDiW-+KFBO1MKHz6gE86DPQ@mail.gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <f0037c9d-e3b5-3fa9-1f1a-d52d26de3ed7@sholland.org>
Date: Sat, 22 Feb 2020 21:54:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAGb2v65v=wPJNxPfOzp2bcevk0qoDiW-+KFBO1MKHz6gE86DPQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_195427_370318_BA92889E 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/17/20 1:17 AM, Chen-Yu Tsai wrote:
> On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
>>
>> By including the headphone mute switch to the DAPM graph, both the
>> headphone amplifier and the Mixer/DAC inputs can be powered off when
>> the headphones are muted.
>>
>> The mute switch is between the source selection and the amplifier,
>> as per the diagram in the SoC manual.
>>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
> 
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> 
> BTW, have you also considered tying in the headphone volume control?
> It also has a mute setting.

As far as I can tell, setting a volume control to its "mute" level has no effect
on the DAPM power state. So I didn't add PGA widgets for the volume controls on
either codec. I can add them if there's some benefit to doing so.

> ChenYu
> 

Regards,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
