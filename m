Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8AB1F4AE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 03:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkX9XnagjxtmbFoo5mA/5MfZ8k8LdudYmXxklYYyAxc=; b=FJd9tK+R8X9Jvp
	anvg9Wd8ke2e3OUEpVSBfNy23QtSwY/XhJH1KI2AaL18WJhZ6FFkjvXKv4KAVU6ydPJ92ErXdwT9c
	K+BL4Guc6P4/IymPxqpWpfKnRvu4XfP2k/DPu6/iJLWhgdwub1+JRqgdL8273HvdN/29CYWak5nIN
	G53VDu3vOVDFShAEFAHOFpun3ALvKONEXaQ8UOXRPdHSlEnCiiXXGyUYq//dEdBe9M9mhUc00Bi26
	rIfzcuwpTgY/8eWT0fNA0K8i2HiVmtK+geqrGMl9ubYREnmwZqMEzn7ByoPlTmX7ofswjfm1jJ7zC
	o9cdKLjB7tNDxaluj5Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jipXZ-0001O2-8Q; Wed, 10 Jun 2020 01:28:29 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jipXN-0001Mu-NI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 01:28:19 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49hTrh691xz8r;
 Wed, 10 Jun 2020 03:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1591752489; bh=GKakFZj7r0PwB6e2LKfOoZiiZ9swBqGVdyd905VRjjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JcyUlr+WvHTHmVp9QAURy3vHUtHVVvuUk1Xc6U+oronaswAv4sPlpbwXkVXPI8OAh
 +ZCIKP6b32XkKvBIkcDKfm7t5TkDfmLGkNf74ukWIjaGqoW7qPfkxtWoih0Eomc4q/
 w2zgsXY6Ruhf8XUqJzx4KoGN+dBRlxxN21IxsSv4ms6v4OXw8WDPGKcSmtcRlDrzu+
 SXD6KNjcaDfhF9rBu5rWcpoycCx3SX/hJ8Ihse3BcYOPhIiNqNAicuPBIwHgj3I9AF
 SpBhhg7k+AJoi+ZsRdKBumYPce06a6uaA4FP/36CK0TBm0UvejlWb02cPOjzHiUszs
 CUzBf4na9/iZw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Wed, 10 Jun 2020 03:28:01 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v4 5/7] iio: adc: exynos: Use input_device_enabled()
Message-ID: <20200610012801.GA11530@qmqm.qmqm.pl>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <20200608112211.12125-6-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608112211.12125-6-andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_182818_082952_18311468 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-acpi@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 01:22:09PM +0200, Andrzej Pietrasiewicz wrote:
> A new helper is available, so use it. Inspecting 'users' member of
> input_dev requires taking device's mutex.
[...]
> --- a/drivers/iio/adc/exynos_adc.c
> +++ b/drivers/iio/adc/exynos_adc.c
> @@ -633,7 +633,9 @@ static irqreturn_t exynos_ts_isr(int irq, void *dev_i=
d)
>  	bool pressed;
>  	int ret;
>  =

> -	while (info->input->users) {
> +	mutex_lock(&info->input->mutex);
> +	while (input_device_enabled(info->input)) {
> +		mutex_unlock(&info->input->mutex);
>  		ret =3D exynos_read_s3c64xx_ts(dev, &x, &y);
>  		if (ret =3D=3D -ETIMEDOUT)
>  			break;
> @@ -651,6 +653,8 @@ static irqreturn_t exynos_ts_isr(int irq, void *dev_i=
d)
>  		input_sync(info->input);
>  =

>  		usleep_range(1000, 1100);
> +
> +		mutex_lock(&info->input->mutex);
>  	}

Missed an mutex_unlock() here.

>  =

>  	writel(0, ADC_V1_CLRINTPNDNUP(info->regs));

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
