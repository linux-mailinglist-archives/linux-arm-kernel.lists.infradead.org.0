Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C66136C16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbC9Qx2ySAU1ZJWTefHAZH1FhYWpJnLsr4b72L6fWFw=; b=rRSddNM0+j61DL
	COiqIHQvSfq217x+7O/seClswetwet2hnWgIe1N7M8G8Y3RlNLDI0RTh8qz8pRDAiHeh7OoX7D32h
	OgTSoaDSTu3Qb5lrkZaUhv/DXcI5obUmmLo24a8TRE18YfQjHDC8Dved+6SUs77cqE0odD/MONZJj
	plvs7NgWhxj3TIfv/0bgAtHmH2G21KExh8bU8nxt49+a9p0dTe+F+ZXpZATBNzOBfvOoIU2MhnI7q
	CF0Y3Wue7tOwioV/CvjeiUGeYi8bc0FDwgUEmA7mfbHfvzsg0z1mNKMNSu+I8/aR57id1WaLR5lEI
	mj9N97AEqSWilcli+LeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipseE-0008UB-VB; Fri, 10 Jan 2020 11:40:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipse0-0008Nr-Hj; Fri, 10 Jan 2020 11:40:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75FAF1063;
 Fri, 10 Jan 2020 03:39:59 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29DAA3F534;
 Fri, 10 Jan 2020 03:39:57 -0800 (PST)
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Rob Herring <robh+dt@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
 <CAL_JsqKvNBCVkiE4zKn0aXdrV4Ncx2bB6+KRpM+aPpMVzS4XbQ@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <d580b57a-d3c8-ece2-19f3-211c52444bfd@arm.com>
Date: Fri, 10 Jan 2020 11:39:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKvNBCVkiE4zKn0aXdrV4Ncx2bB6+KRpM+aPpMVzS4XbQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_034000_673587_41A30A8F 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 16:56, Rob Herring wrote:
> On Wed, Jan 8, 2020 at 4:52 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>>
>> On Wed, Jan 8, 2020 at 9:23 PM Mark Brown <broonie@kernel.org> wrote:
>>>
>>> On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:
>>>
>>>> Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
>>>> regulator for their SRAM, let's add support for that.
>>>
>>>> +     pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
>>>> +     if (IS_ERR(pfdev->regulator_sram)) {
>>>
>>> This supply is required for the devices that need it so I'd therefore
>>> expect the driver to request the supply non-optionally based on the
>>> compatible string rather than just hoping that a missing regulator isn't
>>> important.
>>
>> That'd be a bit awkward to match, though... Currently all bifrost
>> share the same compatible "arm,mali-bifrost", and it'd seem
>> weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
>> idea if any other Mali implementation will require a second regulator,
>> but with the MT8183 we do need it, see below.
> 
> The current number of supported bifrost platforms is 0. It's only a
> matter of time until SoC specific compatibles need to be used in the
> driver. This is why we require them.
> 
> It could very well be that all bifrost implementations need 2
> supplies. On chip RAMs are very frequently a separate thing which are
> synthesized differently from logic. At least within a specific IP
> model, I somewhat doubt there's a variable number of supplies. It
> could be possible to connect both to the same supply, but the correct
> way to handle that is both -supply properties point to the same
> regulator.

To be honest I've no idea what different SoC designs have done, but one
of the intentions of core stacks was that sets of GPU cores would be on
different power supplies. (I think this is to avoid issues with inrush
current etc, but I'm not a hardware engineer). So I would expect designs
with a large number of cores to have more physical supplies than designs
with fewer cores.

However, from a driver perspective this is all meant to be hidden by the
hardware PDC which the GPU talks to. So the actual power up/down of the
supplies may be completely automatic and therefore not described in the
DT. So the actual number of software-controllable supplies could be 1 or
could be more if the individual physical supplies are visible to software.

The Hikey960 for instance hides everything behind a mailbox interface,
and it's simply a case of requesting a frequency.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
