Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA311DF102
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3Fm/WZXrmPJw/CUSck+dUfKwGmAzf6EgL9N0750iWw=; b=GrqGIXYDUv2opt
	dq8QIg+gbllj62stXfEWbtnjfkdrLlNBnaqp9btkGHVbuXFUuiSwk2PGgH4OowmE5cXo5WNcGusey
	5cKMRGrOLJG13H2888TWX6Htd5oZe3atGhWRs30GajHthEMEx+4BpbjYka59IsQSFgHoi01NvVMNH
	H0ln9/S+r6NseZf0LZNi2iW39EA3mQId96kpH425gtKU6X6eiH5e6zgKZWp5OI2jTQ133ulHqOahu
	HEuOjq05vrVf4Mobni9yarJX3kwGzo8CauYfzWFVMWPzMXYSv+r2CBp59fgqQC2gHpEKIPVltysQH
	e6WW2Ok3XhmjmqosvpiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcF7T-0004JR-CN; Fri, 22 May 2020 21:22:19 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcF7E-0004Iu-EX
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:22:05 +0000
Received: by mail-il1-f196.google.com with SMTP id j3so12065988ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fXll0AzrUS0bkYtIGXOwEZ5Oxhk9R9vDypCx0QbqWbc=;
 b=jYtvGMQrX3cOH/jU51td5am7Wc3G6v+87mT2MW83kTOYiXun3tBA0NMYL0QKNWj7sg
 H+QtNOzfDvubpzsgApSwMVEnHhGVNMqGvpADOcmO5BqpU4K6Lus5eOaYSWPCVFmZk2gh
 ImV03h9Ri5Pra1d0avnJRvCavDJ3iYzRKZXC2gzK6JEkB4o2rJCeR+pFYbmagIZ2TFYe
 1Zi/0ujTn/wde2QYRNMuCV9lxpcluhqDefDvfYMuNpVPcOHIt1J9gleJHzHRK4QoRl/x
 3jHNOLRbgm39V9chrDvI6kCNsaSQwFbcQ7lskzJbH5hZjtk0lMhJPpiRFJYkvuOQRj4a
 ZZlw==
X-Gm-Message-State: AOAM531fd88TjR5FxEu58+GH042/JhYwUqa7YYu/EP7l5rwYlRB72rj0
 EPw+1ncZdMP1jtaU4AmJkw4DHyjAk58=
X-Google-Smtp-Source: ABdhPJyZcjkcItft/BxTAPkbp94/SsIw3zH77YYVGH0ZLL5EbDaCBgNstJRBF4Zg4471BsVnEkf/4w==
X-Received: by 2002:a92:1906:: with SMTP id 6mr14988446ilz.144.1590182523038; 
 Fri, 22 May 2020 14:22:03 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com.
 [209.85.166.172])
 by smtp.gmail.com with ESMTPSA id i2sm3122081ion.35.2020.05.22.14.22.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:22:02 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id m6so12109942ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:22:02 -0700 (PDT)
X-Received: by 2002:a05:6e02:f:: with SMTP id
 h15mr14653120ilr.90.1590182521978; 
 Fri, 22 May 2020 14:22:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200518221904.GA22274@embeddedor>
 <202005181529.C0CB448FBB@keescook>
 <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
 <202005202022.588918E61@keescook>
In-Reply-To: <202005202022.588918E61@keescook>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:21:38 -0500
X-Gmail-Original-Message-ID: <CADRPPNTuUUVOHs76JVzELcsyRH_LSi2PGML1t2wob+45LJCXvA@mail.gmail.com>
Message-ID: <CADRPPNTuUUVOHs76JVzELcsyRH_LSi2PGML1t2wob+45LJCXvA@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142204_485579_1B8739CF 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:24 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, May 20, 2020 at 06:52:21PM -0500, Li Yang wrote:
> > On Mon, May 18, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
> > > Hm, looking at this code, I see a few other things that need to be
> > > fixed:
> > >
> > > 1) drivers/tty/serial/ucc_uart.c does not do a be32_to_cpu() conversion
> > >    on the length test (understandably, a little-endian system has never run
> > >    this code since it's ppc specific), but it's still wrong:
> > >
> > >         if (firmware->header.length != fw->size) {
> > >
> > >    compare to the firmware loader:
> > >
> > >         length = be32_to_cpu(hdr->length);
> > >
> > > 2) drivers/soc/fsl/qe/qe.c does not perform bounds checking on the
> > >    per-microcode offsets, so the uploader might send data outside the
> > >    firmware buffer. Perhaps:
> >
> > We do validate the CRC for each microcode, it is unlikely the CRC
> > check can pass if the offset or length is not correct.  But you are
> > probably right that it will be safer to check the boundary and fail
>
> Right, but a malicious firmware file could still match CRC but trick the
> kernel code.
>
> > quicker before we actually start the CRC check.  Will you come up with
> > a formal patch or you want us to deal with it?
>
> It sounds like Gustavo will be sending one, though I don't think either
> of us have the hardware to test it with, so if you could do that part,
> that would be great! :)

That will be great.  I think Zhao Qiang can help with the testing part.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
