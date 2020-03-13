Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC15184960
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+XzLppVD+5jDEEslwfns+rEkNuAA9V+kclScps59Dg=; b=q9iDJmC6XVlaUj
	NAJrKOwBo+hg0KSzc0ASnKbFf+UhjDIXxn8c5a2ibzRddr2RxA9DKHPDT5lMUUOZJYHT2HpnhT3Z9
	Q77acHIcVXlwm6dhCRNMyNa0zLskJnyMlBkqoiP7o5SZUXE4VqEqijQW8Bu1tT+AkSda1RrhCLkD/
	sHPO2j8HvuB7MpighuOl7nTbe7pXfoTLEMuFlX24aTwBuM9OUDvzerMIFBALlVTAwlZY4bOSyNWRm
	lcQM8l3I0xw9oKKJegtnkvnYEDL7NgqqYSyHpyEeS5E/N+sdlJ1JaXXtC1ZHCfgYHAxdCdbVvP1rx
	a0DXMes3UXhMWEGpRvcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClLV-0001RB-88; Fri, 13 Mar 2020 14:31:29 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClKu-0001CK-H5; Fri, 13 Mar 2020 14:30:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yAVKD0RHxYIxeHBd/FF67CpYk8ckseS6yr5t+zpm/9AszjNc48KWJX9vURlv2VIQmf1Jm33exX
 UToRR85o8Iwo2MmolNOte6dGORnUKoAjJJMzn05kHdz+1qpMMJN8zgjoLBhmdu+GZPjYrUl7l1
 uULpgG5WBZfPv+jC6f49n85eb9HD3d/nUqsOmOkoYMlbh1gimMWbld8ZgUDz4Zvlj7TfiGlK+I
 fK8O3znb19qKQIFCIkTJrVIa3n5+PSCm5FaubDClM5EO5hwxPdqJlID2J/g31C4+a7wt5J053m
 aSI=
