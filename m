Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094E4B7CEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wG435wWEtQGltbyQfsJGWtwmEzptrCAIwUvJP1WjoHc=; b=rnA2wtAIPw2toY
	Cw0NoeJkos3YX52lOFszHoQItcLWXb/DAZPUHhTyPFBZbWKAJE5ZVbKrT1uBgLi+TPH9Qz7Bg5pVk
	jIcMnZGi3wfK/Utdutarm6Ng7JCN0VNQA2/9/DQuudTxpgnh1/dsq2QFwbsxjroDYGuf/7m31hctU
	+i7VHwIOECnIxhdGQatRrUb4Fnu1Src7AXjmP0+J8ieoABMyEBsFwUySHt7NXpeTZjFXoFEZ2Z74K
	mYGAjtJ5wrLPrxSl/JpNL/A+Nw8UCt2KeyeaEOH4oD1oKuR39eUH6dk8wXnklXP8tr+/rNpSYdJK9
	b+6rm7fhO2zpnOFdwfPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxWJ-0005sc-Vt; Thu, 19 Sep 2019 14:34:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxVQ-0005D0-Fr; Thu, 19 Sep 2019 14:34:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8JEXe2Y028567;
 Thu, 19 Sep 2019 09:33:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568903620;
 bh=3hWAzQBM44NiooNx2UDD2G0o6OnQ7ufrB9rlUJiQznU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=FTkM871POjpB2V/MidnKMkHV/yuwzTF3OaC1byDeyAEInNV/O4vFeg5/hMNA7pF9L
 UYKMyvfdq7OoMiI4tGTkyJj7WB0Ew4f+wKLqF8a0MkPm3c7wRM6GYcA8UC3O/7Crbs
 VaS5W2CSoelQS2h+77ZHgfmnJTJmpFAs+v3GAWJw=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JEXefC069798;
 Thu, 19 Sep 2019 09:33:40 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 19
 Sep 2019 09:33:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 19 Sep 2019 09:33:40 -0500
Received: from [10.250.132.15] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JEXYtc011335;
 Thu, 19 Sep 2019 09:33:35 -0500
Subject: Re: [PATCH 17/23] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
 <20190917155426.7432-18-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <dceca616-2b98-9bc8-73e4-32fb06fc753d@ti.com>
Date: Thu, 19 Sep 2019 20:03:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917155426.7432-18-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073401_601413_AE871C9D 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tudor

[...]

On 17-Sep-19 9:25 PM, Tudor.Ambarus@microchip.com wrote:
> +static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
> +					    u8 mask)
> +{
> +	int ret;
> +	u8 *sr_cr = nor->bouncebuf;
> +	u8 cr_written;
> +
> +	/* Make sure we don't overwrite the contents of Status Register 2. */
> +	if (!(nor->flags & SNOR_F_NO_READ_CR)) {

Assuming SNOR_F_NO_READ_CR is not set...

> +		ret = spi_nor_read_cr(nor, &sr_cr[1]);
> +		if (ret)
> +			return ret;
> +	} else if (nor->flash.quad_enable) {
> +		/*
> +		 * If the Status Register 2 Read command (35h) is not
> +		 * supported, we should at least be sure we don't
> +		 * change the value of the SR2 Quad Enable bit.
> +		 *
> +		 * We can safely assume that when the Quad Enable method is
> +		 * set, the value of the QE bit is one, as a consequence of the
> +		 * nor->flash.quad_enable() call.
> +		 *
> +		 * We can safely assume that the Quad Enable bit is present in
> +		 * the Status Register 2 at BIT(1). According to the JESD216
> +		 * revB standard, BFPT DWORDS[15], bits 22:20, the 16-bit
> +		 * Write Status (01h) command is available just for the cases
> +		 * in which the QE bit is described in SR2 at BIT(1).
> +		 */
> +		sr_cr[1] = CR_QUAD_EN_SPAN;
> +	} else {
> +		sr_cr[1] = 0;
> +	}
> +

CR_QUAD_EN_SPAN will not be in sr_cr[1] when we reach here. So code
won't enable quad mode.


> +	sr_cr[0] = status_new;
> +
> +	ret = spi_nor_write_sr(nor, sr_cr, 2);
> +	if (ret)
> +		return ret;
> +
> +	cr_written = sr_cr[1];
> +
> +	ret = spi_nor_read_sr(nor, &sr_cr[0]);
> +	if (ret)
> +		return ret;
> +
> +	if ((sr_cr[0] & mask) != (status_new & mask)) {
> +		dev_err(nor->dev, "Read back test failed\n");
> +		return -EIO;
> +	}
> +
> +	if (nor->flags & SNOR_F_NO_READ_CR)
> +		return 0;
> +
> +	ret = spi_nor_read_cr(nor, &sr_cr[1]);
> +	if (ret)
> +		return ret;
> +
> +	if (cr_written != sr_cr[1]) {
> +		dev_err(nor->dev, "Read back test failed\n");
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +

Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
