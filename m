Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D60196A1F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 00:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3s+ScencP+I1fSF797OlJryDMHNhqzwgykjxd11kglI=; b=ttqOhai/Z8rieA
	BqLmXq8Sk1y3oUfAwfA7yjaff3+sIY2jCfUDG98nshJUfVQssU6h91z8GT72zo2SRo2ZIW8t/k9ob
	D9e9XR2TwgvhaLFuvsVnpT2q4P1xbuAPgfdh7cHH2DJZOVvEWvV91CH8keqri6Ig6mFiRvOA0P1Wp
	6Bsb7if6z7m3vsY7t0nc5DQjF3mhCffKC7t4rY06fbBNl6mkKJnIzufuRRwMlt42dw3fJfxMJYaDV
	+bSR9PXBO8OwZgRKMI5Ev0VYBLsjHtuZIm6ylwe/nCAGrKXbK7j0d/9afe5VTt/hwjILvGvsZvfI2
	uFo7PtgPTdmm+yjIobTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jILIx-0006pP-J3; Sat, 28 Mar 2020 23:55:55 +0000
Received: from mail-mw2nam12on2129.outbound.protection.outlook.com
 ([40.107.244.129] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jILIn-0006oo-KA
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 23:55:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cKIshp/prg32YhIplH3vBiCCpRa4qBKR1FDBPh6PyDObXVtaI6MJ08aSHRqsgFwedMNJKyDNtEhd1NGL2KmmS2rPW5iMwuQsebVa0pK0e4NL5yYxaRMimH6QVA2vchrW9DgAg5DQMposxujeZ37V/Dqrua+57RBxzzyOOn4nO9kYYfr2+YIMiNeBasJMo2KzVEnSBGzTRKpajdSkhjF1luDbfChTfV29CorAURI59euFZpUI7P8DNi0fz4ub5POBG3OVgu42I/me+6DwqXgpXJdAPMpZeIpnyTjIG9F9Mv9ERdFF7Y90X1mpjc6AUw/vG0rqgvp15NN15EWFi6Z9JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lRhy5H+eHseY8vvcQdIkPICe08jxD0kIjq67yQDt78=;
 b=Tg0SLhszEZyKB4rKMaaLJ5HeiKf/sjKAo07lwDW3k4t/CH330h3hYbVnQT9At8fcIPtiusyVKJve/q92nnSe8NYfeqABkS/RQxGDzfiTvuq/4Cahftzztz95Hh52XWhaH8ZPriI0DzSQSQ28NozWwsk/XOUiHJ60PZMaQ6Cl6+y/lAJp0aSan0/SCRBye1kltQgNZm/vnfiIBoPizV1wBtCbJ5B6I9kqMvJHt1PQXSbJRNk8csojIDf6VhRUTd3QEo+8OWzQunTuWNIl5cymN7RedIKTzBVCXzEXDKD4u0JyYQcJ3sN3leaQPpY0f60fuguebjS400nq1ExYYIDFLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lRhy5H+eHseY8vvcQdIkPICe08jxD0kIjq67yQDt78=;
 b=Fy05FEHa/aK096tDwG6oUZolkaLVQnFBwLhNDtQ/yth7gPcAB3qSfpvbCgisYCTzgA4/hq710MlhDCimnHAleFTpH7svVSzccO3O4hc6KC8hQhmScAWOw3RVq5ZNr0hg1YePvA8K3+AsBAsDLFSZra2eP6C+Rzh4z4DNsAdrLls=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB0907.namprd21.prod.outlook.com (2603:10b6:302:10::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.11; Sat, 28 Mar
 2020 23:55:22 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%8]) with mapi id 15.20.2878.007; Sat, 28 Mar 2020
 23:55:22 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Ard Biesheuvel <ardb@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Topic: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Thread-Index: AQHWBUObXv2MTW3u/Ue45F8yahNJA6herKsQ
