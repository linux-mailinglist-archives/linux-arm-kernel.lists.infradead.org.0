Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92233814D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgOcxMljDUniWoFIUbw7SEa3Y1CDUr16kH9fbYWGTcE=; b=N5gyhhGy0KOTjm
	t0e7IZiF4T1FG+CeoSJHMwQ5qoZpoVJdm28LaCE8rqfmxkTLDLF2E4q3deqvn4NTfJOe36O2Uoc5p
	c4kaiTbfz4z7r8x47V3nQXrva2iVx7xM3REnTJ41PNODyraEi/PfvaRy3/Oq7RhTVm/oI/1tSNsvM
	5zFOrKutYiuIo3/JthMYI0N2PljT4jJ6TYXaqimS/Ppd9qP/PDEQj2prb0dzp2zZRaWqWrLQINr92
	EWnDeXsLPhfc9jLu2/WKb2vZTuUYJ5Mt2qFkigv/Gb2tsTcamlluYbMt72yawwtSY+R4BL1xoiRVt
	EVEyFfJKa6iO+Md9jHMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ2B-0004j2-CH; Mon, 05 Aug 2019 09:12:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ1t-0004iO-Ns
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:11:47 +0000
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA8F02184B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 09:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564996305;
 bh=gnyC2hoSvEsXyEk+9SVSQxo8bU7dRT/umXsVQnWKG4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nruL27Rg7q7HfEkQNzU7wJ2xV9lrNztfc282jziQkjXRJ9CNrcLDC/LI+hxtgOjOF
 KDmh4tg6QH6idPdzDqZfUwEMmPHV+UTpmew2eKSIJHqIYGM6mUSsAb11Gjtxsf7TPF
 NZNC1kKTfnhszQnie0vz/V0TEadyb0BAIytVD9rc=
Received: by mail-lf1-f50.google.com with SMTP id b17so57334616lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:11:44 -0700 (PDT)
X-Gm-Message-State: APjAAAW9z/nwyaeVnUBzFHr9N2ptCMfZNJjslYZNZJg8IY7kHsN8euDf
 VQvdL/jQwYC8h7YS/cXem0lhEENn58zw41MaZxQ=
X-Google-Smtp-Source: APXvYqwDlSml+qhxESCbGwIQMsZLOK8jHk11V3FXbMlZ3kbLC+2Wzk3e+sJqtEqsgY34UAHDeCL2JkUH8Mp8EQwF5DU=
X-Received: by 2002:a19:48c5:: with SMTP id v188mr69385360lfa.69.1564996303019; 
 Mon, 05 Aug 2019 02:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190729172007.3275-1-krzk@kernel.org>
 <20190729172007.3275-2-krzk@kernel.org>
 <20190803154724.GS8870@X250.getinternet.no>
In-Reply-To: <20190803154724.GS8870@X250.getinternet.no>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 5 Aug 2019 11:11:31 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc347ffPmwjtNWBwurEOip+0-8xoxoAJS6cw6JP4b4w-w@mail.gmail.com>
Message-ID: <CAJKOXPc347ffPmwjtNWBwurEOip+0-8xoxoAJS6cw6JP4b4w-w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021145_815042_A83C510E 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 3 Aug 2019 at 17:47, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Jul 29, 2019 at 07:20:07PM +0200, Krzysztof Kozlowski wrote:
> > Add support for i.MX6UL modules from Kontron Electronics GmbH (before
> > acquisition: Exceet Electronics) and evalkit boards based on it:
> >
> > 1. N6310 SOM: i.MX6 UL System-on-Module, a 25x25 mm solderable module
> >    (LGA pads and pin castellations) with 256 MB RAM, 1 MB NOR-Flash,
> >    256 MB NAND and other interfaces,
> > 2. N6310 S: evalkit, w/wo eMMC, without display,
> > 3. N6310 S 43: evalkit with 4.3" display,
> > 4. N6310 S 50: evalkit with 5.0" display.
> >
> > This includes device nodes for unsupported displays (Admatec
> > T043C004800272T2A and T070P133T0S301).
>
> Do not include unsupported devices.
>
> >
> > The work is based on Exceet/Kontron source code (GPLv2) with numerous
> > changes:
> > 1. Reorganize files,
> > 2. Rename Exceet -> Kontron,
> > 3. Rename models/compatibles to match newest Kontron product naming,
> > 4. Fix coding style errors and adjust to device tree coding guidelines,
> > 5. Fix DTC warnings,
> > 6. Extend compatibles so eval boards inherit the SoM compatible,
> > 7. Use defines instead of GPIO and interrupt flag values,
> > 8. Use proper vendor compatible for Macronix SPI NOR,
> > 9. Sort nodes alphabetically.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > ---
> >
> > Changes since v2, after Fabio's review:
> > 1. Add "imx6ul" compatible to board name (that's what I understood from
> >    review),
> > 2. Add vendor/device prefix to eeprom and document the compatible,
> > 3. Use "admatecde" as vendor compatible to avoid confusion with Admatec
> >    AG in Switzerland (also making LCD panels),
> > 4. Use generic names for nodes,
> > 5. Use IRQ_TYPE_LEVEL_LOW,
> > 6. Move iomux to the end of files,
> > 7. Remove regulators node (include regulators in top level),
> > 8. Remove cpu clock-frequency,
> > 9. Other minor fixes pointed by Fabio.
> >
> > Changes since v1, after Frieder's review:
> > 1. Remove unneeded license notes,
> > 2. Add Kontron copyright (2018),
> > 3. Rename the files/models/compatibles to new naming - N6310,
> > 4. Remove unneeded CPU operating points override,
> > 5. Switch regulator nodes into simple children nodes without addresses
> >    (so not simple bus),
> > 6. Use proper vendor compatible for Macronix SPI NOR.
> > ---
> >  .../devicetree/bindings/arm/fsl.yaml          |   4 +
> >  .../devicetree/bindings/eeprom/at25.txt       |   1 +
>
> Please make them two separate patches.

You mean split at25 change to separate patch? or split both - at25 and
fsl bindings - to separate patches?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
