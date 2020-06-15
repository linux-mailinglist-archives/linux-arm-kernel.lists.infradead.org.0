Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAF51F919A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WKj396IhtbylHNBSvV68COwIOvzSzZ0NsVhoG8rN4fM=; b=U/wvK1IEUSV0r5H8me246Mctm
	b1WX1/Pm9Ndd/FmJRKQTS5hLC7wSTgKylbLv2HPH7VUrwsMG1GNpLyQY6+mrNfxOIbvqpck5QFb0s
	bSkY6lE1nL5c/qDKGJKm6VTcTF3+7JWgM2YEoJNWSKxAirudEHdgr/IvDKH5/MWC+jwOJX3h09JsE
	L3XivYKcVd/FP4t8JRmoL4pGLzk6ayehu8AT1skL5tX+7sONin5PxDm+HrHzpQfFL35cLz8CKeupx
	iAXY5SXB/8/SWLPJnYYlOUj97qx91NmoY7F/zTKhYjucerXQAgpXUOjuVVRn346nypXYxxYokcMVy
	/FhNJqchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkka2-0004Nx-UH; Mon, 15 Jun 2020 08:34:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkZu-0004NZ-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:34:51 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F93C2068E;
 Mon, 15 Jun 2020 08:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592210089;
 bh=QO5I7UdKNZGH1EgSgljjPrTCdDrfliFWuQpe4jpGydg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UO29b4Rs5W+wK46xfgIOrYnjY8HHXx3eOCuvwzLqsrCppZLuQIrFHCKxVoKyCiWmU
 siEa5/n+5Iw1+n895H2Z5ie0X0gC5b2cj7VoD7O26tmEtBIdEwY391NsMmgcQt0XSj
 284SqImetYz0+v1qeGqHrBozYkthLyu2/IeqIvH8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkkZr-0031xr-OX; Mon, 15 Jun 2020 09:34:48 +0100
MIME-Version: 1.0
Date: Mon, 15 Jun 2020 09:34:47 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
In-Reply-To: <d586e88c-2907-1771-dee2-32429082aa07@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com> <20200528221406.GA769073@bogus>
 <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
 <4ea8c6110a16900220a65f1d44145146@kernel.org>
 <3f253e25-2ee7-96f2-3158-7f6be0710a33@ti.com>
 <d586e88c-2907-1771-dee2-32429082aa07@ti.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <9afd8a79d9c9ecfd35b6a4e66c93e298@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, nm@ti.com, robh@kernel.org,
 grygorii.strashko@ti.com, devicetree@vger.kernel.org, t-kristo@ti.com,
 nsekhar@ti.com, peter.ujfalusi@ti.com, ssantosh@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_013450_347052_56E7F1C2 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 09:03, Lokesh Vutla wrote:
> Hi Marc,
> 
> On 01/06/20 5:06 pm, Lokesh Vutla wrote:
>> Hi Marc,
>> 
>> On 29/05/20 3:48 pm, Marc Zyngier wrote:
>>> On 2020-05-29 11:14, Lokesh Vutla wrote:
>>>> Hi Rob,
>>>> 
>>>> On 29/05/20 3:44 am, Rob Herring wrote:
>>>>> On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
>>>>>> Drop the firmware related dt-bindings and use the hardware 
>>>>>> specified
>>>>>> interrupt numbers within Interrupt Router. This ensures interrupt 
>>>>>> router
>>>>>> DT node need not assume any interrupt parent type.
>>>>> 
>>>>> I didn't like this binding to begin with, but now you're breaking
>>>>> compatibility.
>>>> 
>>>> Yes, I do agree that this change is breaking backward compatibility. 
>>>> But IMHO,
>>>> this does cleanup of firmware specific properties from DT. Since 
>>>> this is not
>>>> deployed out yet in the wild market, I took the leverage of breaking 
>>>> backward
>>>> compatibility. Before accepting these changes from firmware team, I 
>>>> did
>>>> discuss[0] with Marc on this topic.
>>> 
>>> And I assume that should anyone complain about the kernel being 
>>> broken
>>> because they have an old firmware, you'll be OK with the patches 
>>> being
>>> reverted, right?
>> 
>> I am assuming there is no one to complain as there is no product 
>> available yet
>> with upstream kernel. Internally everyone is aware of the changes. So, 
>> yes I
>> would agree with you to revert the changes if someone really needs it. 
>> :)
> 
> Any chance you can shower your blessings on this series :)

I have purposely ignored it just before and during the merge window. It 
is now firmly in my review queue.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
