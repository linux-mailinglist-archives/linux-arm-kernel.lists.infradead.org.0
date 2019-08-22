Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FDC98A28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 06:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQybwbXriBn0QlWF6AeFBh0rWoCZ+qHWX3TVpI9uq0U=; b=R4B3HzkrXSe5fx
	8S4U0wTNwhJFnQiglm2it0fxcXHkZbivkluwMc+B24I62y6ZN0FbZVkCDO6Nv9iyrkhnXmAWf58f+
	8/K6n5ijm2wSQdDXjkAg4x8/Zr6L98b8zWo+Lk4rXW9y35iVErczUyKLcfUB22oAg1ty7uAljrNy+
	cqxX7LNdG0bd1wzGe4LBr4pbn+FMBZAyshK1ztvkw0V96UlKXB+q09KC9mn4+zBGPJhivzULTIHeV
	EdJ7AFslqvuhzrjmOHBy+h9NrSHRa0R5hSah+XSHVHHhp56NsFOiMB0fO87D7kXaAbKEdi3PoC8FE
	+rvzd0ietJbR00ML88Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0eMV-0000Y5-9d; Thu, 22 Aug 2019 04:06:11 +0000
Received: from m9a0001g.houston.softwaregrp.com ([15.124.64.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0eMN-0000Xh-H5
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 04:06:05 +0000
Received: FROM m9a0001g.houston.softwaregrp.com (15.121.0.191) BY
 m9a0001g.houston.softwaregrp.com WITH ESMTP; 
 Thu, 22 Aug 2019 04:05:20 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 22 Aug 2019 03:59:43 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (15.124.72.10) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Thu, 22 Aug 2019 03:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sct61Eq1ZDoPUhgRd4NEdhuP+DxK3iNhKluTI3NSNt2eoK02ihMZfa2haFOhBOE5kiqJBYgDng4lKlzDt50G35FlFlRsbZBvUyx8Ft/iVfCdNeLNFh5N13XK6KR7Y1tcSv6JraO73rt6HIEm6jqVuKUyDlLmQQOGeHCiZGKTUX38cdT/zNxbt2St8YT+nGxnth3MSVFwsENOq/V28Fd0s5JQARFX9x6nUmYbLekSe7WCm5kAeQtxBMGvqP0/PHBnbMLsUvDK7f/5tuXqwfhG5Kq6DiqZXYaSKdV8lhGAMIoTQdz1ObDs2BrKEVHA08hyv/qDTWDCWywHG9x551T2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tW2RhL7H2LNeHEe6Aan1RmlgL5J2iXm7mi6jOyFKPjo=;
 b=fhP/q5fduYIw0DiDORwW3ohHuP2nZnsE5od1sRa/2ddp8k91LGryf4gwO0TmNHDmEA1xM0xgrU1kT2851Wn06JflgEI5RtKaPunuT5sexv3A/7gO5UYeuBrtW9Q5czoEPq3QKREbD7XO5aZ30f1q04L7krGxri8cJBsSAdAMQavBCkEmYNFO9fBfqE1S1Q7Sp0rLHmXWpXhV2iuHnZA2He45sFbzVheTIi1Mqhj6fR2n+LnU587VxvlYI7POpvI+b+7lJ+wGSDWrYlo9iIK/XoIPdnHcaSTXdcQfdY/6YXDQ8tOvsHtTFmVOoIrPzpXgF3Rw01SWEA3L5JyVjgErHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3283.namprd18.prod.outlook.com (10.255.139.203) by
 BY5PR18MB3219.namprd18.prod.outlook.com (10.255.137.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 03:59:43 +0000
Received: from BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::847e:511a:8cc2:8fca]) by BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::847e:511a:8cc2:8fca%6]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 03:59:43 +0000
From: Chester Lin <clin@suse.com>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "rppt@linux.ibm.com"
 <rppt@linux.ibm.com>, "ard.biesheuvel@linaro.org"
 <ard.biesheuvel@linaro.org>, "akpm@linux-foundation.org"
 <akpm@linux-foundation.org>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>
Subject: Re: [PATCH] arm: skip nomap memblocks while finding the
 lowmem/highmem boundary
Thread-Topic: [PATCH] arm: skip nomap memblocks while finding the
 lowmem/highmem boundary
