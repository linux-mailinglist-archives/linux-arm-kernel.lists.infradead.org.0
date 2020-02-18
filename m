Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E05161EAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:54:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbzBteHvH/sRikoG+3oSLJgA3mJrLxKYhGS3oggYQsQ=; b=rj5e+U0dGNhG9T
	2SCJUBb0P43PAJrxCVvei0gLiVTjYNYwNgDVbVSVjIX8KZ3yBadU8iY8WjZ+s0r29vbw3HOYVjznw
	ElGFi2hc7t3/xIwY8ntEs/cEchOCkyvxc8mB+k5VNSwPCHMm4NUJRFVNDc+FbKQVCU0PIOUMMygTo
	UShhJH0Prcrl4Znf5zCOh58SlZiBHqIwB2y8+9jTh6Urbu6ckiaOxDBY7jwEqQWFS7cgdga4EQZ5v
	nwQtFRSKUSxaRkB7iM+fYU4joo+u2pxHRvX8ovNc2C5w6a4JQI86c2PI+N3jfMa3YtSxCzc/ASzgQ
	OhklEpfTedwE/FxNdVLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3s5L-0002Mk-9s; Tue, 18 Feb 2020 01:54:03 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3s5C-0002M6-OL
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:53:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581990834; x=1613526834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3ilPBxarkdRZS+xpy06f2LvRB6yOgGg9vzFzqe3oA6k=;
 b=WXRFswZ3SWFWfa36BGngcAT/1K5cUISzeh5VokCYLdCPxg8QgwRsttBo
 UbslATNJmjmJybwjFsqmlc82uD6nn39tvQ3Pw2H1wHKYwfMaufnqhL15A
 3fqOFxWbwQRwEC9On/XtQsZOAs2lgDesy4FQmljBcvleDI91lnjou8oNd
 47zMVk8rY+8hVqtuaCJbBLU+3rFikaBoBSxxTn6AOqw2pFXI/PRm7Qzda
 g1S5vFqgQ4dzoKb9Dyza2Ozdd3u0sVS4oZrNw7ClCRSOGezIWUpXCL4dG
 qICHHh9ToWIHKUBeck7HF655A8v2dJM0Lqt8Pe9ZDV6JzMhU66E4oA7MF w==;
IronPort-SDR: dbSIuzd3PbXwg/tIFLEYWm9jy316UgVVpduD8OccmRGfdgOLq6CnHQnaw4G/157x4g2K8bWIOs
 BbSAwudP42q1IH8PnWaWfrxjoeUQidxo8+MGqH342+z1MNQKoXpCQoHE/rL1+nqY4AVTaDMzz9
 CQYyr6x9pYPMIGPVx15NaHtlnfUZiwnNdF94u0p0m434VnzbVyu2opW1wxMcrMk7SduBtlROJy
 jm3GYJQEyouCMjrD0HLOunOmXJoMWIMNSS0byPQQLeIFtCwKKE1hbiAS3E0K+8kBXqKRdkAdza
 nqo=
