Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FE61415D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 05:32:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dASXGBIutVckwIhWfzkmcNr4NRoTDJbkRi4/ZxLSU10=; b=PZn8XDOs8U7JOL
	TKRW/dhjzJV2jVCX4COiDlh9v+jAEtD6K+1Cs5J7GSbAaGiWY+2zTVh13V8lknuuMzPdV9VE+JAOE
	iLK1bd2xo4sgMhH/4FgEP5tpFZ/k2hMpxYx9B7l6gOXEcLuVVeDfUyDcVPk1XkdFCyKO+MfjRmNll
	7fLMs5Evjkzyp/qk7HBD1Wh/Ef0a/RmbCPXSDYwho2wE6U8x5PXl+X8Rw4+NaTjTgeq40vKLDfp2b
	3DNGnJx7y6GaGEQi0Rug7R1pS/6+9Xim0kkzFZh1Egq8e2r4Q4MmwmontxKZa6CzS38bsYDnb8mIP
	Fe7U6PMY/jKpn4W6uqTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isfle-00073n-7a; Sat, 18 Jan 2020 04:31:26 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isflW-000731-V5
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 04:31:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+Y/ZRZLhimrNQL8M5HDvLPUFYS8gHsUP2dzXWd8S9UnEiagNi2Ht2YYnuydvvwwGEs0s4E8ASiQVGvgs4ZQNvfUHZamuKFf2VrBaaBA91yppw2IQL+hw19vSOFxuoP96dFFQxoKAQ74VaX1h56etVlN/NTwgYwd7g3yEFh6aN83TMHgYMgG/nUxI0j2SxKoMVPH0tiXJrKgbofiV5USGRmFO4/6uTRYO6f0VOMysuedh5BHxZmqDVp0vhrmZHreZNLBy1SMWPzTCW68lA+GT2/Xm92RA0duonOZZDDn+IxMZDEmhGsPQfLDBkBTaPeja3I+OY2F98kA6El17dEARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5F5twP1DZLow01Bsb3zt7a5NEJ4gsoievMWOOCbJKQ=;
 b=l5nPzjocmtZwfsvEzdbyXR0Q2/hCUlspapQN8bLymvwY3e0Po5FV7ddkiztMCdLA5Z1DfIn806HuIcN78rl82cOgyUR4ghHgZDzgkBUgSKM+QsDq3KPsmBz9bvgA27boGHM8SwLFGQOrdOsLrhCp2V2gANvK5gKJdgc+mFMaBU5tMHoa+PNJZeR74AKBhxMW/Ut0UEMMlqui/sBvmC547H4KFbIjGt16lp1bl0VFLeiaTFlFpqqmYqHk2f4YMFjwv/zFlcPYdirftbl2C6K87VjLHEpuSlqJv6iAbhk/k08vBeMUBV6ERnwnYuPKxOr5OxbJx5E28+avDe+qkaRC+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5F5twP1DZLow01Bsb3zt7a5NEJ4gsoievMWOOCbJKQ=;
 b=NLYWFBrqogHj6c73dBmb58GcE5l1i5QkoQNgV/gLD0JeBw21tGhSc30XDqGiUg7CXXcbUwFWng8zyEb0eWmRRgoD9bfmSa6LmcWPTJtQjPEa0s//7lPg6qQop5o83VMTbnPcaSHSVdI0Mp7IGP7ndmzbIRDUChiMqYgMSr9Siuk=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4559.eurprd04.prod.outlook.com (20.177.57.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Sat, 18 Jan 2020 04:31:13 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2644.024; Sat, 18 Jan 2020
 04:31:13 +0000
From: Poonam Aggrwal <poonam.aggrwal@nxp.com>
To: Poonam Aggrwal <poonam.aggrwal@nxp.com>, "takahiro.akashi@linaro.org"
 <takahiro.akashi@linaro.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2]arm64:move elfcorehdr reservation early for crash dump
 kernel
Thread-Topic: [PATCH v2]arm64:move elfcorehdr reservation early for crash dump
 kernel
