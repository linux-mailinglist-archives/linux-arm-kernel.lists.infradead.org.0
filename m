Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB313A92B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkQZ0cyOHVmncZz/nUiKeQPy5kSqvULM5QhPsMk/jog=; b=k2FUUwGjHAAb58
	gTZR1evPJxWhwZUTs96lXl0U0P6SAgBG7lL4b37lXLHtxQ5FdJ17w8nyVPmTnNWQK+HcjL6Sj3pRw
	qH1L421Csotx0QEUvyySPHlIFGYAsF/Mk4fkIs+eFKmgBs6l3IWfzmwiSEmR8cQgzrY0mXQFqwApZ
	oIpov3VuXMpskxxQFLBSJENPeDAAzGMklblGZGJqoTpl0YQCmC8mYj3dvn/UbKtRUDPiyyiyPD0M2
	2wXGhWEllCdRrvT9WzHob8LU3IUGqy65aOPCEYKh/e9b3YOKrdDNBQRtvnM3FZfwQyiXpweFqXtiJ
	19sWe6qtsOKyASgaIr1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLCU-0003Mg-Gt; Tue, 14 Jan 2020 12:21:38 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLCD-0003Lf-NV; Tue, 14 Jan 2020 12:21:26 +0000
Received: from [IPv6:2001:420:44c1:2577:11b:d594:936e:b16a]
 ([IPv6:2001:420:44c1:2577:11b:d594:936e:b16a])
 by smtp-cloud8.xs4all.net with ESMTPA
 id rLBviFvU2pLtbrLByieypI; Tue, 14 Jan 2020 13:21:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1579004473; bh=el/sCcXKoLi1FEc8sscgQSjCYSmbdJMyDT1iZnQSnSU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LjQRYpxPLh+sE48zdnmzx1dYwbjH4bXf1Ow+L9xGtnyLYk22ootoKM/W9LPRAIgKT
 LLdOswZfIOJ19EhGCDm2XmYZWdtI6Xuyl8dC5s7pZAnPOnHvgDHSBKUIFmgTQIhTVG
 ij0tC8LIc6YqFte/+lbYjCbxQhtShNEKnJZi5/TjgcBt3gomJpQPEu7aOO69F69zpN
 OZPkGFql/MkFGntWAnRLCI4yBg5FtwfYVadZ5t73EwJzQSaPTnFRe9rfkiRcwhvAGE
 0ir1vP7bKiXOEArWvvZbnMYeMemda8rYy6AiZUejTxhRAkSw6FHwz7VxGtoaJJalpD
 AZAylzCO9BqGw==
