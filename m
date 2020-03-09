Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0861017E987
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mTvWhitRBglSLneMwMvZzieXfMAIQet+ERNknGfYT0=; b=V+D4odXVAPhDE+
	Eh2CBF80evFW7eFDvPM/dAW5RBRhRhLaxh/vPILmz3Yq/sMcRkGXPp8RRnIU59EGD63/zS3Kh89dv
	D7cz0u0Pvm3SsAlzp9B/i+9/EkvREW45dMT9P9hau0N0+8aQZvkYBO7BU36tvWrX9dIk2nlEymzkn
	yCm5ExTvqxDNcujqziqXt1PlRBZXH/QYOfHtYTJe3cLB6JhN+RG/VSGei+3UXxKQhRIp86P/VlCol
	Fo5i8StobOT+nfyKcJvCA5FUlJZCqVV2f5TrN/BMv7fArO++lxa3mE0ecbqGKKvYRd4PpILojD+Ko
	jEEuAXY3my5CpSceirEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOZc-0003G8-Bs; Mon, 09 Mar 2020 20:00:24 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOZM-0002xT-VZ; Mon, 09 Mar 2020 20:00:10 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MKbXu-1iuygH0Nf2-00Kyiu; Mon, 09 Mar 2020 21:00:01 +0100
Subject: Re: [PATCH v2 11/11] ARM: dts: bcm2711: Add vmmc regulator in emmc2
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, adrian.hunter@intel.com, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-12-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 xsFNBFt6gBMBEACub/pBevHxbvJefyZG32JINmn2bsEPX25V6fejmyYwmCGKjFtL/DoUMEVH
 DxCJ47BMXo344fHV1C3AnudgN1BehLoBtLHxmneCzgH3KcPtWW7ptj4GtJv9CQDZy27SKoEP
 xyaI8CF0ygRxJc72M9I9wmsPZ5bUHsLuYWMqQ7JcRmPs6D8gBkk+8/yngEyNExwxJpR1ylj5
 bjxWDHyYQvuJ5LzZKuO9LB3lXVsc4bqXEjc6VFuZFCCk/syio/Yhse8N+Qsx7MQagz4wKUkQ
 QbfXg1VqkTnAivXs42VnIkmu5gzIw/0tRJv50FRhHhxpyKAI8B8nhN8Qvx7MVkPc5vDfd3uG
 YW47JPhVQBcUwJwNk/49F9eAvg2mtMPFnFORkWURvP+G6FJfm6+CvOv7YfP1uewAi4ln+JO1
 g+gjVIWl/WJpy0nTipdfeH9dHkgSifQunYcucisMyoRbF955tCgkEY9EMEdY1t8iGDiCgX6s
 50LHbi3k453uacpxfQXSaAwPksl8MkCOsv2eEr4INCHYQDyZiclBuuCg8ENbR6AGVtZSPcQb
 enzSzKRZoO9CaqID+favLiB/dhzmHA+9bgIhmXfvXRLDZze8po1dyt3E1shXiddZPA8NuJVz
 EIt2lmI6V8pZDpn221rfKjivRQiaos54TgZjjMYI7nnJ7e6xzwARAQABzSlTdGVmYW4gV2Fo
 cmVuIDxzdGVmYW4ud2FocmVuQGluLXRlY2guY29tPsLBdwQTAQgAIQUCXIdehwIbAwULCQgH
 AgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCUgewPEZDy2yHTD/9UF7QlDkGxzQ7AaCI6N95iQf8/
 1oSUaDNu2Y6IK+DzQpb1TbTOr3VJwwY8a3OWz5NLSOLMWeVxt+osMmlQIGubD3ODZJ8izPlG
 /JrNt5zSdmN5IA5f3esWWQVKvghZAgTDqdpv+ZHW2EmxnAJ1uLFXXeQd3UZcC5r3/g/vSaMo
 9xek3J5mNuDm71lEWsAs/BAcFc+ynLhxwBWBWwsvwR8bHtJ5DOMWvaKuDskpIGFUe/Kb2B+j
 ravQ3Tn6s/HqJM0cexSHz5pe+0sGvP+t9J7234BFQweFExriey8UIxOr4XAbaabSryYnU/zV
 H9U1i2AIQZMWJAevCvVgQ/U+NeRhXude9YUmDMDo2sB2VAFEAqiF2QUHPA2m8a7EO3yfL4rM
 k0iHzLIKvh6/rH8QCY8i3XxTNL9iCLzBWu/NOnCAbS+zlvLZaiSMh5EfuxTtv4PlVdEjf62P
 +ZHID16gUDwEmazLAMrx666jH5kuUCTVymbL0TvB+6L6ARl8ANyM4ADmkWkpyM22kCuISYAE
 fQR3uWXZ9YgxaPMqbV+wBrhJg4HaN6C6xTqGv3r4B2aqb77/CVoRJ1Z9cpHCwiOzIaAmvyzP
 U6MxCDXZ8FgYlT4v23G5imJP2zgX5s+F6ACUJ9UQPD0uTf+J9Da2r+skh/sWOnZ+ycoHNBQv
 ocZENAHQf87BTQRbeoATARAA2Hd0fsDVK72RLSDHby0OhgDcDlVBM2M+hYYpO3fX1r++shiq
 PKCHVAsQ5bxe7HmJimHa4KKYs2kv/mlt/CauCJ//pmcycBM7GvwnKzmuXzuAGmVTZC6WR5Lk
 akFrtHOzVmsEGpNv5Rc9l6HYFpLkbSkVi5SPQZJy+EMgMCFgjrZfVF6yotwE1af7HNtMhNPa
 LDN1oUKF5j+RyRg5iwJuCDknHjwBQV4pgw2/5vS8A7ZQv2MbW/TLEypKXif78IhgAzXtE2Xr
 M1n/o6ZH71oRFFKOz42lFdzdrSX0YsqXgHCX5gItLfqzj1psMa9o1eiNTEm1dVQrTqnys0l1
 8oalRNswYlQmnYBwpwCkaTHLMHwKfGBbo5dLPEshtVowI6nsgqLTyQHmqHYqUZYIpigmmC3S
 wBWY1V6ffUEmkqpAACEnL4/gUgn7yQ/5d0seqnAq2pSBHMUUoCcTzEQUWVkiDv3Rk7hTFmhT
 sMq78xv2XRsXMR6yQhSTPFZCYDUExElEsSo9FWHWr6zHyYcc8qDLFvG9FPhmQuT2s9Blx6gI
 323GnEq1lwWPJVzP4jQkJKIAXwFpv+W8CWLqzDWOvdlrDaTaVMscFTeH5W6Uprl65jqFQGMp
 cRGCs8GCUW13H0IyOtQtwWXA4ny+SL81pviAmaSXU8laKaRu91VOVaF9f4sAEQEAAcLBXwQY
 AQIACQUCW3qAEwIbDAAKCRCUgewPEZDy2+oXD/9cHHRkBZOfkmSq14Svx062PtU0KV470TSn
 p/jWoYJnKIw3G0mXIRgrtH2dPwpIgVjsYyRSVMKmSpt5ZrDf9NtTbNWgk8VoLeZzYEo+J3oP
 qFrTMs3aYYv7e4+JK695YnmQ+mOD9nia915tr5AZj95UfSTlyUmyic1d8ovsf1fP7XCUVRFc
 RjfNfDF1oL/pDgMP5GZ2OwaTejmyCuHjM8IR1CiavBpYDmBnTYk7Pthy6atWvYl0fy/CqajT
 Ksx7+p9xziu8ZfVX+iKBCc+He+EDEdGIDhvNZ/IQHfOB2PUXWGS+s9FNTxr/A6nLGXnA9Y6w
 93iPdYIwxS7KXLoKJee10DjlzsYsRflFOW0ZOiSihICXiQV1uqM6tzFG9gtRcius5UAthWaO
 1OwUSCQmfCOm4fvMIJIA9rxtoS6OqRQciF3crmo0rJCtN2awZfgi8XEif7d6hjv0EKM9XZoi
 AZYZD+/iLm5TaKWN6oGIti0VjJv8ZZOZOfCb6vqFIkJW+aOu4orTLFMz28aoU3QyWpNC8FFm
 dYsVua8s6gN1NIa6y3qa/ZB8bA/iky59AEz4iDIRrgUzMEg8Ak7Tfm1KiYeiTtBDCo25BvXj
 bqsyxkQD1nkRm6FAVzEuOPIe8JuqW2xD9ixGYvjU5hkRgJp3gP5b+cnG3LPqquQ2E6goKUML AQ==
