Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823981456ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZZAt+g7nnAPahphv6qyRPomibxKK4sgNmltdfClvHCM=; b=kBtXy7dVjBvuFH/Ba3VMJN+bh
	NVqnsf2oTX2nDmAZ+aKhTjn883EexAxgcAbAYlBMyq0RiYMsOoLBeON8SogKcnSS6rsnPD5DDMIgg
	YwovEv3gkTSa3Xhhb7tDGoTPPOQkmm70gf9QZqLgDnq34EowXeROAmGmikqtOCJijr3ZCLD5d/35K
	UFD1c9xCNrAsSQFB+yAZwFhUht41DvYFZGN0fvjQ4rJd7SuPEY+SkSSKaNTI2o5d1Lam/G/sqhbd4
	DQ2IAVuGB/tlIqG/50uwiZcylFLr4x0DNYBkMPzay9pUUGsOk2CI+98NFaL4h/ZnyjR9ghbE3Jf58
	lHzlijEGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGF0-0005ZN-1X; Wed, 22 Jan 2020 13:40:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGEo-0004mr-FY; Wed, 22 Jan 2020 13:40:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 991D3328;
 Wed, 22 Jan 2020 05:40:03 -0800 (PST)
Received: from [10.37.8.106] (unknown [10.37.8.106])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 740A23F52E;
 Wed, 22 Jan 2020 05:40:00 -0800 (PST)
Subject: Re: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
To: Nicolas Boichat <drinkcat@chromium.org>, Mark Brown <broonie@kernel.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-5-drinkcat@chromium.org>
 <20200114151643.GW3897@sirena.org.uk>
 <CANMq1KC_-g45wdGgGiBmEyVXAJMkKwsJBJXGBHOMJk_=NyfpYw@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <78d5d977-50d5-f28e-0c4c-fd1df9e868e9@arm.com>
Date: Wed, 22 Jan 2020 13:40:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANMq1KC_-g45wdGgGiBmEyVXAJMkKwsJBJXGBHOMJk_=NyfpYw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_054006_598569_7C35CCA8 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/2020 04:37, Nicolas Boichat wrote:
> On Tue, Jan 14, 2020 at 10:16 PM Mark Brown <broonie@kernel.org> wrote:
>>
>> On Tue, Jan 14, 2020 at 03:15:59PM +0800, Nicolas Boichat wrote:
>>
>>>   - I couldn't find a way to detect the number of regulators in the
>>>     device tree, if we wanted to refuse to probe the device if there
>>>     are too many regulators, which might be required for safety, see
>>>     the thread on v2 [1].
>>
>> You'd need to enumerate all the properties of the device and look
>> for things matching *-supply.
> 
> I see ,-) I was hoping for something slightly cleaner, or maybe an
> existing function in the core.
> 
> Steven: How strongly do you feel about this? If so I can add that
> check in the next revision.

I'm not that strongly bothered about it - my only worry is that there 
may be hardware out there that might be broken by not activating a 
regulator. But I don't know how common this multi-regulator design is in 
practise.

Thanks,

Steve

> Also, just a heads-up, I'm out for the next 2 weeks, I'll send v4 after that.
> 
>>
>> Reviewed-by: Mark Brown <broonie@kernel.org>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
