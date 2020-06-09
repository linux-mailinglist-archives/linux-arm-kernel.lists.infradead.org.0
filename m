Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22001F47F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qase71Im5oStqsJGLFbzxpqU+DZ8McpQPonmrwpvbEQ=; b=rpgKdiWfhtvKRK
	cQOxSGm3baKEJyfjIPHkNFcmm5XJXQa1Oy0wZgwIrqKZieSIlPewEIyuxzZqDL3lWwH5FgrOet49j
	j9RwLhVbd8OiWs1bL5p7RT9u/GQhu8DW+5jf/orpEcm3mXdBa6gQk+PQyCDsn56Qqty2bj5ktj9z1
	6anWZmGF7SAMytDPgYkfI3hXBsbA8MFhF94B/sIR/HBPnpPiIrOkit+17jfUxp7RAQ/HADSdaRqHk
	YUXr+2+t4aIpVXw2iGcDXJxuEfri4rqcAVgCESEeGwmEpVsaIH8QsfkMF7ZwjpHEDHiw9ovChRWNW
	oOgib4RZhWJPXXTsvQrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikhY-0008Uo-FX; Tue, 09 Jun 2020 20:18:28 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikhP-0008TT-DJ; Tue, 09 Jun 2020 20:18:20 +0000
Received: by mail-ej1-x641.google.com with SMTP id f7so18437ejq.6;
 Tue, 09 Jun 2020 13:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KC+Q83VPZzMlqolXBXEKcpuJ9FScuGWzx6JhmUmNyNc=;
 b=EeNW4UjvW+6S95WUz7HfGxgUJn1gTCj9PL6zjddRXbKFlkdYb0qnzEyUpYMLYEBiAG
 5Rk84vvPjS3gHPAYgklMyLmwQ5uNOFj89xf6Yon8QKt9Q8pdrWfMXS97H/Ihba6ITkc+
 WclOMXtoecZUjQB8R98r2/NXbXX7JvmvqBCMKumx/43z/WX1pANRxrDhuSrRgIYlCeXx
 2aL4nUYA/1uv+6qkZKxmqJ34ZlRvI5H2zb5c3g+vhEzR4kpKQoY7sUWwv0DrS80AAuTs
 gxqySTzEuew1YaXOkua01d7GqKwBOhsDiJUAvxgZMF1xtZEV0IAiCwSak0YQlO6KSJHd
 rJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KC+Q83VPZzMlqolXBXEKcpuJ9FScuGWzx6JhmUmNyNc=;
 b=GHx+pguHjVLJTHTBlOxXdFArskceF/0mUx3d486wmWNzZsPsQAQt+bbI3N0mBdw0g1
 gzhyJXTcajSImziKzirbiJ0STnsmd6avBaJyWstcos8oK9nypv2HgCc+GgV+NJRcTZFt
 VBwpky/jyiLwz6Vy8vU7Y5WHRmbBjQ1ZAZDDwNXJ2U+xp8MfP0BbHYoZAJcGE08CpOqm
 LjkX8i6G5qXQEVctsj6IPpzILvb7wR/nb7/Nv8Kgjij4sRiEpB8fDRoq1u8AmZIQGKLS
 fbo35gfgtmkrrVO/AmRwcNuDw2db/HtmcNCDhR3rThNT5Jf1ZRA4THkHtmn8U5ptf1MY
 078w==
X-Gm-Message-State: AOAM531/tte89cEay2cDkPrzpD+hlRvIQhVLQn5U6Qn+mbdAN/nZVvIr
 9G/gHHENBj9+cji4QDQkzWc2qPrW
X-Google-Smtp-Source: ABdhPJxfFjAQ2iFrXqTiotmLGJ0K4tuq7uoLusv+WJ6CJh25HXZ7mplpOTW07mjA7oajhYRrItzAWw==
X-Received: by 2002:a17:906:799:: with SMTP id
 l25mr135009ejc.234.1591733897541; 
 Tue, 09 Jun 2020 13:18:17 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y12sm13986179ejr.77.2020.06.09.13.18.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 13:18:17 -0700 (PDT)
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
From: Johan Jonker <jbx6244@gmail.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
 <7eb89126-9d4b-9cdf-0f77-3242df36e090@gmail.com>
Message-ID: <0b83ca45-3218-aaff-1462-7e08ae1e3afd@gmail.com>
Date: Tue, 9 Jun 2020 22:18:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <7eb89126-9d4b-9cdf-0f77-3242df36e090@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_131819_453068_E0974688 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/9/20 6:10 PM, Johan Jonker wrote:

> On 6/9/20 9:40 AM, Yifeng Zhao wrote:

[..]

