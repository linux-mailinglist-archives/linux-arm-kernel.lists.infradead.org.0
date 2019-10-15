Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43567D6F7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 08:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJHdBTxVYkPTdl7bxTGBiJARFFQWdASXSTFBPnXTPes=; b=situ5zrbMzukQ0
	VVUxkYK8VpTUEZOdC3RjKuDNisEDiP2j3oAHWN9uSKr14L91Npm4ThCGA9UFRIqDWBtIMZE4czVrE
	Rr9shSGyJcUKA68G+ZmEaL1h2n3ZMZCsfqxLnYeGXRtbA+oo5URtWVyA2TAnDpjKkBZCn83LUeMv+
	+nnQwvEGZOIcqGH2/5sk9A6fwrwK6UoBLFwXpSAaevW1x4vxH5LAjsF+ku8/utrWRgQv4tq9hJmlF
	R17D51rKYqqV3IPj2NRkWszvHFcws1EzUxbmnlKbxA6OnjZi89ZQ2C8wzQr/NF3MF8YjOnlfAHCcl
	00RiOkYZonttJuOf58ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKG6c-0002o1-5k; Tue, 15 Oct 2019 06:14:50 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKG6S-0002nG-EX
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 06:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ElSztWy8HoeKBZ3Iou+mBNrep4Cm/Vw01ON2QjT7K0=;
 b=1L1yuwdbxvH2Wa5lsVeTmwbe0+5GY3OZBUXNKVwgQU0AIsuYVgLIAVq2ftgaxh5i+FVElpYTQ5zGikUvxqxnGYvvux63iMIpYod8PxkvlZfpzg+ULQdTLNDI/sREDS4C1WVRyEwuJxhUhoWndJ6oOniWRqtQChFE+YNnXVT81qk=
Received: from DB7PR08CA0044.eurprd08.prod.outlook.com (2603:10a6:10:26::21)
 by DB6PR0801MB1765.eurprd08.prod.outlook.com (2603:10a6:4:38::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Tue, 15 Oct
 2019 06:14:31 +0000
Received: from AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by DB7PR08CA0044.outlook.office365.com
 (2603:10a6:10:26::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17 via Frontend
 Transport; Tue, 15 Oct 2019 06:14:31 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT050.mail.protection.outlook.com (10.152.17.47) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 15 Oct 2019 06:14:29 +0000
Received: ("Tessian outbound 0cf06bf5c60e:v33");
 Tue, 15 Oct 2019 06:14:26 +0000
X-CR-MTA-TID: 64aa7808
Received: from a8ef3841ec21.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.14.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1E2B7E45-E01F-4894-8176-E3AF16AFBCD1.1; 
 Tue, 15 Oct 2019 06:14:21 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2058.outbound.protection.outlook.com [104.47.14.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a8ef3841ec21.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 15 Oct 2019 06:14:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCxz6DbpWgB5q8KY0sgmyqot5rjr5Nid3Tc8d/xjkzh+lkKoehqmfg4r/srZVzQ9IfCH0LwlUL8nj+8MmFgC3+gCOrbSNPDmaW5f2p2jQoHMEwXAykLr0VJma0QZI+pYAzpn67mosnlNJKcuQIpfG23dLeLc+WGXj56wxX2V9Aep7DcUMVVkLW6kflKWcvdEz5wGP7Au/pNLoBVJx/W5tQfcoVNSpQN+UCVqf+70IM8GLzXkZU834YVfejytVp3LIlzaqIaxlmG8IIT0pPxqZ3KdRl4/LdnIYCn0BWH7WrBHwFdzTCR6I2SvJYOlusOMHMNJ74IYungB+XQuuPnr3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5p8k0fD7tESPMC1TW/+dQn6DRK0K4ngR3PhVATOaUxE=;
 b=lFhw2t1yZc50WqicowV029x0j+/WpGSJipteVtbB5IzHvblnbKRFLaQ5T02Ah4d4MdNzU7gwbcxICIW76vF9KSkSdRZwV+ZgZtFlSglBhSiiSum7LvL6J2vreNY+aF/XdLe3R0eFTdjT8nNNapJBWG3ZvQbZbR4BvmXbuh4CtihboK10SBpwpVT6yGzhW4XAk4vA2Ei9RoAQga59MGs2XpzR7h/dJxvB4v0SkffHula8eSUL+FYFRXRP1ltfavSs7e6AXdfRRoatNhGkjgAfQzWNQOG7Uc4Y5WUQMXFLyROcNvwT+SQVw87o2Ox2YV7owOgm3RaUBzUi+l3UQP3YnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5p8k0fD7tESPMC1TW/+dQn6DRK0K4ngR3PhVATOaUxE=;
 b=bAz4s92Si6vbg085z3hQockJ2RgWZCMdSMIeXck1byf23Z15m3bjzGfMAQSXjkmi8Fpsj1KuB7leUmy3N7w8gNqMZKI/dfcu/MGd+Dt3RSijf3ODmRLrn3qFfJz/rogrBu5/CGjV94qhdkh3xQRHy1VXCQATTLn31BZzcDenOgc=
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com (20.179.47.74) by
 DBBPR08MB4329.eurprd08.prod.outlook.com (20.179.41.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 06:14:20 +0000
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::8d01:f525:8a77:b6da]) by DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::8d01:f525:8a77:b6da%7]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 06:14:20 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] efi: libstub/arm: account for firmware reserved memory at
 the base of RAM
