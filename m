Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB059E552
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwNdvjuUUmlMOJ0Cra5CEXKT3JF9P+AQsAe3E0dNtSk=; b=Y0ahW6CBmalwI8
	k8qI1IAkMDTx2ZHSsVrnSeTZakPJaNEZ+DyupuUFpmIvNe2MRgFqUAk2BYmoCN6Ik4XyplJjuSa5v
	tqs/cLaYluaDfc1kZnARe0B/ZD+Sdg1VUBTP9KhvBtGTXKvbbgdbBwAPqz23bhS1DjaIlaO0f9XAm
	ZmKw7WUCisjWMbBrb+GQJJej4pz+v0H/BK7igZ0Q9b/ywMtkptO7+YwhnuM3gCLdYvMLef9Wo9aA8
	C9vGDSwjzlPD4rB5HNQ336JPFfwKzGtqhQiDmHyytriUAXg/Ik4qk/5e7qD+ZIruTfrEn/h3s56r5
	3iptOthyYtGrRHVOaSBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YLp-0005jV-52; Tue, 27 Aug 2019 10:05:21 +0000
Received: from mail-eopbgr690132.outbound.protection.outlook.com
 ([40.107.69.132] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YJq-0004a1-SL
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:03:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CCLLh9tHGhGutNySZb0R2tUORy6bJaCmjE406vazF+6/Kgu8gr+iqoUErJ0cNcDteQPtDHPzCs1hg6J0SFOk3C6iXsiXbffJfOd9VAGNm6f127OscxHhGdVrJlapWJRK5ZDWEsJEsLwNo/fSLuuvd2gsqNvdnq4rjGDIFhTVQovptnFM8wtLCgR/k5PW810zV6Nx2rJuR8rraiaD1CjXvkEaigjVCBdB2x1iezGKOwW2m3fourOb0WuIkhNvOEifFVqSK4Gsru6AV+OP0wwmpX/GvWOjs09BXBo6mNnZPM8oolKfkvOxdplV9r3l8xNRhJi+9l4kNBDFqeS+XZvFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Xwq9EmfsYlF6D5P+L2rJ5Fh+3lrN+JOtnL4zwXCgro=;
 b=TA0ZJKsDG4sJ6ghHznKr/z6eI6AlS9NBQL9TTPDNHAoLg0ReaZTSCM4L6skW1NWO4Pt3vcdPIfneeiglHWcBcK1LGtsl0zU06lDUXnw5uEjDUCrXEY4QRQSzMW8Aa8q9gOJgHi0V9xU6sAoOqMgr/iqnU2KQgWj7Ob6nl8WSLJ6wIVnEkYYiUCxE9Z8VQnEQhvbny81+qYVJv44xkljQUUaZ3QzCPfwv63ncwGkXjzZwWO0u/MpZyBWSv6+cZYNyGFwOJ4jG4ySIx63AOHJu4eCFkphPh9luYwX2DHNyE88/x2R6eMMuaOwy8aIfHgnVUwYKfDIIUjMBTxXXLs+PLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Xwq9EmfsYlF6D5P+L2rJ5Fh+3lrN+JOtnL4zwXCgro=;
 b=Vy24JsrBlA7/Vh3EIWL0Ny/ZTs/hYZqwAmiufIhdLlQBmKOS7JkdpgoZb0jjxsHkcqd8iQ3JKQOuDgt/c+erc9GJZgBaY9qoKiTJuItVwvTmLlicmuDV+VO9gm4J85VF461dzeMK9glJxl/a4qcIHpghgm6bi3v8NrZZjWgggag=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1390.namprd22.prod.outlook.com (10.174.162.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Tue, 27 Aug 2019 10:03:17 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3%11]) with mapi id 15.20.2199.021; Tue, 27 Aug
 2019 10:03:17 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] MIPS: document mixing "slightly different CCAs"
