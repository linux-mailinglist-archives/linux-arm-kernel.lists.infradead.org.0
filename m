Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB6C1BD9FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OAJJl31KGJ8zH6WY0WD5F7xEKEwSV7cTDhiZTc7ImJU=; b=kr6HhhLTZAnsK3z1/LXvlMrB3
	nLte1m/q/eildMqVIwA7Z38GC4TAddSuWZ87c2GnaCO5zROQXtfkMuBi6pFKNvOlgW2fSg0gLAbCy
	j8AMJhaW4V9KyoipE9d8tiYHHDkggpXCTqRLUGgJw5jPcMst7lO5qHGayiY1+TbBjgi4KIMHvqqu+
	KQT1ggM+mIEErA4+iP+RJS7JEsW9SWd9HFgnog33yQPmdKIcxL1BquqY4WwSiFJ1mqiBIIdKN7ceW
	W0RyDbhGa0c/fMLbvCMkEbz92ClAVrlaAd1eWvaahy19y0sCpbf1Gs9aNLj1RU9ycZhbk9Mvof83i
	OE8lx38zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkC6-0000JL-VP; Wed, 29 Apr 2020 10:43:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkBS-0008Mj-Mc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:43:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDD6BC14;
 Wed, 29 Apr 2020 03:43:17 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D8773F73D;
 Wed, 29 Apr 2020 03:43:09 -0700 (PDT)
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
To: Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
 <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
Date: Wed, 29 Apr 2020 11:43:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_034318_842019_98C58B23 
X-CRM114-Status: GOOD (  22.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-29 9:17 am, Maxime Ripard wrote:
> On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:
>> On Wed, Apr 29, 2020 at 1:11 AM Robin Murphy <robin.murphy@arm.com> wrot=
e:
>>>
>>> On 2020-04-28 5:49 pm, Cl=E9ment P=E9ron wrote:
>>>> Hi Mark, Rob,
>>>>
>>>> On Tue, 28 Apr 2020 at 18:04, Maxime Ripard <maxime@cerno.tech> wrote:
>>>>>
>>>>> On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=E9ment P=E9ron wrote:
>>>>>> Hi Maxime,
>>>>>>
>>>>>> On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tech> wrot=
e:
>>>>>>>
>>>>>>> On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron wrote:
>>>>>>>> From: Marcus Cooper <codekipper@gmail.com>
>>>>>>>>
>>>>>>>> Add a simple-soundcard to link audio between HDMI and I2S.
>>>>>>>>
>>>>>>>> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
>>>>>>>> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
>>>>>>>> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
>>>>>>>> ---
>>>>>>>>    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21 ++++++++++++=
+++++++
>>>>>>>>    1 file changed, 21 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/=
arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>>>>>> index e56e1e3d4b73..08ab6b5e72a5 100644
>>>>>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>>>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>>>>>> @@ -102,6 +102,25 @@
>>>>>>>>                 status =3D "disabled";
>>>>>>>>         };
>>>>>>>>
>>>>>>>> +     hdmi_sound: hdmi-sound {
>>>>>>>> +             compatible =3D "simple-audio-card";
>>>>>>>> +             simple-audio-card,format =3D "i2s";
>>>>>>>> +             simple-audio-card,name =3D "allwinner,hdmi";
>>>>>>>
>>>>>>> I'm not sure what the usual card name should be like though. I woul=
d assume that
>>>>>>> this should be something specific enough so that you're able to dif=
ferentiate
>>>>>>> between boards / SoC so that the userspace can choose a different c=
onfiguration
>>>>>>> based on it?
>>>>>>
>>>>>> I really don't know what we should use here,
>>>>>> I just have a look at other SoC:
>>>>>> rk3328: "HDMI"
>>>>>> rk3399: "hdmi-sound"
>>>>>> r8a774c0-cat874: "CAT874 HDMI sound"
>>>>>>
>>>>>> But maybe it's time to introduce proper name:
>>>>>> What about :
>>>>>> pat
>>>>>> sun50i-h6-hdmi
>>>>>
>>>>> It's pretty much what we've been using for the other sound cards we h=
ave, so it
>>>>> makes sense to me.
>>>>
>>>> I have a question regarding the simple-audio-card,name.
>>>> In this patch, I would like to introduce a simple-audio-card for the
>>>> Allwinner A64 HDMI.
>>>>
>>>> What should be the preferred name for this sound card?
>>>> "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?
>>>
>>> I can at least speak for RK3328, and the reasoning there was that as the
>>> user looking at what `aplay -l` says, I don't give a hoot about what the
>>> SoC may be called, I see two cards and I want to know, with the least
>>> amount of uncertainty, which one will make the sound come out of the
>>> port that's labelled "HDMI" on the box ;)
>>
>> I agree. The user really doesn't care what SoC the system uses. The only
>> real requirement is to be able to tell which output the card is related
>> to, i.e. is it onboard or an external DAC, is it analog or HDMI, etc..
> =

> Yeah, but it's exactly the point.
> =

> If we also end up with "HDMI" as our card name, then the userspace has no=
 way to
> tell anymore if it's running from an rk3328 or an allwinner SoC, or somet=
hing
> else entirely. And therefore it cannot really configure anything to work =
out of
> the box anymore.

OK, you're a userspace audio application - enlighten me as to what exact =

chip you're running on here, and why you need to know:

card 0: HDMI [HDA ATI HDMI]

or how about here?

card 0: Intel [HDA Intel]


Furthermore, your argument works both ways - if the equivalent (or in =

common cases like DesignWare IP blocks, exact same) thing across 3 =

different SoCs has 3 different names, then it's that much harder for =

userspace that wants to present a consistent behaviour. I don't know =

exactly why LibreELEC have downstream patches that standardise all the =

Rockchip ones to "HDMI", but I can't help noting that they do.

With simple-audio-card we're talking about trivial interfaces that often =

don't expose any controls at all, so there's unlikely to be much =

'configuration' for userspace to do beyond choosing which card to output to.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