Thread-Topic: [PATCH] efi: libstub/arm: account for firmware reserved memory
 at the base of RAM
Thread-Index: AQHVgq0Yhp6sEGyWAUeFiHCshOUvfadbOaqQ
Date: Tue, 15 Oct 2019 06:14:20 +0000
Message-ID: <DBBPR08MB4678B3D2C238E362763D9FBB83930@DBBPR08MB4678.eurprd08.prod.outlook.com>
References: <20191014163309.2860-1-ard.biesheuvel@linaro.org>
In-Reply-To: <20191014163309.2860-1-ard.biesheuvel@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: f91d3bb1-5188-4b09-af1e-759fbafa10c5.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [2a01:e0a:d7:1620:214f:eca3:b23c:22b0]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 46760be3-4476-470b-60d2-08d75136f02d
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DBBPR08MB4329:|DB6PR0801MB1765:
X-Microsoft-Antispam-PRVS: <DB6PR0801MB17657AAE8CA8F099175C2A6D83930@DB6PR0801MB1765.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01917B1794
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(13464003)(189003)(199004)(71190400001)(71200400001)(478600001)(305945005)(86362001)(446003)(4326008)(81156014)(81166006)(6436002)(11346002)(256004)(8676002)(14444005)(102836004)(74316002)(476003)(5660300002)(14454004)(66476007)(66946007)(316002)(6246003)(486006)(6116002)(46003)(52536014)(66446008)(64756008)(66556008)(76116006)(110136005)(7736002)(9686003)(99286004)(7696005)(186003)(54906003)(33656002)(2501003)(76176011)(229853002)(53546011)(6506007)(2906002)(55016002)(8936002)(15650500001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4329;
 H:DBBPR08MB4678.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fol6dJKuj4RH9CMPpf7fgp9UAd8EpWE+srpUpDIW1zSzHbwmYWupxEn8iPUrj5a8xSorf2B0GIooKbJrD1bGW6hqwGSnIOgEGw+aKj9dtVI6kBdtUQh4JemAsMEoO1JMhtegVlrIRHEICBDrGY3GmC4/LS6C8CNN3ZzT4Lu52A26VZm09evwvwVQjzoaZ7bA/aHz0Ztw0oDC4Kee6oHCUkwr9VexFGflK/LVZCL8PtzDC1aeY9sLF32jBH9apAZxvh+arQsU1RrIlmveidAUAdj6eIrK4I4sHAt5y3s41yGQSWfXGl6oJpIfXDr1s1Uc/IYEnu8GmVDCiuAv9AoA7SW8hA5Wdkp0vreHOIy1zrEPianPvXMXjbemjBIky371he2JEi7lsNbZpwEs3Walgfm6XE63rMa6PTQb0uIQYho=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4329
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39860400002)(199004)(189003)(40434004)(13464003)(76130400001)(14444005)(22756006)(23726003)(229853002)(5024004)(99286004)(6116002)(46406003)(478600001)(7696005)(50466002)(4326008)(74316002)(476003)(70206006)(70586007)(486006)(126002)(52536014)(76176011)(36906005)(316002)(25786009)(110136005)(5660300002)(54906003)(81156014)(81166006)(2501003)(356004)(47776003)(8676002)(26005)(305945005)(63350400001)(102836004)(97756001)(336012)(7736002)(11346002)(15650500001)(2906002)(26826003)(8936002)(86362001)(55016002)(14454004)(8746002)(53546011)(9686003)(33656002)(107886003)(6506007)(186003)(6246003)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1765;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4f6c7d96-4b0b-431f-5b71-08d75136eaa6
X-Forefront-PRVS: 01917B1794
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xHBsEp5u2helI51BD+w49ivN7Cwu6GuFqwM76esv7c6YS0qjv/WQnJX9qTOIb2bZDnJNZoYwQkMc49c/lgpG6byrRmz4a5BMaAIIWfNjqyf8Q26bWELZSJoy8PPeT90UU5qMcHGNkuCzT/pV8WKpi9mtb5DXYg5uPASM4GxV8M9E9jsHGaUeY8yCLHvsM/WR+oGAff2fo6b40aX4POo/tjdRRKL+MngXmZKytbVt24c71zungEFg6DDH/Bum/C/ugqQYsXA3FGQHP9EAAZjURvQdcsuKEl+ItOJO6696JA9Ys2xJRxI7x4neWiBblI3S6M4CscjQRpFhDBKggJ2xsOJ8DJidIGx4rcVOkxAa3df6+UsdXoB/xhPbK4/gQasFOd3R7wdO+jtQZ259u5dIz0/mdPslWL/hhg4ORWvHmiw=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2019 06:14:29.5253 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46760be3-4476-470b-60d2-08d75136f02d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_231440_639754_81787BB7 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chester Lin <clin@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Sent: 14 October 2019 18:33
> To: linux-arm-kernel@lists.infradead.org
> Cc: linux-efi@vger.kernel.org; Ard Biesheuvel <ard.biesheuvel@linaro.org>;
> Guillaume Gardet <Guillaume.Gardet@arm.com>; Chester Lin <clin@suse.com>
> Subject: [PATCH] efi: libstub/arm: account for firmware reserved memory at the
> base of RAM
>
> The EFI stubloader for ARM starts out by allocating a 32 MB window at the base of
> RAM, in order to ensure that the decompressor (which blindly copies the
> uncompressed kernel into that window) does not overwrite other allocations
> that are made while running in the context of the EFI firmware.
>
> In some cases, (e.g., U-Boot running on the Raspberry Pi 2), this is causing boot
> failures because this initial allocation conflicts with a page of reserved memory at
> the base of RAM that contains the SMP spin tables and other pieces of firmware
> data and which was put there by the bootloader under the assumption that the
> TEXT_OFFSET window right below the kernel is only used partially during early
> boot, and will be left alone once the memory reservations are processed and
> taken into account.
>
> So let's permit reserved memory regions to exist in the region starting at the base
> of RAM, and ending at TEXT_OFFSET - 5 * PAGE_SIZE, which is the window below
> the kernel that is not touched by the early boot code.
>
> Cc: Guillaume Gardet <Guillaume.Gardet@arm.com>
> Cc: Chester Lin <clin@suse.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Tested-by: Guillaume Gardet <Guillaume.Gardet@arm.com>

