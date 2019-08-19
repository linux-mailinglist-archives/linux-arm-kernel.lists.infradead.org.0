Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF494DA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+HzStIb9X8Sq6Mi1d9Hm5Xq/JPhS91KBaMyDr+F2Xk=; b=TnQ4S9RN6jQhQ4
	vznMhK+RcDwDAPApjgIArFabaJrbprdx21cpWqO4iaeXyzshU0en+2P0tL6+TFAO8idHnSrs8JLSx
	7zPVbYUf7l6WiHb1WDrzgkWcX0jqS+MUCzHh9704q2xh9b3RtUKgTtuVxtOjJwfnwGE4spYplsRkd
	gWDLzXIjcPXAl6zZgNjttGb1oOQ2Zi/ERb2w8Zh82lapbcZBHPB4bqymreYtQ7egxHdrTVqZwB7AJ
	gGR55s34q2D5riNh4QgH8rM5kip6sTqCD11H52igVCj94yFOR8noZB5hBdr9EThlX4oO/0RbxUwzQ
	gZm3IVHpLeJOiB7jCMdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzn6Q-0002GC-PQ; Mon, 19 Aug 2019 19:14:03 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzn66-0002Fs-TE
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:13:44 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 064C41BF209;
 Mon, 19 Aug 2019 19:13:26 +0000 (UTC)
Date: Mon, 19 Aug 2019 21:13:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190819191326.c27vmevrqkmjhfru@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea>
 <20190819133058.bujcawpw5rgsfp4g@flea>
 <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_121343_097974_8B26DD21 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 tglx@linutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 03:45:40PM +0200, Daniel Lezcano wrote:
> On 19/08/2019 15:30, Maxime Ripard wrote:
> > On Mon, Aug 12, 2019 at 01:24:11PM +0200, Maxime Ripard wrote:
> >> On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
> >>> On 12/08/2019 11:16, Maxime Ripard wrote:
> >>>> Hi,
> >>>>
> >>>> On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
> >>>>> On 22/07/2019 10:12, Maxime Ripard wrote:
> >>>>>> Newer Allwinner SoCs have different number of interrupts, let's add
> >>>>>> different compatibles for all of them to deal with this properly.
> >>>>>>
> >>>>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >>>>>
> >>>>> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> >>>>
> >>>> Thanks!
> >>>>
> >>>> Can you merge this through your tree (along with the bindings)? I'll
> >>>> merge the DT patches
> >>>
> >>> patches 1-4 then ?
> >>
> >> Yep, thanks!
> >
> > Ping?
>
> They are applied :)

Oh, my bad :)

Where is your tree these days? I couldn't find it in linux-next either
:/

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
