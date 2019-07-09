Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1458F62DFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2IqZvTXWxlLJQu0AFZaX6fxBBFet6Zo3CRwPND+27Y=; b=NhkU6qx98Kmq/3
	RrMSOJdXLuyHw12J5Fi8pVwYKpQ64O4uBk6T9fKZM2xxgrYArQE7DzbKXXuRf4J0P+tqAvkR6yEn/
	ng9MGCCyZvm5lC0ynbbTRZ6rDIScjdBrFn2ihQYIVqsq4Ap+uTLerg550qZRDLXRVUzBLEPzGQkSS
	TZNQHJ52C9F76SpVt8UzXNt4qNckekZs/CVoI50OzXn7mFjQXzhDKaNflJa+XVEwwgPT7oJf+aZbr
	4HL4tRntpIuzd+c36dAHHq18B++VogT6qIUwJ7P8xtIXp5tuahAqJyDZWVksnlUhfVX+X6dkzPMEy
	VzSMZGrVEuadZL4KEimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfgf-0003bn-E8; Tue, 09 Jul 2019 02:16:57 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfgS-0003b7-5y; Tue, 09 Jul 2019 02:16:45 +0000
Received: by mail-io1-f66.google.com with SMTP id i10so39737463iol.13;
 Mon, 08 Jul 2019 19:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YB0ihnOm59Ua/y7c0WmEoM3xopDstN/prTb9Z8UqdvE=;
 b=tP1VxHH7oPwq8gboj/L6wjyLDuNhlfxPoe0SHXaUTiEXozAp6JSM/JyCg+dp89N+eS
 FxRpqWjkdP6a7CGGE0+3GJ4OvpMAGSZPvgx9mm26hMCl3okXpUSJG+sH+UNEfKzuboXS
 N3YqdkBu+r5m3eFwuNcx4GIkxcSZxDQAyqV8BeI9EBxThcUWcWppVrzCju2lK017LsUn
 jySEK3fBPSf9YqHjZKv2C0UWVw7PN69bVXcdsHq2kYJxw4tl54wZnqZ0LvJGo7J5KPmG
 tRwgH2JbKxSESBbNBelt2EllpxvjnnpUrOpJ9a8p7r4h1vIhMet52BsN+d20R9ocXxS3
 qONQ==
X-Gm-Message-State: APjAAAULy03gO41JCm5wYqqH1fx/2rtMc1eDszs635zugFGaz8+BPp8/
 yuGJbkNCJmerPlee/FdzvA==
X-Google-Smtp-Source: APXvYqyGmoebgc+iVTlZYu5TrVkwa3yYJYbNaeC3MeCzrmiEnG6yJ78bPDh0A3WHvjO4ADy2Ivp3Pw==
X-Received: by 2002:a02:600c:: with SMTP id i12mr23983205jac.108.1562638603364; 
 Mon, 08 Jul 2019 19:16:43 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id t4sm15342760iop.0.2019.07.08.19.16.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:16:42 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:16:41 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
Message-ID: <20190709021641.GA28185@bogus>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
 <5d164528-c797-5f94-f905-719d4f69542c@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d164528-c797-5f94-f905-719d4f69542c@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_191644_223669_97AE8520 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:45:37PM +0200, Andreas F=E4rber wrote:
> Am 08.06.19 um 21:53 schrieb Manivannan Sadhasivam:
> > Add devicetree binding for Actions Semi Owl SoC's SD/MMC/SDIO controlle=
r.
> > =

> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/mmc/owl-mmc.txt       | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.txt
> =

> Rob, should this be YAML now?

Would be nice and might get reviewed faster, but I'll leave that to Ulf =

to start requiring.

> =

> > =

> > diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.txt b/Docume=
ntation/devicetree/bindings/mmc/owl-mmc.txt
> > new file mode 100644
> > index 000000000000..a702f8d66cec
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
> > @@ -0,0 +1,37 @@
> > +Actions Semi Owl SoCs SD/MMC/SDIO controller
> > +
> > +Required properties:
> > +- compatible: should be "actions,owl-mmc"
> > +- reg: offset and length of the register set for the device.
> > +- interrupts: single interrupt specifier.
> > +- clocks: single clock specifier of the controller clock.
> > +- resets: phandle to the reset line.
> > +- dma-names: should be "mmc".
> > +- dmas: single DMA channel specifier
> =

> I recall the main blocker for MMC being regulators, i.e. the I=B2C
> attached multi-function PMIC. Yet I don't see any such required property
> here, nor any patch series implementing it. Seems like this relies on
> U-Boot having initialized SD/eMMC? Do you intend to make them optional
> or did you want to hold off merging this one until the rest is done?
> =

> > +
> > +Optional properties:
> > +- pinctrl-names: pinctrl state names "default" must be defined.
> > +- pinctrl-0: phandle referencing pin configuration of the controller.
> > +- bus-width: see mmc.txt
> > +- cap-sd-highspeed: see mmc.txt
> > +- cap-mmc-highspeed: see mmc.txt
> > +- sd-uhs-sdr12: see mmc.txt
> > +- sd-uhs-sdr25: see mmc.txt
> > +- sd-uhs-sdr50: see mmc.txt
> > +- non-removable: see mmc.txt
> =

> I'm not convinced duplicating common properties is a good idea here, in
> particular pinctrl.

The main value is to define which common properties are valid for this =

binding (and by omission which ones aren't valid).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
