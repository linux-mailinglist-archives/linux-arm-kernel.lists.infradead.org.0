Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07732518F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pe2NSYrV1bEouwGfCVYLyxZ+R+hB3CZ4yc0BNwbAijA=; b=P2WSfNLUbm9EDy0XVK3vkcQ8S
	WNJ6F0fSXP/NkzAPBt9wTHFMu99ZO1QlGDlVyXg0WYOKhMFpzwdLSDRVcjZAJvDEn0Q1tmk8LG51e
	/bSPKAmz+X00CrEQYajbsouOvvUvKGSe7E55A9VV5USkoeLU8I1CSDVwE9NjIMV3Dn5bqf02Tkyg1
	D7ebMv0DmJ3wO6me1j7GKAcbQC2D3hWcXs7CHRBmTmbDMP+zvyd3281QhdV5HZ2cIsDQZ/JwnQuQi
	LZi9ZlTvdY5EmZ8L1grqbShcM2V7rOcqWQ5d/6NIg5JY1L+/AYRH0grHBY4X4ltMBHHqM1UPSUKlf
	av63YNWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfS71-0004u0-Fa; Mon, 24 Jun 2019 16:46:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfS6m-0004sZ-6B; Mon, 24 Jun 2019 16:46:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so7826112pfe.11;
 Mon, 24 Jun 2019 09:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=rk32yi4TS8gcxPCzX8v7QY6cOglFHE8dF0I29LG2lnc=;
 b=THWg/XKi4hT+eXURO6zCxBWh5cSpNTHmniF8SOoFsAEqFw3MYLE75X73Ad7B0Uoa/u
 Js0H1vA9IBcQT7Y2zHy34pz1g5j7v/pxeblkUMN1Rk1Xz1mPZ6gmwgJcNTFcmTXPsF08
 SrSoJKUdi3xus6naqN3TllR7GRAsM4YE9Be/qcoLjROxw2xVWemXxpRXJ/fx3Yf90u1U
 DhvS26rMMyGG74u6F2J/dT609qVBy/gKV5dk5hA9Rsm0gJVfmuByPHgw2qcLYBZUnE1x
 3KNGBWUu1sus3xLGGP5KtbBKJQ8PZnNvr48Gb77b8xwc8IJUi+KjhZ0uIdZ9udXpVBls
 p3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=rk32yi4TS8gcxPCzX8v7QY6cOglFHE8dF0I29LG2lnc=;
 b=io48ZFgu14GXxCkCGKKg2FsKDgFrs17/JR+okCuVPneyhOD1PjcaXuzy0dnANG2sp0
 38teifua3jrRvZA/bAAlgsGIYHw7AIsT2+cV2uBjbKp+zEVJPUg94+hWSb3T8h7NPVtJ
 BjHzkDly2w/sP2BB8KGcHunDO/929qpYi7lbi0cxvUbPPrOn7vlwQvKcmiwUsEv/sMDW
 0FKXxSVXjAIqmt9Rijgal3tTwSD2za3i5rfTtVnxtZ2muHkyJsWRrm+s3/LR4Ugy8Hxt
 LQ+ZkKDLjH2gzgNVUMkq9Nn/o5ZpZwEKYmJ3sPPLs1/d9U3yF0fmy5p9RB4nlEwU9EOi
 ldpg==
X-Gm-Message-State: APjAAAXzgUIhkdQki1fk/8kzHsv5HW8/J4EVoTn88gpu5HWdbEABkoEH
 Ym8pi86jbMWI6Dj1SOej/+gYBXJJCFM=
X-Google-Smtp-Source: APXvYqxi3TsEmcjsEdXwtgJuHHbQfba3PGZKeJ2cIWYwMjOqJarwHX0qFk08wKvYtbaSkUp58mDLAA==
X-Received: by 2002:a17:90a:c504:: with SMTP id
 k4mr25698395pjt.104.1561394778617; 
 Mon, 24 Jun 2019 09:46:18 -0700 (PDT)
Received: from ?IPv6:240b:10:2720:5510:a182:288:3ffa:432a?
 ([240b:10:2720:5510:a182:288:3ffa:432a])
 by smtp.gmail.com with ESMTPSA id y22sm15041975pgj.38.2019.06.24.09.46.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:46:17 -0700 (PDT)
