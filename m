Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF40172BDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipOS0jsvAbF8haZGqvLF62M45sVlEKHXcug/arHI9Qs=; b=EFNrych6yh8GH3
	esh8T52IrSixGneug7u/ow/nSWaALUBZJG3FQEutByN5WvpVLOI9WEw8bmX0s/gSn93IIw5Wf14Cr
	BQRXTz/pEUQ/XmnxRRDwZ4m0x6BDykVY8Y3NJFfk/1CBEXlb1FkgFy4OO2J83QOiSWLRZqBbs6EBF
	hLPHV4SaHjmSLZPNrCAMaawHv/4U7TXD/bH9p64wlSDdEWCMUBE+d73EjqfZ9Of08gso2KQRLawOT
	JH5QXWzndWrf0cF6BLMnpMvLcmE4VaUDoJdDM0ockmbql7dvzxuBnvCpM3IeKSJrUuY1K93Tmo7Q6
	bwWcr9dbAMvRp7dPtblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SCQ-0005qE-2W; Thu, 27 Feb 2020 23:04:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SCB-0005p4-3I
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:03:56 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91AE0246A2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 23:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582844634;
 bh=ujUq05vTwgp4zfCZVaURWqd3tAcJ6/JW0KDXhNHLdnM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oEH/uiuZrTAbwGQzcL4TRZqtyLXCPzURXZ7AHmOcxlmfYjQxq8rjuEdMVllcYhdBA
 r7vHN9Gx+mjeyXpcJvnCi/j/XpUPPTDYDDhBIhlPMPTNLSwWLfJpKrxBmJMnUuslRN
 E9StyYr4S9lGrNRtvAcH59YGWPIVrmUjaPMsrTaM=
Received: by mail-qk1-f169.google.com with SMTP id z19so1234168qkj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:03:54 -0800 (PST)
X-Gm-Message-State: APjAAAXNNRSu0gE0ywPM4bbiPxSTiIqCYCAEM328Aucthk+vtIbVMyAW
 r8JnvhTyWK2qu5dWjuHWuo22xBJ3nS0JuZWBeQ==
X-Google-Smtp-Source: APXvYqw/laX46RozAEZMxyINIQG8FYK9/JT0+//1/HbN8AUu5jHbA+IM4E9RvA5ctlGhNnas4Rvy8UDtCHXj2DZ9xA4=
X-Received: by 2002:a05:620a:12a3:: with SMTP id
 x3mr1989416qki.254.1582844633702; 
 Thu, 27 Feb 2020 15:03:53 -0800 (PST)
MIME-Version: 1.0
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-4-michael@walle.cc>
 <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
 <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
In-Reply-To: <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Feb 2020 17:03:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKMNFFG5H4gPQwRdcTpfHynqZWo2A2db-oL7EmvTNqNkQ@mail.gmail.com>
Message-ID: <CAL_JsqKMNFFG5H4gPQwRdcTpfHynqZWo2A2db-oL7EmvTNqNkQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
To: Li Yang <leoyang.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150355_158255_127751D2 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Walle <michael@walle.cc>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 4:49 PM Li Yang <leoyang.li@nxp.com> wrote:
>
> On Thu, Feb 27, 2020 at 4:35 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Feb 21, 2020 at 11:48 AM Michael Walle <michael@walle.cc> wrote:
> > >
> > > The DMA channel might not be available at the first probe time. This is
> > > esp. the case if the DMA controller has an IOMMU mapping.
> > >
> > > Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
> > > reorder the code a bit, so that we don't prepare the whole UART just to
> > > determine that the DMA channel is not ready yet and we have to undo all
> > > the stuff. Try to map the DMA channels earlier.
> >
> > Changing this means you never probe successfully if you boot a kernel
> > with the DMA driver disabled (or it's IOMMU disabled). Some other
> > drivers request DMA in open() and can work either way.
>
> We got this exact issue previously with another driver.  When the
> required DMA driver is disabled, the DMA framework cannot figure out
> this situation and keeps returning EPROBE_DEFER.  I'm wondering if we
> should update the DMA framework to use your deferred probe timeout
> mechanism.  Is it still only used for debug purpose?

It's undergoing some rework ATM to not just be for debug. However,
it's not really going to help you if you care about the console
because waiting for the timeout will be too late to register the
console.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
