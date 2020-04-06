Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670B219F842
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNel54qdwTlBc/VrW1LzUu5S6NhndvEB8y02sIsfQ8c=; b=S8btUZxI5iB5D8
	dhtCsfpWHyG/XQN1qORQnFPMa2MCsbBI6YSNujil6NquY3e7zmyLFN3vWr+9d2qfqAd7U+7Ym+t29
	6d/aaJmKracIXd/WXT4pINR8xzxpAb/vskXbt3TjjiQnYxxNaRNZsmlNrd+N6/pmNmfwDvDPd6Jix
	2bfPcDZK7TmTH4hrpCqKdTnC2uihbf9S8w3x/+iJB3eNNQSxMBZqocAWC58fl7JepIx05xZqy9W80
	bSSEWpnTa9DwD3yU1abSW+JAuOSK7isSwffFmCODi7Y9y2kObVEEScu+WBAZ8Qw8hGEOaYwSHLJv4
	/KElSYIZN4vPWOq8AuGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLT7L-0006jV-HA; Mon, 06 Apr 2020 14:52:51 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLT7D-0006il-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:52:45 +0000
Received: by mail-yb1-f194.google.com with SMTP id l84so8931074ybb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 07:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t4wjTXsPVYDAF0Rh7pFMNhwtFuty/N2rOqgxDEfZ/Sw=;
 b=eCUfKAeTlW3kK4LPxpdKa0huIGls9FTLByh9z8ly7qjz/G0aHj8CYUM45CGPp2eTkx
 fU140G33wNaS8HCIngdmwiiWdFLQTRZvD2gCoiCheVhjb2k58UyW2J3oM49T2bWIVfgb
 eZJtBQV0nPALeCWYfCtfJ7cLuPt3kOwkdpnGZjHwgTg+gQ1PpDUAIDE00tYJOWTCOiJ3
 Lo/+5aXg2e7r4qXKcEujtL4ReCHfmSH+cWKYzACdq6HEle4X3ojq1jfuaaMbAx5Xz7jV
 KVucoraZeaQ+PsdizOX0Z4yzwF3X3KkkqCsQsIptZRk81l5hXsViT/eXXJZnG9ZgA195
 IG/A==
X-Gm-Message-State: AGi0PuaTuoKuRSesJoBviL9nkBam2Vql7bBEqLfGdNBIm2F3Tu3JPa2d
 AmeZlVC8qTjgO0hTB3bBx2c+tCfNo/PPWFCotnI=
X-Google-Smtp-Source: APiQypI1cMI5XMrDE3mSE6bbYAawc2oBNbpcDCRXHpJDoX3XOsXlC/vfwSZUcgq4MmsZjYrhcfzTbDuI279TT3hvxUQ=
X-Received: by 2002:a25:aa29:: with SMTP id s38mr34746167ybi.325.1586184759706; 
 Mon, 06 Apr 2020 07:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
 <CAFcVECLkPxN0nk=jr9AxJoV3i1jHBoY4s3yeodHDO2uOZspQPg@mail.gmail.com>
 <9e2ab6cd-526d-f1b5-4bd0-4a8f80d9dd8f@microchip.com>
In-Reply-To: <9e2ab6cd-526d-f1b5-4bd0-4a8f80d9dd8f@microchip.com>
From: Harini Katakam <harinik@xilinx.com>
Date: Mon, 6 Apr 2020 20:22:28 +0530
Message-ID: <CAFcVECLHkLSa+PaRWyoiqfYBpNNY3to-TSE3sqWPY3hY2chrXg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] net: macb: Wake-on-Lan magic packet fixes
To: Nicolas Ferre <nicolas.ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_075243_955600_3BBBB33D 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harinikatakamlinux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
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
Cc: Rafal Ozieblo <rafalo@cadence.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Sergio Prado <sergio.prado@e-labworks.com>, linux@armlinux.org.uk,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Harini Katakam <harini.katakam@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Mon, Apr 6, 2020 at 7:56 PM Nicolas Ferre
<nicolas.ferre@microchip.com> wrote:
>
> Hi Harini,
>
> On 03/04/2020 at 15:36, Harini Katakam wrote:
> > Hi Nicolas,
> >
> > On Fri, Apr 3, 2020 at 6:45 PM <nicolas.ferre@microchip.com> wrote:
> >>
> >> From: Nicolas Ferre <nicolas.ferre@microchip.com>
<snip>
> >
> > I know that the IP versions from r1p10 have a mechanism to disable DMA queues
> > (bit 0 of the queue pointer register) which is cleaner. But for
> > earlier IP versions,
>
> Which IP name are you referring to? GEM, GEM-GXL? What is the value of
> register 0xFC then?

GEM_GXL

>
> > I remember discussing with Cadence and there is no way to keep RX
> > enabled for WOL
> > with RX DMA disabled. I'm afraid that means there should be a bare
> > minimum memory
> > region with a dummy descriptor if you do not want to process the
> > packets. That memory
> > should also be accessible while the rest of the system is powered
> > down. Please let me
>
> Very interesting information Harini, thanks a lot for having shared it.
>
> My GEM IP has 0xFC at value: 0x00020203. But I don't see a way to keep
> DMA queues disabled by using the famous bit that you mention above.

Yeah, it is not possible in this revision. This is part of the GEM_GXL r1p10 or
higher I think. I can't be sure of all the possible variations of the
revision reg
because the scheme changed at some point but it looks like this:
0x00070100
bits 27:16 (module_ID), bits16:0 (module_revision); they could increase.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