Thread-Topic: [PATCH 6/6] MIPS: document mixing "slightly different CCAs"
Thread-Index: AQHVXL6l2iVfJsYr5Ei+0s2DQeCv9Q==
Date: Tue, 27 Aug 2019 10:03:16 +0000
Message-ID: <20190827100310.p2o5y3aklcoti74z@pburton-laptop>
References: <20190826132553.4116-1-hch@lst.de>
 <20190826132553.4116-7-hch@lst.de>
In-Reply-To: <20190826132553.4116-7-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0011.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::23) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.118.89.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31247056-33f9-45f6-9500-08d72ad5c7d8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1390; 
x-ms-traffictypediagnostic: MWHPR2201MB1390:
x-microsoft-antispam-prvs: <MWHPR2201MB1390144256A14498A26D68CDC1A00@MWHPR2201MB1390.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(366004)(39850400004)(376002)(136003)(396003)(346002)(189003)(199004)(71200400001)(486006)(102836004)(186003)(476003)(386003)(26005)(8676002)(42882007)(478600001)(6246003)(2906002)(305945005)(5660300002)(66066001)(53936002)(8936002)(9686003)(1076003)(446003)(14444005)(81156014)(6486002)(7736002)(81166006)(256004)(11346002)(4326008)(25786009)(14454004)(44832011)(52116002)(6512007)(58126008)(7416002)(6916009)(54906003)(76176011)(6116002)(3846002)(66946007)(66446008)(66476007)(66556008)(64756008)(33716001)(99286004)(71190400001)(316002)(6436002)(6506007)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1390;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hzQ2W7D89/5bOMckqiyD4YmPVgAE+qzEqiVqLEhKTz76XIkalHuEwK5B8RO5FDj5VB80v63tntNByUn6Gd/gOgE6cflzAHG5dXBGD8KgsefRz4nUM/EpQXaDmwaDPu0C1wyF7go+Of4hHuwWIs/GaL+nAdaSD+6Cyh8RSd0oDis+apASwR/lr4gsW/NLoBazYjWbuTH87jVp2jp9QlubW9l7NhHMlwkCSbSjC6ibeiesKnqE5yraqZJpy10BSvnZSmnoYTcCiDFqC/w0wAfz+BDCyPNg6AAKq1VvXtm2EICLMVEhh6yeQScHpabuwGBWVyBeRZO6osHQ3nIR7aSCf5uK9TZ7FvSEPQWf50v9ukrBTDgDe7X4niP0uuM8dFbU9kGn7tHL9IJrN7gwiptGR50dwqDQkAGz8XRtS0UMtEI=
x-ms-exchange-transport-forked: True
Content-ID: <112563C691B9D24084999634B2E39C47@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31247056-33f9-45f6-9500-08d72ad5c7d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 10:03:16.7814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ijY4BT1J6qbZ0asLVx9KlfJdlwGDY7JNLjL4/utrumR/7V7gpeHBxew9QwsJA+Izplvd0C8tBPzS1I/l2EOppg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1390
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030319_024494_CAADD488 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Anastasio <shawn@anastas.io>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, Aug 26, 2019 at 03:25:53PM +0200, Christoph Hellwig wrote:
> Based on an email from Paul Burton, quoting section 4.8 "Cacheability and
> Coherency Attributes and Access Types" of "MIPS Architecture Volume 1:
> Introduction to the MIPS32 Architecture" (MD00080, revision 6.01).
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

> ---
>  arch/mips/Kconfig | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index fc88f68ea1ee..aff1cadeea43 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -1119,6 +1119,13 @@ config DMA_PERDEV_COHERENT
>  
>  config DMA_NONCOHERENT
>  	bool
> +	#
> +	# MIPS allows mixing "slightly different" Cacheability and Coherency
> +	# Attribute bits.  It is believed that the uncached access through
> +	# KSEG1 and the implementation specific "uncached accelerated" used
> +	# by pgprot_writcombine can be mixed, and the latter sometimes provides
> +	# significant advantages.
> +	#
>  	select ARCH_HAS_DMA_WRITE_COMBINE
>  	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
>  	select ARCH_HAS_UNCACHED_SEGMENT
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
