Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBCEF3A86
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 22:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SbO9Ue1U5TP4lrGcz81o+cE+cx0hmTop1rYg5JfN/M=; b=djhlf421yS+VX6
	m/ZwTaVtx8SJ/eqqB7K7YvscOW8/jyVbTkqt7B1b5dX3irSCMCQeiWkwCnixzYl03oNEd/HCSScWU
	s+LyCzXihFLMx6xdlCfZJyBGtgjYNFyINGxwTL5o4Clg5bMeVLvZnijuaSJMcRWrGD9id49dpudB8
	xBPx/4hgStGi22pGkTiKL4v5axSyZHqsxuNX1YtEryrTRNR8Htm+205JLNCR+bD7vhy8InAImi1Gq
	VXiVy6U8ALoq37149v+QxM0z0wMaUYo7p/LEmtbLXBP6lqXkeIsMPfz6LInPxN53TFvx8Tmo3G33u
	i1k7S/+u1ugbZfgCVTQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpKj-0000jP-5I; Thu, 07 Nov 2019 21:28:49 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpKc-0000in-20
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 21:28:43 +0000
Received: by mail-il1-x142.google.com with SMTP id q1so2495622ile.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 13:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rEMu6Z7VX863Rke2ojvhLssySQQ5z0bSXubNYEOHlJU=;
 b=QxOTVPwDWM16plTYel4mnlBlwgHtfGmXJCoUkualToF7lFhIFLWrWgnzShSwzXMJji
 wLbssLv3wE35ENpwLYwzl890KDa2yqtlA2UbzZmY4/vMmqOJwW7TtGI9s3/c2ycnWMfX
 HiQVW+OsJcq96qC0lt5PYklfb1OQomvKEw29AI2T70b0+6PDyBQIdHH/Bp74gpISzoF4
 2rnjn/rYOalDRZgVkG71jC1Pq6FjvcPX45BQW19BMS+ECzCta7WHF19YnQX2hIcv8QnB
 Wuy2VVK7kD1qt2niwuOYrwxpZOiT0qGHcuMaZ/vtnddLqOAleKYA4/1xEpLB2i2HlAYG
 NsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rEMu6Z7VX863Rke2ojvhLssySQQ5z0bSXubNYEOHlJU=;
 b=pdHgIlCL0T10ijpgplr6WcUvD3VxwnyfqZA2R96Ae4uXqEDRRXidNjhginQz0fsRkD
 +ZL6R01wyC4egwRbFEnlgQp6cjXHPHYyrYwB1ejlMVMxL8QlU5vKz3mPVxHOh7wXGn4C
 FyLK6Ht18xvdqchbR72WzHqMscO0CAa80QQ3tr5KEUnnIyMJh2UeFtA86luwdWDSLdOV
 0bKc0hMNULvq2UVPfpgGacBIWrStVpfti4UERgmk0SA/2tuLVI8yi3rEU67togHxKUV+
 /1WHWMgMP2Z4KGwCgXWETXG/BWZS//dob2icOUisS/b2NSyQs7jdGASJUC7XV6AQOVr0
 Jx8A==
X-Gm-Message-State: APjAAAUnRNxUIxZWZNLlcnhghtOyZTPWCay6h3lfh+PkSj8Hado+vSBB
 GJrHPYd90BLIgY8Q5U0JlmNLY9VZVVYqIEvVvIw=
X-Google-Smtp-Source: APXvYqxqXdC5wMzXu9l7IjmuOgyYDDYV+cCJ9yQ93G9C6+FCBQlDMahhpSf7fPyOHEq/PxMVrBvRpemMBiRJh4l0ojQ=
X-Received: by 2002:a05:6e02:c2c:: with SMTP id
 q12mr7622748ilg.205.1573162120183; 
 Thu, 07 Nov 2019 13:28:40 -0800 (PST)