Thread-Index: AQHVWJwNXyBr+dQszki0v7NBI7XKFacGirsA
Date: Thu, 22 Aug 2019 03:59:42 +0000
Message-ID: <20190822035920.GA27154@linux-8mug>
References: <20190822034425.25899-1-clin@suse.com>
In-Reply-To: <20190822034425.25899-1-clin@suse.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB8PR03CA0014.eurprd03.prod.outlook.com
 (2603:10a6:10:be::27) To BY5PR18MB3283.namprd18.prod.outlook.com
 (2603:10b6:a03:196::11)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=clin@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [202.47.205.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02ef12b8-4396-44c5-322e-08d726b529af
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BY5PR18MB3219; 
x-ms-traffictypediagnostic: BY5PR18MB3219:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR18MB321930AFDB724C487E15DF2BADA50@BY5PR18MB3219.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(199004)(189003)(102836004)(6116002)(110136005)(8676002)(6436002)(6306002)(7416002)(81156014)(14454004)(3846002)(386003)(6506007)(11346002)(446003)(99286004)(256004)(14444005)(2201001)(9686003)(305945005)(76176011)(25786009)(86362001)(81166006)(2906002)(6512007)(1076003)(6246003)(33656002)(486006)(64756008)(52116002)(66556008)(66946007)(66476007)(66446008)(53936002)(2501003)(6486002)(8936002)(7736002)(229853002)(5660300002)(107886003)(4326008)(478600001)(71200400001)(71190400001)(66066001)(476003)(54906003)(186003)(33716001)(316002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3219;
 H:BY5PR18MB3283.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pihe8yK0ze8ASnxoz63m0fmDIDLGoLmFLD9D55ARfvfBV782FUNWq3VheeJOB/urbP/4uq2WnZEE96yvFqgYB3P2Ebj8V4atvHDgKBzVmkW8p5BUVjYnzB29uDrC88mC749ubSLYIWj+HYWhgYP+eKN74/t0K7CNFyiPMtVqaibPW6PruQfcDzyo/i07oAfe49Cz7JaXaKFGC2xEJ0uo62EITHOzlTQ/Tq2D5w9zhf25gux42fFbVCXPDSW5kRNDYOO6rXSmH1/lMAnUhGMBMgX7iUOaS29s4YqHrMe/QVqBGb6nFKIpGub9jtsJZ0Tigd4Ap8gw6ZEE3edYDSZnV5Ol4KGvUahNxxVtpAh0P60Ue8WRIwrYOOnyZXBWe6bp+0klrLccCK37pXeeP3oXIklAtPVTKp9yoWFq2Op34Vs=
Content-ID: <655EB30C6C68C1439EF38D1F1C4169BB@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ef12b8-4396-44c5-322e-08d726b529af
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 03:59:42.8716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AEtHnytHCPRzfmfXtZxVyvYxFJm1RXwZQEsqrXZil/MvFjPUeRcbmLG9Jz+YvEi9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3219
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_210603_664188_412A24F9 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.64.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Joey Lee <JLee@suse.com>, Gary Lin <GLin@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 11:45:34AM +0800, Chester Lin wrote:
> adjust_lowmem_bounds() checks every memblocks in order to find the boundary
> between lowmem and highmem. However some memblocks could be marked as NOMAP
> so they are not used by kernel, which should be skipped while calculating
> the boundary.
> 
> Signed-off-by: Chester Lin <clin@suse.com>
> ---
>  arch/arm/mm/mmu.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index 426d9085396b..b86dba44d828 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1181,6 +1181,9 @@ void __init adjust_lowmem_bounds(void)
>  		phys_addr_t block_start = reg->base;
>  		phys_addr_t block_end = reg->base + reg->size;
>  
> +		if (memblock_is_nomap(reg))
> +			continue;
> +
>  		if (reg->base < vmalloc_limit) {
>  			if (block_end > lowmem_limit)
>  				/*
> -- 
> 2.22.0
>

Hi Russell, Mike and Ard,

Per the discussion in the thread "[PATH] efi/arm: fix allocation failure ...",
(https://lkml.org/lkml/2019/8/21/163), I presume that the change to disregard
NOMAP memblocks in adjust_lowmem_bounds() should be separated as a single patch.

Please let me know if any suggestion, thank you.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
