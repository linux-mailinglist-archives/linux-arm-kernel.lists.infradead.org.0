Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8D312CD2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 07:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oBkN1iDNBaVXk7uL/SeGYUzeKU73vQFBvdNtQOFDUs=; b=aYVusQKctDgQ43
	9kkDs6Fpb15tdOWiOXiahuBQYckoRyooCmQVy4Ul+XbdOHfSVWwk80DeLwciMDZO198Njc6qfayMT
	K+SoqAJdKWIY/x40Rwry0IonqmRACmL6xrmXjD6Cj9UnMWCIcMC8be5sVklYp/e8dOLy/dl2EXIBY
	bbi6ElS5c1cVaFp0TDywGIKkEMSttExjtJmfvfATPsCOnUE5MoyXOSyfz6aPl7oUZOMYQTQnMMN7g
	u0dyaniHegt5/X8QFKdbSVpRp59KzgZwNNubG3OAfBQdhidYEwvfYgTNtqP3AGTCv3URQrK9cHM+R
	sLjtTJJCLfb68zSXguMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iloDz-0003X4-Bp; Mon, 30 Dec 2019 06:08:19 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iloDn-0003WW-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 06:08:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GTorckRp21gGB7KnYcBeyGAmyuxiRjxePFikC5Wh1RfwouToTXBIBNslAuXWjiXuUFfeG8EUhU4xm7cdkNW2rj0AepOZw7c14FSp3Ia+jqEtB2uO21psTWXSwvzp5ZwnXh43r3NCq0jdULcrc+tqku6jd7MRBzlPsf5AqeWBKN4qrCGB9KL/VUMol41YgddZN7YOauhB8MFXo1g61MakRMDfkAIotCpPOqRYXnqpMSXCyQMX4FjQdlpS+MRUi2p8nHqUVsvliHKRhY1EN5+Qtf6yfClqBB9M4CX3oyi2OHB3JsUvPTtNHZma34ox3GPM0azPPz9ANbikq7E3lmvf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRMI8ZtlRaGZidIsK+4RgobNJBS5GNgh9gKqhW/YEXc=;
 b=T3E411OyR83jD9x+lMZo2pSBb6Z1O4Wr1OATTOm8BZkuWEmuLJOybH5BYalVy/LVD1EUpKvmGbRha7vdpL7lNKgjr3nsBKdrcdu60F2u9y20yQOseG8hBp8PuWSze/Zgxf83GvAd+rCKJgZ01iEIcBfNulddw1AYfYQHI6U9AkqaxYhpyqxI+DAz2NfWIWmUmIxlGBCRTaYkFutiR1aU3E27RwEw1BPCOVmLp7A5aeOhqt509SamiwrOsEJ4d5DzsTtD0+i/3fkVwNqSycUEIN3vwZ17B4C7UwNOkHXij8fWhhJG1YajYiK7gskrVXdHpG+R5LUaR0SQnFhyD5Iy+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRMI8ZtlRaGZidIsK+4RgobNJBS5GNgh9gKqhW/YEXc=;
 b=rBsmXMjdiroMgAxZRO+YSI7+ElJGn29f+lO+5oQxM2AFBI5xYytw07GszzNh4q2Zi6VlQ9jmD6uIyWglgVnQ8kVo6/bbkiOITyTbpHg6a0TC1eZ41dbK+rEZ+vy+C9JBxgCTjpgQX9bQGHprzcMU1IEPpaQSJeItndi0vf9qAoM=
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com (20.177.49.217) by
 VI1PR04MB5551.eurprd04.prod.outlook.com (20.178.124.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Mon, 30 Dec 2019 06:07:56 +0000
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595]) by VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 06:07:56 +0000
From: Poonam Aggrwal <poonam.aggrwal@nxp.com>
To: 'Prabhakar Kushwaha' <prabhakar.pkin@gmail.com>
Subject: RE: [PATCH] move reservation for elfcorehdr early
Thread-Topic: [PATCH] move reservation for elfcorehdr early
Thread-Index: AQHVvfrlL1QGQyVpb02DWGQcHEIPXKfSIjQAgAAQk8A=
Date: Mon, 30 Dec 2019 06:07:56 +0000
Message-ID: <VI1PR04MB49766D4CE391ECA88D9A46DD86270@VI1PR04MB4976.eurprd04.prod.outlook.com>
References: <1577613635-31509-1-git-send-email-poonam.aggrwal@nxp.com>
 <CAJ2QiJLGqRHHqrqPUArgHnsK8RNHy9tzDf4GhiUd69mztdBjXA@mail.gmail.com>