X-IronPort-AV: E=Sophos;i="5.70,454,1574092800"; d="scan'208";a="130580175"
Received: from mail-mw2nam12lp2046.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.46])
 by ob1.hgst.iphmx.com with ESMTP; 18 Feb 2020 09:53:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WU4virh3tMkClQk+NSx5WarCqy8W2vqHR18BCJrE0x/IlWe1GzGyMgmW+lMyWpXqXZjzvOvIz6TTYwZ6KkWwoBVtjHz1xogtHPVh1yCvzgtBlm1CBAhlHRTgvRxk1xPWHya1k0A2pHJ/mb82jLgEbRaHVRaVfADgz4wncuVp9/P35pvQhgABGUIS7w7Awu4Up3XZGp76FHN9pKC3EYo2VWc4d5chwgRQ4WU5i4WufIEitDipsfqPdYUB4QbA6yHV/t1ryRBW8GOB00mhZP/fFLqhZQAP1OfgWsDBPRz8AIBXL+RSkeT40BEihuDXxjF0vbJl0Pf2/MK2klFgLLO7og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ilPBxarkdRZS+xpy06f2LvRB6yOgGg9vzFzqe3oA6k=;
 b=K4A1MTNgc+Va3mUcVDOKFl6FwsM+iavXkX5b1H67CpjlTFWa81Ow6/v7uKbG9xL9eGQI3JXPPeqYPUuTWin8J4S0ExJEEbVa3+hjo8UlCIcd+9/r/jjRAScHSwEF8utSKSTsv/jl19wh4Aj5Jqfhrg4ykcbg9uEwxCgvDptgk9068v4ie3B3NpcypeZjaqtfsWB+tjcUlcBB1Bq/trUxSm+trV48n8ABhcNjd4YQUDr0XnSbS4WKXBpN2MbU6uH/x9iu8JjpH7ASCB3n4avs1FnY5jKwjgMphPZMFTOy9IyZ0TzPiYvAVQrm1AkxpUnLWiGGWvqNNyZQo2CcyuSKMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ilPBxarkdRZS+xpy06f2LvRB6yOgGg9vzFzqe3oA6k=;
 b=EeD0uXXHmjEGcrBUdy/qLK3ff3pVzXLNmOEoI5tIyDCkTxsv77htr2aIDQ66oOcekOHUeJowohEBvYyfuzW7YgRhEq7i8+w4WQKhfO62hQfQQzf1jDrDmp1twxSm/h65JXjXRskH68shniGvMIqczBxcw3K3xrE4EFK4NkR2Tqo=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4853.namprd04.prod.outlook.com (52.135.235.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Tue, 18 Feb 2020 01:53:44 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::fd01:e357:2522:2221]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::fd01:e357:2522:2221%6]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 01:53:44 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>, "ardb@kernel.org"
 <ardb@kernel.org>
Subject: Re: [PATCH] efi/libstub/arm: make efi_entry() an ordinary PE/COFF
 entrypoint
Thread-Topic: [PATCH] efi/libstub/arm: make efi_entry() an ordinary PE/COFF
 entrypoint
Thread-Index: AQHV5ZCyT990BUjgH0GuT2aCM/PwsqggMV2A
Date: Tue, 18 Feb 2020 01:53:44 +0000
Message-ID: <bf031d41c75a1834820332d7973fda132a6fceb5.camel@wdc.com>
References: <20200217124904.16331-1-ardb@kernel.org>
In-Reply-To: <20200217124904.16331-1-ardb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b9d37f32-44dd-498d-dfbc-08d7b4156329
x-ms-traffictypediagnostic: BYAPR04MB4853:
x-microsoft-antispam-prvs: <BYAPR04MB48531693560CAC2E61106EAFFA110@BYAPR04MB4853.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(66556008)(64756008)(8936002)(76116006)(81156014)(71200400001)(66946007)(2616005)(81166006)(66446008)(26005)(2906002)(8676002)(36756003)(4326008)(66476007)(6512007)(478600001)(54906003)(86362001)(6486002)(110136005)(30864003)(186003)(316002)(6506007)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4853;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DPZR+VHlxSfdpDwpZk4R1J8MyFshDFkr4gb9uMEsoOkHvTkvvwknNroqCKjjhLRd2tHtEJo9BVwsydOl+iH0LywCRw/6PA3W2XRcg5mcU7YjpLv032Snxk8wvIOrGSpRADbwX4a6UQeQ/tDNzVrGqd7V6cfAPbYPeXOgPRV8igjXPvMdkYfmuty04j40dzxxM8gjXSEMoIgpURxy1sLpRpdmZspkU+61BObRFwLzsBh85bZq1UbAwCVU92lPsdldN/fmbXoZMO9uuAnjNAKcJWv5BLjp2d2C5KhY6VPTt0ZXpHc50fUOMOsm3O0f0qbKLPWyxmxlppjczRJLJw//vujN9x03B8cs7U9h1i0TaWoUjjCnUGvnqdOGwfLtBkqEc/HqhwQycwTjnoyOC/znVYupBdufrjfM0yPhqJbUAnEytiEfPmpjJCeaKWU3p9wo
x-ms-exchange-antispam-messagedata: 2ACLGfZ8Y6f+mrJJoEFd2mENWNvYIb25R+/CH+mv9FQMDEBK6NraPK/tGj5tmd+bY+NT/72Dk/TH1lBiN3E6CRbK0dp0t6KJpLPt/LI+uWCbQSbo7qXN1iByjIiUOkb1NSvsO6726Jkaky5te6oHKg==
x-ms-exchange-transport-forked: True
Content-ID: <027D8D9E19EA824D9EEE334FA74A0012@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9d37f32-44dd-498d-dfbc-08d7b4156329
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 01:53:44.5706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d6axfDtV07cqBCFD6FENDLBucGtNccT2OQJ9ayFFkKhKMFeMEr+UiDMMdtGAMSV4hj5Ino5fId/hb4T9chck5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_175354_921817_5331446C 
X-CRM114-Status: GOOD (  34.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "leif@nuviainc.com" <leif@nuviainc.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-02-17 at 13:49 +0100, Ard Biesheuvel wrote:
> Expose efi_entry() as the PE/COFF entrypoint directly, instead of
> jumping into a wrapper that fiddles with stack buffers and other
> stuff that the compiler is much better at. The only reason this
> code exists is to obtain a pointer to the base of the image, but
> we can get the same value from the loaded_image protocol, which
> we already need for other reasons anyway.
> 
> Update the return type as well, to make it consistent with what
> is required for a PE/COFF executable entrypoint.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
> Apologies to Atish for making him track a moving target, but this is
> another
> bit of cleanup work that I would like to merge before taking the
> RISC-V
> changes on top.
> 

And I thought I am done rebasing my patches ;). Jokes apart, this is
actually much cleaner approach in retrieving image base and parsing DT
compared to what I currently have for RISC-V.


