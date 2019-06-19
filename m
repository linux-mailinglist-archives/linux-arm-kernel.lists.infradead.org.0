Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E6B4B744
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HexO+EfV7hKqSmrSL/sR+v0e0LEyL0rAlCfAdofknI=; b=Czxj4FI7RnSXPR
	uVZHZSpP6aOHE5ydQwutpuk1/DkeIfoj5MltXlDK9VZlseys/ZqXYyFfhrqKMq1RtwRjxZaKrXBo/
	PI3baFjgwO2AaG71ze2A6e0ly2+efP4tepPav6iAEL8FGv2Iz5hQBAmGG+DhSvaHELba+cAJFCDVU
	I7A2ms8fXjtuGo//wHHf05i+dniy/aEZf8Wvg0nO21Vy6Hz7UmB99XYIGVkkJ61bSwxg+zWCQOHOJ
	3+E6065v71dyayDTy8dRNRLelAEWi55zUw6ZSRT2WIcmWyogMiPl4l8Xz4yo+bxZdXOKq3dTQX5kJ
	twml+0bGqNRRCQmrOO+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYzK-0007lP-Fv; Wed, 19 Jun 2019 11:42:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYz9-0007kY-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:42:41 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JBfBx0001850; Wed, 19 Jun 2019 13:42:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=jAayPybMAxCHXtDmLft/T64tgWULV2g7e3s0ys/xt7c=;
 b=WTev4s7P/RCeq68dfxKoEPTgP9Bu7gbgDy+JYF9OEUdefIGTl9aNQ7UStjd8GSgen5Ca
 S19TE4IInepLFPfSV1l319VpIXdOHwhEyh1oQr98Jj5BagdyWQ47swgj6IoEbTXM8B54
 gUdZFzYlJvjbCpOgNfuoqGf8SzVcbG89clmuriaSYu2OxcAh9bMCfQQkNeId5K34gby5
 L4qdHbzzuVs+LXlTEKq4ZC1ATUILfD6qqAZsapjsq1CBCrtAzwXXHYkDSMQfnmj2li4v
 6sYjb425JJGipZeGXggc030pb7IiR0K7woGZj7DhMavWYjJ9yH4WY7QDP2e98etQOj9p Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813bm3k-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 13:42:24 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6AEF331;
 Wed, 19 Jun 2019 11:42:23 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3DCAF26D5;
 Wed, 19 Jun 2019 11:42:23 +0000 (GMT)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 13:42:23 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 19 Jun 2019 13:42:22 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Fabrice GASNIER <fabrice.gasnier@st.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH 2/5] pwm: stm32: use 3 cells ->of_xlate()
Thread-Topic: [PATCH 2/5] pwm: stm32: use 3 cells ->of_xlate()
Thread-Index: AQHVJoSsYAMsPXn+akirjvBTdUuqe6aiuYoA
Date: Wed, 19 Jun 2019 11:42:22 +0000
Message-ID: <c583094f-2429-d5f1-09df-fff54ab33af1@st.com>
References: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
 <1560937925-8990-3-git-send-email-fabrice.gasnier@st.com>
In-Reply-To: <1560937925-8990-3-git-send-email-fabrice.gasnier@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <25284ABC327AEA4991DCD1504D64AD22@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_044240_301288_333BAFF3 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/19/19 11:52 AM, Fabrice Gasnier wrote:
> STM32 Timers support generic 3 cells PWM to encode PWM number, period and
> polarity.
>
> Fixes: 7edf7369205b ("pwm: Add driver for STM32 plaftorm")
Reviewed-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>   drivers/pwm/pwm-stm32.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> index 4f84255..740e2de 100644
> --- a/drivers/pwm/pwm-stm32.c
> +++ b/drivers/pwm/pwm-stm32.c
> @@ -608,6 +608,8 @@ static int stm32_pwm_probe(struct platform_device *pdev)
>   	priv->regmap = ddata->regmap;
>   	priv->clk = ddata->clk;
>   	priv->max_arr = ddata->max_arr;
> +	priv->chip.of_xlate = of_pwm_xlate_with_flags;
> +	priv->chip.of_pwm_n_cells = 3;
>   
>   	if (!priv->regmap || !priv->clk)
>   		return -EINVAL;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
