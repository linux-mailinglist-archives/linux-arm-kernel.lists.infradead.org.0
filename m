Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2106161F6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWsCLT2j2Lpjvbuc+szRrpk58HIeROU0A/H/u9m7yDs=; b=N/XYIEJJ2hK15R
	XAM6Fkbi+sNcYHfNmUzy7rHvMemIqYeo/6BsoSCWE8kpm2eZrOfcWEee7dHR//p416NUf1XJA9Ga+
	uMQM+2kNCebbkzmaY/SIeWj1co2kcr+0jyv9Az9xn29Zjo2Aksi5pGTd2JZZ2a7jhYSioNJJz2A/v
	mhDmeCcJAGZI1JU3NB2PD0KKsJNHQ2lNfOMK0OIYR308WM3eke6DcuIyq88L4VJwVV4iuYGPADkLO
	rkMLkrjLhJ/ygLeEKVCPgZnGhysEnYPAJOsrv/hE/Gq5diiiSqwJk5NRHWoz5MlkbgvTXfPKXicxl
	QOMBKVSHKkKkY7e1rJcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tOe-0008NU-7e; Tue, 18 Feb 2020 03:18:04 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tOU-0008MO-7I
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:17:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 30F0976A3;
 Mon, 17 Feb 2020 22:17:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 22:17:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=h
 UYsN1IRDrlEB0uxQHQLvlcqoA9TjcxIRinpfgTMp/0=; b=XXy/h+U7Wwb/BSG4D
 c8PjcyCWsIk1Rd13jAQgegM4xS8fOuN1ov2gdbsDYSNy3PXrinTXzEOlNIhWl+ob
 un5b2GXDYVNl64Es23moKifHR0MjNBL4v6MDG8FZjg1duzgXsFucD+vnBtPBt94n
 M23cQMMLEkEA56G5wdrGE+8j9aOQvlwEhEpXWRDcbFazgRv7rdVNtpZRGslF4Myl
 yiUTFrCsXYN4NNYqiukFm/vDMQPOJSsVrrhiQAIuB7xoS5xoVlcwJJSzwgQp/jrv
 0m3iLuLz8I1cXPCal4cRao6mDzDr6xbFA1id3ARsf8XfgJzXAG/Eh84sb5khKF+B
 VCSQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=hUYsN1IRDrlEB0uxQHQLvlcqoA9TjcxIRinpfgTMp
 /0=; b=38X4/aeX+nSPkX0b9fiZoBrJWYH9eI9uEF8FN1BFksP9/rsJem6MHsxSL
 F8x7GQC9eeREFWkrrAhSSA1+HBkfTV6QzlZcF9639EN/cf4hSqb2UxMEVKCShgR6
 UXAYdctO48dhTuc7WK+4KGofzFNe4IeeOI6S014tAwc+pRm4dZp1rKp7sh0JkcBA
 KhJjV6/E7dID+oIovF2K5iaby8ulG42ufVYy7h8aJxOEgXFbbP8o5zGOx+fBCOYU
 cCUkMsaAAFgzgTVYmM6ST/TCviNXMJl07IynIwg8gjLw5gPb8fXzmd5VC0uNoPOT
 UoI89h1udYGvevalQVArvAU8Tmz2A==
X-ME-Sender: <xms:XFdLXht9B8Qf5zYb3xiI2zwpmUFEzQ_AwfRipbb5OJYd8IQsFTwoJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeejgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:XFdLXq48HAIvPM1mp-Ncum_3QC8Cp3v8gEMTmhYP55RjHEsWhLQDFA>
 <xmx:XFdLXlcm-eHBGK7WMd39T5ufO0O9TzhXWHtvO1vX4jErP67b6qZD9g>
 <xmx:XFdLXvxjh1FuEw3fH6fVfDNKP9bo31pdbQrXgSY48QANmUqSTf0-JA>
 <xmx:X1dLXnbMkM62scKMPNlWn66hA7xHTC3iHvsuvMuZo9ZB_dbfbk1tYg>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 96BD13060BD1;
 Mon, 17 Feb 2020 22:17:47 -0500 (EST)
Subject: Re: [RFC PATCH 01/34] ASoC: dt-bindings: Add a separate compatible
 for the A64 codec
To: Chen-Yu Tsai <wens@csie.org>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-2-samuel@sholland.org>
 <CAGb2v670SH1Ra26eKgOhLYAeRTV719a3TDAfCyMr49bKU8Z=PA@mail.gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <dab9cbc2-c0ad-4f12-e792-a900c13f083f@sholland.org>
Date: Mon, 17 Feb 2020 21:17:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAGb2v670SH1Ra26eKgOhLYAeRTV719a3TDAfCyMr49bKU8Z=PA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191756_581811_F28F7552 
X-CRM114-Status: GOOD (  15.65  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Ondrej Jirman <megous@megous.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/17/20 3:49 AM, Chen-Yu Tsai wrote:
> On Mon, Feb 17, 2020 at 2:42 PM Samuel Holland <samuel@sholland.org> wrote:
>>
>> The digital codec in the A64 is largely compatible with the one in the
>> A33, with two changes:
>>  - It is missing some muxing options for AIF1/2/3 (not currently
>>    supported by the driver)
> 
> Is this at the pinctrl level or mixer level? If it's at the pinctrl level
> then it's out of the scope of this driver/binding. It could very well have
> those signals, just that they aren't routed outside the SoC.

This is in reference to the muxes shown at the top of the A33 diagram, above the
I2S/PCM interfaces. These appear to map to bits 0-6 of AIF3_SGP_CTRL, which are
marked as reserved on the A64 and the AC100.

Comparing the three datasheets in a bit more detail (but by no means exhaustively):
 - The A64 has a second DRC block, unlike the A33 and AC100.
 - The jack detection registers (0x310-0x318) are present on the A64
   and AC100, but undocumented/missing on the A33.

So there are enough differences to warrant a new compatible, but since none of
the unique functionality is used by the driver (even after this series), a
fallback should work.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