Subject: Re: [PATCH v2 05/17] dt-bindings: atmel-isi: add microchip,sam9x60-isi
To: Claudiu Beznea <claudiu.beznea@microchip.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 vkoul@kernel.org, eugen.hristev@microchip.com, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, mchehab@kernel.org,
 lee.jones@linaro.org, radu_nicolae.pirea@upb.ro, richard.genoud@gmail.com,
 tudor.ambarus@microchip.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, wg@grandegger.com, mkl@pengutronix.de, a.zummo@towertech.it
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-6-git-send-email-claudiu.beznea@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <58d0a872-9f9e-ab64-b9e4-d6548b05142b@xs4all.nl>
Date: Tue, 14 Jan 2020 13:21:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1578673089-3484-6-git-send-email-claudiu.beznea@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfDyyJ8A46d/VZ6mWF8HvSJL6XohAbYvGlIDN2xY5sRpRC0AJZrnUH0YX0+FSqCMhFZjpHxOyHfMDslHdlLv97QcDoHwck2Z9TrOv5t+lopMv/NRf0PUV
 55QN8cKR2GeYA535VmrhiJJ3ojVhCtZHdqwlNqcXOOfA1jLuIJ84iCZRAPBbM5rNAMNY7EvoyTG6hFaMVlzvbuZ37zENLdycB1+4kebYsziUTwZWtoZuAnMk
 LMyouB9mCtPGzmRTzeL74XvIxJXSiMOXKUukMY9CZcdbxL+hqcyNHH1cvq0Ae2LxwdzWO4GARzgfg1BRhHkpDrmwNAST/Nzpp1yk+mYmUHUeCKMDd8m74vHt
 kAndHbAOE1qpMQD5koRQwLbarJX8A/2eAFJTImw2pecQ7825zIoL2og3ZAauw5oPkPbp/rESm4VQrrwIzQZTIdS19wLJw93WlMa24o0M4Pe9Z5x+vxoRp8Xp
 MMUfb2fVE69KZls7TdCcam6e05Yvra1yqVNR1HEStwiaFBzk/jI1Bo9NFI5Glm7TYVnbqxqMkf306iQCOo0qEXlt+P7vZcEiAVvNC8QVCAnZ33xDCOO1P0MJ
 t0xckD3lecqem5SKtKLXefkxwFCHpcH207vyGk/FUL9CikGLulLMLG70jX9Ld1ENlKvZKk+13vUDiYXETUhOLvxSM6cMGAGAw9ZxxcdL4ipi7AhZ8LDj/Hos
 Mkt9jvglBTYomM/KU9sebjVWgPJeviHg+luR+JN4Q5LWheX1ajixs/F7bHRcZ6vELvkzMcco4AX3I2EuQF4KMcH1Q96bO+BppQYyR75cNBcTiu6LbkouxWVm
 MW4NsCXcJ0fzeQoSgXBZIfj4wzfcvGDsqbwGk6u+aW6XLHkGAEIwPAz0wqV7xfW4B3Tt72thIoZ7yEUcb1NqMczIB0lX1EeMNRmoxXWuOAXv/Y3kllOdMvVM
 Ar5uaZEBf2ZZJczJNl00ZE/cL98RXshGjLQcLmOO0cOB+ZAxxE+2AbyLSmra4urIpIuGwP7z7WLnDrpuqSoBI65/nkfakNI++OOqwtpqiY5+Ovy2sTlhvJMP
 NKQilXVls4YsoomtfMm326htDEL8iehi87LtyVzJDdVEbpDuB6M944CpeFCi1lvlbLZKp/xm9YleC7sbhMLQVs92SnXK+0ICEfNtNZ1N8vaiu7fVSr1BFLjZ
 8jCShZPcvKBaXW12eRihzGqkWpLj65UlbQwlDHhc7D924tsjBZuhfWnz7g69Vb/e/iBiBa4o3+DHoJJhFax7VwFnU7KuBXXDdERSFtOo/S6RRxadrFshFakC
 uUzp6UW6M/OChwP1r3uaki5uIkuF9f7/Jnmdj1J/6ho0dIxRF3nVLa/XFeZ5FVlRe4UOcaC31YtX32Em/eD2YPZuHMSsTxORpfBZpdDOFMwv4NAg26A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_042121_927007_152F967B 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/10/20 5:17 PM, Claudiu Beznea wrote:
> Add microchip,sam9x60-isi to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/media/atmel-isi.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/atmel-isi.txt b/Documentation/devicetree/bindings/media/atmel-isi.txt
> index 332513a151cc..8924c7545b63 100644
> --- a/Documentation/devicetree/bindings/media/atmel-isi.txt
> +++ b/Documentation/devicetree/bindings/media/atmel-isi.txt
> @@ -2,7 +2,7 @@ Atmel Image Sensor Interface (ISI)
>  ----------------------------------
>  
>  Required properties for ISI:
> -- compatible: must be "atmel,at91sam9g45-isi".
> +- compatible: must be "atmel,at91sam9g45-isi" or "microchip,sam9x60-isi".
>  - reg: physical base address and length of the registers set for the device.
>  - interrupts: should contain IRQ line for the ISI.
>  - clocks: list of clock specifiers, corresponding to entries in the clock-names
> 

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