MIME-Version: 1.0
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
In-Reply-To: <20190418144330.GD7770@e107155-lin>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 7 Nov 2019 15:28:29 -0600
Message-ID: <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_132842_096961_4E38CEA6 
X-CRM114-Status: GOOD (  35.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 T_TVD_FUZZY_SECURITIES BODY: No description available.
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Cl=C3=A9ment_Faure?= <clement.faure@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Andre Przywara <andre.przywara@arm.com>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 9:43 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Apr 17, 2019 at 04:21:55PM +0000, Leonard Crestez wrote:
> > On 4/17/2019 4:33 PM, Sudeep Holla wrote:
> > >>> I don't yet buy the security argument. There are many more shared parts
> > >>> on the SoC, like the clock controller, that would need to be taken away
> > >>> from the non-secure world if one would want to run an untrusted OS
> > >>> kernel on a i.MX8M system.
> > >>>
> > >>> To properly implement security on any i.MX8M based system the firmware
> > >>> would need to grow something like a full ARM SCPI implementation, so
> > >>> all shared critical peripherals are solely under firmware control.
> > >>
> > >> It might be possible to rework this to use some form of SCMI-over-SMC
> > >> instead of vendor-specific SMCCC SIP calls

I was just curious to know if there is any progress being made on
this.  The i.mx8mm-evk is missing functionality upstream and I think
the power domain support would help enable some of these features.

thanks

adam
> > >
> > > Sounds feasible and good if all the custom IDs/calls/..etc are well
> > > hidden in the firmware(TF-A in this case) behind the existing
> > > abstraction in Linux kernel.
> >
> > >> Hiding everything critical for security (especially CCM) behind a SCMI
> > >> interface would be a large amount of work but introducing SCMI
> > >> incrementally (starting with imx8mm power) would be useful by itself
> > >> because it simplifies OS implementation.
> > >
> > > Agreed, but not at the expense of introducing and maintaining *random*
> > > *one-off* *custom* SMC extensions. Sorry, that's not open to debate.
> > >
> > >> Many at NXP have attempted to evaluate SCMI and their conclusion has
> > >> always been that "many extensions are required".
> > >
> > > I would like to hear the evaluation. Don't assume that you need to
> > > implement something similar to ARM SCMI reference design. All OSPM like
> > > Linux kernel cares is conformance to the interface, what/how you
> > > implement on the other side is left to you.
> >
> > Brief summary from some attempts at nudging NXP devs towards SCMI:
> >
>
> Thanks for providing the evaluation details.
>
> >
> > There is no SCMI-over-SMC support specified? This would make it possible
> > to use SCMI as a purely software solution on platforms which did not
> > take SCMI into account at hardware design time or which don't have a
> > dedicated SCP inside the SOC. This applies to all imx.
> >
>
> While I admit, the section of SCMI specification that touches transport
> is quite lean, I would view it as done intentionally as the specification
> is mainly concentrated on it's subject matter which is protocol and not
> the transport itself. So did the evaluation attempted to consider/try
> SMC as transport retaining protocol as is ?
>
> I can't see any issues with that and hence I am asking it loud here.
>
> > Peng has been looking at some out-of-tree arm-smc-mailbox patches so
> > it's not just NXP which would like the option of implementing SCMI
> > vendor side in ATF. Like this: https://lwn.net/Articles/726861/
> >
>
> OK, any inputs from that study ?
>
> > Blessing SCMI-over-SMC would allow stuff like intercepting a SCMI
> > message in EL2; checking if the guest is allowed to use that resource
> > and then either forward to EL3 or return an error.
> >
>
> Why are you mixing virtualisation and EL2 here ? Yes we need them but
> it should be optional and if a platform doesn't need it, it should be
> possible to skip it.
>
> >
> > SCMI clock protocol does not cover muxes? On imx the clk hierarchy is
> > very intricate and it relies on many clk core features (including
> > notifiers) and occasional assigned-clocks-parents properties to control
> > muxes from linux. Moving all that to firmware would be a huge amount of
> > effort.
> >
>
> Yes it may be huge amount of work. But is it completely safe as claimed ?
> Giving access to mux controls in OSPM is no so safe/secure in the modern
> world. So you either make it safe with that extra huge effort needed or
> just keep everything in OSPM. But IMO anything in between is not worth it.
>
> > If SCMI included a generic clk mux and allowed keeping the clk hierarchy
> > inside linux then the effort required for hiding the CCM would still be
> > large, but more approachable. It would not "simplify the rich OS" but it
> > would still improve security.
> >
>
> Why do you need to keep the clk hierarchy in Linux ?
>
> >
> > Last point is that SCMI does not cover pinctrl? This is a large chunk of
> > firmware functionality on some imx and security control over individual
> > pins is desirable.
> >
>
> Yes but is that something available at runtime ? Can't that be one-off
> firmware setting. Will Linux need to configure it differently on each boot ?
> Just trying to understand. You say security control here and is it really
> safe to give OS access to control those ?
>
> In short, if you had a full blown protocol like few other platforms, the
> push back would have been minimal. Instead, i.MX chose to implement a
> solution which doesn't have a design thought before and custom SMC APIs
> added on fly whenever a new request is raised by OSPM to control things
> that it thinks it should. I am sure, the very next platform will have it's
> own set of requirements and custom SMC APIs/interface and no one has even
> bothered about long term maintenance of these.
>
> So assuming that trend, I would NACK this as it stands.
>
> --
> Regards,
> Sudeep
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
