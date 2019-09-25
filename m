Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E44BDFA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZL/30k4+TZB7RZ9UkSokA4LlIIebDLR618mc1/6M9gs=; b=tw5VtoHY5rTvWO
	pZ8LYTeGwv/ImuNfJ0Hn5aQCZpKuiQoly00gweOWf0DxmfIEsZfhVylZn/KhuCRu9rwLA5nzRRCLm
	UCD1FrGVhLV9hEgbFj+02rkk1tTd/aC3IMwX/B0GfBBFTW43SIMOv2ef4SmuvwnsPVrqxvCOABlDU
	ao0a5UA3IQtVVRCc+QkTxc9+1v8v65wIFloSDR7opYC3Z88LbWmYn3IDdf+KrvxpP70mjmGGqMl9C
	iAHJYZeDAdfN7nvUBJ68iktxnfel+ooigiy81ZWVgVPfROlMv56mP+UxNrffAwkTks0GUNJdxnziu
	A3IJUZfHI0Z3nBvkZt3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7xU-00066U-LQ; Wed, 25 Sep 2019 14:07:57 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7x1-00065X-63
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:07:29 +0000
Received: by mail-oi1-f196.google.com with SMTP id e18so5003181oii.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 07:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gNzfLxyphufZW7oX+loBgrNcosGjw89AhG0FkoAT9T0=;
 b=ZVJf4hHWlumfrad2fpobpnADP09g2sQ3XMYyja5SluMdPGCJ2Q6m3S1AXSYWlgW5t6
 HaHL7IO3qPO6io4GUSDrFtEHQROhHQKYlVzJ1um19Dl9/FNb1khhly7XYUZfTP/WoKqw
 7rMWUEuiF9Ds89NbpxlpaHN8bkc5CdZGXYZQJdyVRpZ9MXWMJ39GlMHMhLGI4AzBr18R
 0un2X57mxEY3Y1G/3ApcXpOtTRPh7H3WQPawm/H+m9R6IKBZM2RCk9S7aFn7zcS+KZLB
 nFOeF6pRw9oYfM0kICAhQgAKguDaX7Gi5st+rmRojxlH50/tlG++If+0N18qLA1jOb5k
 XVtA==
X-Gm-Message-State: APjAAAWd075k+8ojXikh+ir+STJ2HRYN5BQ3tfB+SjCbx1AS9iacrWjZ
 evx+WMFaZP9AuH9VqBc8a+HTEcm6
X-Google-Smtp-Source: APXvYqyXUJiLdx/29bxedTiE+6H7/KJdZGHTDAQlwUZL5bOkSbqvIYRaOHFMNr0lVAE3AC3doV1fJQ==
X-Received: by 2002:aca:b286:: with SMTP id b128mr4757609oif.100.1569420443932; 
 Wed, 25 Sep 2019 07:07:23 -0700 (PDT)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com.
 [209.85.167.175])
 by smtp.gmail.com with ESMTPSA id y11sm1533983oih.18.2019.09.25.07.07.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 07:07:23 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id x3so5008308oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 07:07:23 -0700 (PDT)
X-Received: by 2002:aca:d988:: with SMTP id q130mr4486320oig.13.1569420442960; 
 Wed, 25 Sep 2019 07:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490EAE9591B5AE7112C9D188F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676B8A6F7C7C3BC822B45B28F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB44902BADDDFD090BAF4178C68F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <DB7PR04MB4490684FE0E95695E89173948F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4490684FE0E95695E89173948F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 25 Sep 2019 09:07:12 -0500
X-Gmail-Original-Message-ID: <CADRPPNQ+=au2qRL2K-tzhH8HK1+sO+ut9YBhYw4UhWSv5FF88A@mail.gmail.com>
Message-ID: <CADRPPNQ+=au2qRL2K-tzhH8HK1+sO+ut9YBhYw4UhWSv5FF88A@mail.gmail.com>
Subject: Re: [v3, 3/3] Documentation: dt: binding: fsl: Add 'fsl,
 ippdexpcr-alt-addr' property