Date: Sat, 28 Mar 2020 23:55:20 +0000
Message-ID: <MW2PR2101MB10525BAFA3880DD27216C4DCD7CD0@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <20200328205809.23825-1-ardb@kernel.org>
In-Reply-To: <20200328205809.23825-1-ardb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-28T23:55:18.6548410Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=9532f6a0-0497-412b-9431-a84c828d4b73;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f036d26e-6d83-4e6b-52a0-08d7d3737a69
x-ms-traffictypediagnostic: MW2PR2101MB0907:|MW2PR2101MB0907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR2101MB09073218C9DE3EE808F08D67D7CD0@MW2PR2101MB0907.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03569407CC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR2101MB1052.namprd21.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(66476007)(76116006)(66946007)(66446008)(110136005)(478600001)(2906002)(33656002)(107886003)(71200400001)(9686003)(54906003)(10290500003)(26005)(8936002)(52536014)(82950400001)(4326008)(81166006)(186003)(64756008)(5660300002)(316002)(66556008)(82960400001)(81156014)(7696005)(86362001)(8990500004)(55016002)(6506007)(8676002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r1PrlkUx9RAwSoKajjM3B7Lc7iFeIYtOaNy7C70Ha4zpMY9/LFy/avSfo+b2ov5N2/WJgLP591OXCIfd8K2pFwFZn6msLthcDHsXqUr3bl5xVok5i0k8VTHnw6MM0X7PqlcHZgT+CFMc20nomqyeGZQBeTBsWDaz86D9Sqn7vgipu+09p6s19SM5h3CM9d4QVZcZ9LWyDAz5jcWsY4EDGKZpEDxtqE0WlRfg/aky3L4B43xZVF51eRv/bkRCAzqDIrN0/yzUljxeXUXm8v1T43n+b4cYurmO9iU6mPmbNyxC22SCs47hzVP1pVZiSWjqs/5CpOwmNkEYtebIyIj5xJLot2TTVS/xzp6fFNVtZKxZcN68lmkNtr5NcD4KbEPqY1FbwkgVqnAFuQasNzBCB7o/VADJtnsoV7IP+Z4pnCIZs0XBv6Tz4LkJMVuKryLs
x-ms-exchange-antispam-messagedata: 7EXXnLqfx299yVQbfNOot6iWHAWwdOQpwRg5dDO7arV+EamouwOpE84sMYl4hKeSWNCKxR+/F0axbKyeN6QI5bnN6sF2CN5H7pwFhesB+HnLIEl5x4AyJUvFdCgUfBOiRDcC80BSkiUsvs03/ZjHmg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f036d26e-6d83-4e6b-52a0-08d7d3737a69
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2020 23:55:20.9145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dM26I7bjVh1uiTeDGSjPVU3jy4neeujgpT2kouBLfcCZCsOKsxCQEWKc+d0ZfIRSItNz8Dt5s8WY3oZBIMT1fzAAPVmYPJwgAzcMBJ1BcG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB0907
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_165545_750880_67EB2BB0 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.129 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Boqun Feng <Boqun.Feng@microsoft.com>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ardb@kernel.org> Sent: Saturday, March 28, 2020 1:58 PM
> 
> Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> PE/COFF entrypoint") did some code refactoring to get rid of the
> EFI entry point assembler code, and in the process, it got rid of the
> assignment of image_addr to the value of _text. Instead, it switched
> to using the image_base field of the efi_loaded_image struct provided
> by UEFI, which should contain the same value.
> 
> However, Michael reports that this is not the case: older GRUB builds
> corrupt this value in some way, and since we can easily switch back to
> referring to _text to discover this value, let's simply do that.
> 
> While at it, fix another issue in commit 9f9223778ef3, which may result
> in the unassigned image_addr to be misidentified as the preferred load
> offset of the kernel, which is unlikely but will cause a boot crash if
> it does occur.
> 
> Finally, let's add a warning if the _text vs. image_base discrepancy is
> detected, so we can tell more easily how widespread this issue actually
> is.
> 
> Reported-by: Michael Kelley <mikelley@microsoft.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/libstub/arm64-stub.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Tested in a Hyper-V VM.  With the 2.02~beta2 version of grub,
the FIRMWARE BUG message is output and then Linux correctly
boots.  With the 2.04-4 version of grub, Linux correctly boots with
no error messages.

Tested-by: Michael Kelley <mikelley@microsoft.com>

> 
> diff --git a/drivers/firmware/efi/libstub/arm64-stub.c
> b/drivers/firmware/efi/libstub/arm64-stub.c
> index 9254cd8ab2d3..db0c1a9c1699 100644
> --- a/drivers/firmware/efi/libstub/arm64-stub.c
> +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> @@ -116,6 +116,7 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>  		 * Mustang), we can still place the kernel at the address
>  		 * 'dram_base + TEXT_OFFSET'.
>  		 */
> +		*image_addr = (unsigned long)_text;
>  		if (*image_addr == preferred_offset)
>  			return EFI_SUCCESS;
> 
> @@ -140,7 +141,11 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>  		}
>  		*image_addr = *reserve_addr + TEXT_OFFSET;
>  	}
> -	memcpy((void *)*image_addr, image->image_base, kernel_size);
> +
> +	if (image->image_base != _text)
> +		pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus
> value\n");
> +
> +	memcpy((void *)*image_addr, _text, kernel_size);
> 
>  	return EFI_SUCCESS;
>  }
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