Message-ID: <3bd022a6-922f-c20a-8d07-383817549960@i2se.com>
Date: Mon, 9 Mar 2020 21:00:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-12-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:HLq74eK/5uYp9FuDYB8nlYhQ+L1Iy16XuKUVj0/NO++R6Vyw8bS
 /mWXFYiUpH8XsOLxW+0Q1LUtIHfUZD10r1Tp2MjSKhLZBDDPCjHLSxAXnrYUr9LainLLHNE
 5zo32AxrZ87ogn3ujsQ9CcpsYr8c8gvPlpdXaBlkZ66zElrN0brGSZ8hZJNntE8qtzqDDtT
 mGPm9nMSXh7b7TR4xQR8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:J0AK1UndQlM=:omVXShDsl6kG//to/aRKy4
 zUEFAtmKVgE/H4EhRCHw9crOIH34eYeqXeOVqgSjUHo/xWwGt/mRrNGXdPzmdbzkAlPYHd8J0
 xqSS25nm2ikaI54jHmWpJ3BQBTB0tq1fI0jMGiy6IVSWOSpSggAbYLMCtGFF9u1rDh5HtGWYP
 RXTEuMbLKv0EDovM/usgo3RP5Ovab09P/NA0rPMZV9IX96b2q4lfy3HdyI4qHlx2VM/2irqUJ
 g9MVTJV8155GnQQQTRSNEpTwOfIHbLYqO3H+8EqRLyB59ECuJH6EUZTvdOU6yxn7BDLqnX8hl
 SAqWqIfaEQ76v3+PTnqYRPLQZPoWlbyBwSRE2iizh+sv6W75x8p+LRCHH2GudXBBFy/xpD+Uo
 I7iw1PTMJCJ5SipvsJ2tBNKRpO9A3HUqaguqSNJQ6gfVg5EQYsZ+T2EGHogKjwcFqIEkWwl2j
 xSIapX6eKh9JnSDmKrVwodAg4YM1q7WOgqtz5gVho5r4YpP5EGnNCUWWYcAp25ZS6v/s2WwPE
 59kptDoQvZeNxXLlWyDYLAHBs3yK23c76tpbJqGonsoT0qqamtdyT3gYF/tTsOPHRz9yZLCG2
 SqMjbeA+HbEcCBZt5DuLtEqlzdlWnRgL7P93g29qHlQH8LPPqG4lq90BjQO2u68iNrT3dLQhq
 q8bfLgyRv33NokTONt4u5ZUZ63JA+2qJodbONQxUmHnGKoYyzaoOIXhbz+f+2y+cAGM30LhRv
 vMEY/wPM5yOt+rEoma4iLm8IE/+KCsi4W7nfFCEsXCedTnfS9rNuxkkDhK1UfWwIRCtXRTSoV
 q0SWOsQGnkVx5VE4cyAXc7Zcp+vDBDQNGI2gdc6luPaxkG9KZCN9vnyuWRbE9vhZ+xSXnxg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_130009_307939_63E8C049 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 06.03.20 um 18:44 schrieb Nicolas Saenz Julienne:
> The SD card power can be controlled trough a pin routed into the board's
> external GPIO expander. Turn that into a regulator and provide it to
> emmc2.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index b0ea8233b636..a2da058396fe 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -55,6 +55,16 @@ sd_io_1v8_reg: sd_io_1v8_reg {
>  			  3300000 0x0>;
>  		status = "okay";
>  	};
> +
> +	sd_vcc_reg: sd_vcc_reg {
> +		compatible = "regulator-fixed";

i think we need to enable CONFIG_REGULATOR_FIXED_VOLTAGE in
bcm2835_defconfig

Best regards
Stefan

> +		regulator-name = "vcc-sd";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		enable-active-high;
> +		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
> +	};
>  };
>  
>  &firmware {
> @@ -173,6 +183,7 @@ brcmf: wifi@1 {
>  /* EMMC2 is used to drive the SD card */
>  &emmc2 {
>  	vqmmc-supply = <&sd_io_1v8_reg>;
> +	vmmc-supply = <&sd_vcc_reg>;
>  	broken-cd;
>  	status = "okay";
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
