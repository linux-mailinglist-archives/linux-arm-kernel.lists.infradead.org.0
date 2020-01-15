Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161BE13B920
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYG2mDzVLRpFUAR+Im39yZMmeQGPnUdQe2zMYByo8lY=; b=VZfeqU+/2TJKBJ
	niJ5wr8EKsiZQm/+nStkKbrAFmVqCJKYlRhDBrYi5QkWIGK5A7RiKZ41WkeZnnbfv/HE1tlQHQ1cL
	PJ2JHt95vsLmkHNwkpI5tXbNtAE039C+XkB+EqIO3tE6tsIctVCvVqmDsJx6Qsc4VdWsPQMulDuFV
	2hNaRiOLMf2pPF0vlIM+OAOPgQHJjlRD/IM4j53VF7rln2TEehU9yhJHiduqsNK5t1Fm7yo4+T8Yg
	Mjo6nihGQ4qNAQ8Bd4eBPmGdtHQtSyJ2MFPQM1UXDWlpXPP1P0ap/aLc9qxKwJqgG1Ubna6VlPbMB
	XYTQDn58F3esY4BflGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbRT-0005nL-54; Wed, 15 Jan 2020 05:42:11 +0000
Received: from mail-eopbgr770045.outbound.protection.outlook.com
 ([40.107.77.45] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbRJ-0005mr-RI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:42:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RsQNvglnRtat2vJQ9k5NrVT4spsgNGFaD7e1CD8qt3fF1LAj/pxrNBI3O26aWmpGV/f+//Y1DY187E/DmkGj6DNFn5cynJWgLGHqyPDADMkwQiRiVjnTEMO6T1Hg4hCVTTiky3OM1kIMq/6hlQvzzYBdZrqu90PqwkjL2BhdHdsMFrGxgDI2XBWcy6UzKOdblx2L5EQOAfbbqU7Nf8J6kax1ujDTmw8xiVa8MzTOuhuzajJvJ9AZrVcQ/7Wc+1HitzBWGpdoJRhLnR7e+Ljc83GHV0pAAVURvNqV7qsEqa9KMUTpiEmgpvoNOCswn0b+p/jN0qvjKCJUiRtegem0oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fRV1W+jiZ4ZyzAL3/jG1CIKfWeFMg4YBzIk2tPxU0VY=;
 b=mUDMqid61L3EzhWmB3sVJNg+NNNM8L0d9VTUvFU1iVMWJbWmidhMTxJFXjrmMNrQXehamBBxGz+lmtZMjQqH5ev2QTg6V8XTUVZcxoilC+hynF6uC2J53y2SA0cM4P1fyaX61S/fVRLuWmicORKo3y8jFAV6rOh2BSvhIJrvYyJLxj2X8/13UlgizFyb3zH0ET2VLhEE2EjVx1RYgsi3GKeAl39755BasjuF+J0GAxxeURO9S+HIqOq8LBi3PQKdWJrPMxDvif1ZXCB3Sw9N/nuAp0ZwjxZRpTAXhWsfW7CY/HBsb6XYBs6ucmiBxI9X/CuYNEraglHaxa7nSh2tlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fRV1W+jiZ4ZyzAL3/jG1CIKfWeFMg4YBzIk2tPxU0VY=;
 b=hAP/FApO3elECF2D+2/5vT+9RNQwgj7QwucwoEHMlFjd6pLG4K8NQ/EchE8fSleVFzcdgO2sD/Vq+UuvzarKzDeXqa8Nl4lCXAUFUo8sAUrZ7xAQ14A6YZBJq7q+GezJvxE8zJ5BvRtDNt05dDaI/VsaBDhjxoCRY6eptpfAAmY=
Received: from BN7PR02MB5121.namprd02.prod.outlook.com (20.176.178.80) by
 BN7PR02MB4034.namprd02.prod.outlook.com (52.132.223.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Wed, 15 Jan 2020 05:41:59 +0000
Received: from BN7PR02MB5121.namprd02.prod.outlook.com
 ([fe80::ac81:30a6:e1df:fda7]) by BN7PR02MB5121.namprd02.prod.outlook.com
 ([fe80::ac81:30a6:e1df:fda7%7]) with mapi id 15.20.2623.017; Wed, 15 Jan 2020
 05:41:59 +0000
From: Harini Katakam <harinik@xilinx.com>
To: Michal Simek <michals@xilinx.com>, Matthias Fend
 <matthias.fend@wolfvision.net>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] dmaengine: zynqmp_dma: fix burst length configuration
Thread-Topic: [PATCH] dmaengine: zynqmp_dma: fix burst length configuration
Thread-Index: AQHVx5K2bU2wqJwJJU+7xM+Dn7mi2KfrPF6g
Date: Wed, 15 Jan 2020 05:41:58 +0000
Message-ID: <BN7PR02MB5121D2FEF76CF4A69BDEA7FFC9370@BN7PR02MB5121.namprd02.prod.outlook.com>
References: <20200110082607.25353-1-matthias.fend@wolfvision.net>
 <137545d8-466d-e2f6-1e3e-8879dcee423d@xilinx.com>
In-Reply-To: <137545d8-466d-e2f6-1e3e-8879dcee423d@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=harinik@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 24d1e420-62af-4944-e0d6-08d7997da38c
x-ms-traffictypediagnostic: BN7PR02MB4034:|BN7PR02MB4034:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR02MB4034568E1544722E22A2B48BC9370@BN7PR02MB4034.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(71200400001)(66946007)(52536014)(76116006)(2906002)(5660300002)(86362001)(53546011)(66476007)(110136005)(8936002)(6506007)(54906003)(81156014)(81166006)(478600001)(66556008)(186003)(8676002)(26005)(316002)(7696005)(64756008)(33656002)(66446008)(107886003)(55016002)(9686003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4034;
 H:BN7PR02MB5121.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HOiCvfd9gkFZKUdenXmojHgT9RSUzlxuXwXKtifUsRffQ6TIbNZeb8BHW5WAswI4AdZsrgJ9XVwlG1PvvcDwPu3CPsjHjz0bTlniM7zwlrLDh38VblYKTGXIC9QRZ2jCTnQyPwdOAMXn3tL15dUVE/iovcYvrQRTs1XipmMmQPByfxwE8GxQAptuLkyQ9/JpK2GQIfcxKcgYgzQ2rveOfOVXK0oHKO0VBpcAs4O3lcG0AqZkOSQmWP1lOEUMY3JnNKsE305cNYW34Yj17qiinBZCXvjAAvKYVBo7T5WgQR/KWZNuPSzUC7YqnDcTQVk2vet32xXGZm8pPT0YxQ8VD9YWU852KUuREDZK+j8hqFzP+KywqkrD6RD9lD3J1agIpc5xbiIrWbzqmDelFBBBaWFDmBgkiDNZBIbpgpQbHvYhJb+uPNr2JDguyTNUyznY
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24d1e420-62af-4944-e0d6-08d7997da38c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 05:41:58.9165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JVyVzXXgXv94w2+78wLWSJKDG41pcQ9qwYCDHlp+sOGFxzgGEV7mIQ5oTECE3fNkZZ8mKevo6gidNwfTXclKyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_214201_886530_E22BA3B8 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, Michal Simek <michals@xilinx.com>,
 Radhey Shyam Pandey <radheys@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

> -----Original Message-----
> From: Michal Simek [mailto:michal.simek@xilinx.com]
> Sent: Friday, January 10, 2020 2:18 PM
> To: Matthias Fend <matthias.fend@wolfvision.net>; linux-arm-
> kernel@lists.infradead.org
> Cc: dmaengine@vger.kernel.org; Michal Simek <michals@xilinx.com>;
> vkoul@kernel.org; Radhey Shyam Pandey <radheys@xilinx.com>; Harini
> Katakam <harinik@xilinx.com>
> Subject: Re: [PATCH] dmaengine: zynqmp_dma: fix burst length configuration
> 
> +Radhey and Harini
> 
> On 10. 01. 20 9:26, Matthias Fend wrote:
> > Since the dma engine expects the burst length register content as
> > power of 2 value, the burst length needs to be converted first.
> > Additionally add a burst length range check to avoid corrupting
> > unrelated register bits.
> >
> > Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
> > ---
> >  drivers/dma/xilinx/zynqmp_dma.c | 24 +++++++++++++++---------
> >  1 file changed, 15 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/dma/xilinx/zynqmp_dma.c
> > b/drivers/dma/xilinx/zynqmp_dma.c index 9c845c07b107..aa4de6c6688a
> > 100644
> > --- a/drivers/dma/xilinx/zynqmp_dma.c
> > +++ b/drivers/dma/xilinx/zynqmp_dma.c
> > @@ -123,10 +123,12 @@
> >  /* Max transfer size per descriptor */
> >  #define ZYNQMP_DMA_MAX_TRANS_LEN	0x40000000
> >
> > +/* Max burst lengths */
> > +#define ZYNQMP_DMA_MAX_DST_BURST_LEN    16
> > +#define ZYNQMP_DMA_MAX_SRC_BURST_LEN    16
> > +
> >  /* Reset values for data attributes */
> >  #define ZYNQMP_DMA_AXCACHE_VAL		0xF
> > -#define ZYNQMP_DMA_ARLEN_RST_VAL	0xF
> > -#define ZYNQMP_DMA_AWLEN_RST_VAL	0xF
<snip>
> > @@ -887,8 +893,8 @@ static int zynqmp_dma_chan_probe(struct
> zynqmp_dma_device *zdev,
> >  		return PTR_ERR(chan->regs);
> >
> >  	chan->bus_width = ZYNQMP_DMA_BUS_WIDTH_64;
> > -	chan->dst_burst_len = ZYNQMP_DMA_AWLEN_RST_VAL;
> > -	chan->src_burst_len = ZYNQMP_DMA_ARLEN_RST_VAL;
> > +	chan->dst_burst_len = ZYNQMP_DMA_MAX_DST_BURST_LEN;
> > +	chan->src_burst_len = ZYNQMP_DMA_MAX_SRC_BURST_LEN;
> >  	err = of_property_read_u32(node, "xlnx,bus-width", &chan-
> >bus_width);

Just a note that this changes the reset value of this field  from 0xF (acc to the spec) to 0x4.
It may need to be updated for future IP versions, if any, but I think it makes sense for now.
Thanks.
Reviewed-by: Harini Katakam <harini.katakam@xilinx.com>

Regards,
Harini
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
