Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9B8161EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:45:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw7RknOXVGvIPuBx6Y7I5wWdAYPjOWKdrw52omtAVjM=; b=dmo+0JPiAuHaF5
	yS4xqLhW0qvj53GOOO+kb+eujFsh2sRseJsgLWBmXIciALLX92w3WHdqtNq29aEX3Pqm6Y0dUOs6+
	2hujeGf2xbJjAV7n79aTlX7FsASRYWUvSJzgsIsexBx1jn5rJbO6em0E5AOZkHwHGqdZIJGMl6sEV
	lEafQQILmW9D2rdJ3J+5jCyjclcE1m8I7BuvAY5ediYHh3eWghkf74PkXIfpCU23pmoZ51sA1oCq6
	8l+memQR6lmPxCQG1itYh8sI0u9SBSHTVz+R8u6ZDGU7DQEOIpMympQ4XM08CoU3rruZjgGdty09t
	MSl+38PFrczF5DX+gDtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3rwa-0007BH-4Z; Tue, 18 Feb 2020 01:45:00 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3rwS-0007Au-Pk
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:44:54 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id CC3CE6CB1;
 Mon, 17 Feb 2020 20:44:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 20:44:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=k
 tP0xjLMEYow5iCaqBZHaqnwO8wceFlWoz7H7k4O0xM=; b=CSF1Iph5pp4vOyZeL
 LGmqeplv+4ylrO/x70YmMfcWggiReinVQ3yb90y947u4uncH8wP66FQrAaIcXRY1
 niPYqALKjfxthOU5BoK3N8KCBjjEuXdNrNJ7CUOHgax/mKCY4VtH/c4x8pwI+VEb
 IOj6YcK3bGb0rkkL1NWBTFZ4KveA1N6Nl35GVlfRj8ZOldCctkvhwFPSb6xgbdcN
 QaHgqAFk6QId33dp/3boQGeRuOJwmrDz8ZGi847KuAFi6n+d3jbq1VWOFcItMV/5
 Wfvy7PvqW7M4nmqo8D5rqxadkZ8ek2LnfVL0Wl0TvfAPB9rPZyLYitdcs6zKOadG
 kYaCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=ktP0xjLMEYow5iCaqBZHaqnwO8wceFlWoz7H7k4O0
 xM=; b=GVNTuwA5FHJB7rHrw/IlqU+ChDQVJwnXfOBzXIcglBuetJUkEzMBtyCk/
 hSLS6RKANUBT8bIibhU+2mhlyVHauVATvTEcxtN1UJxjZnYDpxMvVSyFjWraokB/
 Fduimjg06dChp9OeyqHfs/y38GTafH39Q6SNmaWmBJDb0jkMGYp+utesivcrRBre
 imap9PkskDGb6Ot6RDo4ZjlvNC50W21naaSXfh227bNdhH/sxpiQBSw6mPdE16sZ
 urL/zNgWFKYok8BYY+KH/O4jik7JjrDJjy3Wmp1Gp/6+KjhrSGv5ExrkT9GcmxRd
 wKPT+SrqFtqxpXVjOgvVioDlp/49g==
X-ME-Sender: <xms:kkFLXpFVoqimNSYPZ9i_OtN7A_2b2eQVo-jr8hcxqeEe16FtTMEE1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeejgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:kkFLXp_ry0IomhF9gV77h-FQeJdENobIvLxdsoVEfGSdcG5fNB-KhA>
 <xmx:kkFLXlmj-llT9aC3l-_jsDWxPiPcgd_2vWob-w5npInW2CvSx2JfBA>
 <xmx:kkFLXs-b9KWeuSg9QslXBZhqkMGigL59cx7ZIhKs2042twxghnhAhA>
 <xmx:k0FLXoVLLKcqDWrf4DXnoRpIvRmxqIcjWWh3soQfruWpxMbN4fCH7A>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 219B33060C28;
 Mon, 17 Feb 2020 20:44:50 -0500 (EST)
Subject: Re: [RFC PATCH 08/34] ASoC: sun8i-codec: Fix direction of AIF1 outputs
To: Mark Brown <broonie@kernel.org>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-9-samuel@sholland.org>
 <20200217150935.GJ9304@sirena.org.uk>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <7108ff30-df7e-09bd-f895-2768347d45ba@sholland.org>
Date: Mon, 17 Feb 2020 19:44:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200217150935.GJ9304@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_174452_976998_FB146C98 
X-CRM114-Status: GOOD (  13.28  )
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

On 2/17/20 9:09 AM, Mark Brown wrote:
> On Mon, Feb 17, 2020 at 12:42:24AM -0600, Samuel Holland wrote:
>> The naming convention for AIFs in this codec is to call the "DAC" the
>> path from the AIF into the codec, and the ADC the path from the codec
>> back to the AIF, regardless of if there is any analog path involved.
> 
> This renames widgets but does not update any DAPM routes from those
> widgets which will break things if this patch is applied.

This commit doesn't change the widget name, only the widget type. My commit
message did not make that clear.

>> Cc: stable@kernel.org
> 
> Why is this suitable for stable?  It's a random textual cleanup.

This was one of the first patches I wrote. Now that I understand DAPM better, I
realize that it has no functional impact, and this shouldn't go to stable.
(snd_soc_dapm_aif_in and snd_soc_dapm_aif_out are handled exactly the same, so
fixing the widget type is, as you say, just a textual cleanup.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