In-Reply-To: <CAJ2QiJLGqRHHqrqPUArgHnsK8RNHy9tzDf4GhiUd69mztdBjXA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=poonam.aggrwal@nxp.com; 
x-originating-ip: [92.120.1.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8418892d-a61f-4e22-8cd0-08d78cee9d71
x-ms-traffictypediagnostic: VI1PR04MB5551:|VI1PR04MB5551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB555186F33278F52C2011150086270@VI1PR04MB5551.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(136003)(396003)(346002)(13464003)(199004)(189003)(52536014)(86362001)(44832011)(33656002)(71200400001)(2906002)(53546011)(5660300002)(54906003)(6506007)(81156014)(81166006)(8676002)(316002)(55016002)(9686003)(186003)(26005)(66446008)(45080400002)(76116006)(66476007)(8936002)(478600001)(6916009)(66946007)(64756008)(4326008)(7696005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5551;
 H:VI1PR04MB4976.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AAE5VswH0CQt6kyNiLrzTiPt/8YZIGMaJtR3tlUdmxMmLjJN4QYJlCEqW1wibYLHzF6MbuXZV8ORAQhpfIiKeYZoXnRlLCrWHzhSRHVEc+/JSrp4v9mC9fCDCiMRgKa6zrYfSr1rTIglCyMiKJxKe6l6ihH3r7DxgxSrUPdlLib5NmqbiuPHwrWjvbmGf0nQee041HmEG8TdenQwV/oXe+roQZRTpJvdbE06JHZGeZOPjL4KFTfL7K4nNQ7TeiZsiXgqYuu2JYa5rFqVaYFvpL+RG9IFNCM3fS00L0+TZRoDIcpzHkSOjdc2R355+2PmUQ+liST7z62QAVyeEBkJyrw9pO/4ZrF222On+UOq5Z7RR0hpJV6iSyX4vSAiJq3rqMIBI/6g56VkTXfyyP4pTxjvJzUswJV1+qypRVNb/Y9AlXZWG1WPmqH2/ZNI3V95rjg30Im/IL9R8i/NL0EkEbmw3ALNqWh159QFZymkkLz/IozJDH72X/iS1FOINGde
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8418892d-a61f-4e22-8cd0-08d78cee9d71
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 06:07:56.6534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0H5WOimsaK0EO8QGciUBmLfRFwa8BaxzEBNge4BtcAWso8iFVDlaVi/dkXR0/NgvG4LWy9fbeoZT8Ig9ulhQ4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_220807_755831_91A7A2C1 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 Nikhil Gupta <nikhil.gupta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Prabhakar

-----Original Message-----
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com> 
Sent: Monday, December 30, 2019 10:38 AM
To: Poonam Aggrwal <poonam.aggrwal@nxp.com>
Cc: takahiro.akashi@linaro.org; linux-arm-kernel@lists.infradead.org; Nikhil Gupta <nikhil.gupta@nxp.com>
Subject: Re: [PATCH] move reservation for elfcorehdr early

Hi Poonam,

On Sun, Dec 29, 2019 at 9:19 AM Poonam Aggrwal <poonam.aggrwal@nxp.com> wrote:
>
> on some SOCs, elfcorehdr address may overlap with the address of 
> reserved memory allocated using early_init_fdt_scan_reserved_mem
>
> Signed-off-by: Poonam Aggrwal <poonam.aggrwal@nxp.com>
> ---
> Overlaps seen on LS1043A SoC:
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f7c00000, size 4 MiB
> [    0.000000] OF: reserved mem: initialized node qman-fqd, compatible id shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f4000000, size 32 MiB
> [    0.000000] OF: reserved mem: initialized node qman-pfdr, compatible id shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f6000000, size 16 MiB
> [    0.000000] OF: reserved mem: initialized node bman-fbpr, compatible id shared-dma-pool
> [    0.000000] Reserving 1KB of memory at 0xf7fff000 for elfcorehdr
>
> panic in elfcorehdr_read:
> [    0.443984] Unable to handle kernel paging request at virtual address ffff000037fff000
> [    0.451942] Mem abort info:
> [    0.454740]   ESR = 0x96000006
> [    0.457806]   EC = 0x25: DABT (current EL), IL = 32 bits
> [    0.463142]   SET = 0, FnV = 0
> [    0.466202]   EA = 0, S1PTW = 0
> [    0.469353] Data abort info:
> [    0.472243]   ISV = 0, ISS = 0x00000006
> [    0.476094]   CM = 0, WnR = 0
> [    0.479072] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000d9373000
> [    0.485806] [ffff000037fff000] pgd=00000000f7bf7003, pud=00000000f7bf6003, pmd=0000000000000000
> [    0.494553] Internal error: Oops: 96000006 [#1] PREEMPT SMP
> [    0.500146] Modules linked in:
> [    0.503211] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00062-gbf8d1cd #5
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

Please work on subject like arm64: move elfcorehdr reservation early for crash dump kernel
>Sure, I will add arm64 in the subject, this was a miss from my side.

Rest looks OK. I also tested on Thunder X2 platform with no regression seen with this patch.
> Thanks a lot
Reviewed-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> Thanks

Regards
Poonam
--pk
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