> On RISC-V, I would expect efi_enter_kernel() to be implemented as a C
> routine
> that finds the hart id in the DT (which is passed as an argument),
> and pass
> it to the startup code of the kernel proper.
> 

Yes. I probably won't need efi-entry.S for RISC-V at all which
simplifies the RISC-V implementation. Yay!! 

Is there a tree with this patch ? I tried to find it in your kernel.org
repo but couldn't find it. As there are 3 efi related patch set in
flight, I am not sure about the order in which they should be applied.


>  arch/arm/boot/compressed/efi-header.S     |  2 +-
>  arch/arm/boot/compressed/head.S           | 44 +++-----------
>  arch/arm64/kernel/efi-entry.S             | 64 +++-----------------
>  arch/arm64/kernel/efi-header.S            |  2 +-
>  drivers/firmware/efi/libstub/arm-stub.c   | 37 +++++------
>  drivers/firmware/efi/libstub/arm32-stub.c |  1 +
>  drivers/firmware/efi/libstub/arm64-stub.c |  3 +-
>  7 files changed, 42 insertions(+), 111 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/efi-header.S
> b/arch/arm/boot/compressed/efi-header.S
> index a5983588f96b..e38fbda02b93 100644
> --- a/arch/arm/boot/compressed/efi-header.S
> +++ b/arch/arm/boot/compressed/efi-header.S
> @@ -60,7 +60,7 @@ optional_header:
>  		.long	__pecoff_code_size		@ SizeOfCode
>  		.long	__pecoff_data_size		@
> SizeOfInitializedData
>  		.long	0				@
> SizeOfUninitializedData
> -		.long	efi_stub_entry - start		@
> AddressOfEntryPoint
> +		.long	efi_entry - start		@
> AddressOfEntryPoint
>  		.long	start_offset			@ BaseOfCode
>  		.long	__pecoff_data_start - start	@ BaseOfData
>  
> diff --git a/arch/arm/boot/compressed/head.S
> b/arch/arm/boot/compressed/head.S
> index 088b0a060876..941cd28a13c3 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1437,50 +1437,22 @@ __enter_kernel:
>  reloc_code_end:
>  
>  #ifdef CONFIG_EFI_STUB
> -		.align	2
> -_start:		.long	start - .
> -
> -ENTRY(efi_stub_entry)
> -		@ allocate space on stack for passing current zImage
> address
> -		@ and for the EFI stub to return of new entry point of
> -		@ zImage, as EFI stub may copy the kernel. Pointer
> address
> -		@ is passed in r2. r0 and r1 are passed through from
> the
> -		@ EFI firmware to efi_entry
> -		adr	ip, _start
> -		ldr	r3, [ip]
> -		add	r3, r3, ip
> -		stmfd	sp!, {r3, lr}
> -		mov	r2, sp			@ pass zImage address
> in r2
> -		bl	efi_entry
> -
> -		@ Check for error return from EFI stub. r0 has FDT
> address
> -		@ or error code.
> -		cmn	r0, #1
> -		beq	efi_load_fail
> -
> -		@ Preserve return value of efi_entry() in r4
> -		mov	r4, r0
> +ENTRY(efi_enter_kernel)
> +		mov	r4, r0			@ preserve entrypoint
> +		mov	r5, r1			@ preserve DT pointer
>  		bl	cache_clean_flush
>  		bl	cache_off
>  
>  		@ Set parameters for booting zImage according to boot
> protocol
> -		@ put FDT address in r2, it was returned by efi_entry()
> -		@ r1 is the machine type, and r0 needs to be 0
>  		mov	r0, #0
>  		mov	r1, #0xFFFFFFFF
> -		mov	r2, r4
> +		mov	r2, r5
>  
> -		@ Branch to (possibly) relocated zImage that is in [sp]
> -		ldr	lr, [sp]
> +		@ Branch to (possibly) relocated zImage @ [r4]
>  		ldr	ip, =start_offset
> -		add	lr, lr, ip
> -		mov	pc, lr				@ no mode
> switch
> -
> -efi_load_fail:
> -		@ Return EFI_LOAD_ERROR to EFI firmware on error.
> -		ldr	r0, =0x80000001
> -		ldmfd	sp!, {ip, pc}
> -ENDPROC(efi_stub_entry)
> +		add	r4, r4, ip
> +		mov	pc, r4			@ no mode switch
> +ENDPROC(efi_enter_kernel)
>  #endif
>  
>  		.align
> diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-
> entry.S
> index 304d5b02ca67..49e3b1ad1b36 100644
> --- a/arch/arm64/kernel/efi-entry.S
> +++ b/arch/arm64/kernel/efi-entry.S
> @@ -10,55 +10,18 @@
>  
>  #include <asm/assembler.h>
>  
> -#define EFI_LOAD_ERROR 0x8000000000000001
> -
>  	__INIT
>  
> -	/*
> -	 * We arrive here from the EFI boot manager with:
> -	 *
> -	 *    * CPU in little-endian mode
> -	 *    * MMU on with identity-mapped RAM
> -	 *    * Icache and Dcache on
> -	 *
> -	 * We will most likely be running from some place other than
> where
> -	 * we want to be. The kernel image wants to be placed at
> TEXT_OFFSET
> -	 * from start of RAM.
> -	 */
> -ENTRY(entry)
> -	/*
> -	 * Create a stack frame to save FP/LR with extra space
> -	 * for image_addr variable passed to efi_entry().
> -	 */
> -	stp	x29, x30, [sp, #-32]!
> -	mov	x29, sp
> -
> -	/*
> -	 * Call efi_entry to do the real work.
> -	 * x0 and x1 are already set up by firmware. Current runtime
> -	 * address of image is calculated and passed via *image_addr.
> -	 *
> -	 * unsigned long efi_entry(void *handle,
> -	 *                         efi_system_table_t *sys_table,
> -	 *                         unsigned long *image_addr) ;
> -	 */
> -	adr_l	x8, _text
> -	add	x2, sp, 16
> -	str	x8, [x2]
> -	bl	efi_entry
> -	cmn	x0, #1
> -	b.eq	efi_load_fail
> -
> +ENTRY(efi_enter_kernel)
>  	/*
>  	 * efi_entry() will have copied the kernel image if necessary
> and we
> -	 * return here with device tree address in x0 and the kernel
> entry
> -	 * point stored at *image_addr. Save those values in registers
> which
> -	 * are callee preserved.
> +	 * end up here with device tree address in x1 and the kernel
> entry
> +	 * point stored in x0. Save those values in registers which are
> +	 * callee preserved.
>  	 */
> -	mov	x20, x0		// DTB address
> -	ldr	x0, [sp, #16]	// relocated _text address
> +	mov	x20, x1			// DTB address
>  	ldr	w21, =stext_offset
> -	add	x21, x0, x21
> +	add	x21, x0, x21		// relocated Image address
>  
>  	/*
>  	 * Calculate size of the kernel Image (same for original and
> copy).
> @@ -80,9 +43,8 @@ ENTRY(entry)
>  	 * entries for the VA range of the current image, so no
> maintenance is
>  	 * necessary.
>  	 */
> -	adr	x0, entry
> -	adr	x1, entry_end
> -	sub	x1, x1, x0
> +	adr	x0, efi_enter_kernel
> +	mov	x1, efi_enter_kernel_size
>  	bl	__flush_dcache_area
>  
>  	/* Turn off Dcache and MMU */
> @@ -110,11 +72,5 @@ ENTRY(entry)
>  	mov	x2, xzr
>  	mov	x3, xzr
>  	br	x21
> -
> -efi_load_fail:
> -	mov	x0, #EFI_LOAD_ERROR
> -	ldp	x29, x30, [sp], #32
> -	ret
> -
> -entry_end:
> -ENDPROC(entry)
> +ENDPROC(efi_enter_kernel)
> +	.set	efi_enter_kernel_size, . - efi_enter_kernel
> diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-
> header.S
> index a7cfacce3e15..40c704c5d3a5 100644
> --- a/arch/arm64/kernel/efi-header.S
> +++ b/arch/arm64/kernel/efi-header.S
> @@ -27,7 +27,7 @@ optional_header:
>  	.long	__initdata_begin - efi_header_end	// SizeOfCode
>  	.long	__pecoff_data_size			//
> SizeOfInitializedData
>  	.long	0					//
> SizeOfUninitializedData
> -	.long	__efistub_entry - _head			//
> AddressOfEntryPoint
> +	.long	__efistub_efi_entry - _head		//
> AddressOfEntryPoint
>  	.long	efi_header_end - _head			// BaseOfCode
>  
>  extra_header_fields:
> diff --git a/drivers/firmware/efi/libstub/arm-stub.c
> b/drivers/firmware/efi/libstub/arm-stub.c
> index 56e475c1aa55..439c094f7bf2 100644
> --- a/drivers/firmware/efi/libstub/arm-stub.c
> +++ b/drivers/firmware/efi/libstub/arm-stub.c
> @@ -133,17 +133,20 @@ efi_status_t handle_kernel_image(unsigned long
> *image_addr,
>  				 unsigned long *reserve_size,
>  				 unsigned long dram_base,
>  				 efi_loaded_image_t *image);
> +
> +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned
> long fdt);
> +
>  /*
>   * EFI entry point for the arm/arm64 EFI stubs.  This is the
> entrypoint
>   * that is described in the PE/COFF header.  Most of the code is the
> same
>   * for both archictectures, with the arch-specific code provided in
> the
>   * handle_kernel_image() function.
>   */
> -unsigned long efi_entry(void *handle, efi_system_table_t
> *sys_table_arg,
> -			       unsigned long *image_addr)
> +efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t
> *sys_table_arg)
>  {
>  	efi_loaded_image_t *image;
>  	efi_status_t status;
> +	unsigned long image_addr;
>  	unsigned long image_size = 0;
>  	unsigned long dram_base;
>  	/* addr/point and size pairs for memory management*/
> @@ -153,7 +156,6 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  	unsigned long fdt_size = 0;
>  	char *cmdline_ptr = NULL;
>  	int cmdline_size = 0;
> -	unsigned long new_fdt_addr;
>  	efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
>  	unsigned long reserve_addr = 0;
>  	unsigned long reserve_size = 0;
> @@ -165,8 +167,10 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  	sys_table = sys_table_arg;
>  
>  	/* Check if we were booted by the EFI firmware */
> -	if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE)
> +	if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
> +		status = EFI_INVALID_PARAMETER;
>  		goto fail;
> +	}
>  
>  	status = check_platform_features();
>  	if (status != EFI_SUCCESS)
> @@ -187,6 +191,7 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  	dram_base = get_dram_base();
>  	if (dram_base == EFI_ERROR) {
>  		pr_efi_err("Failed to find DRAM base\n");
> +		status = EFI_LOAD_ERROR;
>  		goto fail;
>  	}
>  
> @@ -198,6 +203,7 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  	cmdline_ptr = efi_convert_cmdline(image, &cmdline_size,
> ULONG_MAX);
>  	if (!cmdline_ptr) {
>  		pr_efi_err("getting command line via
> LOADED_IMAGE_PROTOCOL\n");
> +		status = EFI_OUT_OF_RESOURCES;
>  		goto fail;
>  	}
>  
> @@ -213,7 +219,7 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  
>  	si = setup_graphics();
>  
> -	status = handle_kernel_image(image_addr, &image_size,
> +	status = handle_kernel_image(&image_addr, &image_size,
>  				     &reserve_addr,
>  				     &reserve_size,
>  				     dram_base, image);
> @@ -260,7 +266,7 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  		pr_efi("Generating empty DTB\n");
>  
>  	if (!noinitrd()) {
> -		max_addr = efi_get_max_initrd_addr(dram_base,
> *image_addr);
> +		max_addr = efi_get_max_initrd_addr(dram_base,
> image_addr);
>  		status = efi_load_initrd_dev_path(&initrd_addr,
> &initrd_size,
>  						  max_addr);
>  		if (status == EFI_SUCCESS) {
> @@ -311,33 +317,30 @@ unsigned long efi_entry(void *handle,
> efi_system_table_t *sys_table_arg,
>  
>  	install_memreserve_table();
>  
> -	new_fdt_addr = fdt_addr;
>  	status = allocate_new_fdt_and_exit_boot(handle,
> -				&new_fdt_addr,
> efi_get_max_fdt_addr(dram_base),
> +				&fdt_addr,
> efi_get_max_fdt_addr(dram_base),
>  				initrd_addr, initrd_size, cmdline_ptr,
>  				fdt_addr, fdt_size);
> +	if (status != EFI_SUCCESS)
> +		goto fail_free_initrd;
>  
> -	/*
> -	 * If all went well, we need to return the FDT address to the
> -	 * calling function so it can be passed to kernel as part of
> -	 * the kernel boot protocol.
> -	 */
> -	if (status == EFI_SUCCESS)
> -		return new_fdt_addr;
> +	efi_enter_kernel(image_addr, fdt_addr);
> +	/* not reached */
>  
> +fail_free_initrd:
>  	pr_efi_err("Failed to update FDT and exit boot services\n");
>  
>  	efi_free(initrd_size, initrd_addr);
>  	efi_free(fdt_size, fdt_addr);
>  
>  fail_free_image:
> -	efi_free(image_size, *image_addr);
> +	efi_free(image_size, image_addr);
>  	efi_free(reserve_size, reserve_addr);
>  fail_free_cmdline:
>  	free_screen_info(si);
>  	efi_free(cmdline_size, (unsigned long)cmdline_ptr);
>  fail:
> -	return EFI_ERROR;
> +	return status;
>  }
>  
>  /*
> diff --git a/drivers/firmware/efi/libstub/arm32-stub.c
> b/drivers/firmware/efi/libstub/arm32-stub.c
> index 7b2a6382b647..113298b8ea65 100644
> --- a/drivers/firmware/efi/libstub/arm32-stub.c
> +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> @@ -227,6 +227,7 @@ efi_status_t handle_kernel_image(unsigned long
> *image_addr,
>  	 * Relocate the zImage, so that it appears in the lowest 128 MB
>  	 * memory window.
>  	 */
> +	*image_addr = image->image_base;
>  	*image_size = image->image_size;
>  	status = efi_relocate_kernel(image_addr, *image_size,
> *image_size,
>  				     kernel_base +
> MAX_UNCOMP_KERNEL_SIZE, 0, 0);
> diff --git a/drivers/firmware/efi/libstub/arm64-stub.c
> b/drivers/firmware/efi/libstub/arm64-stub.c
> index 719d03a64329..9254cd8ab2d3 100644
> --- a/drivers/firmware/efi/libstub/arm64-stub.c
> +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> @@ -43,7 +43,6 @@ efi_status_t handle_kernel_image(unsigned long
> *image_addr,
>  {
>  	efi_status_t status;
>  	unsigned long kernel_size, kernel_memsize = 0;
> -	void *old_image_addr = (void *)*image_addr;
>  	unsigned long preferred_offset;
>  	u64 phys_seed = 0;
>  
> @@ -141,7 +140,7 @@ efi_status_t handle_kernel_image(unsigned long
> *image_addr,
>  		}
>  		*image_addr = *reserve_addr + TEXT_OFFSET;
>  	}
> -	memcpy((void *)*image_addr, old_image_addr, kernel_size);
> +	memcpy((void *)*image_addr, image->image_base, kernel_size);
>  
>  	return EFI_SUCCESS;
>  }

-- 
Regards,
Atish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
