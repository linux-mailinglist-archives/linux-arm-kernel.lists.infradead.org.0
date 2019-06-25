Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522BD55551
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yBs+FJ2LW39vwN2/xKWR5OkLC6vraRNkNMt+JO1Zy/8=; b=Wbra0AlhDh2of9Rg+g21PLtvh
	jL0s1dA1TRv/xciVayheBScXgd/0nmZCYITLhD3L5KXULQ67+esLBc9/k3odAAiI5xCl5E/e7fQfY
	f7fmNIhSulbKltLCFRejOVLl+eQmVtcmmotVLA1H8i0r7Du3KgSnBBXhnmCpJ/yDtOMDyfZoJmpoH
	ekM4zxJX+FJnyXp5/r+bmRY4U2Tb2M8+7RPljWdL6j9ptDdkfN//YwQOWwJWaynBBZIO1T3UlHndZ
	d36Ckk/KNxhUBYeHm1EQ/dY+0UvE8gNZq7UxdxFmGCiWSeuJoDVCny0UbiVfOzOBkMrQVwEzijbes
	OOhlJ1I5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfopM-0003fi-1M; Tue, 25 Jun 2019 17:01:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfop2-0003dD-Kh; Tue, 25 Jun 2019 17:01:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so1285487plp.2;
 Tue, 25 Jun 2019 10:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=0Ss5+LU7eDAeFVRY0LXecg5U4+TVeAh5wZuoDOpiOto=;
 b=HHL5jm8ZrsVdm1c4qbx4HIt4KRKjIXNuEG9eNVTVFeSSdxsXnBc2k2jcgXkWkUW5Lt
 r3S1qyXX/nGiMj3XQRFBOl1Qe/NECxiPdCtpQpR5MgBNc+U096G0lJbzYzu81u9jFd74
 MGBMnQhsQCIXya8A+nwNYXufR/00WtKy5yU+R7pZ3ZJoKHA6arGJ53OBK4rqtLkuN1Ny
 hlBpMz5ouqzey6SrRT+dQ5/e6RTPc1cNfAZ+uasgzFGYQqjpMRuBRrfPmlMr6QjxUya1
 KnNozOOvezgntS774pdIgu5OYZNSMTPcn6MGDZHuUeE4xPYfR8A6Cu2SnrKEBwdlm10C
 tyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=0Ss5+LU7eDAeFVRY0LXecg5U4+TVeAh5wZuoDOpiOto=;
 b=GdPydm5PBP1uNRm/L28Joiy2CMYaCDag+aAdfw/bWFOxPYBfdfNzLpoOeh3AeDWoyB
 fA9Tht0jwlTZGPBlTV2doBdbQCWj9qcdOoLX+s/ByKgs3RHUHvugNwdXxr1m4ykHMA6x
 QuQrXx6Thy8+gTET8DReE4mve8yy3oLMIRaU7TqtM5TyySP8HydtUw6eyJYwlmNSYa/u
 RFZOOcnQZ4AA4YGGXXxgHBy5Bjrcq+Ktdq1ALT1Lgur472Tyqg1Yx3aS2GFBNPA+oqbC
 NNa4sCiOMM8oXsrdRvZYxc8iIKQNPA0e5WoGzF6RhgKSAoE+RjBhlHWbTi825KogmAyf
 Yg2g==
X-Gm-Message-State: APjAAAU18XeAvloZ7oEsI9Xhx6ekZieNGRZM9HVLhMKmMPyCvgtLWktv
 y3+SQWntk8DqVmrfygUD0c8=
X-Google-Smtp-Source: APXvYqwWNlzyxKdthHKF6iYfkUVUDQ48V83ruedsMI8a4hxMMneNB+9hcg0En/c99Vls4w13WG3VXA==
X-Received: by 2002:a17:902:8eca:: with SMTP id
 x10mr42257284plo.266.1561482085873; 
 Tue, 25 Jun 2019 10:01:25 -0700 (PDT)
Received: from ?IPv6:240b:10:2720:5510:a182:288:3ffa:432a?
 ([240b:10:2720:5510:a182:288:3ffa:432a])
 by smtp.gmail.com with ESMTPSA id l2sm13465058pff.107.2019.06.25.10.01.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 10:01:25 -0700 (PDT)