> ---
>  drivers/firmware/efi/libstub/Makefile     |  1 +
>  drivers/firmware/efi/libstub/arm32-stub.c | 16 +++++++++++++---
>  2 files changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile
> b/drivers/firmware/efi/libstub/Makefile
> index 0460c7581220..ee0661ddb25b 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -52,6 +52,7 @@ lib-$(CONFIG_EFI_ARMSTUB)   += arm-stub.o fdt.o
> string.o random.o \
>
>  lib-$(CONFIG_ARM)            += arm32-stub.o
>  lib-$(CONFIG_ARM64)          += arm64-stub.o
> +CFLAGS_arm32-stub.o          := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o          := -DTEXT_OFFSET=$(TEXT_OFFSET)
>
>  #
> diff --git a/drivers/firmware/efi/libstub/arm32-stub.c
> b/drivers/firmware/efi/libstub/arm32-stub.c
> index e8f7aefb6813..47aafeff3e01 100644
> --- a/drivers/firmware/efi/libstub/arm32-stub.c
> +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> @@ -195,6 +195,7 @@ efi_status_t handle_kernel_image(efi_system_table_t
> *sys_table,
>                                unsigned long dram_base,
>                                efi_loaded_image_t *image)
>  {
> +     unsigned long kernel_base;
>       efi_status_t status;
>
>       /*
> @@ -204,9 +205,18 @@ efi_status_t handle_kernel_image(efi_system_table_t
> *sys_table,
>        * loaded. These assumptions are made by the decompressor,
>        * before any memory map is available.
>        */
> -     dram_base = round_up(dram_base, SZ_128M);
> +     kernel_base = round_up(dram_base, SZ_128M);
>
> -     status = reserve_kernel_base(sys_table, dram_base, reserve_addr,
> +     /*
> +      * Note that some platforms (notably, the Raspberry Pi 2) put
> +      * spin-tables and other pieces of firmware at the base of RAM,
> +      * abusing the fact that the window of TEXT_OFFSET bytes at the
> +      * base of the kernel image is only partially used at the moment.
> +      * (Up to 5 pages are used for the swapper page table)
> +      */
> +     kernel_base += TEXT_OFFSET - 5 * PAGE_SIZE;
> +
> +     status = reserve_kernel_base(sys_table, kernel_base, reserve_addr,
>                                    reserve_size);
>       if (status != EFI_SUCCESS) {
>               pr_efi_err(sys_table, "Unable to allocate memory for
> uncompressed kernel.\n"); @@ -220,7 +230,7 @@ efi_status_t
> handle_kernel_image(efi_system_table_t *sys_table,
>       *image_size = image->image_size;
>       status = efi_relocate_kernel(sys_table, image_addr, *image_size,
>                                    *image_size,
> -                                  dram_base + MAX_UNCOMP_KERNEL_SIZE, 0);
> +                                  kernel_base + MAX_UNCOMP_KERNEL_SIZE,
> 0);
>       if (status != EFI_SUCCESS) {
>               pr_efi_err(sys_table, "Failed to relocate kernel.\n");
>               efi_free(sys_table, *reserve_size, *reserve_addr);
> --
> 2.20.1

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
