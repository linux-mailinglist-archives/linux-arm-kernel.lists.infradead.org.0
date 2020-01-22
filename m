Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329A4144A3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05eLQRay4lpQMXC+9naydCPXGjYOYk+mrhtDV2TKv98=; b=cSqYHW8u25QDao
	ctyoROwndByJPkoG4uQN3sLlnR3+vFAR1rmkEfyUYMxb+F1jKN7L3RH6L/20UKycI1HkJwVsrBKgA
	2QLPYdj+SW4tosNoeFWMqGuXmUJX2pMn8ONksBuYKtTy5NL01rGZxIHGr0wAQVkoBzJ+h+q2DTU1u
	dFQHv/DGI51uKCb0N4fvdjQ2Fh7wG7ZMa+pPHSdvsZkolpAJ89IkCRz6raEspO+t4fbM66ue1S6ob
	GOn+fi7QpIfMPUHo0AxJLZmRtPA1MQoyzXMVWaYo2MsYsFsKDuXqPvjTJzpAYxMSaOwRM91RAagUx
	Y4fHTA3/HIqJHHepjj9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu6TB-0006Ho-Vj; Wed, 22 Jan 2020 03:14:17 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu6T3-0006Gv-Jw
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 03:14:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 1608021D28;
 Tue, 21 Jan 2020 22:14:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 21 Jan 2020 22:14:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=u
 I2Jj83KkBM6GFpFG2YpA86VHpsZUXcAMazv7LmSF2o=; b=H4sA/hGQXNzw7lAfI
 6g8M+G30X90rGDdOhriTl6lfKMSyibearyIaSENDMJ4KfBmTi3W//lpLVoLyBm80
 UOGalG3SVYXghn9fNKzZxFyOmhkfC+DqDEDyYU2BS+RmlkJLO4PzyUKAsf9FWncx
 vKQuHyZVM1jjY5TkDdGiABe9WG99xpa7tSiM415HG9Kd3cT3wIkQJdEsmChRZcGL
 qCValxII3hurY0t7795yG56IsBo4/ftl8PCcDKaKQHVJhvRin5/XL9TfY83L7fHN
 TbyWpxo6SazvXbhLCzpPSQUGxca39uX1NQ7PitcoPFGNwxa3PK9dnMRQkT1qn7uO
 Py7aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=uI2Jj83KkBM6GFpFG2YpA86VHpsZUXcAMazv7LmSF
 2o=; b=ePEQPrjgAxvm/rZuNIapJYgIKYh6ezgRIaj0FvcdWp6+Yox+iPFU8908+
 hDzmZPU7n8fhLwppPXjcW/HouJwDBrWvO81gve01DzSmiSMAOjhEvC8ulOAz1n0s
 x1m4Cg98bUuVvtCPWEPBsE1adHpTnXhZVCaghtUF1C3W8kxo5/IU+i9ThO23IOwF
 fNBt9MC5ksoZW7m5I2bljiIHrPe7DoMd9k0TKRJBP24y830LNKRorW4QRbJ3OYxE
 1uuaTGMVsF8sLa2CCz5nwaMSqA2P5ovSzb7gQcdj6XzHr8SfX/LfaRzx6O2AAG2W
 LlSMmRg3+Qk5RcI+vLthNeOqIWncw==
X-ME-Sender: <xms:-70nXov04EV7GWVpWvSY_YVh2Na4NXReOG-VWYJZzZYRA36itEPoRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudelgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-70nXogCFgddc89EpzTRXGf2cXiD1RZLWOZr-tl4KCv2BI-yIK26ig>
 <xmx:-70nXuYbI2weN6V5l2M19_97LUzbKVjMtCknTgzFWsaSYMHQcOqWZw>
 <xmx:-70nXnb8DZv0EMOMxL0zZErSnujLesCUFGKwskzyJvQ-hrNER2TyeA>
 <xmx:_L0nXj2kSPf2OyShrLWRpIw6HTWi360U_9TOLO_xpFPTUZmNipq2hA>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id CAE1D328005C;
 Tue, 21 Jan 2020 22:14:02 -0500 (EST)
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused AXP803
 regulators
To: Maxime Ripard <mripard@kernel.org>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
 <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <8006a501-733e-b998-edb3-378769cd3a4c@sholland.org>
Date: Tue, 21 Jan 2020 21:14:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_191409_797296_AE703036 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/21/20 3:05 AM, Maxime Ripard wrote:
> On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
>> The Pinebook does not use the CSI bus on the A64. In fact it does not
>> use GPIO port E for anything at all. Thus the following regulators are
>> not used and do not need voltages set:
>>
>>  - ALDO1: Connected to VCC-PE only
>>  - DLDO3: Not connected
>>  - ELDO3: Not connected
>>
>> Signed-off-by: Samuel Holland <samuel@sholland.org>
>> ---
>>  .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
>>  1 file changed, 1 insertion(+), 15 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> index ff32ca1a495e..8e7ce6ad28dd 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> @@ -202,9 +202,7 @@
>>  };
>>
>>  &reg_aldo1 {
>> -	regulator-min-microvolt = <2800000>;
>> -	regulator-max-microvolt = <2800000>;
>> -	regulator-name = "vcc-csi";
>> +	regulator-name = "vcc-pe";
>>  };
> 
> If it's connected to PE, I'd expect the voltage to be at 3.3v?

If we provide voltage constraints, the regulator core will enable the regulator
and set its voltage at boot. That seems like a bit of a waste.

I don't think the voltage really matters, since nothing is plugged in to the
port. ALDO1 can't go over 3.3V anyway, so even if it does get turned on for some
reason, nothing will get damaged.

Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
