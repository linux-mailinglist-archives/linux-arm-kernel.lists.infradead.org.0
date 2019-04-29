Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E29E888
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SV47Os/crHfYohzCQ3pKZoYkINjfrsMkHKKa/Vp+jMo=; b=ISohNREbM08T0p
	9HUEp2Lja2cO/ycxljFzWA8WD5kTxznRQ2zbkHIk/HAeh/YL1YXqvu7MvrB6PDQHAE+QQYcW6DjAP
	4LZtN5jlPh2ZlO0IFAGMF8DcprdZwxifrsIg7wrR83F1mRistJ8MAsm0Zx1bxXTbdv4tn+GprNdjB
	xV26ormqECKSmq8PVx/WlDZgdsc8tV37SaNccTlIAPa8leWiPbLzrOvV5jGRw+QgKHWJG0flfnj+C
	5MWjtWhN8cNi5/yG8O4dJdPFZJYZIWlqfudleIe8pblZWReGF5CzaQlA1phHclDLmSfDciYY9jaeY
	pc0oxi79249Kpeu+F6aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9qV-0000sR-S3; Mon, 29 Apr 2019 17:13:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9pG-0000mz-8M
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:12:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id w20so4756531plq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qUQwHR2VNeOE5MlCJ+FwXuCGuTGwhtdasJmtn1jXdiM=;
 b=RHPyhmdJuh4p9le7C8dnOEN+s/+kDEu7SpmvlvI4SYn8Wx81kzFxa/oxWR1hteJ5Dl
 OgDZ7UUSq4AcAcTrbT1g1ecqpA1ph7ueHeLKH8e3KvuIoYfHr3hwHNfZrfDwwOiwl8p9
 R29BMEjov8i+HamY04UYLVJfLDYgjroc3TxdDWUtHURJcAd2ymXMChRj6GrN8M8ENvFX
 WinMBAnsx/OzkDhZM2VhFw8LudtbHa41OLHMB8U/tzUszERAQRRYosfRyA95PXqiFi8Z
 FmebDEB/falILN7pKubBCOe0VN7vC4txcuSGuhj+IbXoQVvSL/9CwA9pq3BMLWvDTMV8
 MdgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qUQwHR2VNeOE5MlCJ+FwXuCGuTGwhtdasJmtn1jXdiM=;
 b=J/yYlXqXqdeX1seHHLKTDxRInYr8NfvWjsJtetRHCKNP/tXrPy1zMFJ1tlxOVJoG4A
 c0zcG6lcCIurhV3tkr5FTdTOkp/6juPoYHlGnpsRsGhhwbGZgJMMnhD/6ARB4O08ejuQ
 oQl/xkuNwO+uSSXFbfWh3feG7/HennJWF+WZvl1s4jWrlGl2vE2ll/klx9jKtVQO/wd8
 kv4U7nc03aqGsDFbScUVacLo/IfQUmpDC1YB13VizZII4Gza4rjdiKm/5X2qshcHzq0w
 BG8g7lhpnUkYQMWzQ9uw7Ku1bFtIiOc8fUnpr83zhbdnya9SXx+x9dk8Cq+RtrJltUiD
 gIbQ==
X-Gm-Message-State: APjAAAVqm5wwTdqfjozMw7x6B6X+z41yTctcmYMNlWz+UQ3WmJPvGhUG
 TJPGbWjH6FtCXaKC0HKcklfteYwvEeDOQEb7dc/mSK2WbW0=
X-Google-Smtp-Source: APXvYqxq59dYK855wXF2UaGJJlas8QKc5gdt2Tmc79lygnKF06mh76NgaeqWYhNzCj+xE1WIeZANTXTtJj3hhk6vfL0=
X-Received: by 2002:a17:902:7d8f:: with SMTP id
 a15mr62322314plm.3.1556557937999; 
 Mon, 29 Apr 2019 10:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
In-Reply-To: <20190429165137.mwj4ehhwerunbef4@localhost>
From: Patrick Venture <venture@google.com>
Date: Mon, 29 Apr 2019 10:12:06 -0700
Message-ID: <CAO=notwewAeeLz=LsOcSj=DakLGW0KjeDHALP5Nv2ckgkRqnFA@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101222_414205_DE90E8B1 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > >
> > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > currently present into this folder.  These drivers are not generic part
> > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > >
> > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > >
> > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > >
> > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > Ack this version of the patchset since it changes when the soc/aspeed
> > > Makefile is followed.
> >
> > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > maintainers are free to take this.
> >
> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> I'm totally confused. This is the second "PATCH v2" of this patch that I came
> across, I already applied the first.

I think the issue here was that I added to the CC list another email
and so you may see the v2  without that mailing list, and a v2 with it
--

Does this require a v3?  I honestly didn't think so, but this was the
first time I had to add more people without needing other changes.

>
> Patrick: Follow up with incremental patch in case there's any difference.
> Meanwhile, please keep in mind that you're adding a lot of work for people when
> you respin patches without following up on the previous version. Thanks!

w.r.t this patch series.  I found an issue with v1, and released a v2
with the detail of what changed.  I thought that was the correct
approach.  I apologize for creating extra work, that's something
nobody needs.

>
>
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