Subject: Re: [PATCH v7 1/5] mtd: cfi_cmdset_0002: Add support for polling
 status register
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-2-vigneshr@ti.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <571484c7-0cf4-6a7d-6d7f-375cfb13ce8b@gmail.com>
Date: Tue, 25 Jun 2019 01:46:13 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190620172250.9102-2-vigneshr@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_094620_259219_0AA853CD 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/06/21 2:22, Vignesh Raghavendra wrote:
> HyperFlash devices are compliant with CFI AMD/Fujitsu Extended Command
> Set (0x0002) for flash operations, therefore
> drivers/mtd/chips/cfi_cmdset_0002.c can be used as is. But these devices
> do not support DQ polling method of determining chip ready/good status.
> These flashes provide Status Register whose bits can be polled to know
> status of flash operation.
>
> Cypress HyperFlash datasheet here[1], talks about CFI Amd/Fujitsu
> Extended Query version 1.5. Bit 0 of "Software Features supported" field
> of CFI Primary Vendor-Specific Extended Query table indicates
> presence/absence of status register and Bit 1 indicates whether or not
> DQ polling is supported. Using these bits, its possible to determine
> whether flash supports DQ polling or need to use Status Register.
>
> Add support for polling Status Register to know device ready/status of
> erase/write operations when DQ polling is not supported.
> Print error messages on erase/program failure by looking at related
> Status Register bits.
>
> [1] https://www.cypress.com/file/213346/download
>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> v7: No change
>
>   drivers/mtd/chips/cfi_cmdset_0002.c | 90 +++++++++++++++++++++++++++++
>   include/linux/mtd/cfi.h             |  5 ++
>   2 files changed, 95 insertions(+)
>
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index c8fa5906bdf9..0f571f162e3b 100644
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -49,6 +49,16 @@
>   #define SST49LF008A		0x005a
>   #define AT49BV6416		0x00d6
>   
> +/*
> + * Status Register bit description. Used by flash devices that don't
> + * support DQ polling (e.g. HyperFlash)
> + */
> +#define CFI_SR_DRB		BIT(7)
> +#define CFI_SR_ESB		BIT(5)
> +#define CFI_SR_PSB		BIT(4)
> +#define CFI_SR_WBASB		BIT(3)
> +#define CFI_SR_SLSB		BIT(1)
> +
>   static int cfi_amdstd_read (struct mtd_info *, loff_t, size_t, size_t *, u_char *);
>   static int cfi_amdstd_write_words(struct mtd_info *, loff_t, size_t, size_t *, const u_char *);
>   static int cfi_amdstd_write_buffers(struct mtd_info *, loff_t, size_t, size_t *, const u_char *);
> @@ -97,6 +107,48 @@ static struct mtd_chip_driver cfi_amdstd_chipdrv = {
>   	.module		= THIS_MODULE
>   };
>   
> +/*
> + * Use status register to poll for Erase/write completion when DQ is not
> + * supported. This is indicated by Bit[1:0] of SoftwareFeatures field in
> + * CFI Primary Vendor-Specific Extended Query table 1.5
> + */
> +static int cfi_use_status_reg(struct cfi_private *cfi)
> +{
> +	struct cfi_pri_amdstd *extp = cfi->cmdset_priv;
> +
> +	return extp->MinorVersion >= '5' &&
> +		(extp->SoftwareFeatures & 0x3) == 0x1;

Seems to be better to use defined values instead of 0x3 and 0x1 hard 
coded values.

> +}
> +
> +static void cfi_check_err_status(struct map_info *map, unsigned long adr)
> +{
> +	struct cfi_private *cfi = map->fldrv_priv;
> +	map_word status;
> +
> +	if (!cfi_use_status_reg(cfi))
> +		return;
> +
> +	cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,

Is it not necessary to set chip->start as the base parameter for 
cfi_send_gen_cmd()?

> +			 cfi->device_type, NULL);
> +	status = map_read(map, adr);
> +
> +	if (map_word_bitsset(map, status, CMD(0x3a))) {
> +		unsigned long chipstatus = MERGESTATUS(status);
> +
> +		if (chipstatus & CFI_SR_ESB)
> +			pr_err("%s erase operation failed, status %lx\n",
> +			       map->name, chipstatus);
> +		if (chipstatus & CFI_SR_PSB)
> +			pr_err("%s program operation failed, status %lx\n",
> +			       map->name, chipstatus);
> +		if (chipstatus & CFI_SR_WBASB)
> +			pr_err("%s buffer program command aborted, status %lx\n",
> +			       map->name, chipstatus);
> +		if (chipstatus & CFI_SR_SLSB)
> +			pr_err("%s sector write protected, status %lx\n",
> +			       map->name, chipstatus);
> +	}
> +}
>   
>   /* #define DEBUG_CFI_FEATURES */
>   
> @@ -744,8 +796,22 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
>    */
>   static int __xipram chip_ready(struct map_info *map, unsigned long addr)
>   {
> +	struct cfi_private *cfi = map->fldrv_priv;
>   	map_word d, t;
>   
> +	if (cfi_use_status_reg(cfi)) {
> +		map_word ready = CMD(CFI_SR_DRB);
> +		/*
> +		 * For chips that support status register, check device
> +		 * ready bit
> +		 */
> +		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,

Same comment as cfi_check_err_status() about the base address.

> +				 cfi->device_type, NULL);
> +		d = map_read(map, addr);
> +
> +		return map_word_andequal(map, d, ready, ready);
> +	}
> +
>   	d = map_read(map, addr);
>   	t = map_read(map, addr);
>   
> @@ -769,8 +835,27 @@ static int __xipram chip_ready(struct map_info *map, unsigned long addr)
>    */
>   static int __xipram chip_good(struct map_info *map, unsigned long addr, map_word expected)
>   {
> +	struct cfi_private *cfi = map->fldrv_priv;
>   	map_word oldd, curd;
>   
> +	if (cfi_use_status_reg(cfi)) {
> +		map_word ready = CMD(CFI_SR_DRB);
> +		map_word err = CMD(CFI_SR_PSB | CFI_SR_ESB);

Is it not necessary to check CFI_SR_WBASB and CFI_SR_SLSB that are 
checked by cfi_check_err_status()?

> +		/*
> +		 * For chips that support status register, check device
> +		 * ready bit and Erase/Program status bit to know if
> +		 * operation succeeded.
> +		 */
> +		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,

Same as cfi_check_err_status() and chip_ready() about the base address.

> +				 cfi->device_type, NULL);
> +		curd = map_read(map, addr);
> +
> +		if (map_word_andequal(map, curd, ready, ready))
> +			return !map_word_bitsset(map, curd, err);
> +
> +		return 0;
> +	}
> +
>   	oldd = map_read(map, addr);
>   	curd = map_read(map, addr);
>   
> @@ -1644,6 +1729,7 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
>   	/* Did we succeed? */
>   	if (!chip_good(map, adr, datum)) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -1901,6 +1987,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>   	 * See e.g.
>   	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
>   	 */
> +	cfi_check_err_status(map, adr);
>   	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
>   			 cfi->device_type, NULL);
>   	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
> @@ -2107,6 +2194,7 @@ static int do_panic_write_oneword(struct map_info *map, struct flchip *chip,
>   
>   	if (!chip_good(map, adr, datum)) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -2316,6 +2404,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
>   	/* Did we succeed? */
>   	if (ret) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -2412,6 +2501,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
>   	/* Did we succeed? */
>   	if (ret) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> diff --git a/include/linux/mtd/cfi.h b/include/linux/mtd/cfi.h
> index 208c87cf2e3e..b50416169049 100644
> --- a/include/linux/mtd/cfi.h
> +++ b/include/linux/mtd/cfi.h
> @@ -219,6 +219,11 @@ struct cfi_pri_amdstd {
>   	uint8_t  VppMin;
>   	uint8_t  VppMax;
>   	uint8_t  TopBottom;
> +	/* Below field are added from version 1.5 */
> +	uint8_t  ProgramSuspend;
> +	uint8_t  UnlockBypass;
> +	uint8_t  SecureSiliconSector;
> +	uint8_t  SoftwareFeatures;
>   } __packed;
>   
>   /* Vendor-Specific PRI for Atmel chips (command set 0x0002) */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
