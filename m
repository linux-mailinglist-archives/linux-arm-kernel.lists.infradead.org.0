Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A704E55846
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YA6KpkUHQQzm7pcBQAOvWrZDUVLVJae32U5KdahBIQg=; b=ZjBxqmi2W1Tj6f
	b0eGgMi/+wv+eHnFaQ0NBj3FQu6NkhP4nHdDpAXuVJGyhFySXWB+Q1BspEiptVOghFCEln4qYMR14
	uFUWudJOtt5RhleaK/hi3GS6XXHW5vxDaAIV5NgqR0CKu575sZ+6hnUQ/YIphWOo/Lqv1KHftQlFt
	SnpI5FjZ/ske0zELxPVzCBXNi+5p2+Qjru2ZoyAtHcGne1500OFf1JHmKLaojvhPNskLBL+Bfoiae
	VSMN+V0eveJOj8xjhVbIdOn9jXzM2fdsTdrQxEW/bbcx9ga+lsGch6g7w0LU1YGtJryMkC47OVI+f
	hrpqk95mFD71ygYaJd7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrcY-0008JX-SV; Tue, 25 Jun 2019 20:00:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrcJ-0008IN-KY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:00:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id k18so17490498ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zCSCrKNhNFyn/M7NDXA6/GQVwFG9TAwMh2fCiMszEsw=;
 b=0XvBt1FmYYhbOddB+TldxDZ9G2z64Ma9S9dzeXRx9kN20ce40ts5NlUZDnIRJ1vTuf
 C1YDB3EsPRrICjWZ28zI5OS/bdowzsDZ6hqHaMcmZI2EP67O9YOKt8eHqMRNy6cgQEQi
 ZYJUo4ZZyBX/Dxm3ddLB24GaU7Jy0p6sD5/AnLMR/k7nH/GMPDOeAMooD2JgexeYsLSg
 QmB7oM2Z/rYY70RKG69JLQNFtgHgNrEHWinw4+u2ZtBJq8qaqOJtzWAZqlauErXXgC1F
 bA4f64t2SWTqUTr7Uy6Lazd3tEkl2ycRR8uF7Fck5aOg4xGuM+BVy8IdDuHK+OtpEF30
 UVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zCSCrKNhNFyn/M7NDXA6/GQVwFG9TAwMh2fCiMszEsw=;
 b=YX7MtLJwABhn2owPJ35SgHhn1YDmM6R4Lqb+W+6X7dkPZkCnpUVvjdrmivDSVjCO1L
 QbEI7hPyWzevQ5pvcmVedi+FkoHbZT0UqTuRtgk4aQDPkajxzZlk9EU0TrZ14AjeXSWg
 4mD8BM1jHwU4JGpuPYYKPx1wOjB30MTPV9YgsHq9TNoxJFqLL3hZ9Bih0OamzQ4iHfuH
 O9LdUCzCc+s2DbIlA5//ZZHyq+j6EyYvlagH7/z+89iOc66iYlUPh5Rr5bj8j1aezblV
 vra1F8xmugs1bhfl/Fo1oP/4WYnBBdVy5xIZ6QOSmg4ltmuvxmZRUzlrHu8ZBDoCVS7g
 5R6A==
X-Gm-Message-State: APjAAAXaEkfpOHwbO5yoOsWNnVPDFvtOcbc1SFB9SSSLz71Js4Wc1l0E
 Kmgpi5GwUxleLFIbiJzq7wsbaw==
X-Google-Smtp-Source: APXvYqyZ2h29fiDFqLuoFeG/2A7hiunBkFu2FU2StBUIMI1OqlEYneEbE551ZrtL7yFZ0qsHbvkvsw==
X-Received: by 2002:a2e:635d:: with SMTP id x90mr228438ljb.140.1561492832083; 
 Tue, 25 Jun 2019 13:00:32 -0700 (PDT)
Received: from wasted.cogentembedded.com ([213.87.155.24])
 by smtp.gmail.com with ESMTPSA id j23sm2082075lfb.93.2019.06.25.13.00.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 13:00:31 -0700 (PDT)
Subject: Re: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-4-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <756e63a4-20cb-fd9e-6ec7-c2742a3d90e4@cogentembedded.com>
Date: Tue, 25 Jun 2019 23:00:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190625075746.10439-4-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_130035_705131_8D23B665 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tokunori Ikegami <ikegami.t@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 06/25/2019 10:57 AM, Vignesh Raghavendra wrote:

> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
> Bus interface between a host system master and one or more slave
> interfaces. HyperBus is used to connect microprocessor, microcontroller,
> or ASIC devices with random access NOR flash memory (called HyperFlash)
> or self refresh DRAM (called HyperRAM).
> 
> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
> signal and either Single-ended clock(3.0V parts) or Differential clock
> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
> At bus level, it follows a separate protocol described in HyperBus
> specification[1].
> 
> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
> its equivalent to x16 parallel NOR flash with respect to bits per clock
> cycle. But HyperBus operates at >166MHz frequencies.
> HyperRAM provides direct random read/write access to flash memory
> array.
> 
> But, HyperBus memory controllers seem to abstract implementation details
> and expose a simple MMIO interface to access connected flash.
> 
> Add support for registering HyperFlash devices with MTD framework. MTD
> maps framework along with CFI chip support framework are used to support
> communicating with flash.
> 
> Framework is modelled along the lines of spi-nor framework. HyperBus
> memory controller (HBMC) drivers calls hyperbus_register_device() to
> register a single HyperFlash device. HyperFlash core parses MMIO access
> information from DT, sets up the map_info struct, probes CFI flash and
> registers it with MTD framework.
> 
> Some HBMC masters need calibration/training sequence[3] to be carried
> out, in order for DLL inside the controller to lock, by reading a known
> string/pattern. This is done by repeatedly reading CFI Query
> Identification String. Calibration needs to be done before trying to detect
> flash as part of CFI flash probe.
> 
> HyperRAM is not supported at the moment.
> 
> HyperBus specification can be found at[1]
> HyperFlash datasheet can be found at[2]
> 
> [1] https://www.cypress.com/file/213356/download
> [2] https://www.cypress.com/file/213346/download
> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>     Table 12-5741. HyperFlash Access Sequence
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
[...]
> diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
> index 806287e80e84..62d649a959e2 100644
> --- a/drivers/mtd/Makefile
> +++ b/drivers/mtd/Makefile
> @@ -34,3 +34,4 @@ obj-y		+= chips/ lpddr/ maps/ devices/ nand/ tests/
>  
>  obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor/
>  obj-$(CONFIG_MTD_UBI)		+= ubi/
> +obj-$(CONFIG_MTD_HYPERBUS)	+= hyperbus/
> diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
> new file mode 100644
> index 000000000000..98147e28caa0
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/Kconfig
> @@ -0,0 +1,11 @@
> +menuconfig MTD_HYPERBUS
> +	tristate "HyperBus support"
> +	select MTD_CFI
> +	select MTD_MAP_BANK_WIDTH_2
> +	select MTD_CFI_AMDSTD
> +	select MTD_COMPLEX_MAPPINGS
> +	help
> +	  This is the framework for the HyperBus which can be used by
> +	  the HyperBus Controller driver to communicate with
> +	  HyperFlash. See Cypress HyperBus specification for more
> +	  details
> diff --git a/drivers/mtd/hyperbus/Makefile b/drivers/mtd/hyperbus/Makefile
> new file mode 100644
> index 000000000000..ca61dedd730d
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_MTD_HYPERBUS)	+= hyperbus-core.o
> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
> new file mode 100644
> index 000000000000..63a9e64895bc
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
> @@ -0,0 +1,154 @@
[...]
> +int hyperbus_register_device(struct hyperbus_device *hbdev)
> +{
[...]
> +	hbdev->mtd = do_map_probe("cfi_probe", map);
> +	if (!hbdev->mtd) {
> +		dev_err(dev, "probing of hyperbus device failed\n");
> +		return -ENODEV;
> +	}
> +
> +	hbdev->mtd->dev.parent = dev;
> +	mtd_set_of_node(hbdev->mtd, np);
> +
> +	ret = mtd_device_register(hbdev->mtd, NULL, 0);
> +	if (ret) {
> +		dev_err(dev, "failed to register mtd device\n");
> +		map_destroy(hbdev->mtd);
> +		return ret;
> +	}
> +	hbdev->registered = true;

   I doubt that you actually need this flag...

> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(hyperbus_register_device);
> +
> +int hyperbus_unregister_device(struct hyperbus_device *hbdev)
> +{
> +	int ret = 0;
> +
> +	if (hbdev && hbdev->mtd && hbdev->registered) {

    ... as you missed clearing that 'registered' flag. 

> +		ret = mtd_device_unregister(hbdev->mtd);
> +		map_destroy(hbdev->mtd);
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(hyperbus_unregister_device);
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
