Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B27B349
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 13:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YirVSaYjM/0xVh74IdkPR5yPc3W6Rg0RleMzDu2rNc=; b=ZCOocrOUpBOMsn
	jespoL65PL/5vE3N9GM42TaKzFkuLtyfqGb8iJpilNG6ZF5Fje96I4Mc2M8BKUPnKZuPwR3FPRuzr
	rENqdygoE7MLVjNaTWnOKI23xoMqhTo1VGL5UhKlrCamyec5BERLGC2PrrcCA+TnKVivIxHYJf4E/
	OiD4UUgtX255EENj4/ELXqW99/ELjI4nSHbD4ags2yTAuQWqUEWhFATHA9XMbiNe/ZZObZac8cqqk
	0skPxMtE8lXFO+NW684n9HggWjYW0vmR2GZ+s4f5/t5xH7kE1xqkgoFvlt5Nb97aeri30D9TGuUgO
	+TwWl+40gYVgPdS4IEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLq9-0001OA-WF; Sat, 27 Apr 2019 11:49:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLq2-0001LT-53
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 11:49:51 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33845208C2;
 Sat, 27 Apr 2019 11:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556365789;
 bh=micoXllDruCvx3gGFlYFaFNFGyDXOM8yAbo6P5dAYeA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2ExrCDaIak/HJASR4XsuGCZUxmgJS5UwpMQutPER+NyybPzWgCbu0qLe3JM0MXvw1
 oxi3Lu3fHqi6q9JBVOwLjmYMmjvWk2b18k4RtrnQ0RLej+twdB4Ti+SWXkaLKv40SH
 rhgpe21hzpDVCz0661W77VP0ANZaJNy08E0aipxk=
Date: Sat, 27 Apr 2019 12:49:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v10 00/18] Introduce the Counter subsystem
Message-ID: <20190427124937.1a9920ea@archlinux>
In-Reply-To: <20190425193624.GA11240@kroah.com>
References: <cover.1554184734.git.vilhelm.gray@gmail.com>
 <20190407152550.451a7f63@archlinux>
 <20190425193624.GA11240@kroah.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044950_216975_511F18AB 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, benjamin.gaignard@st.com, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 thierry.reding@gmail.com, pmeerw@pmeerw.net, linux-api@vger.kernel.org,
 lars@metafoo.de, daniel.lezcano@linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 david@lechnology.com, William Breathitt Gray <vilhelm.gray@gmail.com>,
 robh+dt@kernel.org, tglx@linutronix.de, fabrice.gasnier@st.com,
 esben@haabendal.dk, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, knaack.h@gmx.de, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Apr 2019 21:36:24 +0200
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Apr 07, 2019 at 03:25:50PM +0100, Jonathan Cameron wrote:
> > On Tue,  2 Apr 2019 15:30:35 +0900
> > William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> >   
> > > Changes in v10:
> > >   - Fix minor typographical errors in documentation
> > >   - Merge the FlexTimer Module Quadrature decoder counter driver patches
> > > 
> > > This revision is functionally identical to the last; changes in this
> > > version were made to fix minor typos in the documentation files and also
> > > to pull in the new FTM quadrature decoder counter driver.
> > > 
> > > The Generic Counter API has been and is still in a feature freeze until
> > > it is merged into the mainline. The following features will be
> > > investigated after the merge: interrupt support for counter devices, and
> > > a character device interface for low-latency applications.  
> > 
> > Hi William / al,
> > 
> > So the question is how to move this forwards?  I'm happy with how it turned
> > out and the existing drivers we had in IIO are a lot cleaner under
> > the counter subsystem (other than the backwards compatibility for those that
> > ever existed in IIO).  For those  not following closely the situation is:  
> 
> I've now sucked this into my staging-testing branch and if 0-day is fine
> with it, I'll merge it to staging-next in a day or so.  This way you can
> build on it for any iio drivers that might be coming.

Great thanks. 

> 
> I do have reservations about that one sysfs file that is multi-line, and
> I think it will come to bite you in the end over time, so I reserve the
> right to say "I told you so" when that happens...
> 
> But, I don't have a better answer for it now, so don't really worry
> about it :)
> 
> thanks,
> 
> greg k-h

Looks like a few late breaking comments came in, but nothing that can't
be fixed up before this reaches a release.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
