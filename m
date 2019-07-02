Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB6E5D5B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 19:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIEMXiEVsENcGevb2EDIRRQK5jWvtFWrYlCA+C1R3AE=; b=NF9bBrDLFeMcqv
	hdbpLsHK7Rnfi9mGbZT4jBaR4LJjhfUsU7Xi4+nn++JIx8yoMCs3oWPVjZfjOIyjhpbkYMt9k6d9f
	b1XRbHdTHOkmlXuMtMbOt84xVUYVThNUagRNMXcTjIXHNDsI7fdxgLClj3YUDSZosBP0VxIS3zS1F
	ojKs0fcKr23Z62twX59SJl0VuqRqR+p/NyFCAn1E3jb0QE5XqzSheWwjVIKirSG631RF+9BS0KQat
	LYBfjfGk02wTJb2iAVJctoK3F6JTYvueu3smJN+jWXrQv/gnYKkumW7f1EE9v91a+Tr0d2mUA+8FB
	9Nw12lMOfVZp190JoJlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiMy9-0004uG-1s; Tue, 02 Jul 2019 17:53:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiMxl-0004rw-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 17:53:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so17821631ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 10:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cMEn3za16fAfd/FKzUgXJWhBF6QU4UvnxjnbeEXsMGQ=;
 b=AjJ3nxm/0ds+e2hRRivY37RuUEa4V59EPE1atiQr2SXEYP2cvI8PWEN+FZ9oVOntUT
 XehNOna7XdSk5ef3/jinBVRzP0Zgoq2nXWU3UGYsYB9ehUh1D+3vpTcj0OvQA+seZDU3
 JCrKct+QFMpmJzw4R3IcICYfPlRQ1z1j0MHz+N34dj9P+l1gqNZyUktAudZ07GKlOlak
 joM3F9dzbJiwS1J8pbV/0g+ni/mDtPKuRtxDgvKK6H4TmP8PVNY8odrp5u1fzRFWaBUi
 Kev+nrvUBH6P4kht+SWadQWqeUZhn9Drib2vk3mjXbi89a1I0olyW75z856NBQ1TpbAj
 6QMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cMEn3za16fAfd/FKzUgXJWhBF6QU4UvnxjnbeEXsMGQ=;
 b=S8360TWNGnKIB52D4TAo2vAMbbxMxbzjL5UGPFGr8VDYQD9N32/1C19bsIidH909Lx
 lg8DDpSN/ZY2PtEXP9lPEZJIUWLcfZfHaAs5sfwLMJ4uKk4frEQCWB6S7hMpCePR2oS4
 dooII2l0iu8kK6cYDVoLhYn6IoISr7XFm6SQFWziug7lEi3jmitSTguScut6p37E231U
 iMd/F6kn6ZVOAAX5nwp3EuZdy6lygifI3TqRmNTPavc4RK7Fjq7limZLPhddCX4QRL6a
 gD8/CTRG67fv96BHVIS5JIgI6DC1jIpIx8+OFIAITuRBvihblGloQsYziEp44oi6CSW7
 OANw==
X-Gm-Message-State: APjAAAXdpEn16UdDy89bI0oSXglFWsOzQZa8h7tnOrQhKqLcO/8blSC0
 +Goe3fnxg4Ad9n47JBm4TmnbiA==
X-Google-Smtp-Source: APXvYqyHA/Ov/gzsKWtHLKt+DUZw1yLzTQf05oQbnhdSu9EIi9OqdKbPqDmV3siOLcwZvcf9+6nKTA==
X-Received: by 2002:a2e:93cc:: with SMTP id p12mr18387950ljh.11.1562089983427; 
 Tue, 02 Jul 2019 10:53:03 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:48c7:f2be:45b6:c800:b809:e0f2])
 by smtp.gmail.com with ESMTPSA id g76sm3954000lje.43.2019.07.02.10.53.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 10:53:02 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-4-vigneshr@ti.com>
Organization: Cogent Embedded
Message-ID: <31657fd1-c1c9-7672-14c1-e6f67eee6ac1@cogentembedded.com>
Date: Tue, 2 Jul 2019 20:53:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190625075746.10439-4-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_105305_883227_1C00D4B8 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

   I have at least created my HyperBus driver and unfortunately I'm having serious
issues with the design of the support core (see below)...

[...]
> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
> new file mode 100644
> index 000000000000..63a9e64895bc
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
> @@ -0,0 +1,154 @@
[...]
> +int hyperbus_register_device(struct hyperbus_device *hbdev)
> +{
> +	const struct hyperbus_ops *ops;
> +	struct hyperbus_ctlr *ctlr;
> +	struct device_node *np;
> +	struct map_info *map;
> +	struct resource res;
> +	struct device *dev;
> +	int ret;
> +
> +	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
> +		pr_err("hyperbus: please fill all the necessary fields!\n");
> +		return -EINVAL;
> +	}
> +
> +	np = hbdev->np;
> +	ctlr = hbdev->ctlr;
> +	if (!of_device_is_compatible(np, "cypress,hyperflash"))
> +		return -ENODEV;
> +
> +	hbdev->memtype = HYPERFLASH;
> +
> +	ret = of_address_to_resource(np, 0, &res);

   Hm, I doubt that the HB devices are wholly mapped into memory space, that seems
like a property of the HB controller. In my case, the flash device in the DT has
only single-cell "reg" prop (equal to the chip select #). Then this function returns 
-EINVAL and the registration fails. Also, in my case such mapping is R/O, not R/W.

> +	if (ret)
> +		return ret;
> +
> +	dev = ctlr->dev;
> +	map = &hbdev->map;
> +	map->size = resource_size(&res);
> +	map->virt = devm_ioremap_resource(dev, &res);
> +	if (IS_ERR(map->virt))
> +		return PTR_ERR(map->virt);

   Again, I doubt that this should be done here, and not in the HB controller driver...

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
