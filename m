Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CCD1DC9B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oix0jnQbt0oVjB+zILKV19vRJUoSEMtmasybwlIbbfs=; b=A9v5Ud4v8Lo9td
	BR6Cj3Xp0IVRB3YIk1BEByqfEndMp7pQGhrKzA6Yi1jMyJ0NiL7DJKDiM45/SbrVo7fNfi+dDE9Gx
	Qm0Io7hN5/r2uFoKfAIoaEnh7jdYV0kgXqun3WNrvE74hpVsMIvKylUdQGPWhqzeGallh1ire64bf
	5x/YRnwf/XSXSCOXqEThXtrtkWT2ySQelQFgLuMumrp4iISZh8SAcfvW/fymaNjKxKjrV+uyZ1/60
	fv/ucAJNVCeebuXc78J3oTop+OU19u9AKERBaBvf33MmajEAWIBoxGljW6UaqZJx2jp72o+82BiRf
	A8gabyY2IaDNV7T0FPmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhI5-00084z-IY; Thu, 21 May 2020 09:15:02 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhHu-00084Z-CH; Thu, 21 May 2020 09:14:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04L9EdMR013665;
 Thu, 21 May 2020 04:14:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590052479;
 bh=6TWapEuxg8nAckEhBpE445YKmDj0TJ/xlqg6Fj94UN0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=MaaiESZ6aMqcrpmJHO1mfIi6xcBPy89FLOWsTC7LaSKeRbpKblQVGffGtUkHPmsGz
 KtTJ6G2zE9wgGcvBYU37tyagCvHpizRCMMgOcroPyoWwWwrT8AucyU/I2e2Pw/IwO9
 c3yoOkpPkfW2mWbh18+Ej1+oCaJOw0jBQh2uczPA=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04L9EdvO010693
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 04:14:39 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 04:14:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 04:14:39 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04L9EcT0062434;
 Thu, 21 May 2020 04:14:39 -0500
Date: Thu, 21 May 2020 14:44:36 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 09/19] mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table
Message-ID: <20200521091434.rigqlyuwszyyikj4@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-10-p.yadav@ti.com>
 <OF83616464.480FA751-ON4825856E.002A4483-4825856E.002BE6AF@mxic.com.tw>
 <20200520085534.yra4f5ww5xs23c4j@ti.com>
 <OF98344913.4BF4C313-ON4825856E.0032A810-4825856E.00352141@mxic.com.tw>
 <20200520103728.jtbslowdfrv3o5yz@ti.com>
 <OFF5A6BA99.395182B5-ON4825856F.002B2F98-4825856F.002CD973@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFF5A6BA99.395182B5-ON4825856F.002B2F98-4825856F.002CD973@mxic.com.tw>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_021450_517525_5FDE6658 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, juliensu@mxic.com.tw,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/20 04:09PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush, 
> 
> > > > > > +   /* Get 8D-8D-8D fast read opcode and dummy cycles. */
> > > > > > +   opcode = FIELD_GET(PROFILE1_DWORD1_RD_FAST_CMD, table[0]);
> > > > > > +
> > > > > > +   /*
> > > > > > +    * Update the fast read settings. We set the default dummy 
> > > cycles to 
> > > > > 20
> > > > > > +    * here. Flashes can change this value if they need to when 
> > > enabling
> > > > > > +    * octal mode.
> > > > > > +    */
> > > > > > + 
> spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8_DTR],
> > > > > > +              0, 20, opcode,
> > > > > > +              SNOR_PROTO_8_8_8_DTR);
> > > > > > +
> > > > > 
> > > > > 
> > > > > I thought we have a agreement that only do parse here, no other 
> read 
> > > > > parameters setting.
> > > > 
> > > > Yes, and I considered it. But it didn't make much sense to me to 
> > > > introduce an extra member in struct spi_nor just to make this call 
> in 
> > > > some other function later.
> > > > 
> > > > Why exactly do you think doing this here is bad? The way I see it, 
> we 
> > > > avoid carrying around an extra member in spi_nor and this also 
> allows 
> > > > flashes to change the read settings easily in a post-sfdp hook. The 
> > > > 4bait parsing function does something similar.
> > > 
> > > I think it's not a question for good or bad. 
> > > 
> > > 4bait parsing function parse the 4-Byte Address Instruction Table
> > > and set up read/pp parameters there for sure.
> > > 
> > > Here we give the function name spi_nor_parse_profile1() but also 
> > 
> > But the function that parses 4bait table is also called 
> > spi_nor_parse_4bait(). 
> > 
> > > do others setting that has nothing to do with it, 
> > 
> > Why has setting read opcode and dummy cycles got nothing to do with it? 
> > The purpose of the Profile 1.0 table is to tell us the Read Fast 
> > command and dummy cycles, among other things. I think it _does_ have 
> > something to do with it.
> 
> As you know I mean this function just do parse parameter of profile 1 
> table
> and keep these value data for later usage.
> 
> A device supports xSPI profile table could work in either 8S-8S-8S or 
> 8D-8D-8D mode.
> It seems to setup these parameters somewhere out here is betters.

As far as I know, the Profile 1.0 table only describes 8D-8D-8D mode. I 
see no mention of 8S-8S-8S in JESD251 or JESD216D.01. No field in the 
table describes anything related to 8S. In fact, searching for "8S" in 
the JESD251 spec yields 0 results. 

Anyway, you should set up 8S parameters in SNOR_CMD_READ_8_8_8, not 
SNOR_CMD_READ_8_8_8_DTR. 8D configuration is independent of 8S 
configuration.

PS: If you have any more comments, please send them now. The merge 
window is getting close, and I'd like to see this make it in.

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