Subject: Re: [PATCH v8 1/5] mtd: cfi_cmdset_0002: Add support for polling
 status register
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-2-vigneshr@ti.com>
From: Tokunori Ikegami <ikegami.t@gmail.com>
Message-ID: <ade6097f-bd02-1e6d-017e-cf6bd06e03bd@gmail.com>
Date: Wed, 26 Jun 2019 02:01:20 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625075746.10439-2-vigneshr@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_100132_693379_3916A827 
X-CRM114-Status: GOOD (  34.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the fix.

Reviewed-by: Tokunori Ikegami <ikegami.t@gmail.com>

I have just tested the patch quickly on my local environment that uses 
the cfi_cmdset_0002 flash device but not HyperFlash family.
So tested as not affected by the change.

On 2019/06/25 16:57, Vignesh Raghavendra wrote:
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
> v8:
> Fix up status register polling to support banked flashes in patch 1/5.
>
>
>   drivers/mtd/chips/cfi_cmdset_0002.c | 130 ++++++++++++++++++++++++----
>   include/linux/mtd/cfi.h             |   7 ++
>   2 files changed, 120 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index c8fa5906bdf9..09f8aaf1e763 100644
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
> @@ -97,6 +107,50 @@ static struct mtd_chip_driver cfi_amdstd_chipdrv = {
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
> +	u8 poll_mask = CFI_POLL_STATUS_REG | CFI_POLL_DQ;
> +
> +	return extp->MinorVersion >= '5' &&
> +		(extp->SoftwareFeatures & poll_mask) == CFI_POLL_STATUS_REG;
> +}
> +
> +static void cfi_check_err_status(struct map_info *map, struct flchip *chip,

Just a minor comment.
I though that it is better to be called this function in chip_good() 
instead of to be called separately.
But I can understand that the chip_good() is called repeatedly in 
do_erase_chip(), do_erase_oneblock() and do_write_buffer() until timeout.
Also do_write_oneword() is also possible to be changed to call the 
chip_good() repeatedly instead of chip_ready().
So additional logics is needed to avoid the repeated error messages in 
the function above.
Anyway it is okay for the current implementation to me.

Regards,
Ikegami

> +				 unsigned long adr)
> +{
> +	struct cfi_private *cfi = map->fldrv_priv;
> +	map_word status;
> +
> +	if (!cfi_use_status_reg(cfi))
> +		return;
> +
> +	cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
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
> @@ -742,10 +796,25 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
>    * correctly and is therefore not done	(particularly with interleaved chips
>    * as each chip must be checked independently of the others).
>    */
> -static int __xipram chip_ready(struct map_info *map, unsigned long addr)
> +static int __xipram chip_ready(struct map_info *map, struct flchip *chip,
> +			       unsigned long addr)
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
> +		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
> +				 cfi->device_type, NULL);
> +		d = map_read(map, addr);
> +
> +		return map_word_andequal(map, d, ready, ready);
> +	}
> +
>   	d = map_read(map, addr);
>   	t = map_read(map, addr);
>   
> @@ -767,10 +836,30 @@ static int __xipram chip_ready(struct map_info *map, unsigned long addr)
>    * as each chip must be checked independently of the others).
>    *
>    */
> -static int __xipram chip_good(struct map_info *map, unsigned long addr, map_word expected)
> +static int __xipram chip_good(struct map_info *map, struct flchip *chip,
> +			      unsigned long addr, map_word expected)
>   {
> +	struct cfi_private *cfi = map->fldrv_priv;
>   	map_word oldd, curd;
>   
> +	if (cfi_use_status_reg(cfi)) {
> +		map_word ready = CMD(CFI_SR_DRB);
> +		map_word err = CMD(CFI_SR_PSB | CFI_SR_ESB);
> +		/*
> +		 * For chips that support status register, check device
> +		 * ready bit and Erase/Program status bit to know if
> +		 * operation succeeded.
> +		 */
> +		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
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
> @@ -792,7 +881,7 @@ static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr
>   
>   	case FL_STATUS:
>   		for (;;) {
> -			if (chip_ready(map, adr))
> +			if (chip_ready(map, chip, adr))
>   				break;
>   
>   			if (time_after(jiffies, timeo)) {
> @@ -830,7 +919,7 @@ static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr
>   		chip->state = FL_ERASE_SUSPENDING;
>   		chip->erase_suspended = 1;
>   		for (;;) {
> -			if (chip_ready(map, adr))
> +			if (chip_ready(map, chip, adr))
>   				break;
>   
>   			if (time_after(jiffies, timeo)) {
> @@ -1362,7 +1451,7 @@ static int do_otp_lock(struct map_info *map, struct flchip *chip, loff_t adr,
>   	/* wait for chip to become ready */
>   	timeo = jiffies + msecs_to_jiffies(2);
>   	for (;;) {
> -		if (chip_ready(map, adr))
> +		if (chip_ready(map, chip, adr))
>   			break;
>   
>   		if (time_after(jiffies, timeo)) {
> @@ -1628,22 +1717,24 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
>   			continue;
>   		}
>   
> -		if (time_after(jiffies, timeo) && !chip_ready(map, adr)){
> +		if (time_after(jiffies, timeo) &&
> +		    !chip_ready(map, chip, adr)) {
>   			xip_enable(map, chip, adr);
>   			printk(KERN_WARNING "MTD %s(): software timeout\n", __func__);
>   			xip_disable(map, chip, adr);
>   			break;
>   		}
>   
> -		if (chip_ready(map, adr))
> +		if (chip_ready(map, chip, adr))
>   			break;
>   
>   		/* Latency issues. Drop the lock, wait a while and retry */
>   		UDELAY(map, chip, adr, 1);
>   	}
>   	/* Did we succeed? */
> -	if (!chip_good(map, adr, datum)) {
> +	if (!chip_good(map, chip, adr, datum)) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, chip, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -1881,10 +1972,11 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>   		 * We check "time_after" and "!chip_good" before checking "chip_good" to avoid
>   		 * the failure due to scheduling.
>   		 */
> -		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum))
> +		if (time_after(jiffies, timeo) &&
> +		    !chip_good(map, chip, adr, datum))
>   			break;
>   
> -		if (chip_good(map, adr, datum)) {
> +		if (chip_good(map, chip, adr, datum)) {
>   			xip_enable(map, chip, adr);
>   			goto op_done;
>   		}
> @@ -1901,6 +1993,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>   	 * See e.g.
>   	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
>   	 */
> +	cfi_check_err_status(map, chip, adr);
>   	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
>   			 cfi->device_type, NULL);
>   	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
> @@ -2018,7 +2111,7 @@ static int cfi_amdstd_panic_wait(struct map_info *map, struct flchip *chip,
>   	 * If the driver thinks the chip is idle, and no toggle bits
>   	 * are changing, then the chip is actually idle for sure.
>   	 */
> -	if (chip->state == FL_READY && chip_ready(map, adr))
> +	if (chip->state == FL_READY && chip_ready(map, chip, adr))
>   		return 0;
>   
>   	/*
> @@ -2035,7 +2128,7 @@ static int cfi_amdstd_panic_wait(struct map_info *map, struct flchip *chip,
>   
>   		/* wait for the chip to become ready */
>   		for (i = 0; i < jiffies_to_usecs(timeo); i++) {
> -			if (chip_ready(map, adr))
> +			if (chip_ready(map, chip, adr))
>   				return 0;
>   
>   			udelay(1);
> @@ -2099,14 +2192,15 @@ static int do_panic_write_oneword(struct map_info *map, struct flchip *chip,
>   	map_write(map, datum, adr);
>   
>   	for (i = 0; i < jiffies_to_usecs(uWriteTimeout); i++) {
> -		if (chip_ready(map, adr))
> +		if (chip_ready(map, chip, adr))
>   			break;
>   
>   		udelay(1);
>   	}
>   
> -	if (!chip_good(map, adr, datum)) {
> +	if (!chip_good(map, chip, adr, datum)) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, chip, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -2300,7 +2394,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
>   			chip->erase_suspended = 0;
>   		}
>   
> -		if (chip_good(map, adr, map_word_ff(map)))
> +		if (chip_good(map, chip, adr, map_word_ff(map)))
>   			break;
>   
>   		if (time_after(jiffies, timeo)) {
> @@ -2316,6 +2410,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
>   	/* Did we succeed? */
>   	if (ret) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, chip, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -2396,7 +2491,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
>   			chip->erase_suspended = 0;
>   		}
>   
> -		if (chip_good(map, adr, map_word_ff(map)))
> +		if (chip_good(map, chip, adr, map_word_ff(map)))
>   			break;
>   
>   		if (time_after(jiffies, timeo)) {
> @@ -2412,6 +2507,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
>   	/* Did we succeed? */
>   	if (ret) {
>   		/* reset on all failures. */
> +		cfi_check_err_status(map, chip, adr);
>   		map_write(map, CMD(0xF0), chip->start);
>   		/* FIXME - should have reset delay before continuing */
>   
> @@ -2589,7 +2685,7 @@ static int __maybe_unused do_ppb_xxlock(struct map_info *map,
>   	 */
>   	timeo = jiffies + msecs_to_jiffies(2000);	/* 2s max (un)locking */
>   	for (;;) {
> -		if (chip_ready(map, adr))
> +		if (chip_ready(map, chip, adr))
>   			break;
>   
>   		if (time_after(jiffies, timeo)) {
> diff --git a/include/linux/mtd/cfi.h b/include/linux/mtd/cfi.h
> index 208c87cf2e3e..c98a21108688 100644
> --- a/include/linux/mtd/cfi.h
> +++ b/include/linux/mtd/cfi.h
> @@ -219,6 +219,13 @@ struct cfi_pri_amdstd {
>   	uint8_t  VppMin;
>   	uint8_t  VppMax;
>   	uint8_t  TopBottom;
> +	/* Below field are added from version 1.5 */
> +	uint8_t  ProgramSuspend;
> +	uint8_t  UnlockBypass;
> +	uint8_t  SecureSiliconSector;
> +	uint8_t  SoftwareFeatures;
> +#define CFI_POLL_STATUS_REG	BIT(0)
> +#define CFI_POLL_DQ		BIT(1)
>   } __packed;
>   
>   /* Vendor-Specific PRI for Atmel chips (command set 0x0002) */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
