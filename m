Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBED5C0B0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZ+l37GbZHqUdM8Gkaz0md0f0UbcnqKRt6mbzJHFlCk=; b=f/mH1rLQawmkeI
	jjZi2LRaM/zcDFbm+vZOMroNITG9najPXX5H2ols0ZSctxmC2nczhSR/Hif+vfyibH18FbuCvcxXR
	PlckCnwtoS/mFMjUYsgzich8bppt/QhyoEqjIolui7WCsXBCJ43Xopfz34F3deAUqFjQ5RTUCtSla
	xkdGt/u37zJGzJL1BVfT4tH7Vll9QjN3aJiXe+jC0Q514rha5MHbpXbdXJkeaTfIoT8wOhPYmWXm3
	VUMP2O0WAMpUawmEIa0aG9+aUCO2beUMvfyyvRmISsx4Ae4sx2QS0Sq3pHX8UMZw8EUwT+x5a6Mok
	OV99oIGni6GQdksttjww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDuzA-0000AJ-It; Fri, 27 Sep 2019 18:28:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDuz0-00009v-C9
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:28:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id 41so3043511oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:28:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qZoUc61rWZUABqYiFdYsTRbcGhf3P6ij4WXTBM/dESA=;
 b=g6+kP0KhZAfdrlIg0Al6zo4KlUlRuT9MKqWyqI+cVpZclpbrcR5y6r/tJ1hx3WsMn2
 zmAI5ko2zRsHOukQOZt8WdCblYhoTHGVfNWhDPKNmZiI9FtBEUrf6GPTd85gQHn64/8H
 87doIro0YFZys9O0WyyKlzKlPjVXQ88yx7JaBez5kRitAqbZhjfFbYE5QhzX7SOYoOXA
 AB5qx2EyMrzuGxp5Nvjy/E34lQwhnawq80f/XSZmos4odD5Ytw53GZnCYKBdQjo1YcUi
 Fg76yySXuXs40E1R2YL75YRCPHWltL/Fx1Wpv0qUMg17dQJBEAu4rVAOuFVcTNbT06Kz
 bKoQ==
X-Gm-Message-State: APjAAAVErsWZ9eKhDZ4wtTtZHiok+3Td2j4OslYBf9lqLq2jfImZffd3
 paPgg5aJ28N5luYnqH4XV6Z1V1k=
X-Google-Smtp-Source: APXvYqyQPejECmFGd11SGP7Xcg8Htf2DDNyXC9qmFAvQC7yFda9W92oheirhgtI3bl+Vjh4c4JzYUw==
X-Received: by 2002:a9d:6a59:: with SMTP id h25mr4511188otn.324.1569608925282; 
 Fri, 27 Sep 2019 11:28:45 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w20sm1127648otk.73.2019.09.27.11.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:28:44 -0700 (PDT)
Date: Fri, 27 Sep 2019 13:28:44 -0500
From: Rob Herring <robh@kernel.org>
To: Leo Li <leoyang.li@nxp.com>
Subject: Re: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Message-ID: <20190927182844.GA5203@bogus>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_112846_417194_D13B2CEB 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ran Wang <ran.wang_1@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:34:47AM +0000, Leo Li wrote:
> 
> 
> > -----Original Message-----
> > From: Biwen Li
> > Sent: Tuesday, September 24, 2019 10:30 PM
> > To: Leo Li <leoyang.li@nxp.com>; shawnguo@kernel.org;
> > robh+dt@kernel.org; mark.rutland@arm.com; Ran Wang
> > <ran.wang_1@nxp.com>
> > Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org; devicetree@vger.kernel.org
> > Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add 'fsl,ippdexpcr-alt-
> > addr' property
> > 
> > > > > >
> > > > > > The 'fsl,ippdexpcr-alt-addr' property is used to handle an
> > > > > > errata
> > > > > > A-008646 on LS1021A
> > > > > >
> > > > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > > > ---
> > > > > > Change in v3:
> > > > > > 	- rename property name
> > > > > > 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > > > >
> > > > > > Change in v2:
> > > > > > 	- update desc of the property 'fsl,rcpm-scfg'
> > > > > >
> > > > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > > > > ++++++++++++++
> > > > > >  1 file changed, 14 insertions(+)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > index 5a33619d881d..157dcf6da17c 100644
> > > > > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > @@ -34,6 +34,11 @@ Chassis Version		Example Chips
> > > > > >  Optional properties:
> > > > > >   - little-endian : RCPM register block is Little Endian. Without it RCPM
> > > > > >     will be Big Endian (default case).
> > > > > > + - fsl,ippdexpcr-alt-addr : Must add the property for SoC
> > > > > > + LS1021A,
> > > > >
> > > > > You probably should mention this is related to a hardware issue on
> > > > > LS1021a and only needed on LS1021a.
> > > > Okay, got it, thanks, I will add this in v4.
> > > > >
> > > > > > +   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
> > > > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).
> > > > >
> > > > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR registers on an SoC.
> > > > > However you are defining an offset to scfg registers here.  Why
> > > > > these two are related?  The length here should actually be related
> > > > > to the #address-cells of the soc/.  But since this is only needed
> > > > > for LS1021, you can
> > > > just make it 3.
> > > > I need set the value of IPPDEXPCR resgiters from ftm_alarm0 device
> > > > node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> > > > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for IPPDEXPCR1).
> > > > But because of the hardware issue on LS1021A, I need store the value
> > > > of IPPDEXPCR registers to an alt address. So I defining an offset to
> > > > scfg registers, then RCPM driver get an abosolute address from
> > > > offset, RCPM driver write the value of IPPDEXPCR registers to these
> > > > abosolute addresses(backup the value of IPPDEXPCR registers).
> > >
> > > I understand what you are trying to do.  The problem is that the new
> > > fsl,ippdexpcr-alt-addr property contains a phandle and an offset.  The
> > > size of it shouldn't be related to #fsl,rcpm-wakeup-cells.
> > You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg 0x51c>;/*
> > SCFG_SPARECR8 */
> 
> No.  The #address-cell for the soc/ is 2, so the offset to scfg 
> should be 0x0 0x51c.  The total size should be 3, but it shouldn't be 
> coming from #fsl,rcpm-wakeup-cells like you mentioned in the binding.

Um, no. #address-cells applies to reg and ranges, not some vendor 
specific property. You can just define how many cells you need if that's 
fixed. 

However, I suggested doing this another way in the next version of this.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
