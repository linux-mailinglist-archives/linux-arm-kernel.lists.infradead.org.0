Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5191865FFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 21:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPL2FZ7GmZaY1Ye55l5u8n+8h5lh9doTSQrv1pnuCek=; b=W4mqyuavl1eTeF
	0m80OMNVn9oK3QU36a1gjjJ3Sny4BmJOaBx//N7qLFQ+51YfJQAE5JS0IikbyjwPQwG8t7hgX9BPg
	WHAqMjjALAjppVSEveChqECMbCigJEyGITMLyveF29SkuM/bCBeAOelwTsU/nZxcFWz7yDAr3e1Pa
	HGksoeOHNIS9D+0f1u1VXySAbgKHVTSTJFsZ028U2T0pKoFVaqTFlpFrQ9B5Q+h9ge3c+fvfn9XJH
	ZEr/WdURYIWMNsMFzX8KIKfdyjddKE3zS0rvbUuoxckY94SsauwTdNXkw7gUUs/QPEpEzyFPLWU1Q
	YPYmUtZd0E9crYT7S7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlein-0007PF-OW; Thu, 11 Jul 2019 19:27:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlei8-0006wY-Le
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 19:26:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so6964697ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 12:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1Gj/TpYGciG5OCmfbf2dVn6FNmz3afk+DosbRV4MzoY=;
 b=SEuD7woYh9OiLSQ1qqz/ru6e3z42i2sBTpzp8MOwXfr7/I//sRjs+uMPX7Uo/WUtIs
 +AwJVNrx3GqT2kwzv3pSL+VHr0NLxNPaFkjII1VDIRgs99twXT0eBytNhdx/yFwvy2lN
 hqE6hLa4AwQSyZ5Uq5JGDUvkqjBS3OnLM/mNEAo7yqYb/bJSDeDx1HqZ1OWLN/QIHvJC
 oZc12rA0Jp/ZDSkfpQDwufjD9Zu66J8QqnnlIo5Rk+H3P9eR8IQ0xYVMoO97sTQW4Xbe
 3Ui0eh2fGCWuhxiRNtCiD29GEt8YFc4IsNdQiPVoehP3xpWACHJpaHEn9OCeYUOOlCKE
 mTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=1Gj/TpYGciG5OCmfbf2dVn6FNmz3afk+DosbRV4MzoY=;
 b=FErAdwdzx0800UMW39DJj9YgRQceovvICgJals6GjyFRA3cjPp39pNyn988TyqcmO+
 +yMdPfl64hW8NmOrfDy4BoizimyPrnUizpiWtYe3mAkVwDSUkmKEKd215a31zcq0uoYn
 MPQQrFpQUUKE2FiY7tOOue2v7hUf2HkpKQN9BCVXx7NnfO/6mcxU3+8sApVyiY44zUJD
 iUQmFCIIJpxiCxj8frvO4fuN6UXONyknkzeEVmWLq3fD+TDsx9QXbdAItMnzqD5w2Cl0
 FrBIqLdSbpkO/bpFoFxm66X9ZBkAT2dETDFGOlznTvGthgawEn6FZr2ZSboKhrYEtYuU
 HCvw==
X-Gm-Message-State: APjAAAUWpF0YyQSBeO3LveGAJcrGDtYYSW5Y6n3D23NuMB25eaxoX0pT
 a2xnuvNpgLresN59ms3NGYMyBA==
X-Google-Smtp-Source: APXvYqw0NR2+TFc5SfbPRhU4TviTWXjU5RRXRUxYbST9Ry9aqWtbT5Ta93nbQMGF/Y7Ssa+Uh36+Fg==
X-Received: by 2002:a2e:9b84:: with SMTP id z4mr3542327lji.75.1562873189537;
 Thu, 11 Jul 2019 12:26:29 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:6a9:2c74:93e5:edca:9c98:290d])
 by smtp.gmail.com with ESMTPSA id j14sm1122764ljc.67.2019.07.11.12.26.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 12:26:28 -0700 (PDT)
Subject: Re: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-4-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <e5a7866d-bc34-887d-31d3-de4f745c8d65@cogentembedded.com>
Date: Thu, 11 Jul 2019 22:26:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190625075746.10439-4-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_122632_904557_648C0CA2 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
> +	map->name = dev_name(dev);
> +	map->bankwidth = 2;

   I think this should really be 1, judging on the comment to that field (and on
Cogent's own RPC-IF HF driver).

> +	map->device_node = np;

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
