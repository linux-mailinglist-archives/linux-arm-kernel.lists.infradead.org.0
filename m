Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2911BD9D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvDQT47OkswDe0/pfBX5vqziMAVSvxtGRzejWIkv/44=; b=pvjcsspC7YvWqo
	gRrOWy1L3IANIhoY5dOmA+G1y11jR7Xva/DI5+9leckRp0iwTLrmmgDIjgRpacl/0n0tCrqQiHfJo
	hA/55YP+iy6fus8p+nNWWfx5jbmZfWVAeigiECuFcUzj9bo9H9xw94p2SxjCmjR5WwldTbigjGkHG
	XwYHQ3mtSXnhALXJKnve6gSX+yKLBvfVQYn5rQBcWv6WFeioiVXFaN4rU6nyZd7zlhV8miFk6/Avl
	Ah8MafOpAVf2+GYofuSH/t5lzmWQgaQ3rHypQgR8KRXtpA7DwI9AnUdrqW6gJllppOeHscqvYQJCZ
	9gI7KE1/c3diDoT3qCyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTk8S-0004TZ-IP; Wed, 29 Apr 2020 10:40:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTk84-0004Qp-8g; Wed, 29 Apr 2020 10:39:49 +0000
X-UUID: 1f29d2e6862a4540a73b07d2e77ebd19-20200429
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=GttMsEeHxSRQEiWkFwaLHZKTBEqyMow0zfNFhprWC1Y=; 
 b=HTUH8yhNrLswapj/N2iLKmbj3hzYFopyPmqOgamo+lqZPbsX4MBelEy792673JqpnY5VEUmcmzoqL0B3BBV9qpkOAZ/K/bZOoaGB7ewMFN2iYkdXTCoXSQfFTf460ULxB2CViulk06q2R2fPFzGKbnK8NnFEseeby3VvjV87VFg=;
X-UUID: 1f29d2e6862a4540a73b07d2e77ebd19-20200429
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1851398877; Wed, 29 Apr 2020 02:40:19 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 03:39:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 18:39:34 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 29 Apr 2020 18:39:34 +0800
Message-ID: <1588156776.3573.1.camel@mtksdccf07>
Subject: Re: [PATCH] thermal: power_allocate: add upper and lower limits
From: Michael Kao <michael.kao@mediatek.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Date: Wed, 29 Apr 2020 18:39:36 +0800
In-Reply-To: <accb83e0-ffbe-b6e3-6bf9-e7cc8b9fe19c@arm.com>
References: <20200424071601.2636-1-michael.kao@mediatek.com>
 <accb83e0-ffbe-b6e3-6bf9-e7cc8b9fe19c@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_033948_319027_18C63A3F 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-04-24 at 10:22 +0100, Lukasz Luba wrote:
> Hi Michael,
> 
> On 4/24/20 8:16 AM, Michael Kao wrote:
> > The upper and lower limits of thermal throttle state in the
> > device tree do not apply to the power_allocate governor.
> > Add the upper and lower limits to the power_allocate governor.
> > 
> > Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> > ---
> >   drivers/thermal/thermal_core.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
> > index 9a321dc548c8..f6feed2265bd 100644
> > --- a/drivers/thermal/thermal_core.c
> > +++ b/drivers/thermal/thermal_core.c
> > @@ -598,7 +598,7 @@ int power_actor_set_power(struct thermal_cooling_device *cdev,
> >   	if (ret)
> >   		return ret;
> >   
> > -	instance->target = state;
> > +	instance->target = clamp_val(state, instance->lower, instance->upper);
> >   	mutex_lock(&cdev->lock);
> >   	cdev->updated = false;
> >   	mutex_unlock(&cdev->lock);
> > 
> 
> Thank you for the patch and having to look at it. I have some concerns
> with this approach. Let's analyze it further.
> 
> In default the cooling devices in the thermal zone which is used by IPA
> do not have this 'lower' and 'upper' limits. They are set to
> THERMAL_NO_LIMIT in DT to give full control to IPA over the states.
> 
> This the function 'power_actor_set_power' actually translates granted
> power to the state that device will run for the next period.
> The IPA algorithm has already split the power budget.
> Now what happen when the 'lower' value will change the state to a state
> which consumes more power than was calculated in the IPA alg... It will
> became unstable.
> 
> I would rather see a change which uses these 'lower' and 'upper' limits
> before the IPA do the calculation of the power budget. But this wasn't
> a requirement and we assumed that IPA has full control over the cooling
> device (which I described above with this DT THERMAL_NO_LIMIT).
> 
> Is there a problem with your platform that it has to provide some
> minimal performance, so you tried to introduce this clamping?
> 
> Regards,
> Lukasz


Hi Lukasz,

I refer to the documentation settings of the thermal device tree
(Documentation / devicetree / bindings / thermal / thermal.txt).

It shows that cooling-device is a mandatory property, so max/min cooling
state should be able to support in framework point of view.
Otherwise, the limitation should be added in binding document.

Different hardware mechanisms have different heat dissipation
capabilities.
Limiting the input heat source can slow down the heat accumulation and
temperature burst.
We want to reduce the accumulation of heat at high temperature by
limiting the minimum gear of thermal throttle.

Best Regards,
Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
