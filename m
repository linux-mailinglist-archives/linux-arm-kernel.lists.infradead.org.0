Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE01EA31ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQ7A4iS4zzHvMzHd43UtcP+oT3HIUhFzlzNqyOjQO6I=; b=UHypiWCV44fxYq
	VxGeXYndLgrc/L4FzCKS65tD0L7e9O/Nfx/dEWqxpUMdgn9hoM7hvDoIgKKH7fx5DBl42klHg3xhc
	RcwLoDhkBxDwOXGgHFkLWodCLUG13quFSnNOLrZ7L0CIahyV3kLBc1CqGvMWCVWOuxnFmJRKCrIWq
	5mSRTTMmyNt+tg9BKBS14VYZ5SFpSFGndn0vB1TbmkDJJN7Ciz+3kNovMkOUAa1QvjJ1ua+1OO0cN
	am8kiozKnDeMiyCKT/L5GTOxAuIYAZp0DYpLTPBMB9I7DGkAjXwtn9dRMG2SrWzjNs8A9YXuWQWwD
	g82n1Gg6Qi7cRThc0B3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3c1c-0002U8-4N; Fri, 30 Aug 2019 08:12:52 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3c1R-0002TL-R0
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:12:43 +0000
Received: by mail-io1-xd41.google.com with SMTP id j5so12286081ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 01:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NMrzUZakuedIUFLQ4qutVDpTqggQszwfrIEmL3MWamg=;
 b=Y3//Wl0sWaMJ6wZfWWTEwNj1Ox+8VsXUOD6+9/kw3jfi+mNkIE29xffetrvEfzI1Wq
 d3OnmMYj0mkdydFyG1GuZ4H2/jaP945KeSzyBAadRbsOU3qESLZgfEzG7NO4r+wLRnKn
 kTQg0qnEqIsZBSm5zKfvMw2jHU4+GtDYCEq6Y0y24huz5Z6Eu1wEOcO17KhzMerfQcxC
 i8isXfCddnFPsZcwXumtvx96t1lUFOiLWiywIij/V2wDIhO0wOWPisX1w0H/MTjopICW
 e25EVQIL9nLsmF8Yn8IdQi12o+lTtDTsa0hJcvyFleCOylBWCjxeaJen7T+LWmC/uXlO
 PiIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NMrzUZakuedIUFLQ4qutVDpTqggQszwfrIEmL3MWamg=;
 b=N6Km/YcqBEUk6jSUOdnNzOseETdz4ogXLbdedzsOciWjjwBwyW4kX/J4x2pKrfq95V
 ntufwCjTWnNOHTY+zwNr1skrHb3GqA/vTpMzay1tEB7VSU7BVFf7aoN3Kr+xfYiTwwcM
 xXEM1EY5WEBwBGC7dTw0QPkehoSKgwZcidMkOrRxT5re5ADcVFAN5euSTmxrzDcTyZZB
 aaZwvCER86R3+pTocX/NTWywgsLoHu/z9iCzM/ZeakYJiCknawUx5W7yRWpd7CFNSGLG
 YT7J0mA46FqqNJyzeB5zFXv0WMQDi8omiKkBBV59UQ1cIltFGVAZFRrkq01gwatuNwG+
 1tvQ==
X-Gm-Message-State: APjAAAUJHtiQ4k1b9cv4xIsVqKrWsuNPu60dQgP60qLdZHeKGcUtFh8U
 mRs36jt0gJX4brBeaaV/v0aAYQ20t8o/qjgmfBY=
X-Google-Smtp-Source: APXvYqzRkLgg62E5VqPsCQHPop+fShn/+BbHSzlhnrnA2SZOVRr9hhh4RYBbl4DSGWx+IK21jAy1mSaPlMkwqpKsgMI=
X-Received: by 2002:a5e:8c0a:: with SMTP id n10mr12946485ioj.69.1567152760530; 
 Fri, 30 Aug 2019 01:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 30 Aug 2019 03:12:29 -0500
Message-ID: <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_011241_907638_6A44F6D8 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 3:07 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> > SMC/HVC mailbox
> >
> > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > Hi Jassi,
> > >
> > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > > for the ARM SMC/HVC mailbox
> > > >
> > > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > >
> > > > > > > +examples:
> > > > > > > +  - |
> > > > > > > +    sram@910000 {
> > > > > > > +      compatible = "mmio-sram";
> > > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > > +      #address-cells = <1>;
> > > > > > > +      #size-cells = <1>;
> > > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > > +
> > > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > +        reg = <0x0 0x200>;
> > > > > > > +      };
> > > > > > > +
> > > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > +        reg = <0x200 0x200>;
> > > > > > > +      };
> > > > > > > +    };
> > > > > > > +
> > > > > > > +    firmware {
> > > > > > > +      smc_mbox: mailbox {
> > > > > > > +        #mbox-cells = <1>;
> > > > > > > +        compatible = "arm,smc-mbox";
> > > > > > > +        method = "smc";
> > > > > > > +        arm,num-chans = <0x2>;
> > > > > > > +        transports = "mem";
> > > > > > > +        /* Optional */
> > > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > > >
> > > > > > SMC/HVC is synchronously(block) running in "secure mode", i.e,
> > > > > > there can only be one instance running platform wide. Right?
> > > > >
> > > > > I think there could be channel for TEE, and channel for Linux.
> > > > > For virtualization case, there could be dedicated channel for each VM.
> > > > >
> > > > I am talking from Linux pov. Functions 0xfe and 0xff above, can't
> > > > both be active at the same time, right?
> > >
> > > If I get your point correctly,
> > > On UP, both could not be active. On SMP, tx/rx could be both active,
> > > anyway this depends on secure firmware and Linux firmware design.
> > >
> > > Do you have any suggestions about arm,func-ids here?
> > >
> > I was thinking if this is just an instruction, why can't each channel be
> > represented as a controller, i.e, have exactly one func-id per controller node.
> > Define as many controllers as you need channels ?
>
> I am ok, this could make driver code simpler. Something as below?
>
>     smc_tx_mbox: tx_mbox {
>       #mbox-cells = <0>;
>       compatible = "arm,smc-mbox";
>       method = "smc";
>       transports = "mem";
>       arm,func-id = <0xc20000fe>;
>     };
>
>     smc_rx_mbox: rx_mbox {
>       #mbox-cells = <0>;
>       compatible = "arm,smc-mbox";
>       method = "smc";
>       transports = "mem";
>       arm,func-id = <0xc20000ff>;
>     };
>
>     firmware {
>       scmi {
>         compatible = "arm,scmi";
>         mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
>         mbox-names = "tx", "rx";
>         shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
>       };
>     };
>
Yes, the channel part is good.
But I am not convinced by the need to have SCMI specific "transport" mode.

thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
