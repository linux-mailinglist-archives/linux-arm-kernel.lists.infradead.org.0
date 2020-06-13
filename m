Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C01F837D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 15:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVpAXNAP+T7wQ0A9NcDq8nZyikHGYFdX1jt+dGpDxFw=; b=M94UAlxMGM70cF
	0zi5tjrM9O0nbbCsZD56dDINuBI32VAQQ39EW3PwDwaV9wKiD2ZoINXfEFW8zOYo5Pv/vrHoeZPV7
	873dsSreRKb9MNToWfLUete0P8MgbTxNm8m8IzsZJyPpuBvZZFf9tlTDOOEtcmo8XPdd2pzmE4Exc
	e8k5sVgHVVayfn6WrqBAH17dDctu158R6dhY885aGQDJLoVWzEIxHOTsLFW7f9T6+uaa5JbYzsy8Z
	xWKZOdLXruwM9LrciTIhitR7Qzq/tqgLrmOOiC9KriGhx/yERnPST3k9m+Ecx7PwuHmcc5DGDbfxT
	waeCm4T62o8F6G8pfHmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk6GV-0006H1-Gp; Sat, 13 Jun 2020 13:32:07 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk6GL-00069V-MV; Sat, 13 Jun 2020 13:31:59 +0000
Received: by mail-ed1-x542.google.com with SMTP id o26so8349746edq.0;
 Sat, 13 Jun 2020 06:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OUmNRdPx/be1/6jzqibt7UCvRyGhJK8kMQ8p+snfcg4=;
 b=t97tKAT4/yAT+oOYnh8VBpWFFC0iVmXXkWzKrza0nSF9sS+P+UeV82h1OVTj5oI/PI
 qUkiNH14iaNY+j1kF88hQwXv0Mp4Or4gKhM++DRfjlw+A3o8kZFJIIKmzvKqSzuwu8Np
 ZUzWwO/s9OPKl3pHiBKKhcWl24R2PqCODVHjoo0ZbPPPswLabPjRoGuOrRoNBOfrn9Eo
 91l/aD/1uDAgO1PPjOEqpMoWdGCwZWQE2/j88ILKRehc/M/bRG5ezn4k/L4GgvJKLi4f
 IvO7k6mjhC5jRGh14zha+W8Cws0jSIcBKEwvgQuHfYH3zVLtB63Nmms82VmNl9TGaz9E
 wgOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OUmNRdPx/be1/6jzqibt7UCvRyGhJK8kMQ8p+snfcg4=;
 b=M52wc+XkZAty5+uHAlXzqZVwunDc6ZLGISxjk6uhno2WD3v8st2dczWwdfUkhVrgmm
 FNSpnWVkfJruyrHCkDEg2B0IB6NU+geDofsE8VEvO4MO30LUQOZH8L9/UKNXFwenNGQ4
 YSDa+mVadJZjS3MVO8TlnTT2N/eTimarssG/kgVL2FBm21Iajx6pnzFWwz/VwYsAk9qY
 dgroyJwvWQejsbKR9osv2l4uzqoH68tmssDtYx8sI/6NLu1bwIJvjjLtUQqxGMpKcnZj
 e3i+xjKVAjXoC34b6v8Lga+Z6lp/nhmWsrZOzoxQU99qlFplY+s8R8tFl4V+m52x/yhF
 FSLA==
X-Gm-Message-State: AOAM530cWf7s24ZEs8Cybier0jAs2MLTfEObsVHGiPz1uKUeJkzYPVFL
 gKnsufmSg9yiZAQA3R3LPHKNtd5R
X-Google-Smtp-Source: ABdhPJxOSW4dx8Zyucq+dpW5I0KidUysWnaQehoO1Eo7LWH4kec86Jek638TVQUPnH09zlhl5j9Yvg==
X-Received: by 2002:aa7:c2c4:: with SMTP id m4mr15777623edp.299.1592055115431; 
 Sat, 13 Jun 2020 06:31:55 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l18sm4981050eds.46.2020.06.13.06.31.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 06:31:54 -0700 (PDT)
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7e4ce8b1-73c4-8b9a-5726-b121f53de8df@gmail.com>
Date: Sat, 13 Jun 2020 15:31:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_063157_743762_F1C3CD8E 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yifeng, Miquel,

Some more comments about swap();

On 6/9/20 9:40 AM, Yifeng Zhao wrote:

[..]

> +static int rk_nfc_ooblayout_free(struct mtd_info *mtd, int section,
> +				 struct mtd_oob_region *oob_region)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +

> +	if (section >= chip->ecc.steps)
> +		return -ERANGE;

Given:

NFC_SYS_DATA_SIZE = 4
chip->ecc.steps = 8
section [0..7]

Total free OOB size advertised to the MTD framework is:

ecc.steps * NFC_SYS_DATA_SIZE - 1 BBM
8 * 4 - 1 = 31 bytes

With link address in OOB byte [0..3] this become:
31 - 4 = 27 bytes

Does that give data lost?
Should we limit the number of free OOB bytes by 4 more to be save?
Is my calculation correct?

See further questions about this below.

> +
> +	if (!section) {
> +		/* The first byte is bad block mask flag. */
> +		oob_region->length = NFC_SYS_DATA_SIZE - 1;
> +		oob_region->offset = 1;
> +	} else {
> +		oob_region->length = NFC_SYS_DATA_SIZE;
> +		oob_region->offset = section * NFC_SYS_DATA_SIZE;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rk_nfc_ooblayout_ecc(struct mtd_info *mtd, int section,
> +				struct mtd_oob_region *oob_region)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +

> +	if (section)
> +		return -ERANGE;

With the formule above a section > 0 does not alow ECC.

Just a question about the MTD inner working for Miquel:

With ooblayout_free using 8 steps and this just 1 does it still generate
the correct ECC? Does it calculate ECC over 1024B or over 8*1024B ?

Should we move the text that explains the layout closer to these
functions and add a little more text to explain why we choose this
particular layout?

/*
 * NFC Page Data Layout:
 *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
 *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
 *	......
 * NAND Page Data Layout:
 *	1024 * n Data + m Bytes oob
 * Original Bad Block Mask Location:
 *	First byte of oob(spare).
 * nand_chip->oob_poi data layout:
 *	4Bytes sys data + .... + 4Bytes sys data + ecc data.
 */

We expect now ECC data after n steps * 4 OOB bytes,
but are we still using it with HW ECC or only for raw?

> +
> +	oob_region->offset = NFC_SYS_DATA_SIZE * chip->ecc.steps;
> +	oob_region->length = mtd->oobsize - oob_region->offset;
> +
> +	return 0;
> +}
> +
> +static const struct mtd_ooblayout_ops rk_nfc_ooblayout_ops = {
> +	.free = rk_nfc_ooblayout_free,
> +	.ecc = rk_nfc_ooblayout_ecc,
> +};

[..]

