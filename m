Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B789AF455
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 04:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpZ24DuGBmACQu6IM9xxbACHNtuds4z/CLzxNEJeQgM=; b=YcYqJJ9MhO9T3t
	BXAAs9W8ywVrIKWZw5wlulj0tDJeLDN26Dk3M7B0Lq68xOenqdOatce5Eptt4p6RbFEnUcyBejcG1
	uFWmBLm6PxdSAM7vI1g6EkWA9BUz9asntxNB4ER3xl+w726sSpn8P17ZhHu2VlgmO5iBmZlwWxhcE
	fJZds2cCYrMyRHG5XwR43kwtZJ2Pffoyni4mUJw8pDSg4k9ANeHDGxb1nNV0xqU1bvbErk82kKIEy
	HpguAGtVb1PyHnvoRvtzcKAP7SlnS+vD8w0KDUVG0aRkMotjT/28Y5nWH48ZMT5+SCpP/FtdGnuM6
	p/9YwJUx3yXAr1ChEdOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7sVB-0002nj-JE; Wed, 11 Sep 2019 02:37:01 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7sUx-0002n2-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 02:36:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id m11so42406350ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 19:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OwUw/A+EuWCuR5fA3FXok+c2wlYUpc7vdIubwfDS7IA=;
 b=bSkmHAeUBk6i8XFvgk1v0d1YocIoUrBFVfhPqlhu3N4fOjDvoD9EKa5F7KTsgSREs2
 o5xzdhi6N4aiRN9s4Q0hBRGZflMQutIV+HiSEwfjTg2AiQOLAdhAs1kI4An2ef3WCNVL
 aXK56vdC4ezdwGGkjS3YSc+HNWAGPyYd/9Ok1CJwvAR/9Q+cUUT8x1hGlC/dGojKguBw
 z0TcOLN8zfDnbs89SyXBu4UAJdL/OwgajnmSsah4twlbSlnf+m2zN8PT5zm+aA0bz1gj
 CJcwOIE3nP1fYa+Fe3Ci3Wyjj0kA0IkcVZMyHWvJE+2rBWhXsFMAbP73H7eIf/V+/JR2
 CIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OwUw/A+EuWCuR5fA3FXok+c2wlYUpc7vdIubwfDS7IA=;
 b=QZYQ2h/jPYo+vd51U2lCa+mRcxQN9HnGkdIdVvUwidOl7RG/iorJbb1+NSb3CaXmrV
 DpGB2LaDJN1vmrw+FYoFyYxDfPJy4GBKOWrwNTfJdl3P2ifGphHHNMNxpW5OJKTmwDx0
 0lotMDy9VE57l9pY2sgUxGTPMg/VUMokfnaQ/VrtaGWYwxivov4BVnMfDxomp0RD+N37
 1YWaSBA6bfyOMwZYqyQy7vPRu1elV6ztJ6cZlPriGtYaGB94NdH01CJpqc9R2NtbzBEe
 LNyRv+xD0xfihRYlIr5xIf+EDpdgHLDUlB29MHRyBQb8YiUaCUv+I22WXIdl6/rA9T4z
 BWZA==
X-Gm-Message-State: APjAAAVsIXkh7ZZb4vTmtZih5xE0VrI2imsxV/lW/pw8wD9exb/RhkRq
 EKe18sEmWZU/6bpbJSAiA3IjcJ4Y3lfGvIEDLiY=
X-Google-Smtp-Source: APXvYqyJ8ndRsk4DRRqFvjYNPP3fbctVHqsRkMdlHOlE1KyA4ZrDzKhq+wPo3x4T57rpNyZnntrLcrIIBHq6s2fubcY=
X-Received: by 2002:a6b:e609:: with SMTP id g9mr13267243ioh.7.1568169406511;
 Tue, 10 Sep 2019 19:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
 <20190909143230.48b1143f@donnerap.cambridge.arm.com>
