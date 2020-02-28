Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929501741B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 22:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05ujzKKdqKsEGxjccMd39/szFNQVc/xuaN+i5OeeeyU=; b=ccZtuPW+9qkZ+i
	Edp/vkapW1WOwMUD2sX6S46MSkfFBy/JMBF+bWkFwDJWsPR8dOx2YSBENfEr1PycdE/GfosLQ0Q7u
	HX2V/OawYR1BqkjBgi8F4E0IVM1LEgU6nlWSGLfy2ILEs6bwt67SlownC1zr2/XvqJzJTSMmunWLT
	gq2KKDsmdIuN3q7fd7JZnnHEq5fEO8tOE5cw1WwdXk8qHCwSHga2qZgwnwwN+HcRx7OQ6W92ZPVBU
	krz2WJQ4e9Y/Fun4WeWGVY7AHpHxOjKLxHafJ7c45GNh5HdXB/q8Yyo2YCiXmLTgqdtCx71aJ7ltk
	oXCZnuVF6HQwKt3u15dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7naL-0004EX-Is; Fri, 28 Feb 2020 21:54:17 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7na8-0004Do-13
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 21:54:05 +0000
Received: by mail-oi1-f196.google.com with SMTP id r16so4323790oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 13:54:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pDVNEc+emqEYhHMEI0BkQh8VuJ0zUAhAe+A2963SxX0=;
 b=bJ5nELNaR1X98HOjZP33dnIFd4DALiY5jCO1U2aPZgj4KRQYLd+TRB6jjiyNC8UlFO
 d9VPGCd2OYaEKAR7LmMEHEOwehamCdHn3hWWjqcldMai5cfrtW++A4A+rmSqbKPoeMjU
 68ThlGFZoE4Lo6vzWp1g/EQ/9vZk3p0YuKI24PJtgqZqGSvvSH5yooqgjGZ6lGGePfhR
 hHdRPsALam6b9/0xDSH6CBS8+/ErSt0573t5+ezrJPQ9Cj7WvMtK/qN8nkynLTRDv9UV
 q/f7sgSs2Y3ga4MBTCq/oZe5oWb9ylkQ4yaQoRCD0jRYMuBAZsuGRPxBBQgVg2FUWZjM
 Yibg==
X-Gm-Message-State: APjAAAVDk0u5gTXQKOtDqFOUbzhvn0YDl0C+Q1vYUG7sMUQvhQRF3eCY
 Oo8QfPNJ8Y2844pWxVzMUuBWgrgUQ88=
X-Google-Smtp-Source: APXvYqwwpTwFsMwnAzCVDa6pMlt7xQTC0ha2LBtfcyxSF11wSRb9P/kNQ0hTSC0OIfHQ9HoZXp2Vmw==
X-Received: by 2002:a05:6808:aac:: with SMTP id
 r12mr4652060oij.59.1582926840364; 
 Fri, 28 Feb 2020 13:54:00 -0800 (PST)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com.
 [209.85.210.48])
 by smtp.gmail.com with ESMTPSA id s83sm3531917oif.33.2020.02.28.13.53.59
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 13:53:59 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id h9so3992617otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 13:53:59 -0800 (PST)
X-Received: by 2002:a05:6830:1c8:: with SMTP id
 r8mr5033412ota.63.1582926839216; 
 Fri, 28 Feb 2020 13:53:59 -0800 (PST)
MIME-Version: 1.0
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-4-michael@walle.cc>
 <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
 <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
 <CAL_JsqKMNFFG5H4gPQwRdcTpfHynqZWo2A2db-oL7EmvTNqNkQ@mail.gmail.com>
 <639a1df72fbeda77436b282a99f17995@walle.cc>
 <24b9a657a65f75a4f4f10baa17561451@walle.cc>
In-Reply-To: <24b9a657a65f75a4f4f10baa17561451@walle.cc>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 28 Feb 2020 15:53:47 -0600
X-Gmail-Original-Message-ID: <CADRPPNQong1bD83ncHTj1OHip9LEV9PFOnPN3Jo00aZT056eiw@mail.gmail.com>
Message-ID: <CADRPPNQong1bD83ncHTj1OHip9LEV9PFOnPN3Jo00aZT056eiw@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_135404_070129_28ED9843 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 3:51 PM Michael Walle <michael@walle.cc> wrote:
>
> Am 2020-02-28 12:46, schrieb Michael Walle:
> > Hi Rob, Hi Leo,
> >
> > Am 2020-02-28 00:03, schrieb Rob Herring:
> >> On Thu, Feb 27, 2020 at 4:49 PM Li Yang <leoyang.li@nxp.com> wrote:
> >>>
> >>> On Thu, Feb 27, 2020 at 4:35 PM Rob Herring <robh+dt@kernel.org>
> >>> wrote:
> >>> >
> >>> > On Fri, Feb 21, 2020 at 11:48 AM Michael Walle <michael@walle.cc> wrote:
> >>> > >
> >>> > > The DMA channel might not be available at the first probe time. This is
> >>> > > esp. the case if the DMA controller has an IOMMU mapping.
> >>> > >
> >>> > > Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
> >>> > > reorder the code a bit, so that we don't prepare the whole UART just to
> >>> > > determine that the DMA channel is not ready yet and we have to undo all
> >>> > > the stuff. Try to map the DMA channels earlier.
> >>> >
> >>> > Changing this means you never probe successfully if you boot a kernel
> >>> > with the DMA driver disabled (or it's IOMMU disabled). Some other
> >>> > drivers request DMA in open() and can work either way.
> >
> > Oh, I see.
> >
> >>> We got this exact issue previously with another driver.  When the
> >
> > What driver is it? I've been working on the i2c-mxs.c driver which has
>
> whoops, i2c-imx.c, not i2c-mxs.c

Ya.  Same one.  I have added CONFIG_FSL_EDMA into the arm64/defconfig
as a workaround.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
