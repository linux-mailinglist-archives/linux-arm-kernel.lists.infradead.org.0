Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8457911870A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+LxzI3RrEFBaErktE7Gg8de1bbnKe8t+q3LBek+D3m4=; b=Ss5hqQGtR9u/mDvWJabAQRwy2
	GsndoukfhsLhHQ1cX5GpDpfDaFMT3SV7o7R6DKrk53tE44yuQ6Pm+NsW0Qsvu9BtLGMA32U7vvB0k
	sF+YXOhEd3fC2pnozYAA6nhIh7bWTuFDiDjTTNNdYn3ttZKoQ0GZVNje1jIz8CCmtiEF8ZifhGNGC
	9BHazPR0VFCpeartPoViQlKNwvcwnr3igFDixDYs38IXUY9G/o+WLP1+q6dw4lV1Mmd+ZvTJ1KxPV
	K8fEaFmXVMNAS5uR4v+Xll33DZ1jc9zsk9+rokrxGh9OQEnrWDOnIWt0hS1ynjDwXVKjwXKPMZKpK
	Jd8IMHbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iee0X-0006wk-Na; Tue, 10 Dec 2019 11:48:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iee0N-0006w8-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:48:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AF9A1FB;
 Tue, 10 Dec 2019 03:48:39 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E9073F6CF;
 Tue, 10 Dec 2019 03:48:38 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: set GPU clock to 432 MHz
To: Maxime Ripard <mripard@kernel.org>, Vasily Khoruzhick <anarsoul@gmail.com>
References: <20191203021420.164129-1-anarsoul@gmail.com>
 <20191209193112.qr6un5ryhyxwu6a5@hendrix.lan>
 <CA+E=qVcxXu4CggnhZFti-J4MB5m3pvoxKCHnH6ap-4OSZMzCFQ@mail.gmail.com>
 <20191210083315.gixyhp2a4pg7oi7z@gilmour.lan>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <72b49266-fd4b-13ea-3126-e9d2d1037f2e@arm.com>
Date: Tue, 10 Dec 2019 11:48:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210083315.gixyhp2a4pg7oi7z@gilmour.lan>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_034840_003691_8FA57B40 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 8:33 am, Maxime Ripard wrote:
> On Mon, Dec 09, 2019 at 12:23:18PM -0800, Vasily Khoruzhick wrote:
>> On Mon, Dec 9, 2019 at 12:03 PM Maxime Ripard <mripard@kernel.org> wrote:
>>> On Mon, Dec 02, 2019 at 06:14:20PM -0800, Vasily Khoruzhick wrote:
>>>> That's what BSP kernel sets it to and it seems to work fine.
>>>>
>>>> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
>>>> ---
>>>>   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 3 +++
>>>>   1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> index 27e48234f1c2..0051f39b3d98 100644
>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> @@ -976,6 +976,9 @@ mali: gpu@1c40000 {
>>>>                        clocks = <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
>>>>                        clock-names = "bus", "core";
>>>>                        resets = <&ccu RST_BUS_GPU>;
>>>> +
>>>> +                     assigned-clocks = <&ccu CLK_GPU>;
>>>> +                     assigned-clock-rates = <432000000>;
>>>>                };
>>>
>>> This doesn't really guarantee anything. If the GPU needs to remain at
>>> that rate, it should be set in the driver. I just saw that you did
>>> send a PR in github, I just merged it.
>>
>> Lima doesn't set GPU frequency at all since it's different for
>> different SoCs and we don't support operation points nor frequency
>> scaling yet.
> 
> You don't really need frequency scaling though, you just need to set
> it to any of the OPP. And if that's still too complicated, the binding
> mandates to associate a vendor compatible, so you can base the
> information on that.

Right, even just wiring up minimal OPP support with the userspace 
governor would be really useful for SoCs like RK3328, where the GPU PLL 
defaults to something pathetic, but the most useful upper frequencies 
typically require regulator adjustment as well.

Robin.

>> So this change effectively sets GPU frequency to 432MHz on A64 when
>> using lima.
> 
> Right before the driver is probed. For all you now, that frequency can
> be changed to anything else at the very next operation and you'd end
> up in the exact same situation than the one you're trying to fix.
> 
> Maxime
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
