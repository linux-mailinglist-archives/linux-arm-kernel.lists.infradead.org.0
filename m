Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B931E9333
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 20:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGsSdmvvyAQ7T8JACdiDuuZWmuiVTZ/N5RDjdHdLTig=; b=rH8Awsf+VjTgil
	ibWgAAMj+CbwXFvcFOVkRxm3IAWrlNC+0J0Aap6UaTNifsKuUEOZMt6aeezprh2hYA12QGF9GPHb4
	rhU4slESRLsr+qmdM0Rnpe5kOHEMc4jMD0FeI4ASAOsUVVPAd1bsx4eQ8UwWZ/4OZrJpBmDXlXIrU
	lWRnh0jlq0I934huaXy88kODSibq8JFwc9fOiw+QZ8dIhVNPMPr+V32AdVqVDyldIPGdsi9yFOyV0
	pvAm5L/8W+ZPhFdDKAqlg17CEdYExjs/nRt0fioqk6PxWJDfEb+QHm/X4zCzpyWzbwy7V3dkbL8g5
	4zLdkiigt81v1Lkmbq/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf6Ze-0003nl-2z; Sat, 30 May 2020 18:51:14 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf6Z7-0003bp-8m; Sat, 30 May 2020 18:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590864641; x=1622400641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=u1RsWdU2xjj6qg8gaqDPRG94qbe9AS0LapxH4oDYLQ4=;
 b=XwswH2AiNYctMSYKdD81QeKi8dkAFkejREhNj27f1meSoU5mRPwuUb5S
 OywgHZ+fpWLn/AubvTxw4yPRmSofrwwY49bhq2U4HT2uwKFFechAD++h6
 iREmamFhpmlqXSjjhGCcLKi/OsH8jlo9M5UhlbfVUVc3i2d9y1cNwmmJm
 Kz+OKT68vqb+EQkPauPytjElSBOVzFDfMaEe6EHt9DlmctnXH1mYgbLg1
 QYpSzr8E/vQU2uLOKTaU+ObiyA9JQXmOjRCq68ZDT0QCgCrizn+Rfi5YY
 FPHDlTBXkDh5q0JKjTsKEG13nYmfmmi/72dUn/JYG3uuU0EvCk/OkLZ6Z g==;
IronPort-SDR: PCFAUhNB2i6nvq+90aGV3DsbFJRXbjxoyZB13bCVTJV/FOlYXlrgreinq3ZZbLpsz03n/+1NHG
 eDY5W77VciFB10epq+p8lDJh37mTPS/x1iDVFdqu+Uc1578I51VhzeRjb9Epd4f6wXtved4i2h
 /5hoZ46gAZ0/UbwBpm4qOFD2oYgk+kX9iVJfTQthBxbwXjWfU6xIOjT9bByE0Jf9NnIxf+qj4Q
 t7Ujo8zztkjuMuYDFHz8pwrttqUVuc/v7rtnvBYMi02RemlPoHRQ5Lu86OD1hh8RXQTpfYlRkv
 3z0=
