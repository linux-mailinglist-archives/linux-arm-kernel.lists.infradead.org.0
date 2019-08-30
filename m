Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E264DA30E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwhZOUg1x7ldjAjH16ExURwsuMq7y6AUuVNOTAvogjg=; b=AniDqTlB2Wvkhk
	NtUxXBUin0zPgtFFelrMxovJ3JC0t38RyGVSIyL6M3HqyYJ3TWTvQNQc5hbcMPp07LI0U6p3zTjV5
	TOhGckiSM9U+ey8IBd6G+J8aszCEjISTUxOC+u8+lMnTr/sa2Sl3eAxTK7irp0pUxl1QAxM1SnCQK
	6ICInuSPd6kjAzRlXvm9SYFusOSIZwm/Gia4Mi1MLcRpAB1tobmgfmZ+827HicE7Khyi6VtmiV8Pi
	ZcllGBvGsFLLps2apQliZWhPap0j4kbc9vuerufBkPuTJq89kBjqPdUFy11z6skSP9ipkwZlZJGa0
	LDYNatgVH7Ak+KoE8j4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bEX-0002jm-Fs; Fri, 30 Aug 2019 07:22:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bE8-0002hR-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:21:45 +0000
Received: by mail-io1-xd44.google.com with SMTP id n197so10110935iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 00:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AlhFgQeL/mYiQX6p6gp6sv+Yu6hpMLWLNkdRBnpDQiA=;
 b=QrowYFp5jRyggiMNrPIzMypbBgTVm25Yb91NkmJgbZPFHT3+eqflmDIpgaXs9Ja+Sb
 0SaId/XviBrbPr9ra3Q1ryqGt923GWhcBPA2YkrkoACGObI7CLSF7nwtayBSVvyivIGi
 Ij+pCG1oX+tSO4KL2tbwP1WxwVaDsGcf0qzgP7R8e/B4KHVlIPD4AN8aXaON1ppV47HD
 cxDxkQbMKFsYy4aqhwvzL33/Mb3wgkj/Tl4tZ7lAZXVxq5d58qUyEQZlamIfnAG/JlhK
 3Y7noHEHERn2uzFp8REzI8xn9s0oPLeM0+gRB/PtFppOdAeb4rsjxbLP3Tlvel4v+VaS
 HYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AlhFgQeL/mYiQX6p6gp6sv+Yu6hpMLWLNkdRBnpDQiA=;
 b=TNT6hAuaFlKTz75qaCnH9lMkUjwKHvkdbN4PHgpsA6fmECyJyhCNllq/7hf5XZALiW
 VWtltZMN9p0rFG3ohq7/Z4XfyYevCxcA2r+wLRL3DyRerQ6xkj1ixCx0dNU7MECXYBPH
 ZGkEzaYTEQbLZ/Gz9/YcczmBY6Qj/PT2bsB36DkO+AOqJQhTsqz4DR3TCRT3rnl7MF0P
 qFOPw+/fjzjwlnxAJdK5mXJldigkF83PTH03L65bqOqikgFv3G5+FvVgMjo0nelbe5wQ
 2+GntCGfsjMcErxkp8yKZXzoojnM+LKPCK+iSklIddD+lOQxwhijV5nPdI4rZDHw9L5f
 KjNw==
X-Gm-Message-State: APjAAAXUFSIt30wSWWKnQHB6wW1wmXvhykF+yJoRhyzN5NmCS4rlz72w
 qRqZ+mwTHCmPIyAodNWe0ZiMKx+0dhD4Z4C1lcE=
X-Google-Smtp-Source: APXvYqxdEUCSeILyh2pFmXq4fHzi6CcocAFis6vG7eX8iNXSYZsq2LtQPx3otlCh1YNNK3ymTfJiHprCHskaedRe/kE=
X-Received: by 2002:a5d:9aca:: with SMTP id x10mr15481830ion.11.1567149702961; 
 Fri, 30 Aug 2019 00:21:42 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 30 Aug 2019 02:21:32 -0500
Message-ID: <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_002144_313898_AA42798E 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:

> > > +examples:
> > > +  - |
> > > +    sram@910000 {
> > > +      compatible = "mmio-sram";
> > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > +      #address-cells = <1>;
> > > +      #size-cells = <1>;
> > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > +
> > > +      cpu_scp_lpri: scp-shmem@0 {
> > > +        compatible = "arm,scmi-shmem";
> > > +        reg = <0x0 0x200>;
> > > +      };
> > > +
> > > +      cpu_scp_hpri: scp-shmem@200 {
> > > +        compatible = "arm,scmi-shmem";
> > > +        reg = <0x200 0x200>;
> > > +      };
> > > +    };
> > > +
> > > +    firmware {
> > > +      smc_mbox: mailbox {
> > > +        #mbox-cells = <1>;
> > > +        compatible = "arm,smc-mbox";
> > > +        method = "smc";
> > > +        arm,num-chans = <0x2>;
> > > +        transports = "mem";
> > > +        /* Optional */
> > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > >
> > SMC/HVC is synchronously(block) running in "secure mode", i.e, there can
> > only be one instance running platform wide. Right?
>
> I think there could be channel for TEE, and channel for Linux.
> For virtualization case, there could be dedicated channel for each VM.
>
I am talking from Linux pov. Functions 0xfe and 0xff above, can't both
be active at the same time, right?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
