Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AF3AB8F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzmwsPAZFz8i49xeiPOytobE8lEB3fHBJdv8Fd/xZao=; b=lhCW8RH6VWTkgQ
	sIKJ2bnCfrQcxu+D0/1ZD65tN1fWe4tAKmmfX8TWGz3Q99/FFtFvWjzA9oziOSle0jfhFmbf/GCkD
	dB153HxFOrYtIbvsnxQGJIfegpk3ydPm8kK2YmEMRoJIX5DKS2xGeb34wleW2au+P+AhjVA85Km8O
	+Zpf7UXdHs6vt1fn6hxZpl4vr/QKUNViDFFObqhXCgqfekAa/5p+/KWKL+rRkrd4sAFR6Yk0fuaWG
	xzyMzlQ9DIIOfp6Dt4LklziYVzYd3FZSpu83GRjgCxsUG0Du7tu8vGk95jANkWqH8PTq2ag2o+4ka
	euDfo9tg2XSxl5fEDGYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6E0l-0008VM-8l; Fri, 06 Sep 2019 13:10:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E0c-0008V0-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:10:40 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7B2720578
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 13:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567775438;
 bh=fsvy9vB8q4xTi27VCFoIvbbPemsnqqmabbXkyz4cBfE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GVwE5+RV6T7Gk0Oq0NkKxThLbuJJSjnvI2Fitw6yXzMf7D4uZ6OIeVDHXzmCK5XnV
 bq+EA39B9jr5AId38ttNcjiDLYKzPER1qO2wSA3U2M1i/WXGu0VKr0Dx5t2AOBb/oT
 SaVnWO//bsZKavhY81nypz6K1yXB1rEYJovkI/jA=
Received: by mail-qk1-f171.google.com with SMTP id x5so5528799qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 06:10:37 -0700 (PDT)
X-Gm-Message-State: APjAAAUx1si9mvWHFgQvKgH4fAj0JNGvjPjQ6k8Tv2Timac8zDYHlN2O
 AjkyEx4DMx88y97Q1Cn4P0sH28JWG3p9e8eJRw==
X-Google-Smtp-Source: APXvYqzQsKhFz6B/Tax9+gdiWg6xhgwxLCJHR+sGwYgZteGSTYU6RIcYIc2kuLGw0yP+EpjEMjHw0xD2+f0cwiairNk=
X-Received: by 2002:a37:682:: with SMTP id 124mr8391679qkg.393.1567775437120; 
 Fri, 06 Sep 2019 06:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
 <20190823125618.8133-5-peter.ujfalusi@ti.com>
 <20190829224728.GA1198@bogus> <a4c5688b-cbeb-5059-5351-11d9ae1b25d5@ti.com>
 <15d5dc03-d6ca-f438-f37a-e71298abda95@ti.com>
In-Reply-To: <15d5dc03-d6ca-f438-f37a-e71298abda95@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Sep 2019 14:10:25 +0100
X-Gmail-Original-Message-ID: <CAL_JsqJ6R9X93vVM6A6H5yDFnQk5T7ym126TRb140m5COD3nwg@mail.gmail.com>
Message-ID: <CAL_JsqJ6R9X93vVM6A6H5yDFnQk5T7ym126TRb140m5COD3nwg@mail.gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: dma: ti-edma: Add option for reserved
 channel ranges
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_061038_908792_969D5574 
X-CRM114-Status: GOOD (  28.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 11:19 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> Hi Rob,
>
> On 30/08/2019 8.37, Peter Ujfalusi wrote:
> > Rob,
> >
> > On 30/08/2019 1.47, Rob Herring wrote:
> >> On Fri, Aug 23, 2019 at 03:56:17PM +0300, Peter Ujfalusi wrote:
> >>> Similarly to paRAM slots, channels can be used by other cores.
> >>>
> >>> Add optional property to configure the reserved channel ranges.
> >>>
> >>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> >>> ---
> >>>  Documentation/devicetree/bindings/dma/ti-edma.txt | 5 +++++
> >>>  1 file changed, 5 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/dma/ti-edma.txt b/Documentation/devicetree/bindings/dma/ti-edma.txt
> >>> index 4bbc94d829c8..1198682ada99 100644
> >>> --- a/Documentation/devicetree/bindings/dma/ti-edma.txt
> >>> +++ b/Documentation/devicetree/bindings/dma/ti-edma.txt
> >>> @@ -42,6 +42,9 @@ Optional properties:
> >>>  - ti,edma-reserved-slot-ranges: PaRAM slot ranges which should not be used by
> >>>             the driver, they are allocated to be used by for example the
> >>>             DSP. See example.
> >>> +- ti,edma-reserved-chan-ranges: channel ranges which should not be used by
> >>> +           the driver, they are allocated to be used by for example the
> >>> +           DSP. See example.
> >>
> >> Based on the other thread, I think extending dma-channel-mask to a
> >> uint32-array makes sense here.
> >
> > Yes, that is the reason I have asked on that and I'm in progress of
> > converting the edma driver to use the dma-channel-mask.
> > Just need to do some shuffling in the driver to get the mask in a form
> > usable by the driver.
> >
> > I'll send an updated series early next week.
>
> How should the dma-channel-mask uint31-array should be documented and used?
>
> Basically some EDMA have 32, some 64 channels. This is fine.
> Let's say I want to mask out channel 0-4 and 24-27
>
> This would look like in case of EDMA with 32 channels:
> &edma {
>         /* channel 0-4 and 24-27 is not to be used */
>         dma-channel-mask = <0xf0fffff0>;
> };
>
> How this should look like in case when I have 64 channels?
> &edma {
>         /* channel 0-4 and 24-27 is not to be used */
>         dma-channel-mask = <0xf0fffff0>, <0xffffffff>;
> };
>
> When I read the u32s then
> chan_mask[0] is for channel 0-31 (LSB is channel 0)
> chan_maks[1] is for channel 32-63 (LSB is channel 32)
>
> Or:
> &edma {
>         /* channel 0-4 and 24-27 is not to be used */
>         dma-channel-mask = <0xffffffff>, <0xf0fffff0>;
> };
>
> chan_maks[0] is for channel 32-63 (LSB is channel 32)
> chan_mask[1] is for channel 0-31 (LSB is channel 0)
>
> Do you have pointer on already established notion on how to document and
> handle this?

As far as word ordering, I guess you can do whatever order you want.
MSB first would make the most sense if this was only going to be up to
64-bit. But given it could be 96, 128, ... bits, probably the least
significant word first makes sense and is easier to parse for a
variable length.

The binding schema can be something like this:

items:
  - description: Mask of channels 0-31
  - description: Mask of channels 32-63

The length is implied by the number of list items.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
