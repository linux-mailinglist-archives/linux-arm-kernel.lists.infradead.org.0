Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F467BA27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DX4HzoQa3Iu1ZBLtpAkf3kCliizJ/Pui7wp68Cn4emE=; b=PT1fBn+vqUpkjUobWB1rsDnxs
	zmRKy9ICBEtkM4uXu64xWiI7Njv0Lb+EJpoz7t1jFRnBNJixgufWh0CO5CTgzdlM9PwkyJiFV5JCH
	dzfWHmKm5zz9R+qhbFvSipjyHnHKXnFua2WR3ApQYJPYUyGpfLWbkatp5T3Z8duQueWs1YpJSvjPG
	ku4Ym0v5J/1NxPCLWJgtDATttpNPwZvLPoUMmQDIc/AyEJ9tsmOjid/g1+FWAgZUISHoKIX2+V6oV
	ZkatSzxSpvWiiGoFo/G2ZClwrZiWXeZ11yJHnhL8v+0PUvo9hH1LhsfcrW7hETppa4FMRw+WTUCFl
	47SQQ7DRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsikj-00013I-Ok; Wed, 31 Jul 2019 07:10:25 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsijU-0000rE-F3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:09:10 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id 0036FA0375;
 Wed, 31 Jul 2019 09:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1564556946;
 bh=4iPoQC2zVdqrc1YYIrTN5Z2OucTh3nHLWJP6OzMlpOE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Vl4Zvjjq6tAl+G4y63xuRdr3K/XyhXuB5s+ZWyEBG01eYPSI80tFB+rcvPjUVYiP/
 cIE+ykvQU1lvgQ/j45CJdEfCF9TI/ri9CvBf5tyZTUF2R8rYkj80eh9S03jpl6CJpO
 lhycBra2fA1+WFH1bAJyX1m6RXfZUp+oEV3zvhTw=
Subject: Re: [PATCH 13/22] ARM: dts: colibri-imx6: Add missing pinmuxing to
 Toradex eval board
To: Philippe Schenker <dev@pschenker.ch>, marcel.ziswiler@toradex.com,
 max.krummenacher@toradex.com, stefan@agner.ch, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-14-dev@pschenker.ch>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <ee2e4fec-21fe-709b-9c47-db7c24407c1c@ysoft.com>
Date: Wed, 31 Jul 2019 09:09:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190730144649.19022-14-dev@pschenker.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_000908_815975_6635C878 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.19.3.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30. 07. 19 16:46, Philippe Schenker wrote:
> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> This patch adds some missing pinmuxing that is in the colibri
> standard to the dts.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---

"ARM: dts: imx6-colibri: " in the subject for consistency.

Same for the Apalis, please.

Michal

> 
>   arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 63d4f9ca9ad8..13800e60246c 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -204,6 +204,14 @@
>   };
>   
>   &iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <
> +		&pinctrl_weim_gpio_1 &pinctrl_weim_gpio_2
> +		&pinctrl_weim_gpio_3 &pinctrl_weim_gpio_4
> +		&pinctrl_weim_gpio_5 &pinctrl_weim_gpio_6
> +		&pinctrl_usbh_oc_1 &pinctrl_usbc_id_1
> +	>;
> +
>   	pinctrl_pcap_1: pcap-1 {
>   		fsl,pins = <
>   			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
