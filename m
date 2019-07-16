Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ECD6A347
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 09:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlOaWbedtOM39e+t/Y4hp5E5oJBA44GyWSCrFsPE7v0=; b=i7Vv6/HpbjmVr8
	SjSTobOsw28s6wvUcTstYuoLdb3BHPpZsnFetDIy19PzF1hyIqY+w8Q3S+iKBr+kItTlq4mv2oBqJ
	Idyw3rudJEO75i3ml8k+RzG1JzhRmjye/EvvUYeDhk2Bf3dEsx8mR8IJW3pkwDH99U7jyxDyOHWh5
	CFXFhAx7EWrvV4m7D1oYRn24xopts96o0iAJGAr1Og7QAgqHMShjG0TNfuikpp6ljkzhj82up/tD7
	lP6vI7IQDgLiMcYw5HPNFhf+fUPsPZ5I1VfjACFNZCJNx7p/DuG8gi4NqeTEfs3S4TM5uAEzDentJ
	2v2/yQx8+2i/ltJ7pJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIEp-0002cE-73; Tue, 16 Jul 2019 07:51:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIEa-0002bb-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 07:50:50 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EB1C20659
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 07:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563263447;
 bh=0UmmVZtPcgufX1spbbHJzqSldBTXlWueN2BuCVoZhtg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vAKN+cInqh6ojQkzRQq0bO8+kPyehMGn002WS4EnWoXBT0lLrqcgOsODAxIsdMTEX
 B0oip5LHkzjFIkOTr17j8Lr9SFig4G0bXXIf0CpGIiVAgGxd60Fz4EBlyYw8l7oWQ4
 6uIk2Pue29GdM6v/ptpAoFPNEd8BKeGrZdQFTFfM=
Received: by mail-lj1-f175.google.com with SMTP id x25so18956245ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 00:50:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWfC49bCeYAxXKUrfuA7aQmWjfiDH00yFimVwpAiSHtav/1QMqt
 DJqjRmJ+mbE4eVAY5wktPo9tmRst8ycz8ybSc9I=
X-Google-Smtp-Source: APXvYqwUhOxh8UOJbhBIygKJV/kpgmaRf+P/4G648IT4Cl8zq7T16IkCD7Ahb+VXbSCuPy2+L7Dg1cqNZimdSRobYxU=
X-Received: by 2002:a2e:50e:: with SMTP id 14mr16875717ljf.5.1563263445565;
 Tue, 16 Jul 2019 00:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190712141242.4915-1-krzk@kernel.org>
 <5cbd8bb2-6ecb-7e55-1580-e580e2c340dd@kontron.de>
In-Reply-To: <5cbd8bb2-6ecb-7e55-1580-e580e2c340dd@kontron.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 16 Jul 2019 09:50:34 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdq5e1OPmxamicAVf4ZDoSAuD=yvfOgZD04aQD9PtnCEQ@mail.gmail.com>
Message-ID: <CAJKOXPdq5e1OPmxamicAVf4ZDoSAuD=yvfOgZD04aQD9PtnCEQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron iMX6-UL2
 SoM
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_005049_175482_FE017184 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 at 17:21, Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> Hi Krzysztof,
>
> On 12.07.19 16:12, Krzysztof Kozlowski wrote:
> > Add support for iMX6-UL2 modules from Kontron Electronics GmbH (before
> > acquisition: Exceet Electronics) and evalkit boards based on it:
> >
> > 1. i.MX6 UL System-on-Module, a 25x25 mm solderable module (LGA pads and
> >     pin castellations) with 256 MB RAM, 1 MB NOR-Flash, 256 MB NAND and
> >     other interfaces,
> > 1. UL2 evalkit, w/wo eMMC, without display,
> > 2. UL2 evalkit with 4.3" display,
> > 3. UL2 evalkit with 5.0" display.
> >
> > This includes device nodes for unsupported displays (Admatec
> > T043C004800272T2A and T070P133T0S301).
> >
> > The work is based on Exceet source code (GPLv2) with numerous changes:
> > 1. Reorganize files,
> > 2. Rename Exceet -> Kontron,
> > 3. Fix coding style errors,
> > 4. Fix DTC warnings,
> > 5. Extend compatibles so eval boards inherit the SoM compatible,
> > 6. Use defines instead of GPIO flag values,
> > 7. Adjust operating points of CPU0,
> > 8. Sort nodes alphabetically.
> >
> > In downstream BSP the Exceet name still appears in multiple places
> > therefore I left it in the model names.
>
> First, thanks for your work. I planned to upstream these boards myself
> after the FSL QSPI spi-mem driver was merged in 5.1, but didn't have
> time to finalize and send the patches.
>
> Meanwhile we came up with a new naming scheme for our boards, that
> hasn't been implemented yet. But I would like to take this chance to
> implement the new scheme.

Sure, I see no problem in using different names, matching downstream
kernel. Just point me to proper names.

> Also there are some more flavors of the SoM (with i.MX6ULL instead of
> i.MX6UL, with 512MiB instead of 256MiB flash/RAM), that I would like to
> add and for which common parts of the SoM dtsi would need to be factored
> out to a separate file.

I have only this one particular flavor so I would prefer to upstream
only this one. I do not know all the possible combinations or for
example the most interesting ones. I think after this patchset we can
refactor the DTS whenever its needed - split common parts, add new
files.

> I would prefer to at least apply the naming changes before merging. The
> additional board flavors could be added before merging or I could send
> them as follow-up patches. What do you think?

Let's change the naming and add new flavors as follow ups?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
