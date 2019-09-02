Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F89A553E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDZpNQ4t89flv0G0P5Llz3L0lHSx+P6tZHVYoEkKttE=; b=W74CFsd7j5ONOl
	aQYsm/6LdcqvAWNg4E0cjE3PHihAK8eLVLBrrw8hXiEX0HduerkKF1lNYs7RK2SlhnEuSGr3tN1rN
	HBiRRIFrrSZuDXK02h5hgaAWvkP2wKqlM9R2nNmsOeqc+yIlqSMfCfi3WCL/ULHS5YN992esXK7Pd
	Gael0nRqsOy2l3fI9E2DtghTerMwvZ91OMDWBsya3AXHuac9DW5b6Bs8hebtlbVyJb09jJiCwRE42
	tdoq2k9H6kGIRHkYfy4xn/eofTJ0YoEPP2t37sORxAcTSJXdCFeglr0vzhPP3rfHFIsgPRFzSoVyL
	y4YpDqFJ+XvtoaXWdBpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kna-0005tH-3U; Mon, 02 Sep 2019 11:47:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4knN-0005st-96
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:46:54 +0000
Received: from localhost (smbhubinfra01.hotspot.hub-one.net [213.174.99.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78E502173E;
 Mon,  2 Sep 2019 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567424813;
 bh=3AeKxO0ddoJuqHSrvWoZKyJIKicbcRXMYvMJTXIXUkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NOMkxTlpJiSLb1t19p8ePomtZzXLnK4x7mAVZFT8P7TxQHbZFafWmBozeYUnuejtq
 /eOWS2ZMDmVO8GQXvizOvHzE6hm6197vIi4dqfTSIv0d20lU7Z+FLnZdxIbxoOTY9g
 3PAH/y/1afdQCcMAszgWphcDBNYpBesP/6mPdFb0=
Date: Mon, 2 Sep 2019 13:46:50 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH RESEND v2 1/6] dt-bindings: watchdog: Add YAML schemas
 for the generic watchdog bindings
Message-ID: <20190902114650.w65ya7mgfsyu275x@flea>
References: <20190821143835.7294-1-mripard@kernel.org>
 <20190830164811.GA7911@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830164811.GA7911@roeck-us.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_044653_340174_8328A836 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 wim@linux-watchdog.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guenther,

On Fri, Aug 30, 2019 at 09:48:11AM -0700, Guenter Roeck wrote:
> On Wed, Aug 21, 2019 at 04:38:30PM +0200, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The watchdogs have a bunch of generic properties that are needed in a
> > device tree. Add a YAML schemas for those.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Thanks for reviewing this, which tree should this go through? Yours or Rob's?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