X-IronPort-AV: E=Sophos;i="5.73,452,1583218800"; d="scan'208";a="74987486"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2020 11:50:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 May 2020 11:50:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 30 May 2020 11:50:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CO2lyUPcpG+QfZFnQ4o0O+MyS3ZxChA8LvS4+yRlXIOtqKqU70f4pz/gpGqrbDyDTfSr0IqbJM3v41qEmZ/1BR9/+LN6ExdgohNzJ41NFZ4cf3vsJgWNHVS9vV9W0bKjb8p5NbOZHIW7cJPAAWIcBwx8LSCepbWFswnJPH653EiEiSAeJqh3fPpY9IJH1PSciB3ujuG+eUyPFEiRm9qHpNG4dTTN+OU0MGaK5SKG15AH8/H8lMcF/1+Uga1zKrQTDBF+ZcFqmTpDEML9/FU1vTWI0GcYUXEfWGeXVl6C2A42I2U76qdNUJlxo8SJg2QLgHa/vXYSk6V7R8zPBe8cag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1CUiFFtBV02bFc1kB2pJspv686Rx5qmcanhBAM4Yks=;
 b=P4QnoUDx8XoyZjdoVeXP29blYx3XQ5JLylb57O/btvJjwIzT1uuo6dSHTBPL1S/3TtTsjVM815OJulLdO4A8KaXlD8WMqjy78qVeIuRy0fi8ztMTtT3FnfltVcd2mx9ugdjTnBTBM6wnbiu7jgSE9Vk+3rg0cwpjnFqnSNNVCGVfy0crLqdppy1bN6GzuYj7oQuxksivR2JNA4xxhRJZjUhvwRedrhGVrx/g8mtm5UW9tE+GKdYfAKBAUDXl0Xts9fGkUDRDlHIZONa/XqeZqvqXBvo5a2Kr+0mOyvXl+1FlpW53LqHYTV0lc3qSuXiDnjI4sbALgpA1rGi7WHbqwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1CUiFFtBV02bFc1kB2pJspv686Rx5qmcanhBAM4Yks=;
 b=KP7j7vwd0yY9HexE1Pp+IFpKuSFqhUd+9Rz046rflUvDIKdiF9jSsX2/kwRJ52QVgWbGphL8gLiB5ZJVX1TnINwU5ebc7UBZbl23Fse9MK+yhTRoJriauzAbADlfiaUe+A0H1H/Iv2QiN4paFmDvnkB8nE7MLBFzCJ4qEHj8pLI=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4008.namprd11.prod.outlook.com (2603:10b6:a03:186::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 18:50:36 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3045.018; Sat, 30 May 2020
 18:50:36 +0000
From: <Tudor.Ambarus@microchip.com>
To: <p.yadav@ti.com>
Subject: Re: [PATCH v9 07/19] mtd: spi-nor: sfdp: prepare BFPT parsing for
 JESD216 rev D
Thread-Topic: [PATCH v9 07/19] mtd: spi-nor: sfdp: prepare BFPT parsing for
 JESD216 rev D
Thread-Index: AQHWMnU5Ic0v/N8rDUqZSmm8Tcf8kKjBAXsA
Date: Sat, 30 May 2020 18:50:35 +0000
Message-ID: <4926455.2XfmzM9RVx@192.168.0.120>
References: <20200525091544.17270-1-p.yadav@ti.com>
 <20200525091544.17270-8-p.yadav@ti.com>
In-Reply-To: <20200525091544.17270-8-p.yadav@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a12f4ace-cb24-4329-ac07-08d804ca56fd
x-ms-traffictypediagnostic: BY5PR11MB4008:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4008FBABBD7F75AFE9FA84AFF08C0@BY5PR11MB4008.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VBwwrBwsax09oOGDS7O1DQgnIWugZh5GJyLJCOIe8hehRt/FnnnteQQMUjjqk2lIW4zYMufqL7sCfTQ2T3MyRd9zmOd9QWj9i7j6AdUSFvQE8a5fq6y3OqUZotHnseM6ADB+FNjE49kiEzvoHnwsxlgFPtJ/t8+3Ki/hYWSlOARpOc2/PU4rlBdvGRGYnAmws57TWge97lkbX9LnjNjLnng9/9pdHKFRjgt+K9g4R34o+AV+lSUpqCQljBOBaQD0z0DBXwSczCsgilyrzp3DOjFjbwfr7PKu4ItTrZk/3xHHymYHD+7/M4sqSxquedUnP2a4aC/vWC8soFjBO4eCH2kxQpPsZ9hYLYQxVNfSWbmFsaRJrjklAuuPpgPz8mZ1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(39850400004)(396003)(136003)(6506007)(2906002)(86362001)(478600001)(54906003)(316002)(66446008)(14286002)(6512007)(64756008)(6916009)(9686003)(7416002)(4326008)(6486002)(76116006)(91956017)(66556008)(53546011)(66476007)(71200400001)(8676002)(66946007)(83380400001)(26005)(186003)(8936002)(5660300002)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: T6ReAZAkL9vZB2BP5PQoeAbiAnRVtiGhBAws8BZ6t1jLyWWqvwDmvjsfQkZae8+/u1mSwJLLermXU34AnX0iRA+lft7nsypkDw2bPtFrMArvRVu/dDr6uLcTXFu3oTY7koQ10xTjPjzP0cl5ezJMAvx5O0r1dl+hQadZtn4lR2J3SpOgM3drihuAy/lxHM8lKZ0l39qTFchRLOM4urnKLj0qtRdA0yJErrgy1nKB8n9lNbh5b0yLO+cXTS/K+z382DByh2iL2YO97DgOJfQieISjCpA9Fpa7VYA8MpmcqAXwukcv7yCCJHQO4vhLH0RkcgQUmKH/JXnl3IE9BQErvpH/dpIl9tscH77UBtZ/eRz1lroIRh48Xn9AotGTRARnag0txdH8UKmOIMoMIFv/rbTsnNnoW1mWsMC9yhZXB+5prRFEvR9FFizwmcJgId8ZISbcQOHuDjVBy8MFJ5UmsOsMt2+jJu51eopMF/6sFqE=
Content-ID: <9B76F8AA5383954EA233D971044EE051@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a12f4ace-cb24-4329-ac07-08d804ca56fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 18:50:35.8257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z41Z9Rk0DlrJ89DhbnSzPNLE0xAdy4cpNOkZOdF7cBxRDmU6jthVFuxZho6ecSW6J3W46AasmmLED2ew0HdNbDIb8V32FAJfxDJBvq2LbR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_115041_375432_7626531E 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, masonccyang@mxic.com.tw, vigneshr@ti.com,
 richard@nod.at, nsekhar@ti.com, boris.brezillon@collabora.com,
 michal.simek@xilinx.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, May 25, 2020 12:15:32 PM EEST Pratyush Yadav wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> JESD216 rev D makes BFPT 20 DWORDs. Update the BFPT size define to
> reflect that.
> 
> The check for rev A or later compared the BFPT header length with the
> maximum BFPT length, BFPT_DWORD_MAX. Since BFPT_DWORD_MAX was 16, and so
> was the BFPT length for both rev A and B, this check worked fine. But
> now, since BFPT_DWORD_MAX is 20, it means this check will also stop BFPT
> parsing for rev A or B, since their length is 16.
> 
> So, instead check for BFPT_DWORD_MAX_JESD216 to stop BFPT parsing for
> the first JESD216 version, and check for BFPT_DWORD_MAX_JESD216B for the
> next two versions.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/mtd/spi-nor/sfdp.c | 7 ++++++-
>  drivers/mtd/spi-nor/sfdp.h | 5 +++--
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
> index 5cecc4ba2141..96960f2f3d7a 100644
> --- a/drivers/mtd/spi-nor/sfdp.c
> +++ b/drivers/mtd/spi-nor/sfdp.c
> @@ -549,7 +549,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>                                   SNOR_ERASE_TYPE_MASK;
> 
>         /* Stop here if not JESD216 rev A or later. */
> -       if (bfpt_header->length < BFPT_DWORD_MAX)
> +       if (bfpt_header->length == BFPT_DWORD_MAX_JESD216)
>                 return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt,
>                                                 params);
> 
> @@ -605,6 +605,11 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>                 return -EINVAL;
>         }
> 
> +       /* Stop here if JESD216 rev B. */

