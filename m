Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E26CB777
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xeDKDy7kOwoAoq0HupOSqkOGV0pgylAvkmI3otBHKBo=; b=kjnNP8mwZVxBS42/oauf08ZPE
	drSZ1j9cUrnuvb2S/rVTxdf8w+uRN2RUgDBTgTE2e7OF7gNtzhXadich4ZYaVhxNu4e3c8XFJx68H
	5vr5KUoJmtypEAKUmsXbVH39yDgOjljKkJWRshL0HR2xuasF7ySKlkY1n5tX+kcjIfR1XB4G4R9Iw
	reeYV/q5XANtYWouGJJ0dy8JP8NsSoTlLEENq0Lklaf6phTl99Fbk159Tka10+8+z/9jY+o9sfYc2
	WwGMgOWs4FT9nGTPYQEQUw8iRb6ydT45x+KWMEVHN/eBUqY58tLcmf7DmZ5qS3Bdsbm7xMVwKn05y
	GVxUl9iqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGK4R-0002Gq-Qf; Fri, 04 Oct 2019 09:40:19 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGK4J-0002Di-1a; Fri, 04 Oct 2019 09:40:12 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DEEE194FBEF2EFAB3561;
 Fri,  4 Oct 2019 17:40:06 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 4 Oct 2019 17:40:01 +0800
Subject: Re: [PATCH v2 10/22] mtd: spi-nor: Rework write_sr()
To: "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>,
 "vigneshr@ti.com" <vigneshr@ti.com>, "boris.brezillon@collabora.com"
 <boris.brezillon@collabora.com>, "marek.vasut@gmail.com"
 <marek.vasut@gmail.com>, "linux-mtd@lists.infradead.org"
 <linux-mtd@lists.infradead.org>, "geert+renesas@glider.be"
 <geert+renesas@glider.be>, "jonas@norrbonn.se" <jonas@norrbonn.se>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-11-tudor.ambarus@microchip.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <83d62334-bd1c-20b7-3c58-225392c819f8@huawei.com>
Date: Fri, 4 Oct 2019 10:39:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190924074533.6618-11-tudor.ambarus@microchip.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_024011_257172_E816DBDD 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>, "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vz@mleia.com" <vz@mleia.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "joel@jms.id.au" <joel@jms.id.au>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/09/2019 08:46, Tudor.Ambarus@microchip.com wrote:
> +}
> +
> +/**
> + * spi_nor_write_sr() - Write the Status Register.
> + * @nor:	pointer to 'struct spi_nor'.
> + * @sr:		buffer to write to the Status Register.
> + * @len:	number of bytes to write to the Status Register.
> + *
> + * Return: 0 on success, -errno otherwise.
>   */
> -static int write_sr(struct spi_nor *nor, u8 val)
> +static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
>  {
> -	nor->bouncebuf[0] = val;
> +	int ret;
> +
> +	ret = spi_nor_write_enable(nor);
> +	if (ret)
> +		return ret;
> +

Hi Tudor,

>  	if (nor->spimem) {
>  		struct spi_mem_op op =
>  			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
>  				   SPI_MEM_OP_NO_ADDR,
>  				   SPI_MEM_OP_NO_DUMMY,
> -				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));

This be SPI_MEM_OP_DATA_OUT() in the current mainline code also, right?

I'm testing my under development driver on top of v5.4-rc1, and 
flash_lock -u is broken.

Cheers,
John

> +				   SPI_MEM_OP_DATA_OUT(len, sr, 1));
>
> -		return spi_mem_exec_op(nor->spimem, &op);
> +		ret = spi_mem_exec_op(nor->spimem, &op);
> +	} else {
> +		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
> +						     sr, len);
>  	}
>
> -	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
> -					      nor->bouncebuf, 1);
> +	if (ret) {
> +		dev_err(nor->dev, "error while writing Status Register\n");
> +		return ret;
> +	}
> +
> +	ret = spi_nor_wait_till_ready(nor);
> +
> +	return ret;
>  }
>
>  static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
> @@ -741,161 +914,6 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
>  	return ret;
>  }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
