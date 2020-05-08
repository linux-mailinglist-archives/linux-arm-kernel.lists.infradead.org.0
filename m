Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D0F1CB479
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 18:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ob5FpHiC9cdOfjYqnbABQQuAWU3PCQgbqtpqde6DlQ=; b=cSwQW+NP/HuRtI
	POZITvfCR9YtSnkre1D5LtpLdYNeKwb7Qxz3ay4k8hSM7HVsI9mNbsUMJTu5blosbBmy/3UkuknDR
	OXfeOokBDRRajdlfjNOOF6SDfhf1dRT3384E5M12bAv+ghLfDG8U9Ssvv4aBJklz9lQhT8L1LCflE
	XGohrUOloTfQX0h7997gzI1OngfFiyYzHZtbObgRj/9trSQEczfHonpQo//dvrSQoaV5sW+yxpFZG
	998LMEGiHNUJeWmv11L59R4vSk8wnTTSTTjVBDqYExVnIPmuDyx2w4XyIiwhcKFo+XmDhHyNPw/r1
	xSx73RxA7hJn7U3tx0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5em-0004Mf-MZ; Fri, 08 May 2020 16:15:24 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5ee-0004L7-BI
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 16:15:18 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id EFE575B4EB;
 Fri,  8 May 2020 12:15:09 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=kmhGduBIpake8Zs5HsNV1PT6HCM=; b=C9RLBB
 sBPVI/CtYd2pWQb5mSlzAXd/p74pm36uF74KC7TDmwmdDn/5dKy0OwG01pNXyHxW
 2YCzS2H5BBDSTs00Q17qzaaQiMptDnL+mVRLeIHplEpYFR3VtaSFX8J/ki90p7M/
 NFy6n7H8aAb6ZSIy28EOQPTSXMAlMRRAVPjhw=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id DCFD15B4EA;
 Fri,  8 May 2020 12:15:09 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=0a/ecB1PmZ/fZPc6KQLGTVXFxRUYp0SmngpAhZYhMDI=;
 b=ZQFvkzSz7djlz1+SaXnqn/0ZFbHA/jfZ9v6sI7nC/ZrvqOuk4WcIjnVDwzFe1GzJeCyJ4SbAG39G1WOcs2TQF5fSm4ImfGCH+/npq7Oyztz3GNoo+a4D2n6G7jhb98mBl6gJlKBpLnbQ2ujG/Lqk4WeoZBmF2eKSaBM3b+XafAQ=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id E918D5B4E8;
 Fri,  8 May 2020 12:15:08 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id D7A702DA0AA9;
 Fri,  8 May 2020 12:15:07 -0400 (EDT)
Date: Fri, 8 May 2020 12:15:07 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
In-Reply-To: <CAMuHMdX11aLVE8tNNzuawKZqg21mOEnmTv=RkdOPZmMjMzWRMw@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.77.849.2005081210220.5637@knanqh.ubzr>
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
 <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
 <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
 <CAMuHMdW0=KWk2pC2tRUajvZQsoObBEFz7WoJ+uJbHbX27f7b2g@mail.gmail.com>
 <OSAPR01MB2114FB6F10EC904F19363F9D8AA20@OSAPR01MB2114.jpnprd01.prod.outlook.com>
 <nycvar.YSQ.7.77.849.2005081023180.5637@knanqh.ubzr>
 <CAMuHMdX11aLVE8tNNzuawKZqg21mOEnmTv=RkdOPZmMjMzWRMw@mail.gmail.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: 163EB46E-9147-11EA-AFE8-C28CBED8090B-78420484!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_091516_490650_D4303C9B 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020, Geert Uytterhoeven wrote:

> Hi Nicolas,
> 
> On Fri, May 8, 2020 at 4:41 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> > On Fri, 8 May 2020, Chris Brandt wrote:
> > > The big argument was always that "XIP cannot be multi-platform by
> > > definition because RAM/ROM always resides at different addresses in different
> > > devices". And as you know, the physical address for RAM and ROM have to
> > > be hard coded in the kernel binary.
> >
> > Exact.  So what is the problem?
> 
> Ah, you've fallen for the "multi-platform" fallacy!

Me?!  You must be mistaken on the person.

> I have no desire to enable support for multiple platforms in a single 
> kernel that supports XIP on all platforms.

Absolutely!  As I just said in my previous email, multi-platform XIP 
kernels are non-sense.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