> +static int rk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
> +			     const u8 *buf, int page, int raw)
> +{
> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> +	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
> +	struct nand_ecc_ctrl *ecc = &chip->ecc;
> +	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
> +			NFC_MIN_OOB_PER_STEP;
> +	int pages_per_blk = mtd->erasesize / mtd->writesize;
> +	int ret = 0, i, boot_rom_mode = 0;
> +	dma_addr_t dma_data, dma_oob;
> +	u32 reg;
> +	u8 *oob;
> +
> +	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
> +
> +	if (!raw) {
> +		memcpy(nfc->page_buf, buf, mtd->writesize);
> +		memset(nfc->oob_buf, 0xff, oob_step * ecc->steps);
> +
> +		/*
> +		 * The first 8(some devices are 4 or 16) blocks in use by
> +		 * the boot ROM and the first 32 bits of oob need to link
> +		 * to the next page address in the same block.
> +		 * Config the ECC algorithm supported by the boot ROM.
> +		 */
> +		if (page < pages_per_blk * rk_nand->boot_blks &&
> +		    chip->options & NAND_IS_BOOT_MEDIUM) {
> +			boot_rom_mode = 1;
> +			if (rk_nand->boot_ecc != ecc->strength)
> +				rk_nfc_hw_ecc_setup(chip, ecc,
> +						    rk_nand->boot_ecc);
> +		}
> +
> +		/*
> +		 * Swap the first oob with the seventh oob and bad block
> +		 * mask is saved at the seventh oob.
> +		 */
> +		swap(chip->oob_poi[0], chip->oob_poi[7]);

Add more info on why this is swapped.

LA[0..3] is a link address that the BBM shouldn't over write.
For Yifeng: Is there an other reason?

Before swap:

BBM  OOB1 OOB2 OOB3, OOB4 OOB5 OOB6 OOB7, OOB8 ....

After swap:

OOB7 OOB1 OOB2 OOB3, OOB4 OOB5 OOB6 BBM , OOB8 ....

If (!i && boot_rom_mode):

LA0  LA1  LA2  LA3 , OOB4 OOB5 OOB6 BBM , OOB8 ....

Read back after swap again:

BBM  LA1  LA2  LA3 , OOB4 OOB5 OOB6 LA0 , OOB8 ....

Question:
Are data OOB7 OOB1 OOB2 OOB3 lost now?
Is this correct?

#################################################
Proposal:
Should we reduce the free OOB size by 4
and shift everything 4 bytes to recover all bytes?
Replace the first 4 bytes with 0XFF or LA[0..3].

Normal:
0xFF 0XFF 0XFF 0xFF, BBM  OOB1 OOB2 OOB3, OOB4

If (!i && boot_rom_mode):
LA0  LA1  LA2  LA3 , BBM  OOB1 OOB2 OOB3, OOB4

Question for Miquel and Yifeng:
Does this work? Could you test?

> +
> +		for (i = 0; i < ecc->steps; i++) {

Just a proposel:

		if (!i && boot_rom_mode)
			reg = (page & (pages_per_blk - 1)) * 4;
		else if (!i)
			reg = 0xFFFFFFFF;
		else	
			oob = chip->oob_poi + (i-1) * NFC_SYS_DATA_SIZE;
			reg = oob[0] | oob[1] << 8 | oob[2] << 16 |
			      oob[3] << 24;

> +
> +			if (nfc->cfg->type == NFC_V6 ||
> +			    nfc->cfg->type == NFC_V8)
> +				nfc->oob_buf[i * oob_step / 4] = reg;
> +			else
> +				nfc->oob_buf[i] = reg;
> +		}
> +
> +		dma_data = dma_map_single(nfc->dev, (void *)nfc->page_buf,
> +					  mtd->writesize, DMA_TO_DEVICE);
> +		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
> +					 ecc->steps * oob_step,
> +					 DMA_TO_DEVICE);
> +
> +		reinit_completion(&nfc->done);
> +		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
> +
> +		rk_nfc_xfer_start(nfc, NFC_WRITE, ecc->steps, dma_data,
> +				  dma_oob);
> +		ret = wait_for_completion_timeout(&nfc->done,
> +						  msecs_to_jiffies(100));
> +		if (!ret)
> +			dev_warn(nfc->dev, "write: wait dma done timeout.\n");
> +		/*
> +		 * Whether the DMA transfer is completed or not. The driver
> +		 * needs to check the NFC`s status register to see if the data
> +		 * transfer was completed.
> +		 */
> +		ret = rk_nfc_wait_for_xfer_done(nfc);
> +
> +		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
> +				 DMA_TO_DEVICE);
> +		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
> +				 DMA_TO_DEVICE);
> +
> +		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
> +			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
> +
> +		if (ret) {
> +			ret = -EIO;
> +			dev_err(nfc->dev,
> +				 "write: wait transfer done timeout.\n");
> +		}
> +	} else {
> +		rk_nfc_write_buf(chip, buf, mtd->writesize + + mtd->oobsize);

Remove a '+'

> +	}
> +
> +	if (ret)
> +		return ret;
> +
> +	ret = nand_prog_page_end_op(chip);
> +
> +	/* Deselect the currently selected target. */
> +	rk_nfc_select_chip(chip, -1);
> +
> +	return ret;
> +}
> +
> +static int rk_nfc_write_page_raw(struct nand_chip *chip, const u8 *buf,
> +				 int oob_on, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> +	u32 i;
> +
> +	memset(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
> +	swap(chip->oob_poi[0], chip->oob_poi[7]);
> +	for (i = 0; i < chip->ecc.steps; i++) {
> +		if (buf)
> +			memcpy(rk_data_ptr(chip, i), data_ptr(chip, buf, i),
> +			       chip->ecc.size);
> +
> +		memcpy(rk_oob_ptr(chip, i), oob_ptr(chip, i),
> +		       NFC_SYS_DATA_SIZE);
> +	}
> +
> +	return rk_nfc_write_page(mtd, chip, nfc->buffer, page, 1);
> +}
> +
> +static int rk_nfc_write_oob_std(struct nand_chip *chip, int page)
> +{
> +	return rk_nfc_write_page_raw(chip, NULL, 1, page);
> +}
> +
> +static int rk_nfc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
> +			    u32 data_offs, u32 readlen,
> +			    u8 *buf, int page, int raw)
> +{
> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> +	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
> +	struct nand_ecc_ctrl *ecc = &chip->ecc;
> +	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
> +			NFC_MIN_OOB_PER_STEP;
> +	int pages_per_blk = mtd->erasesize / mtd->writesize;
> +	dma_addr_t dma_data, dma_oob;
> +	int ret = 0, i, boot_rom_mode = 0;
> +	int bitflips = 0, bch_st;
> +	u8 *oob;
> +	u32 tmp;
> +
> +	nand_read_page_op(chip, page, 0, NULL, 0);
> +	if (!raw) {
> +		dma_data = dma_map_single(nfc->dev, nfc->page_buf,
> +					  mtd->writesize,
> +					  DMA_FROM_DEVICE);
> +		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
> +					 ecc->steps * oob_step,
> +					 DMA_FROM_DEVICE);
> +
> +		/*
> +		 * The first 8(some devices are 4 or 16) blocks in use by
> +		 * the bootrom.
> +		 * Config the ECC algorithm supported by the boot ROM.
> +		 */
> +		if (page < pages_per_blk * rk_nand->boot_blks &&
> +		    chip->options & NAND_IS_BOOT_MEDIUM) {
> +			boot_rom_mode = 1;
> +			if (rk_nand->boot_ecc != ecc->strength)
> +				rk_nfc_hw_ecc_setup(chip, ecc,
> +						    rk_nand->boot_ecc);
> +		}
> +
> +		reinit_completion(&nfc->done);
> +		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
> +		rk_nfc_xfer_start(nfc, NFC_READ, ecc->steps, dma_data,
> +				  dma_oob);
> +		ret = wait_for_completion_timeout(&nfc->done,
> +						  msecs_to_jiffies(100));
> +		if (!ret)
> +			dev_warn(nfc->dev, "read: wait dma done timeout.\n");
> +		/*
> +		 * Whether the DMA transfer is completed or not. The driver
> +		 * needs to check the NFC`s status register to see if the data
> +		 * transfer was completed.
> +		 */
> +		ret = rk_nfc_wait_for_xfer_done(nfc);
> +		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
> +				 DMA_FROM_DEVICE);
> +		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
> +				 DMA_FROM_DEVICE);
> +
> +		if (ret) {
> +			bitflips = -EIO;
> +			dev_err(nfc->dev,
> +				 "read: wait transfer done timeout.\n");
> +			goto out;
> +		}
> +
> +		for (i = 0; i < ecc->steps; i++) {
> +			oob = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
> +			if (nfc->cfg->type == NFC_V6 ||
> +			    nfc->cfg->type == NFC_V8)
> +				tmp = nfc->oob_buf[i * oob_step / 4];
> +			else
> +				tmp = nfc->oob_buf[i];
> +			*oob++ = (u8)tmp;
> +			*oob++ = (u8)(tmp >> 8);
> +			*oob++ = (u8)(tmp >> 16);
> +			*oob++ = (u8)(tmp >> 24);
> +		}
> +
> +		/*
> +		 * Swap the first oob with the seventh oob and bad block
> +		 * mask is saved at the seventh oob.
> +		 */
> +		swap(chip->oob_poi[0], chip->oob_poi[7]);
> +
> +		for (i = 0; i < ecc->steps / 2; i++) {
> +			bch_st = readl_relaxed(nfc->regs +
> +					       nfc->cfg->bch_st_off + i * 4);
> +			if (bch_st & BIT(nfc->cfg->ecc0.err_flag_bit) ||
> +			    bch_st & BIT(nfc->cfg->ecc1.err_flag_bit)) {
> +				mtd->ecc_stats.failed++;
> +				bitflips = -1;
> +			} else {
> +				ret = ECC_ERR_CNT(bch_st, nfc->cfg->ecc0);
> +				mtd->ecc_stats.corrected += ret;
> +				bitflips = max_t(u32, bitflips, ret);
> +
> +				ret = ECC_ERR_CNT(bch_st, nfc->cfg->ecc1);
> +				mtd->ecc_stats.corrected += ret;
> +				bitflips = max_t(u32, bitflips, ret);
> +			}
> +		}
> +out:
> +		memcpy(buf, nfc->page_buf, mtd->writesize);
> +
> +		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
> +			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
> +
> +		if (bitflips < 0)
> +			dev_err(nfc->dev, "read page: %x ecc error!\n", page);
> +	} else {
> +		rk_nfc_read_buf(chip, buf, mtd->writesize + mtd->oobsize);
> +	}
> +	/* Deselect the currently selected target. */
> +	rk_nfc_select_chip(chip, -1);
> +
> +	return bitflips;
> +}
> +
> +static int rk_nfc_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
> +				   int oob_on, int page)
> +{
> +	return rk_nfc_write_page(nand_to_mtd(chip), chip, buf, page, 0);
> +}
> +
> +static int rk_nfc_read_page_hwecc(struct nand_chip *chip, u8 *p, int oob_on,
> +				  int pg)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +
> +	return rk_nfc_read_page(mtd, chip, 0, mtd->writesize, p, pg, 0);
> +}
> +
> +static int rk_nfc_read_page_raw(struct nand_chip *chip, u8 *buf, int oob_on,
> +				int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> +	int i, ret;
> +
> +	ret = rk_nfc_read_page(mtd, chip, 0, mtd->writesize, nfc->buffer,
> +			       page, 1);
> +	if (ret < 0)
> +		return ret;
> +
> +	for (i = 0; i < chip->ecc.steps; i++) {
> +		memcpy(oob_ptr(chip, i), rk_oob_ptr(chip, i),
> +		       NFC_SYS_DATA_SIZE);
> +
> +		if (buf)
> +			memcpy(data_ptr(chip, buf, i), rk_data_ptr(chip, i),
> +			       chip->ecc.size);
> +	}
> +	swap(chip->oob_poi[0], chip->oob_poi[7]);
> +
> +	return ret;
> +}

[..]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
