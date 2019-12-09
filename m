Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837C4116FF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 16:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IExr1/IS03FLKVdhpo7o6M666fM/oG6qFO+81eoHUHY=; b=LA6PcWqKfY+Onx7C4c/gWH/Ug
	vfTTox8149oAo2dCr8c4FlhWM6XRfPhKi4tPETkPbIGBXPxsyu9nehg05qK48kLV+/dElUY0Nv120
	QmTNpUCkmZqkguboRuhIwBQL/+eKsTWCcjfvjRjlcQELvhJSJ5lv2gSU9hOaZa6+1nQUoj1q4IO51
	a56YEElC0dOtw94WYbkecfbJwf28aoU7ruzIa4J+HELkYGs2CenX1+/gKTmZwC4/TRYX/bY/ajm4a
	JHxw3Frp2saEDwulcWB2yo6g7XBGFthqlajUz+V4ATDlVGl0nMOl/myRzch3+7m7n8bs0PAsTJI5/
	XXRMA2Jug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKfx-0000cX-1a; Mon, 09 Dec 2019 15:10:17 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKfm-0007yd-LO; Mon, 09 Dec 2019 15:10:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id ED77136E3C6B;
 Mon,  9 Dec 2019 15:52:06 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ROUn39D3oXYX; Mon,  9 Dec 2019 15:52:04 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
 <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
Message-ID: <5baf8423-8aa6-21a4-b066-71e3d12330cd@manjaro.org>
Date: Mon, 9 Dec 2019 15:51:04 +0100
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_071006_862005_F0ABCC49 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> On Mon, Dec 9, 2019 at 8:29 AM Robin Murphy <robin.murphy@arm.com> wrote:
>> On 06/12/2019 6:45 pm, Anand Moon wrote:
>>> Most of the RK3399 SBC boards do not perform clean
>>> shutdown and clean reboot.
>> FWIW reboot problems on RK3399 have been tracked down to issues in
>> upstream ATF, and are unrelated to the PMIC.
>>
>>> These patches try to help resolve the issue with proper
>>> shutdown by turning off the PMIC.
>> As mentioned elsewhere[1], although this is what the BSP kernel seems to
>> do, and in practice it's unlikely to matter for the majority of devboard
>> users like you and me, I still feel a bit uncomfortable with this
>> solution for systems using ATF as in principle the secure world might
>> want to know about orderly shutdowns, and this effectively makes every
>> shutdown an unexpected power loss from secure software's point of view.
>>
>> Robin.
> Since ATF is operating completely in volatile memory, and shouldn't be
> touching hardware once it passes off control to the kernel anyways,
> what is the harm of pulling the rug out from under it?
> If this idea is to prevent issues in the future, such as if ATF does
> gain the ability to preempt hardware control, then at that time ATF
> will need to be able to handle actually powering off devices using the
> same functionality.

As far as I know ATF implements PSCI, doesn't it? Thus I would assume 
that it should most definitely handle power off for all platforms as 
indicated by the presence of platform handlers in [1].

> But as we discussed previously, ATF doesn't have this capability, so
> in this case any board without a dedicated power-off gpio will be
> unable to power off at all.
> Also it seems that giving ATF this functionality, with the current
> state of ATF, would be cost prohibitive.
>
> I personally feel that allowing the kernel to do this is a solution to
> the problem we have now.

Maybe I'm missing something here but I'd suggest that implementing an 
i2c driver in the rockchip platform part of ATF using libfdt to find the 
PMIC from the devicetree would be the way to go.

[1] 
https://github.com/ARM-software/arm-trusted-firmware/blob/master/lib/psci/psci_system_off.c#L31


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