Thread-Index: AQHVvuuB1a7r5S/LA0Wg32VAKJsNkKfv8kxw
Date: Sat, 18 Jan 2020 04:31:13 +0000
Message-ID: <VI1PR04MB7023B56076C35CF579B2175286300@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1577716974-7188-1-git-send-email-poonam.aggrwal@nxp.com>
In-Reply-To: <1577716974-7188-1-git-send-email-poonam.aggrwal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=poonam.aggrwal@nxp.com; 
x-originating-ip: [171.79.114.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 39e22a42-85ef-47ff-476a-08d79bcf4085
x-ms-traffictypediagnostic: VI1PR04MB4559:|VI1PR04MB4559:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB45594904836138C3A90241C386300@VI1PR04MB4559.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0286D7B531
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(52536014)(478600001)(4326008)(33656002)(45080400002)(2906002)(8936002)(9686003)(186003)(81156014)(81166006)(110136005)(55016002)(5660300002)(316002)(26005)(7696005)(71200400001)(6506007)(53546011)(76116006)(66946007)(44832011)(86362001)(66556008)(66446008)(64756008)(66476007)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4559;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tx5ngcsVhD8NgDEiEmgsCSzN3jOx9iELP6dRwv9MS7LscIDqjiwMhn9v3JFFp8anGNrkXUK1mQAfH35p6XXLSBMFtJdriRnLUEr4Yn+J5Z6kWD3ugzigaScQt0BtjNGg7d7jTFQGiemXuLNmRDwyZQKfHrYOSPPpSIPd8AIzNPOTAa1iUu40N2P9d97hwY1QxqG22m2vmo6V5rDMHOfARZ2I3Gdc76IfBM1xVYCs/IpHwefT38moda4NGwH1tS8iHZvdV/itz4pebUzhd29S8VJQMzxOv6WwXnM8c0y2pNmnxT0N6D5IT22t3rwLi+HDaWoISfh9FFI0YGRINlvJosUr0PhB5YOO9Ij61N1oKekLHV6HQqDwynBtnheiGQ+Wluw9cBgoCLYT+q1oCTwDBepugg8CRqvj4fMAJlGGR2RiQfcXBfSTwrSB2BcW3DLC
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39e22a42-85ef-47ff-476a-08d79bcf4085
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2020 04:31:13.8051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tc3G4TAmaXGwuFYl/4eg+RaeTLdQOL6iSce7r4woq3C5hW8haXSsTgdZf7cVb3AYosdG4ECcun3K1P1FFI7NKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4559
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_203119_102204_0D23C04E 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nikhil Gupta <nikhil.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Akashi

Can you please help review.

Regards
Poonam
> -----Original Message-----
> From: Poonam Aggrwal <poonam.aggrwal@nxp.com>
> Sent: Monday, December 30, 2019 2:01 PM
> To: takahiro.akashi@linaro.org; linux-arm-kernel@lists.infradead.org
> Cc: Nikhil Gupta <nikhil.gupta@nxp.com>; Poonam Aggrwal
> <poonam.aggrwal@nxp.com>
> Subject: [PATCH v2]arm64:move elfcorehdr reservation early for crash dump
> kernel
> 
> on some SOCs, elfcorehdr address may overlap with the address of reserved
> memory allocated using early_init_fdt_scan_reserved_mem
> 
> Reviewed-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> Signed-off-by: Poonam Aggrwal <poonam.aggrwal@nxp.com>
> ---
> Overlaps seen on LS1043A SoC:
> [    0.000000] Reserved memory: created DMA memory pool at
> 0x00000000f7c00000, size 4 MiB
> [    0.000000] OF: reserved mem: initialized node qman-fqd, compatible id
> shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at
> 0x00000000f4000000, size 32 MiB
> [    0.000000] OF: reserved mem: initialized node qman-pfdr, compatible id
> shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at
> 0x00000000f6000000, size 16 MiB
> [    0.000000] OF: reserved mem: initialized node bman-fbpr, compatible id
> shared-dma-pool
> [    0.000000] Reserving 1KB of memory at 0xf7fff000 for elfcorehdr
> 
> panic in elfcorehdr_read:
> [    0.443984] Unable to handle kernel paging request at virtual address
> ffff000037fff000
> [    0.451942] Mem abort info:
> [    0.454740]   ESR = 0x96000006
> [    0.457806]   EC = 0x25: DABT (current EL), IL = 32 bits
> [    0.463142]   SET = 0, FnV = 0
> [    0.466202]   EA = 0, S1PTW = 0
> [    0.469353] Data abort info:
> [    0.472243]   ISV = 0, ISS = 0x00000006
> [    0.476094]   CM = 0, WnR = 0
> [    0.479072] swapper pgtable: 4k pages, 48-bit VAs,
> pgdp=00000000d9373000
> [    0.485806] [ffff000037fff000] pgd=00000000f7bf7003,
> pud=00000000f7bf6003, pmd=0000000000000000
> [    0.494553] Internal error: Oops: 96000006 [#1] PREEMPT SMP
> [    0.500146] Modules linked in:
> [    0.503211] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00062-
> gbf8d1cd #5
> [    0.510725] Hardware name: LS1043A RDB Board (DT)
> [    0.515446] pstate: 80000005 (Nzcv daif -PAN -UAO)
> [    0.520260] pc : __memcpy+0x78/0x180
> [    0.523847] lr : elfcorehdr_read+0x28/0x38
> <snip>
> [    0.611262] Call trace:
> [    0.613713]  __memcpy+0x78/0x180
> [    0.616950]  vmcore_init+0x70/0x534
>  arch/arm64/mm/init.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c index
> b65dffd..e610180 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -438,6 +438,8 @@ void __init arm64_memblock_init(void)
>  		initrd_end = initrd_start + phys_initrd_size;
>  	}
> 
> +	reserve_elfcorehdr();
> +
>  	early_init_fdt_scan_reserved_mem();
> 
>  	if (IS_ENABLED(CONFIG_ZONE_DMA)) {
> @@ -452,8 +454,6 @@ void __init arm64_memblock_init(void)
> 
>  	reserve_crashkernel();
> 
> -	reserve_elfcorehdr();
> -
>  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> 
>  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
