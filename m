Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98A2F279A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 07:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsoJQkmERjwSykBYVcuyXereVkeIrdtyIoWUSDBfJE0=; b=TOyJ7JhJzGpARv
	iVwhbGgYUjCfILDROaXtnBpqtKNerU4QSBE9nnn7yTtDmDKOhLcT2rbpSDpR7usK4yM+sqN0dm1PO
	mtsFbHCb2hAjLGlWvDsbZYzWl+KcR+3E589ygHIrbHP9wS2mw3JAQStzuhl/b1uXW9DiNBbeALmQD
	31X+cMEBM1sY0dD+o/BKabjDQ+wZQhBXE3q6G8E4TIU0eZLSpKzHkKtOqCJge4Fa6csxAq8J7bu7K
	Mvd5g8K89gjOKPzzb9Q8DW7mbTzPxb/JxN0uuhfBQdw7sRodHp2rF7zjbASl6/9RCeFFaH4/rFvMu
	TF6FpueeDqvp/InRnB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSbCg-0007Sq-Ml; Thu, 07 Nov 2019 06:23:34 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSbCZ-0007SQ-Mp; Thu, 07 Nov 2019 06:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573107798;
 bh=rMybS4P7iltlkP4byw7w3d9o/YVha1a/UZ09FyOoiS4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=PsAkcftLqIIRKKPXkqyflogW2HN8uODBSdoRTNvKwtaNMVm180rYa5RH/TX9pZ39U
 y58lEYWn2YkaUr0ADhcixqGrA6qlaMYNTHz7GS8EH12LBB70NDL30ZNZoyC9+NdOXJ
 LFjoRiq67XmQk3FMTXvxw26u2WDj/IBAOqvk7S1E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.167] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MPGW7-1iITMp1nq9-00PamQ; Thu, 07
 Nov 2019 07:23:18 +0100
Subject: Re: [PATCH v2 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, catalin.marinas@arm.com, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>
References: <20191106095945.22933-1-nsaenzjulienne@suse.de>
 <20191106095945.22933-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <09138a9d-40a5-4c5f-0cf4-1cb73579c600@gmx.net>
Date: Thu, 7 Nov 2019 07:23:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106095945.22933-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:isuZZlBG5UxboGSxgwfmqyHaD9A6OpC2okXbCmRW7mOwxXPrscu
 Tm2iA8YgaKQdwROG6va+wQ0Nk3NMQp0c4CjfKSaOvHaU7rKonxWRaVD62MfNqA4QGAxu0jY
 uD9oh/fEyCJIbQTEljLyE7n3HQ3dA59DIGjFLU2PwbifysxP9D/7xuFX1AbqrVYK7QY2rIq
 0iE8ck42bewxgxafzxtxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Euer4+Yr0NQ=:nYc0yQ1rDQBHSguAAdEg6L
 J6yEEL9rjb2roz+VGOUdBd+R7ha55/wvCNxVaqADIfvNBXk9T7qh4y6Sw3iveESt4TbdrCmI5
 Ia5BcOee944TfRCBD3qQvtkdY0dAEez61vC50FmJEpZZS7/7ah74CWT7sSLhh8H9GfyIkdBjW
 gP1XG3v51mVYPpIAwYA7trbbWZaJCNrjjWHzoNpbLdu4xTHvWAPFBXsPYcUnwqXOwDtLdmjLz
 SOXkeuZKgGX5/NlicycGtteWkpC+eDiCClU76JEcKJ6ODNUglUudGBT9uW4KM0iR53WdaFCbK
 4bx4JthGKVibFxNTBBPozw42XvmX8EYHkGhy+Rk1hjlpCmKRYPXVs0Jq69i3Pu4qG7INi9ARe
 l1tOzk1eGgqZQEYWXuNl0NHPNZ23f5Ge6u10aNV1YySgSR2PNzLfqOsSHkpEHlTDYdlAz2jG5
 ljc8pfSu7KTsgLPwYqvsPxcCUjg33ImERrCQBFKnrg7KNixTANz52FLZwfla8Agm9kwjPzDdo
 9s34bEAr1grLgnsDBJG602Ad5PqOaAtOgJttCphan9INq6vrITvYyPJsjLsnyhXn6646/EuJs
 Z05DZIIrFHVCaGUj50pT+kOEcL4YnXTLrxRl6riKkoXNrLuScFwcBtYes73B2uQAxTSw6SK/C
 qmM7LihX3uay2RBTwkmi3Ab/dWFqiXm5lYXFyEs71NR/9W1XEwH65+7luDzGj/yN5FvhRIO4o
 /9Uy+ENMTXBQLF8a6APqp3XtybTrAtomnAiEMxKK1NmEMHEPD7u7mEmaNap5JN6EfPoGWuMR/
 1FYq6VlTYzssqFtsdgogwL4kBI3HxarPko4pneMXs0neOkth2QgIMC03ff3Gqts6yMISTz1Mo
 rvsjbLAu7Z8hM3TGhDmKR6biwD26B+3CG+rrrguFBOZZVzIl1oKqpQ4ZIDVELqf+MswKbMeVc
 9NO9fKsKm1kYa/V4wzl7G5dr8V0tf1XCH38dVdjnYg0f1P9jHCTg4BIQWhbk2YuDXIz2Qgbpn
 eC1+AJ8/OLlPEwE9uB6wO4YMAiNatWCbz9mfc5cwgYiF38JVKGr5RFoFtA89mQiX038K+EUOL
 iy90uKbMJDAWAaysuVoOhldg+eJYhZwbzKi8AQdB3fO/AB3vMfazzCEYCljL8zX4i3epN5qjL
 8oaZ4Yeo1rRjgYP7u9JwWTc3Cy+zxeH/cVPjL2h1XpOCzluUzv5mj9idD57aurJtMiltRGuOC
 rnoIaCETwpj0xjH6sU4dqJIR7+dwujAhO86/OTOmH8UAdgZUr5muue2VkHpg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_222328_075488_5B997D98 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 06.11.19 um 10:59 schrieb Nicolas Saenz Julienne:
> arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> Raspberry Pi 4 since it contains peripherals that can only address the
> first GB of memory. Explicitly place the CMA into that area.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> ---
>
> Changes since v1:
>   - Move into bcm2711.dtsi
>
>  arch/arm/boot/dts/bcm2711.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 1f3acd3363ea..6000a01652fa 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -12,6 +12,26 @@
>
>  	interrupt-parent = <&gicv2>;
>
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		/*
> +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> +		 * that's not good enough for the Raspberry Pi 4 as some

sorry for the nitpicking but i hope the Raspberry Pi 4 B wont be the
only user of BCM2711.

So please s/Raspberry Pi 4/BCM2711/

Beside that:

Acked-by: Stefan Wahren <wahrenst@gmx.net>

> +		 * devices can only address the lower 1G of memory (ZONE_DMA).
> +		 */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x2000000>; /* 32MB */
> +			alloc-ranges = <0x0 0x00000000 0x40000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +
> +
>  	soc {
>  		/*
>  		 * Defined ranges:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
