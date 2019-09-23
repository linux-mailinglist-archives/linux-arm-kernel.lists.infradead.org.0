Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9102EBB6D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJQNp7RHMTGhZlqePixvuKR+TFvc7uAuHUHLVzA1Gxw=; b=CJaIrOVHdOJnme
	MaL4qkbTKbOfpJUh48w9IEw0T5LBeqgnqSM3WedLH6L1KvQoUnN9r6XMUhx1t1H3hUtn/74NtUa0S
	YQPbzwQto3gHVE4fI2EkQ3kjMOPxBBij1lmWp6MiA+OqxC3Uqg6M/63YWKDZ8Cu8+Oz2YnwxcLe5S
	UbAUykQgSE4e7Urh7vRNSZSgVW13Ij1IVRxlAbB9mPoG5UmB+vbdjRCymykoDJNDKnHYn3FNKODIv
	xnZ+UGC/P/fGq1JKY0k4c7L/1V+ks2ZN3nALE11WFcTGtjcyWaRzhgjqR7m5Nl9wxBAW6xOfrmbIb
	+Aj+Zky7pgT2fZc5tZeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPPi-00050b-BL; Mon, 23 Sep 2019 14:34:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPPA-0004ze-4J; Mon, 23 Sep 2019 14:33:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 438731000;
 Mon, 23 Sep 2019 07:33:28 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8F293F59C;
 Mon, 23 Sep 2019 07:33:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Nicolas Boichat <drinkcat@chromium.org>
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
 <20190913181729.GB3115@kevin>
 <CANMq1KD++==d0Mb6T2gKU1T7c_MaedswOYdxqEqEKKUL1bxgiw@mail.gmail.com>
 <20190919123243.GA3457@kevin>
From: Steven Price <steven.price@arm.com>
Message-ID: <3dfa9e3c-9a78-90d1-68c9-7b64a3d734e4@arm.com>
Date: Mon, 23 Sep 2019 15:33:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919123243.GA3457@kevin>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_073332_266884_400640D8 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dominik Behr <dbehr@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/2019 13:32, Alyssa Rosenzweig wrote:
>>> By the time MT8183 shows up in more concrete devices, it will, certainly
>>> in kernel-space and likely in userspace as well. At present, the DDK can
>>> be modified to run on top of the in-tree Mali drivers, i.e. "Bifrost on
>>> mainline linux-next (+ page table/compatible patches), with blob
>>> userspace".

Actually most(?) Bifrost GPUs support the "legacy" 'LPAE-ish' page table
format. So the only kernel change *required* is adding the compatible
string (and any SoC-specific quirks).

The support for "blob-on-Panfrost" is currently an experimental internal
investigation. So I can't make any promises about it ever being released
publicly.

>>> While the open userspace isn't ready here quite yet, I would definitely
>>> encourage upstream kernel for ChromeOS, since then there's no need to
>>> maintain the out-of-tree GPU driver.
>>
>> That's an interesting idea, I had no idea, thanks for the info!
>>
>> Would that work with midgard as well? We have released hardware with
>> RK3288/3399, so it might be nice to experiment with these first.
> 
> Yes, the above would work with Midgard as well with no changes needed.
> Ping Steven about thtat (CC'd).

Indeed since it's the same kernel driver the same compatibility layer
can be used to run Midgard DDK blob on Panfrost. Although given the
progress that has already occurred with the Mesa Panfrost user space you
might be able to simply switch to a completely open stack (available now).

Again I'm afraid I'm not in a position to give any guarantees that my
prototype blob-on-Panfrost work will actually be released or timescales
of when. However since the current focus internally is on newer GPUs I'm
less confident that there will be interest for Midgard DDK on Panfrost.

Steve

>>> More immediately, per Rob's review, it's important that the bindings
>>> accepted upstream work with the in-tree Bifrost driver. Conceptually,
>>> once Mesa supports Bifrost, if I install Debian on a MT8183 board,
>>> everything should just work. I shouldn't need MT-specific changes / need
>>> to change names for the DT. Regardless of which kernel driver you end up
>>> using, minimally sharing the DT is good for everyone :-)
>>
>> Yes. I'll try to dig further with MTK, but this may take some time.
> 
> Thank you!
> 
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