To: Biwen Li <biwen.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_070727_365042_47053BEE 
X-CRM114-Status: GOOD (  33.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Ran Wang <ran.wang_1@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:27 PM Biwen Li <biwen.li@nxp.com> wrote:
>
> > > >
> > > > > > > > > >
> > > > > > > > > > The 'fsl,ippdexpcr-alt-addr' property is used to handle
> > > > > > > > > > an errata
> > > > > > > > > > A-008646 on LS1021A
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > > > > > > > ---
> > > > > > > > > > Change in v3:
> > > > > > > > > >       - rename property name
> > > > > > > > > >         fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > > > > > > > >
> > > > > > > > > > Change in v2:
> > > > > > > > > >       - update desc of the property 'fsl,rcpm-scfg'
> > > > > > > > > >
> > > > > > > > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > > > > > > > > ++++++++++++++
> > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > >
> > > > > > > > > > diff --git
> > > > > > > > > > a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > index 5a33619d881d..157dcf6da17c 100644
> > > > > > > > > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > @@ -34,6 +34,11 @@ Chassis Version            Example
> > > > Chips
> > > > > > > > > >  Optional properties:
> > > > > > > > > >   - little-endian : RCPM register block is Little Endian.
> > > > > > > > > > Without it
> > > > > RCPM
> > > > > > > > > >     will be Big Endian (default case).
> > > > > > > > > > + - fsl,ippdexpcr-alt-addr : Must add the property for
> > > > > > > > > > + SoC LS1021A,
> > > > > > > > >
> > > > > > > > > You probably should mention this is related to a hardware
> > > > > > > > > issue on LS1021a and only needed on LS1021a.
> > > > > > > > Okay, got it, thanks, I will add this in v4.
> > > > > > > > >
> > > > > > > > > > +   Must include n + 1 entries (n =
> > > > > > > > > > + #fsl,rcpm-wakeup-cells, such
> > > as:
> > > > > > > > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include
> > > > > > > > > > + 2
> > > > > > > > > > + +
> > > > > > > > > > + 1
> > > > > entries).
> > > > > > > > >
> > > > > > > > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR
> > > > > > > > > registers on an
> > > > > SoC.
> > > > > > > > > However you are defining an offset to scfg registers here.
> > > > > > > > > Why these two are related?  The length here should
> > > > > > > > > actually be related to the #address-cells of the soc/.
> > > > > > > > > But since this is only needed for LS1021, you can
> > > > > > > > just make it 3.
> > > > > > > > I need set the value of IPPDEXPCR resgiters from ftm_alarm0
> > > > > > > > device node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> > > > > > > > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for
> > > > > IPPDEXPCR1).
> > > > > > > > But because of the hardware issue on LS1021A, I need store
> > > > > > > > the value of IPPDEXPCR registers to an alt address. So I
> > > > > > > > defining an offset to scfg registers, then RCPM driver get
> > > > > > > > an abosolute address from offset, RCPM driver write the
> > > > > > > > value of IPPDEXPCR registers to these abosolute
> > > > > > > > addresses(backup the value of IPPDEXPCR
> > > > > registers).
> > > > > > >
> > > > > > > I understand what you are trying to do.  The problem is that
> > > > > > > the new fsl,ippdexpcr-alt-addr property contains a phandle and an
> > offset.
> > > > > > > The size of it shouldn't be related to #fsl,rcpm-wakeup-cells.
> > > > > > You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg 0x51c>;/*
> > > > > > SCFG_SPARECR8 */
> > > > >
> > > > > No.  The #address-cell for the soc/ is 2, so the offset to scfg
> > > > > should be 0x0 0x51c.  The total size should be 3, but it shouldn't
> > > > > be coming from #fsl,rcpm-wakeup-cells like you mentioned in the
> > binding.
> > > > Oh, I got it. You want that fsl,ippdexpcr-alt-add is relative with
> > > > #address-cells instead of #fsl,rcpm-wakeup-cells.
> > >
> > > Yes.
> > I got an example from drivers/pci/controller/dwc/pci-layerscape.c
> > and arch/arm/boot/dts/ls1021a.dtsi as follows:
> > fsl,pcie-scfg = <&scfg 0>, 0 is an index
> >
> > In my fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>, It means that 0x0 is an alt
> > offset address for IPPDEXPCR0, 0x51c is an alt offset address For
> > IPPDEXPCR1 instead of 0x0 and 0x51c compose to an alt address of
> > SCFG_SPARECR8.
> Maybe I need write it as:
> fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x0 0x0 0x51c>;
> first two 0x0 compose an alt offset address for IPPDEXPCR0,
> last 0x0 and 0x51c compose an alt address for IPPDEXPCR1,

I remember the hardware issue is only is only related to IPPDEXPCR1
register, no idea why you need to define IPPDEXPCR0 in the binding.

>
> Best Regards,
> Biwen Li
> > >
> > > Regards,
> > > Leo
> > > > >
> > > > > > >
> > > > > > > > >
> > > > > > > > > > +   The first entry must be a link to the SCFG device node.
> > > > > > > > > > +   The non-first entry must be offset of registers of SCFG.
> > > > > > > > > >
> > > > > > > > > >  Example:
> > > > > > > > > >  The RCPM node for T4240:
> > > > > > > > > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > > > > > > > > >               #fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > > >       };
> > > > > > > > > >
> > > > > > > > > > +The RCPM node for LS1021A:
> > > > > > > > > > +     rcpm: rcpm@1ee2140 {
> > > > > > > > > > +             compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-
> > > > > > 2.1+";
> > > > > > > > > > +             reg = <0x0 0x1ee2140 0x0 0x8>;
> > > > > > > > > > +             #fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > > > +             fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> > > > > > > > > > SCFG_SPARECR8 */
> > > > > > > > > > +     };
> > > > > > > > > > +
> > > > > > > > > > +
> > > > > > > > > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > > > > > > > > >  -------------------------------------------
> > > > > > > > > >  Required fsl,rcpm-wakeup property should be added to a
> > > > > > > > > > device node if the device
> > > > > > > > > > --
> > > > > > > > > > 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
