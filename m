Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8506545D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPyEEst5SU5XlZV8bEGYNQO07R4f9BMAcnwZpjZX9AY=; b=mdiEB2Aq/58LlG
	8JjdWIAK6xA1XFPV8DGrakUqoEG0Az6BitXsqc8js17PHltVSzYbRLVQLQMbdh3dC4rGEtMyTdKgt
	2TqZWkzfOvyUJeGn/NFLJ2KKPRbulBx1PCw+XIwyBz68WWBt9G4YxqcJEOk2+5ilPZvIYH7ad5TIk
	DtBXSKAQ1BU6ZJ9DKQtiLY2VZQWtR+yG0F0bFgjrW6xNp2t9FhDEidzKIXi/M2Y3clkMfoKJn38IG
	fXtT0soR5SLcvhR88dejyAgpkWiHegSHrNLaZ4BgTY2glkMbe3GhgdZYuopUO/Y4Bd/QM0acySesw
	IXH6x+pbTETZ4T96b8cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlW7M-0007Vr-4o; Thu, 11 Jul 2019 10:16:00 +0000
Received: from mail-eopbgr770071.outbound.protection.outlook.com
 ([40.107.77.71] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlW7B-0007VA-HM
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:15:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KIWJYBu+e89jZf2W65Z2frZGEQGm6k/ZmusmQ4smwoiFCBKDqu3iWaBGROPZGRpFb1ymsU33mi1jq4Vr4auzLNHtTfUA7kvApGK1v9ku53cQz+e0JnJ6pfWh1YJ/7Rz4AfGlX5f3zOEtUmerwIzLVQRDzUPlGvhk/yNk5yI2k8IzdNWaIt/yqpJJ44ytDrCbDUq8AlE3GXxJyo1v3WD79p7WfF3uUPzRO2N8zYQmFi+Tr506wm9CC23mWkZyoCBS4f2vZOU5p1FO1QfZPI5VN74Wrk6ezl5wZ9ZfLhzj4wWZhUK2DQ7TDQRuzsnXA56C1MosEUVMrjJpha4NSb7pgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sInXN/+Fi7piyszHPuIA/KZBaHPlbDfXPTPAJQKSDa4=;
 b=NVNsFWokV3n+MbITyPBOHtLz9hcpGZlPRz3xWZa3HcRHWXJDC7scY2PeJp96pcG3wN0D16cgrYdrdWLIW571Ze1VrH9RsflvES2mVUaZRhwlkEl22ZodIZ2MyY9+V6MsxoD24CuRMarZvwRTwh1u0L/VS/Doh67WE+mtyu23/PkCxD7sjmJ9mhQ/R5s/pVXiX8eXAiCo6BH2D8dNrxiW9xSrwZyvnbw95aBdqH/IAD6W7URxi9nayYJ5anZ+deW4fc4FCc0oJFBcuREijmJHP4EcPolboQs2jAP2CoqsRMdaNEWBYAJrQSkbFQdJyLYKVl0ShOHXpmYW5SpUoK/Vuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synaptics.com;dmarc=pass action=none
 header.from=synaptics.com;dkim=pass header.d=synaptics.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sInXN/+Fi7piyszHPuIA/KZBaHPlbDfXPTPAJQKSDa4=;
 b=Jxp4WgOClBst4Q7QcjJApTy3WVqBSSnqMWPAvXccTNIbqjJxgtZ4EK21+oTBFxrMcOKUHHHXY7T1PhTGb9q93jjusqwptC9aU6608BzAVi/t9sRFu9JUCEYkAcU9ySQ0fGo/Owh1jb8ewOPItaJ/XSxXmxbVOACr7EeQyO3U/nI=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4790.namprd03.prod.outlook.com (20.179.92.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.11; Thu, 11 Jul 2019 10:15:45 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b1e6:c114:bea7:6763]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b1e6:c114:bea7:6763%7]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 10:15:45 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: Limiting the DMA zone in arm64
