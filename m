Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEF91DAE12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulz59HqcPJaO3qr1H0ZcnNPS2pcS1guEaGLZ9xNwqo4=; b=MZiSPilQB8sOJ7
	HFIdOLJMupRa8PL58QySpj3RCXsD3kkhEoz8WUXXu836rj4coHoelOct0ATyMKZqp/JU4NODGioM+
	tm4nSAV2jUCWJtfPp/l8WNgMQSLQHV8VQuk5i6xFMKhyD4oFUJz1fynk8wWIk+MDxDIBTqndQ39fW
	e3cvBR4uUgY8dIb8E4kxxf28IdchlghD5XiJhJIOm7mTaDXGGwbvQ0CvPf6pwDr+6w8PrTRMZaVHg
	gnFWmEUEgmet/jPul1n4OdI+n3blM0iJYSUdQyZlWcn6BnRZ8bjHR6z8ToHOhv27U4xFnYWffG8h8
	PS9oAVQNhDv6FOf8uuZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKW3-0007cQ-Pc; Wed, 20 May 2020 08:55:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKVt-0007bQ-LM; Wed, 20 May 2020 08:55:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04K8tcIM082933;
 Wed, 20 May 2020 03:55:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589964938;
 bh=94NnytqBpqUf8R7aIslBZEl7hkdO4TQ/1RS1F+OZnXY=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=R96242wJFEmcM0aj2vJcZbs7z2iJai3xa6+nTl2PNPwCa7dJd+YHwCBDwVk5cVnAB
 HJ0Q5qttvfiqBtgMjqqLq3b2VsBp64C88XDxyHe/itTNMObzQyPHkUIyD00OmljnrV
 ilc3aKwnEeUx0GicoDmkcTBerP8SeIo7+gfNYNGo=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04K8tbB8044324
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 03:55:38 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 03:55:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 03:55:37 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04K8taiv093353;
 Wed, 20 May 2020 03:55:37 -0500
Date: Wed, 20 May 2020 14:25:36 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 09/19] mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table
Message-ID: <20200520085534.yra4f5ww5xs23c4j@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-10-p.yadav@ti.com>
 <OF83616464.480FA751-ON4825856E.002A4483-4825856E.002BE6AF@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF83616464.480FA751-ON4825856E.002A4483-4825856E.002BE6AF@mxic.com.tw>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_015545_820562_DCEA9784 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Mason,

On 20/05/20 03:59PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush, 
> 
> > +/**
> > + * spi_nor_parse_profile1() - parse the xSPI Profile 1.0 table
> > + * @nor:      pointer to a 'struct spi_nor'
> > + * @param_header:   pointer to the 'struct sfdp_parameter_header' 
> describing
> > + *         the 4-Byte Address Instruction Table length and version.
> > + * @params:      pointer to the 'struct spi_nor_flash_parameter' to be.
> > + *
> > + * Return: 0 on success, -errno otherwise.
> > + */
> > +static int spi_nor_parse_profile1(struct spi_nor *nor,
> > +              const struct sfdp_parameter_header *profile1_header,
> > +              struct spi_nor_flash_parameter *params)
> > +{
> > +   u32 *table, opcode, addr;
> > +   size_t len;
> > +   int ret, i;
> > +
> > +   len = profile1_header->length * sizeof(*table);
> > +   table = kmalloc(len, GFP_KERNEL);
> > +   if (!table)
> > +      return -ENOMEM;
> > +
> > +   addr = SFDP_PARAM_HEADER_PTP(profile1_header);
> > +   ret = spi_nor_read_sfdp(nor, addr, len, table);
> > +   if (ret)
> > +      goto out;
> > +
> > +   /* Fix endianness of the table DWORDs. */
> > +   for (i = 0; i < profile1_header->length; i++)
> > +      table[i] = le32_to_cpu(table[i]);
> > +
> > +   /* Get 8D-8D-8D fast read opcode and dummy cycles. */
> > +   opcode = FIELD_GET(PROFILE1_DWORD1_RD_FAST_CMD, table[0]);
> > +
> > +   /*
> > +    * Update the fast read settings. We set the default dummy cycles to 
> 20
> > +    * here. Flashes can change this value if they need to when enabling
> > +    * octal mode.
> > +    */
> > +   spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8_DTR],
> > +              0, 20, opcode,
> > +              SNOR_PROTO_8_8_8_DTR);
> > +
> 
> 
> I thought we have a agreement that only do parse here, no other read 
> parameters setting.

Yes, and I considered it. But it didn't make much sense to me to 
introduce an extra member in struct spi_nor just to make this call in 
some other function later.

Why exactly do you think doing this here is bad? The way I see it, we 
avoid carrying around an extra member in spi_nor and this also allows 
flashes to change the read settings easily in a post-sfdp hook. The 
4bait parsing function does something similar.

What are the benefits of doing it otherwise?

Note that I did remove HWCAPS selection from here, which did seem like a 
sane idea.
 
> Driver should get dummy cycles used for various frequencies 
> from 4th and 5th DWORD of xSPI table.[1]
>  
> [1] 
> https://patchwork.ozlabs.org/project/linux-mtd/patch/1587451187-6889-3-git-send-email-masonccyang@mxic.com.tw/ 
> 
> 
> In addition, 20 dummy cycles is for 200MHz but not for 100MHz, 133MHz and 
> 166MHz
> in case of read performance concern.
> 
> Given a correct dummy cycles for a specific device. [2] 
> 
> [2] 
> https://patchwork.ozlabs.org/project/linux-mtd/patch/1587451187-6889-5-git-send-email-masonccyang@mxic.com.tw/ 

The problem is that we don't know what speed the controller is driving 
the flash at, and whether it is using Data Strobe. BFPT tells us the 
maximum speed of the flash based on if Data Strobe is being used. The 
controller can also drive it slower than the maximum. And it can drive 
it with or without DS.

So, we have to be conservative and just use the dummy cycles for the 
maximum speed so we can at least make sure the flash works, albeit at 
slightly less efficiency. I hard-coded it to 20 but I suppose we can 
find it out from the Profile 1.0 table and use that (though we'd have to 
round it to an even value to avoid tripping up controllers). Will fix in 
next version (or, Tudor if you're fine with fixup! patches, I can send 
that too because I suspect it will be a small change).
 
> 
> > +   /*
> > +    * Set the Read Status Register dummy cycles and dummy address 
> bytes.
> > +    */
> > +   if (table[0] & PROFILE1_DWORD1_RDSR_DUMMY)
> > +      params->rdsr_dummy = 8;
> > +   else
> > +      params->rdsr_dummy = 4;
> > +
> > +   if (table[0] & PROFILE1_DWORD1_RDSR_ADDR_BYTES)
> > +      params->rdsr_addr_nbytes = 4;
> > +   else
> > +      params->rdsr_addr_nbytes = 0;
> > +
> > +out:
> > +   kfree(table);
> > +   return ret;
> > +}
> > +
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
