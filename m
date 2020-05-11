Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0531CDFE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnYxXPGfsTts/biKUb8YR/WSr/w+in1+vGqPsyhCgEU=; b=saF5Qybfhvlr42
	v5lu6OB5YCfrKdtRB4Aa8iEksYaFj2JygO93OOtT25RuiJD8Tyn2BwcYjxDQU1GgNMuFEWtpCdrJ2
	rxOeVaFn1ZQxoxSy4U/ejfV1n74nMmXmbKUg+TZ/aBcGNAndfclGL77PVLItTlWzuVd5dvN5kT54p
	Lw0WBRg0nDevkzcjBzZ8aaPfctfKJPYp+JS7Gj6Ym8F6XxoLsomXx+I6gI/JiisqzGoyrSJ3J3LUi
	1YHvKH1oaVnzPI2pKrIakZSxEqh+8I6Eo6+6cbyY1hP06/dp9dtCsvyiZoDoJpcYIpBFIm8s2A9C9
	FqxPrbgTW4znZsGkWpEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAvh-0004Df-9u; Mon, 11 May 2020 16:05:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAvV-0003BB-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D66A30E;
 Mon, 11 May 2020 09:05:07 -0700 (PDT)
Received: from e119603-lin.cambridge.arm.com (unknown [10.57.42.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4638F3F305;
 Mon, 11 May 2020 09:05:06 -0700 (PDT)
Date: Mon, 11 May 2020 17:05:04 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 0/3] SCMI System Power Support
Message-ID: <20200511160504.GA17648@e119603-lin.cambridge.arm.com>
References: <20200427210806.37422-1-cristian.marussi@arm.com>
 <CAL_JsqKV8j8Jm_7B7no6SsZ9AAv=WjqOx9EmCp3fomUXRO-FzQ@mail.gmail.com>
 <DB7PR08MB3657577B2251084FF2B4A0EF9EAA0@DB7PR08MB3657.eurprd08.prod.outlook.com>
 <CAL_JsqK6+2c9jXfsipqH0qakTGrszSGN4+kZqGstOmkWj40JGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK6+2c9jXfsipqH0qakTGrszSGN4+kZqGstOmkWj40JGQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_090509_645160_2DDA7673 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "james.quinlan@broadcom.com" <james.quinlan@broadcom.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>, Lukasz Luba <Lukasz.Luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 02:11:45PM -0500, Rob Herring wrote:
> On Thu, Apr 30, 2020 at 12:23 PM Cristian Marussi
> <Cristian.Marussi@arm.com> wrote:
> >
> > Hi Rob
> >
> > thanks for the feedback.
> 
> Plain text for maillists please.
> 
Yes I know, sorry, used wrong client by mistake.

> >
> > > On top of this a new SCMI driver has been developed which registers for
> > > ----
> > > such System Power notification and acts accordingly to satisfy such
> > > plaform system-state transition requests that can be of forceful or
> > > graceful kind.
> >
> > > I needed this 7 years ago. :) (hb_keys_notifier in
> > > arch/arm/mach-highbank/highbank.c)
> >
> > ...better later than never
> >
> > > Such alternative, if deemed worth, should clearly be configurable via DT
> > > (also in terms of which signals to use), BUT all of this work is not done
> > > in this series: and that's the reason for the RFC tag: does it make sense
> > > to add such a configurable additional option ?
> >
> > >Which process signal to use in DT? I don't think so.
> >
> > ... beside the awkward bad idea of mine of configuring it via DT
> > (which I'll drop possibly using modparams for this config), my question
> > was more about if it makes sense at all to have another alternative mechanism
> > (other than orderly_poweroof/reboot)) based on signals to gracefully ask userspace
> > to shutdown
> 
> gregkh will tell you no to module params.
> 
> If the signal is not standard, then we probably shouldn't go that route.
> 

Before this reply, I posted a v2 with alternative signal-method configurable by modparam;
it's anyway a small addition which I can easily remove in a v3.

Thanks

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