>> +static int rk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
>> +			     const u8 *buf, int page, int raw)
>> +{
>> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
>> +	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
>> +	struct nand_ecc_ctrl *ecc = &chip->ecc;
>> +	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
>> +			NFC_MIN_OOB_PER_STEP;
>> +	int pages_per_blk = mtd->erasesize / mtd->writesize;
>> +	int ret = 0, i, boot_rom_mode = 0;
>> +	dma_addr_t dma_data, dma_oob;
>> +	u32 reg;
>> +	u8 *oob;
>> +
>> +	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
>> +
>> +	if (!raw) {
>> +		memcpy(nfc->page_buf, buf, mtd->writesize);
>> +		memset(nfc->oob_buf, 0xff, oob_step * ecc->steps);
>> +
> 
>> +		/*
>> +		 * The first 8(some devices are 4 or 16) blocks in use by
> 
> are in use by
> 
>> +		 * the boot ROM and the first 32 bits of oob need to link
>> +		 * to the next page address in the same block.
>> +		 * Config the ECC algorithm supported by the boot ROM.
>> +		 */
>> +		if (page < pages_per_blk * rk_nand->boot_blks &&
>> +		    chip->options & NAND_IS_BOOT_MEDIUM) {
>> +			boot_rom_mode = 1;
>> +			if (rk_nand->boot_ecc != ecc->strength)
>> +				rk_nfc_hw_ecc_setup(chip, ecc,
>> +						    rk_nand->boot_ecc);
>> +		}
> 
> Helper?
> 
>> +
>> +		/*
> 


>> +		 * Swap the first oob with the seventh oob and bad block
> 
> 
> Swap the first oob byte with the seventh oob byte.
> 
>> +		 * mask is saved at the seventh oob.
> 
> The bad block mask is stored at the seventh oob byte.

Just wondering bit or byte?
seventh or eight?

> 
>> +		 */
>> +		swap(chip->oob_poi[0], chip->oob_poi[7]);

uint8_t *oob_poi;

1: oob_poi points to a byte I think?

What was the swap puspose? A bit or a byte?
There's 4 bytes oob per step.
Could you explain?

2: oob_poi[7] counting starts at [0] #1, [7] is then #8 ?
Is that correct?

>> +
>> +		for (i = 0; i < ecc->steps; i++) {
>> +			oob = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
>> +			reg = oob[0] | oob[1] << 8 | oob[2] << 16 |
>> +			      oob[3] << 24;
>> +			if (!i && boot_rom_mode)
>> +				reg = (page & (pages_per_blk - 1)) * 4;
>> +
>> +			if (nfc->cfg->type == NFC_V6 ||
>> +			    nfc->cfg->type == NFC_V8)
>> +				nfc->oob_buf[i * oob_step / 4] = reg;
>> +			else
>> +				nfc->oob_buf[i] = reg;
>> +		}
>> +
>> +		dma_data = dma_map_single(nfc->dev, (void *)nfc->page_buf,
>> +					  mtd->writesize, DMA_TO_DEVICE);
>> +		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
>> +					 ecc->steps * oob_step,
>> +					 DMA_TO_DEVICE);
>> +
>> +		reinit_completion(&nfc->done);
>> +		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
>> +
>> +		rk_nfc_xfer_start(nfc, NFC_WRITE, ecc->steps, dma_data,
>> +				  dma_oob);
>> +		ret = wait_for_completion_timeout(&nfc->done,
>> +						  msecs_to_jiffies(100));
>> +		if (!ret)
>> +			dev_warn(nfc->dev, "write: wait dma done timeout.\n");
>> +		/*
>> +		 * Whether the DMA transfer is completed or not. The driver
>> +		 * needs to check the NFC`s status register to see if the data
>> +		 * transfer was completed.
>> +		 */
>> +		ret = rk_nfc_wait_for_xfer_done(nfc);
>> +
>> +		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
>> +				 DMA_TO_DEVICE);
>> +		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
>> +				 DMA_TO_DEVICE);
>> +
> 
>> +		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
>> +			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
> 
> Helper?
> 
>> +
>> +		if (ret) {
>> +			ret = -EIO;
> 
>> +			dev_err(nfc->dev,
>> +				 "write: wait transfer done timeout.\n");
> 
> align
> 
>> +		}
>> +	} else {

>> +		rk_nfc_write_buf(chip, buf, mtd->writesize + + mtd->oobsize);

Too many +++ here?                                         ^ ^

>> +	}
>> +
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = nand_prog_page_end_op(chip);
>> +
>> +	/* Deselect the currently selected target. */
>> +	rk_nfc_select_chip(chip, -1);
>> +
>> +	return ret;
>> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