Applies for both rev A and rev B. Used the following comment instead:
/* Stop here if not JESD216 rev C or later. */

> +       if (bfpt_header->length == BFPT_DWORD_MAX_JESD216B)
> +               return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt,
> +                                               params);
> +
>         return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, params);
>  }
> 
> diff --git a/drivers/mtd/spi-nor/sfdp.h b/drivers/mtd/spi-nor/sfdp.h
> index e0a8ded04890..f8198af43a63 100644
> --- a/drivers/mtd/spi-nor/sfdp.h
> +++ b/drivers/mtd/spi-nor/sfdp.h
> @@ -10,11 +10,11 @@
>  /* Basic Flash Parameter Table */
> 
>  /*
> - * JESD216 rev B defines a Basic Flash Parameter Table of 16 DWORDs.
> + * JESD216 rev D defines a Basic Flash Parameter Table of 20 DWORDs.
>   * They are indexed from 1 but C arrays are indexed from 0.
>   */
>  #define BFPT_DWORD(i)          ((i) - 1)
> -#define BFPT_DWORD_MAX         16
> +#define BFPT_DWORD_MAX         20
> 
>  struct sfdp_bfpt {
>         u32     dwords[BFPT_DWORD_MAX];
> @@ -22,6 +22,7 @@ struct sfdp_bfpt {
> 
>  /* The first version of JESD216 defined only 9 DWORDs. */
>  #define BFPT_DWORD_MAX_JESD216                 9
> +#define BFPT_DWORD_MAX_JESD216B                        16
> 
>  /* 1st DWORD. */
>  #define BFPT_DWORD1_FAST_READ_1_1_2            BIT(16)
> --
> 2.26.2

Applied, thanks.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
