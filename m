Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF691A319E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9Ch9o0/S7DtgDyq0w2raW1CncD2c9Xrm3Mm2E4OpGY=; b=E9NhIUKnJOmUpF
	1taUu4jsc3zzRHWGdmQhHM2cFYF49Ku58JpEpzWGyXbnxUfMSKXd0SXv+tYlb69mSjVooDH1uJN1s
	O5VpbbYnnmcWokXkwW/7vcbHyGy5+7WJD1gymJqFGkVDVwu/fdldQgz5KoF/r5KFbJ/REggSkDOun
	SReLsnYrHK+8ZdPQbYXhkVIvfJ4lUlANYZXqHSgiTelEg9Nk3RHJ5+p3ifwSD4OeAg7Ddb5oRDnEG
	5q++azFy9rZTccDydDamNaLqcDVfN17znMsRLtE3JP5IEh87uVKY1na/5zFQqCGfTqapDEfM+sBBk
	XkIamKiCUFpNs4Attv/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3biY-0001c6-Tp; Fri, 30 Aug 2019 07:53:10 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3biG-0001bD-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:52:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id d25so9713003iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 00:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=seOfZY8E9V8LAq9iFiH8rIsovSOi3J9Kn5HK9Pe9dT0=;
 b=pi0qaK8xrhzeSNZR1sW1g2NxUcg2TWC1pxlDvOLT4BraWo0mC2LKPARENHylbYQK00
 CmHIL0JyMyL4qblKksLvduPxOebrXQ5/2IV/K4AxFD8sCPx0HknjGu9kGpuNcjSTaWn+
 WwjtLXGhAmgqbLwu5TcPZhY6S4l2ivV2iSI+rFwrUPn4/gjG588atx/SJqxUwKfScSlT
 r6s2N2Ym4rOOCfDW95S2/ooqezcP1HTAC7QW2ph52eeKlojjDSemmqYxyG91POrwxsFh
 gO7P96Jazx26FzuSOZP7IUnsCDqsTS67AMc94Ur8MyEH4qw7SSQuabf7PbmpVpm+yaLW
 bKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=seOfZY8E9V8LAq9iFiH8rIsovSOi3J9Kn5HK9Pe9dT0=;
 b=kz25b1OAw3/0PV+M4aNTyMNrVgFXXMo2PtkhmcbGA8Of+lMolK6oefmdpzMwH8sUmy
 jFuuWDwuyJq0gL0/939EtBIvvpwHIug0dLvutYA3xuhBjaheGEBz5rB2byp8f5Tc4FI8
 7kVoHTxADgjG5MwgL9Ws2GDKshttFeaxndFw/hzbBfRpEvmaXQ4bqyR5BVVV+KwaCUEV
 QSH+sUX3t/cGfLnMUhY30BAjjzhfrEi6TaJZK3FubDF/aERMgDHwAEE0H4z2ZTGMHzmX
 90MhOOUvDGiBbI7JWDShS7vVz7p5IXxJp7LMqCHSzOo5sd3epm/GpLqCVHBIO4V+6rTT
 b1tw==
X-Gm-Message-State: APjAAAWjokThWkCD93b8AYMjqbbhhzW/LZO4K9UK74M5OgZedk7pcWEb
 ZEsXe3FlUp+yaMiYEfS0XRdGOz8wltXbY1eB7CCLvQ==
X-Google-Smtp-Source: APXvYqyK3/xKO/LsIQrSgVRrAhBUX11IoBGyPGLJu5Azl4D58IpKNhO0XKvks/BAOd9dtKtu2lAAlWNaXpr9Ijnz6UM=
X-Received: by 2002:a5e:8c0a:: with SMTP id n10mr12862989ioj.69.1567151571826; 
 Fri, 30 Aug 2019 00:52:51 -0700 (PDT)
MIME-Version: 1.0
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 30 Aug 2019 02:52:40 -0500
Message-ID: <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_005252_633663_1D6D480C 
X-CRM114-Status: GOOD (  15.08  )
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

On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Jassi,
>
> > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> > SMC/HVC mailbox
> >
> > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > > > > +examples:
> > > > > +  - |
> > > > > +    sram@910000 {
> > > > > +      compatible = "mmio-sram";
> > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > +      #address-cells = <1>;
> > > > > +      #size-cells = <1>;
> > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > +
> > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > +        compatible = "arm,scmi-shmem";
> > > > > +        reg = <0x0 0x200>;
> > > > > +      };
> > > > > +
> > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > +        compatible = "arm,scmi-shmem";
> > > > > +        reg = <0x200 0x200>;
> > > > > +      };
> > > > > +    };
> > > > > +
> > > > > +    firmware {
> > > > > +      smc_mbox: mailbox {
> > > > > +        #mbox-cells = <1>;
> > > > > +        compatible = "arm,smc-mbox";
> > > > > +        method = "smc";
> > > > > +        arm,num-chans = <0x2>;
> > > > > +        transports = "mem";
> > > > > +        /* Optional */
> > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > >
> > > > SMC/HVC is synchronously(block) running in "secure mode", i.e, there
> > > > can only be one instance running platform wide. Right?
> > >
> > > I think there could be channel for TEE, and channel for Linux.
> > > For virtualization case, there could be dedicated channel for each VM.
> > >
> > I am talking from Linux pov. Functions 0xfe and 0xff above, can't both be
> > active at the same time, right?
>
> If I get your point correctly,
> On UP, both could not be active. On SMP, tx/rx could be both active, anyway
> this depends on secure firmware and Linux firmware design.
>
> Do you have any suggestions about arm,func-ids here?
>
I was thinking if this is just an instruction, why can't each channel
be represented as a controller, i.e, have exactly one func-id per
controller node. Define as many controllers as you need channels ?

-j

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