In-Reply-To: <20190909143230.48b1143f@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 10 Sep 2019 21:36:35 -0500
Message-ID: <CABb+yY3kfLbdSSdQtZUu9HU1YbXSpbQWW85m0sieR7bJJYBaFA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_193647_750164_FF3D98AE 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 8:32 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Fri, 30 Aug 2019 03:12:29 -0500
> Jassi Brar <jassisinghbrar@gmail.com> wrote:
>
> Hi,
>
> > On Fri, Aug 30, 2019 at 3:07 AM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> > > > SMC/HVC mailbox
> > > >
> > > > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > >
> > > > > Hi Jassi,
> > > > >
> > > > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > > > > for the ARM SMC/HVC mailbox
> > > > > >
> > > > > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > > >
> > > > > > > > > +examples:
> > > > > > > > > +  - |
> > > > > > > > > +    sram@910000 {
> > > > > > > > > +      compatible = "mmio-sram";
> > > > > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > > > > +      #address-cells = <1>;
> > > > > > > > > +      #size-cells = <1>;
> > > > > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > > > > +
> > > > > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > > +        reg = <0x0 0x200>;
> > > > > > > > > +      };
> > > > > > > > > +
> > > > > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > > +        reg = <0x200 0x200>;
> > > > > > > > > +      };
> > > > > > > > > +    };
> > > > > > > > > +
> > > > > > > > > +    firmware {
> > > > > > > > > +      smc_mbox: mailbox {
> > > > > > > > > +        #mbox-cells = <1>;
> > > > > > > > > +        compatible = "arm,smc-mbox";
> > > > > > > > > +        method = "smc";
> > > > > > > > > +        arm,num-chans = <0x2>;
> > > > > > > > > +        transports = "mem";
> > > > > > > > > +        /* Optional */
> > > > > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > > > > >
> > > > > > > > SMC/HVC is synchronously(block) running in "secure mode", i.e,
> > > > > > > > there can only be one instance running platform wide. Right?
> > > > > > >
> > > > > > > I think there could be channel for TEE, and channel for Linux.
> > > > > > > For virtualization case, there could be dedicated channel for each VM.
> > > > > > >
> > > > > > I am talking from Linux pov. Functions 0xfe and 0xff above, can't
> > > > > > both be active at the same time, right?
> > > > >
> > > > > If I get your point correctly,
> > > > > On UP, both could not be active. On SMP, tx/rx could be both active,
> > > > > anyway this depends on secure firmware and Linux firmware design.
> > > > >
> > > > > Do you have any suggestions about arm,func-ids here?
> > > > >
> > > > I was thinking if this is just an instruction, why can't each channel be
> > > > represented as a controller, i.e, have exactly one func-id per controller node.
> > > > Define as many controllers as you need channels ?
> > >
> > > I am ok, this could make driver code simpler. Something as below?
> > >
> > >     smc_tx_mbox: tx_mbox {
> > >       #mbox-cells = <0>;
> > >       compatible = "arm,smc-mbox";
> > >       method = "smc";
> > >       transports = "mem";
> > >       arm,func-id = <0xc20000fe>;
> > >     };
> > >
> > >     smc_rx_mbox: rx_mbox {
> > >       #mbox-cells = <0>;
> > >       compatible = "arm,smc-mbox";
> > >       method = "smc";
> > >       transports = "mem";
> > >       arm,func-id = <0xc20000ff>;
> > >     };
> > >
> > >     firmware {
> > >       scmi {
> > >         compatible = "arm,scmi";
> > >         mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
> > >         mbox-names = "tx", "rx";
> > >         shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
> > >       };
> > >     };
> > >
> > Yes, the channel part is good.
> > But I am not convinced by the need to have SCMI specific "transport" mode.
>
> Why would this be SCMI specific and what is the problem with having this property?
> By the very nature of the SMC/HVC call you would expect to also pass parameters in registers.
> However this limits the amount of data you can push, so the option of reverting to a
> memory based payload sounds very reasonable.
>
Of course, it is very legit to pass data via mem and many platforms do
that. But as you note in your next post, the 'transport' doesn't seem
necessary doing what it does in the driver.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