Thread-Topic: Limiting the DMA zone in arm64
Thread-Index: AQHVN85XaUf6ByRmpEOzFkUuSOEIyKbFMMCA
Date: Thu, 11 Jul 2019 10:15:44 +0000
Message-ID: <20190711180535.60e0cb77@xhacker.debian>
References: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
In-Reply-To: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0146.jpnprd01.prod.outlook.com
 (2603:1096:402:1::22) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edc0125c-3207-496b-1302-08d705e8bc4b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4790; 
x-ms-traffictypediagnostic: BYAPR03MB4790:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR03MB47905F67761A15926C50C9BEEDF30@BYAPR03MB4790.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(366004)(396003)(346002)(199004)(189003)(14454004)(6916009)(68736007)(2906002)(186003)(6116002)(3846002)(1076003)(53936002)(102836004)(966005)(6436002)(446003)(76176011)(26005)(305945005)(7736002)(256004)(14444005)(6486002)(6306002)(6512007)(9686003)(5660300002)(86362001)(6246003)(52116002)(478600001)(229853002)(486006)(66556008)(64756008)(66446008)(316002)(54906003)(476003)(66946007)(66476007)(66066001)(81166006)(81156014)(4326008)(8936002)(25786009)(50226002)(71190400001)(11346002)(71200400001)(99286004)(8676002)(6506007)(386003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4790;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G+nItf8W1qmxdkIMJjyFNji8Ltg4BaZtqv5k77Aj2HGZS1c5JjA9Zq2PfNIhCL//H3VCjlT2Ey30nf6Tfhtu4tf/4/Cd0857G2qBtseWv0TkjMlZoP1sgA8otxJOph0Ac1012rVW7pUHv4uCFB8Idfi1nwcmnyZyQgCaFXFRzWYR6G3q3SMSkAfRp8aHEswWWzffawpx5/s1kPrL0e+HOgSIlAMRXh9BNQ5FpOdtkev28F7m7RVtTtH8DPeII7DsfRIRBSbUwGTUL4iDmIG2edL3fnJN84aRQd1ky/6yPLenKPSWKep1GojRWwjVYUgC9Gq3Zi43n2h8694458i7rn5sAxNAzqMMw6sIbcwQ31poOr8UahON7pibGwYwOi+T0SXcnj1Zc8ZNruNRbGxokqWDFZJMHjAxRSg9yxmclzg=
Content-ID: <EB78DDDAEC59024B82047D33FFD3BA1A@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edc0125c-3207-496b-1302-08d705e8bc4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 10:15:44.9700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_031549_645602_82BFA236 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 11:51:57 +0200
Nicolas Saenz Julienne wrote:

> Hi,
> I'm trying to bring up the new RPi4 on arm64, and running into issues with DMA
> allocations. The device has up to 4GB of ram, but AFAIK only the first GB of
> ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff which
> is aliased to the first GB of memory 0x00000000-0x40000000.
> 
> This is solved in arm32 using a board file with '.dma_zone_size = SZ_1G'. But I
> haven't found any similar mechanism for arm64. Any suggestions?

maybe setting up of the dma-ranges in the soc bus in DT?

soc {
	compatible = "simple-bus";
	dma-ranges = <0 0x40000000 0 0x40000000 0x40000000>;
...
}


> 
> Just it case it helps understand the issue, I managed to get things going by
> doing the following:
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index f3c795278def..ec3cb7b76a76 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
> 
>         /* 4GB maximum for 32-bit only capable devices */
>         if (IS_ENABLED(CONFIG_ZONE_DMA32))
> -               arm64_dma_phys_limit = max_zone_dma_phys();
> +               arm64_dma_phys_limit = 0x40000000;
>         else
>                 arm64_dma_phys_limit = PHYS_MASK + 1;
> 
> Regards,
> Nicolas
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Darm-2Dkernel&d=DwICAg&c=7dfBJ8cXbWjhc0BhImu8wQ&r=wlaKTGoVCDxOzHc2QUzpzGEf9oY3eidXlAe3OF1omvo&m=Wmuzr6hc5vH2mDGWO65GmjVfssfmIXNVvITrgjyYQIg&s=JeCwKaJWXU_gC66lnCTqMw9JlrV_t05V7axT8AEzNJA&e=


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
