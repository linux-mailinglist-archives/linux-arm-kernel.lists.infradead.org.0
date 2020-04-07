Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC21A18A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 01:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBXhCszOguZ8Nw1upMzMx3DwRaIoVXX5zNFzZ1nFuiQ=; b=FIr0i/3MaumKP/
	/IZ4Khtkv+2zNk4yTZwP2T5uHpvPUdsBlNjRXZ+5GrQbJH8HMGB9/5WZgKi9M66CHnH2oM40T2cOT
	aM5rbSKvUCOf/8D6KQQMQ3s6QPil0YNTEuXlhIpQuj87uQg4RbSk30znZSSit4avD9hSRl36/ssZH
	fa+/k0FHDevTG9UvsOO6qcKcdtAK+yRriGCzcXHMElA0P7DRj+l0yuZLapiwFMbb/vma21Y97TZX9
	XRkayhfRkv5mY0Ptx0FOvKBwgOQN8tJz5iDZyrJR/vp1Yjq4oiSt6STZ6/zdTc5LwFQJln2zOLO4U
	q2BxxcEEDQ5bTM126VBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLxm5-0003Pc-7h; Tue, 07 Apr 2020 23:36:57 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLxly-0003P7-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 23:36:51 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 037NaIP6017886
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 7 Apr 2020 18:36:22 -0500
Message-ID: <93ae433317a82de86ff5e9c8485563b78656b615.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Tao Ren <rentao.bupt@gmail.com>
Date: Wed, 08 Apr 2020 09:36:16 +1000
In-Reply-To: <20200407060242.GA15050@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
 <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
 <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
 <20200403064826.GA10866@taoren-ubuntu-R90MNF91>
 <20200407060242.GA15050@taoren-ubuntu-R90MNF91>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_163650_518057_924610DC 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 taoren@fb.com, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-04-06 at 23:02 -0700, Tao Ren wrote:
> I ran some testing on my ast2400 and ast2500 BMC and looks like the
> for() loop runs faster than for_each_set_bit_from() loop in my
> environment. I'm not sure if something needs to be revised in my test
> code, but please kindly share your suggestions:
> 
> I use get_cycles() to calculate execution time of 2 different loops, and
> ast_vhub_dev_irq() is replaced with barrier() to avoid "noise"; below
> are the results:
> 
>   - when downstream port number is 5 and only 1 irq bit is set, it takes
>     ~30 cycles to finish for_each_set_bit() loop, and 20-25 cycles to
>     finish the for() loop.
> 
>   - if downstream port number is 5 and all 5 bits are set, then
>     for_each_set_bit() loop takes ~50 cycles and for() loop takes ~25
>     cycles.
> 
>   - when I increase downsteam port number to 16 and set 1 irq bit, the
>     for_each_set_bit() loop takes ~30 cycles and for() loop takes 25
>     cycles. It's a little surprise to me because I thought for() loop
>     would cost 60+ cycles (3 times of the value when port number is 5).
> 
>   - if downstream port number is 16 and all irq status bits are set,
>     then for_each_set_bit() loop takes 60-70 cycles and for() loop takes
>     30+ cycles.

I suspect the CPU doesn't have an efficient find-zero-bit primitive,
check the generated asm. In that case I would go back to the simple for
loop.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
