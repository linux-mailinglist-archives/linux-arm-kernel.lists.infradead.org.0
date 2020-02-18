Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F676161EC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ6uZUQ7aa3C3Nipa+/WYQP0bKYd6RRC8w0mA+rGSWI=; b=FiotbCqEgrLCt5
	byYu+QbVrnPn6lrv1iqc496YuQd+VLt2/XgeNUfc/f7PqnYaF05/UIACxQd8Hut8IiGqR6NQVs7OT
	17x9Dro+EY0GuquqETmXpwlPkYb+2zGfnv7FLUcFmkERXVO/DtKIBNOjKY2BhNjom/bTBPiVy81LE
	ZR8whIPEwvriCwj9f3l6fHtG/n0dI1+CdG9wH4bE9NL7ZnIBOElfb6vrhojWqmIGDYB0+iKhgAEER
	0D1mWHJFnCYx41xG6HcQjyL3kkpB//mIczgdPPHGL2mXM1aHaBY3G/taCy/nmfrytEMAVSDyY9cj6
	+KAGqq6VV4g6InW3EB0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3s7L-0005Fn-2a; Tue, 18 Feb 2020 01:56:07 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3s6N-0003C5-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:55:09 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id C6BE96244;
 Mon, 17 Feb 2020 20:55:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 20:55:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=e
 YnIVvK0q9JrGCRBjZx29b4zt5fQgH9zuyMH2krGX/Q=; b=fey7V7774/zbe/0yv
 b3XBejwmgGycVWMsDRgzIdvJyKIIot5v/YayVFxJYkAWynzfkZZi7c40XaSHH679
 kEvUyvFr19eynPZ3uqtY/C5F9R1YLjOqSSuSKOuxLcqi3Tlf/ydffffSZPDDTOdJ
 hbQDU+pkgxYGXNPb4M8PGqc13sEKgPyz6hdZfv49e7ZWbiNkDKDqQHd0vQ7F8JVJ
 LLoP2AFIT8uE69d6ozHP7gFbENWz2QM6LVBfWhnlYwPI1boJCNIdz5/HoArm18E0
 aWlAzmLQ/5zjeZMnLx5ly377rusi7rPSQET/6IDgclbcb5CIm1WuBBw29bVLarYr
 6uQIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=eYnIVvK0q9JrGCRBjZx29b4zt5fQgH9zuyMH2krGX
 /Q=; b=2Z0CbNrXiu1UkDc7K9uMUkCp+5FJWshYrl+YnFiUKBX8LCjzt4JrlkqPV
 U1itbYE8ERgzokozGP4ZXvoJX1QYKHlYLfQtYUMyBgb9Kw2doshmw5mPP9KECg7f
 J9OctR7gPuxWGXEtHMEiE2MDtEaqx0a1h3roC/ZJnqqGMHJv+uZXv3RWBU6XkC0Q
 sA/29i59E0IopUJvuXr/l7nGL4JSn5XxOeN1+9G+deKW+hKcg5RCBecaO/vmMTEB
 2deM4Dh3BN7uUW/yccDWq9wxSGwJSlrSbLPrvwtKUtXiH3JujWd2BEiHXWSRKNM1
 +rBq+KlB1mgHQccXLH8/s+V19aHEw==
X-ME-Sender: <xms:-ENLXp_TURkjTpR1RT4Js6KNp2HxmdctwrZOvbRh59H5JkMNlTgarw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeejgdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-ENLXh_qsOVkH-W6KKjsXtdJDWnLWtdjRV58uk-Od9QiX8xVGA4WLg>
 <xmx:-ENLXiB26jZx2AygWC6W1A_zibyhp3hQLRerTwEkV7Uicc3MmsDqTA>
 <xmx:-ENLXhwVdLwMfn9aPDPiaGXaT7cdsrumBN7K00Ou3C36KXtZg8Qkcw>
 <xmx:-UNLXl4A6RAavdbkjdnZFSp2Jwo4x64JEHr3dc0qO6XsEBP8mGyEzw>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id EBF8B3060C28;
 Mon, 17 Feb 2020 20:55:03 -0500 (EST)
Subject: Re: [RFC PATCH 10/34] ASoC: sun8i-codec: Advertise only
 hardware-supported rates
To: Mark Brown <broonie@kernel.org>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-11-samuel@sholland.org>
 <20200217153023.GL9304@sirena.org.uk>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <810f4889-d3ad-3b26-201c-0a237222c06c@sholland.org>
Date: Mon, 17 Feb 2020 19:55:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200217153023.GL9304@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_175507_947001_E9D49886 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/17/20 9:30 AM, Mark Brown wrote:
> On Mon, Feb 17, 2020 at 12:42:26AM -0600, Samuel Holland wrote:
>> The hardware does not support 64kHz, 88.2kHz, or 176.4kHz sample rates,
>> so the driver should not advertise them. The hardware can handle two
>> additional non-standard sample rates: 12kHz and 24kHz, so declare
>> support for them via SNDRV_PCM_RATE_KNOT.
>>
>> Cc: stable@kernel.org
>> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
>> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
> 
> The new sample rates are new functionality, they are definitely not
> stable material.   For the sample rates you are removing do we
> understand why they were added - do they work for people, are they
> perhaps supported for some users and not others for example?

I do not know why they were added, but the sample rates I removed do not work
today, for anyone.

The sample rate must be programmed into the hardware, and the removed sample
rates do not map to one of the possible register values, so
sun8i_codec_get_hw_rate(), and thus hw_params, will return -EINVAL if one of
them is used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
