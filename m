Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30AE16E93
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 03:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQ3IJhlWchnjZaTkDRaKGpNWu518Xdlikv9uwCdhJGU=; b=fDqT84/D9hmEvR
	9gUvjEhX8akfOhK/wMwBnSecmXTZytgUIYPVhTt5bINdGDfy8FEpnE9c9krgOTpCk2QEf6SQop3K8
	h2cda7H/VaB6sQO5/yqh/X47fhNndPuCvn6NOEtKnnUQhUNQ9QK/9uBcCCJSNs69E3/ZZwpzvzVzC
	d/zAX47GEdMQei0gaNc9vAPv/DX69aqujyIz+gcklnI7yZZnRCQxrzsEAFOiIXNUsq4y1BEFx/8pu
	HYVgkoLramBrHgfYozr+05Huehj6yXDWWuCVbgjqUI8KmUeBPleHAaWlps22shnRrnhf2jc+2dI7z
	a1hRrjQlPAN4lti8ghXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOBDo-0002pJ-HZ; Wed, 08 May 2019 01:18:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOBDd-0002j1-O0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 01:18:03 +0000
Received: by mail-qk1-x743.google.com with SMTP id a132so11317814qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 18:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O+01/fhDqtai1N/X2yLycMXv1SIs+oDpJCrUUWcrjMA=;
 b=FjutGs8Upc4X6Ku/pI/PhsHhXsb8sSJIphZ2Bg6gKbUsba2yYhZiL0CQ1dmLmyiNMY
 1DoyzoBrbX/9wIuVbbJxqDoh6T5/SjSLneERnFf2MvvZ4dEnh5JkyfUIml41Djky5/16
 mUowZUTgIE3HBR+V4Tj+h5zLTs801GBy08Ld8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O+01/fhDqtai1N/X2yLycMXv1SIs+oDpJCrUUWcrjMA=;
 b=ZyjCyP7ydFkq58KB1d/ihKBeHbsXgdplMDLSw2NO/EpmW3waimuDDQBRkr/OYk5o2U
 pBOti370bAOO7CeIF8GqflSFX6tUOoPUqEJFdft2nGELT6ucqJd7KXkbcG5HXVwMJe64
 vPtqLoXhoi9DvLtEcM+a2g8Eq9cIdHqfIJMKh/OsRIjEHkhnD4jO0BNB61OzrpQXm1hV
 yMlDZJDIDQJzkYHsi8H4/s474WQtIIbxGvN0iR8gaMX7oBgPU1bGdqc45erbsGosP6JU
 ZgmKBTQQmoSBoNVkYQM7hmQJhG1N/rmTXRNB9mrYMQyU9tvWHRiYVwi7NUR7N581mGrG
 Lwgw==
X-Gm-Message-State: APjAAAVRjRkDvf7QuxwPB1BX3fGV81IZS3nLWfkqjPO8UfMGJqTmg8Uz
 MrIoyAxtlN34tqgRLLGD41dJ/KeGcFdVvQAtCj1s4Q==
X-Google-Smtp-Source: APXvYqxL08Ax+gOyBauc0IC54ns9XncT6heXSua50dh6BBwY1PpGYWMo0JAbDc87rrA5Nn7hmelfVODRA0RtyuYUK6Y=
X-Received: by 2002:a37:2e05:: with SMTP id u5mr6103515qkh.124.1557278279873; 
 Tue, 07 May 2019 18:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190502045631.229386-1-drinkcat@chromium.org>
 <6844539f-3d5e-e3ff-b498-390cdc731880@linux.intel.com>
In-Reply-To: <6844539f-3d5e-e3ff-b498-390cdc731880@linux.intel.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 May 2019 10:17:48 +0900
Message-ID: <CANMq1KArM_sttW0-hq9sS4gVfWnZbHevfJ+YEg0YQ3ML_Okygg@mail.gmail.com>
Subject: Re: [PATCH 1/2] usb: xhci: Make it possible to not have a secondary
 HCD (3.0)
To: Mathias Nyman <mathias.nyman@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_181801_961311_C10BBD2F 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Khuong Dinh <khuong@os.amperecomputing.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, chunfeng.yun@mediatek.com,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hoan Tran <hoan@os.amperecomputing.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 10:19 PM Mathias Nyman
<mathias.nyman@linux.intel.com> wrote:
>
> On 2.5.2019 7.56, Nicolas Boichat wrote:
> > Some XHCI controllers may not have any USB 3.0 port, in this case, it
> > is not useful to create add hcd->shared_hcd, which has 2 main
> > downsides:
> >   - A useless USB 3.0 root hub is created.
> >   - A warning is thrown on boot:
> > hub 2-0:1.0: config failed, hub doesn't have any ports! (err -19)
> >
> > The change is mostly about checking if hcd->shared_hcd is NULL before
> > accessing it. The one special case is in xhci_run, where we need to
> > call xhci_run_finished immediately, if there is no secondary hcd.
>
> To me it looks like this creates an controller starting issue for
> xHC hardware that have both usb2 and usb3 ports.
>
> When we have usb3 ports xhci->shared_hcd is not set yet when xhci_run is called
> the first time. We will end up starting the xHC before properly setting up the secondary hcd.
>
> See further down for details

Thanks Mathias and Chunfeng, I need to test this on platforms that
actually support USB 3.0 (both PCI and MTK), as you both highlighted,
there might be issues.

I'll do that a spin a v2. It might take a while though (this is not a
very critical issue).


> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > ---
> >
> > This is a respin of https://lore.kernel.org/patchwork/patch/863993/,
> > hopefully addressing the comments there. Note that I dropped the change
> > in xhci-plat.c, as I do not have a device to test it, but made a
> > similar change in xhci-mtk.c, in the next patch.
> >
> > (the @apm.com addresses seem to bounce, so I added some
> > @amperecomputing.com instead, if somebody there can track back the
> > original issue, I'm happy to provide a patch for xhci-plat.c as well)
> >
> > drivers/usb/host/xhci-hub.c |  7 ++++--
> >   drivers/usb/host/xhci.c     | 45 +++++++++++++++++++++++++++----------
> >   2 files changed, 38 insertions(+), 14 deletions(-)
> >
>
> ...
>
> > @@ -698,6 +703,10 @@ int xhci_run(struct usb_hcd *hcd)
> >
> >       xhci_debugfs_init(xhci);
> >
> > +     /* There is no secondary HCD, start the host controller immediately. */
> > +     if (!xhci->shared_hcd)
> > +             return xhci_run_finished(xhci);
> > +
>
> PCI xHC controllers with both usb2 and usb3 ports will be started before usb3 parts are properly set up.
>
> xhci_pci_probe()
>    usb_hcd_pci_probe()
>      usb_add_hcd()
>        hcd->driver->start(hcd)  // .start = xhci_run
>          xhci_run()
>            if (!xhci->shared_hcd)  // TRUE as xhci->shared_hcd is not yet set,
>             return xhci_run_finished(xhci)  // starting controller too early here
>    xhci->shared_hcd = usb_create_shared_hcd()   // now xhci->shared_hcd is set.
>
> -Mathias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
