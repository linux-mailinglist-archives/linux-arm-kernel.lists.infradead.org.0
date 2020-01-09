Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D438135B29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:15:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKHHnwawQNkCEA5EqMOq0n7+RG9tCd5ZHDefT4qaE4E=; b=YgQETHSmXE/1ELJPjDgK6IIyd
	QhUxFMGHnXuFomI2DonmklkrwgE2rQeQTALzHwtRlcgGXWzsQ7XhSiqkR74D5+Sne2LYdc6fIp1UL
	BgFz5InbmS11jV0i1dnfkhUaGVbxmd3kl25rZrGC51nTvka4PJf1GqFGsxCev5ZdNWVO/0KDoJ01w
	O7WV7FYepgD29v1vLkyv71hCNJk7V0VVUb6zUA/K4mwj2UXJsUAvW5q/uHzIeewAQlMTeiLmRYBy+
	WsGoYsBkz23VzA1pAAPi9z7U3f9HhK7zs4wX1k8Oa63Twyr+0eN8stAV8Lzg6XwtYW7PO9NGPL0U0
	ud7OQSNqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYaO-0002H2-SG; Thu, 09 Jan 2020 14:14:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYaF-0002GH-HI; Thu, 09 Jan 2020 14:14:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D33C81FB;
 Thu,  9 Jan 2020 06:14:46 -0800 (PST)
Received: from [10.1.27.38] (unknown [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 254C93F534;
 Thu,  9 Jan 2020 06:14:43 -0800 (PST)
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Nicolas Boichat <drinkcat@chromium.org>, Mark Brown <broonie@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <09ddfac3-da8d-c039-92a0-d0f51dc3fea5@arm.com>
Date: Thu, 9 Jan 2020 14:14:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_061447_621180_4EE0ACB4 
X-CRM114-Status: GOOD (  20.56  )
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
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/01/2020 22:52, Nicolas Boichat wrote:
> On Wed, Jan 8, 2020 at 9:23 PM Mark Brown <broonie@kernel.org> wrote:
>>
>> On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:
>>
>>> Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
>>> regulator for their SRAM, let's add support for that.
>>
>>> +     pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
>>> +     if (IS_ERR(pfdev->regulator_sram)) {
>>
>> This supply is required for the devices that need it so I'd therefore
>> expect the driver to request the supply non-optionally based on the
>> compatible string rather than just hoping that a missing regulator isn't
>> important.
> 
> That'd be a bit awkward to match, though... Currently all bifrost
> share the same compatible "arm,mali-bifrost", and it'd seem
> weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
> idea if any other Mali implementation will require a second regulator,
> but with the MT8183 we do need it, see below.
> 
>> Though I do have to wonder given the lack of any active
>> management of the supply if this is *really* part of the GPU or if it's
>> more of a SoC thing, it's not clear what exactly adding this code is
>> achieving.
> 
> Well if devfreq was working (see patch 7
> https://patchwork.kernel.org/patch/11322851/ for a partial
> implementation), it would adjust both mali and sram regulators, see
> the OPP table in patch 2
> (https://patchwork.kernel.org/patch/11322825/): SRAM voltage needs to
> be increased for frequencies >=698Mhz.
> 
> Now if you have some better idea how to implement this, I'm all ears!

I'm not sure if it's better, but could we just encode the list of regulators into device tree. I'm a bit worried about special casing an "sram" regulator given that other platforms might have a similar situation but call the second regulator a different name.

Steve

> Thanks.
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