X-IronPort-AV: E=Sophos;i="5.70,548,1574146800"; 
   d="scan'208";a="5563306"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 07:30:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 07:30:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 07:30:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ri3Is3Qxu0K9V4sEIWMMRjWyFZR5ZrT7vr7wOWfIlyNPVfEAId2lAIHc71BijnMxWWpF3JTLrK/QqLdnvqRhTlQPqFvN/5CYuqDfZQQrRmnO1LDmVRH5IV9MBK4ZLiNjSCvuCZFJlWJAv+WH2oh1bRrDTCyp+u0jNviuGHCoet1wbJ5fFCij05/yTHG5wbAtGR6Ja88sxJaHairFlxA5dM59pTFfZpLZg9EPDNAtuEo5REG6NhG46Kag9eZHTsE3vdaVj3xRKUIrDon0GBi4BMBQJZD7CKoTPmDK8HIN77Y1ZNuN8q14GJzY/Onzj8nnskVnVIkctimy5aCUCQoagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0WkAc6atkij4tyHTbIHCyNENEOmL/waY7NTITYZdM4=;
 b=g/r3FxpS8LnXS5VAXaWcnAujoCAAD6EqzDRwUKdOabUodSszcbkCwXgigSWo1qD8ipAyzGjYUzYFITe+p4FC38IFO54MNdl3T3Ipq0/1j72kLqdIqoPGnyAkeZSHc0jHYuhEjXJ891H7p8KZv9gw1NQilrxkqHivxOdUN9PwS+6a7QsuQca6IoBaq3bzp9aqsZyFUVQ34EpYk2Jxp0q56KEa2G+PJUfduG4m2BMpDTFrHR4r/cV1GHefc/Vy1AmYvFCERQASOf2DWcz6fm8cfvbRbzLJpd6FjBQKrghHzEigsgTnHF2p1rLuQ0p/mo90QBqG2eAl1RCS7CoVh8663g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0WkAc6atkij4tyHTbIHCyNENEOmL/waY7NTITYZdM4=;
 b=M1YZi7NnjqdVsx653wtZunMBSvnfaVWUC1kBxjzE938a2qrfdYuNGi8ESmY3aTt8EqBAAhBtJHPCKN3Q5JXVBJ7RnGlMmhgGzn+2c4BtmUuAbXrjUOj75LUhcQZf5ADxE5aXVg3I1ojagUA4ibRwD9Eq3lZ6/6ttpdi64mNh9Qo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4479.namprd11.prod.outlook.com (2603:10b6:208:17b::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Fri, 13 Mar
 2020 14:30:48 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 14:30:48 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>
Subject: Re: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions with
 a manufacturer name
Thread-Topic: [PATCH 01/23] mtd: spi-nor: Stop prefixing generic functions
 with a manufacturer name
Thread-Index: AQHV+UP9aMq9KhVwKUKrK+Ih7RO/bw==
Date: Fri, 13 Mar 2020 14:30:48 +0000
Message-ID: <2838624.3XVpXx8FI0@192.168.1.3>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <91394111-cbd6-c24e-485d-88fcd6825dc7@ti.com>
 <20200313103007.7d7ea6af@collabora.com>
In-Reply-To: <20200313103007.7d7ea6af@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db6fa0dc-92f6-4766-d806-08d7c75b1fc6
x-ms-traffictypediagnostic: MN2PR11MB4479:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB447905CF96D59ED7D35C1FDEF0FA0@MN2PR11MB4479.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(346002)(366004)(396003)(199004)(5660300002)(8936002)(66946007)(14286002)(81166006)(66556008)(64756008)(66446008)(76116006)(66476007)(8676002)(91956017)(81156014)(86362001)(478600001)(316002)(6506007)(2906002)(4326008)(54906003)(26005)(7416002)(6512007)(7406005)(186003)(9686003)(6486002)(53546011)(6916009)(71200400001)(39026012)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4479;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5cTbzBh8KNl15tYvD5g+srdVVg7SkZ8nhPts6Hmxwr4hOsLDKXzoOl+oC14H0k2gLsWTjOF4wBy9VpkKhzdI4HF8m0nnlph6p/Zc3lN2TRqfVxNGL2bvz3TSKSMougyqJS39isywPLQOmyv7Fy1LFnCy22jYaRCi/Hd4El40KbDfuC/VKFRe/AUqv6E+o1zqC+qpITvN0hsFaEY5lZXjvVAExXyVPix7AC3v7zST0Jcqymch4qf/Tzh473BCL099P9V7EqWiAvB9Lb4fSTSk2Vax0uJiHWnctPkr1t3nGmlKfrsCxrzWOY7KU7d8oG4gTjDnCJc0Rtc7c+/OrB43rohaAJRIRAnx4T7mwnUmkMPsLvQVYt+2bCjvwu7AlxVSjeiJgLJn5XkcehbuhxCdrjzqVu6gxNycwG9DL5y0WAkJgeqYVTcmzoYEi+9f20SEU2aDIzCiBXqoZENOLzGdxd9UGofNof/TIts72/9k69Dtmmiq0X46tw4sb01X5+JUmS72MTjnct2/6meP0gV6Sw==
x-ms-exchange-antispam-messagedata: jtjUzHtXu6mLeil1fzNzi/K3zXi0Qba96XohPba9BR8FHNNrTW8iNWh0oh0OdLHQADtLuoleB+CGQW8k1NlO0q8m4NBf09/6a5S+vEF+DnW3Gv9m+oZqzsGPi7qqx5tFAFzZho9rfuX28hW7lnULzQ==
Content-ID: <91F0FF6E328E9140903FE1F0A48236EE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db6fa0dc-92f6-4766-d806-08d7c75b1fc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 14:30:48.2942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LEdOmCKOS8d00DQAyeBUWphQz9/LLW/XAQqdI4KzbbV7l+keMh3oj3kPJ6LqckQM1u3hfxJ6BX8L6YGtj7GM4enHmf8tpV5jr9l02H/JmNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4479
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_073052_647427_5962015F 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 vigneshr@ti.com, linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, opensource@jilayne.com, richard@nod.at,
 allison@lohutok.net, michal.simek@xilinx.com, Ludovic.Desroches@microchip.com,
 joel@jms.id.au, nishkadg.linux@gmail.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, ludovic.barre@st.com,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, March 13, 2020 11:30:07 AM EET Boris Brezillon wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> On Fri, 13 Mar 2020 11:34:55 +0530
> 
> Vignesh Raghavendra <vigneshr@ti.com> wrote:
> > On 02/03/20 11:37 pm, Tudor.Ambarus@microchip.com wrote:
> > > From: Boris Brezillon <bbrezillon@kernel.org>
> > > 
> > > Replace the manufacturer prefix by something describing more precisely
> > > what those functions do.
> > > 
> > > Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> > > [tudor.ambarus@microchip.com: prepend spi_nor_ to all modified methods.]
> > > Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> > > ---
> > > 
> > >  drivers/mtd/spi-nor/spi-nor.c | 88 ++++++++++++++++++-----------------
> > >  1 file changed, 45 insertions(+), 43 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/spi-nor/spi-nor.c
> > > b/drivers/mtd/spi-nor/spi-nor.c
> > > index caf0c109cca0..b15e262765e1 100644
> > > --- a/drivers/mtd/spi-nor/spi-nor.c
> > > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > > @@ -568,14 +568,15 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8
> > > *cr)> > 
> > >  }
> > >  
> > >  /**
> > > 
> > > - * macronix_set_4byte() - Set 4-byte address mode for Macronix flashes.
> > > + * spi_nor_en4_ex4_set_4byte() - Enter/Exit 4-byte mode for Macronix
> > > like
> > > + * flashes.
> > > 
> > >   * @nor:   pointer to 'struct spi_nor'.
> > >   * @enable:        true to enter the 4-byte address mode, false to exit
> > >   the 4-byte *         address mode.
> > >   *
> > >   * Return: 0 on success, -errno otherwise.
> > >   */
> > > 
> > > -static int macronix_set_4byte(struct spi_nor *nor, bool enable)
> > > +static int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable)
> > 
> > Sounds a bit weird, how about simplifying this to:
> >       spi_nor_set_4byte_addr_mode()
> > 
> > Or if you want to be specific:
> >       spi_nor_en_ex_4byte_addr_mode()
> 
> You're right. Maybe we can simplify things by having a single function
> that does optional steps based on new flags
> 
> SPI_NOR_EN_EX_4B_NEEDS_WEN
> SPI_NOR_CLEAR_EAR_ON_4B_EXIT
> 
> This should probably be done in a separate patch though, so ack on the
> spi_nor_en_ex_4byte_addr_mode() rename, assuming we also change the
> bool argument name to enter.

A single big function will be ugly to handle because of the 
spansion_set_4byte() -> it uses a different opcode.

I like the nor->params>set_4byte hook.

I think that spi_nor_en4_ex4_set_4byte() can be renamed to spi_nor_set_4byte() 
and be the only set_4byte() method exposed to manufacturers. 
spansion_set_4byte() will be static in core.c and the rest will be private in 
the manufacturer drivers.

Here's how the manufacturers enter and exit the 4 byte mode:
-> eon, gidadevice, issi, macronix, xmc use EN4B/EX4B
-> micron-st needs WEN -> private method as they are the only ones that 
require this
-> newer spansion have a 4BAM opcode (new, public command), older spansion 
flashes use BRWR (legacy in core.c, spansion_set_4byte())
-> winbond set_4byte method is hackish and may be reason for just a flash 
fixup hook -> private method

Let me know if you agree with this, so I can respin later today or tomorrow.

cut

> 
> > I expect sending WREN should be harmless even for cmds that don't expect
> > one.

The commands may be ok, but the flash can be corrupted. The WEL bit is NOT 
reset after the completion of the EN4B command on macronix flashes, so the 
gates are opened for some inadvertent commands that may corrupt the memory.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
