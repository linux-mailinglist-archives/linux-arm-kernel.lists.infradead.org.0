Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43D31F0091
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 21:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FpUznKGWcXtMxwG/dGhLU+7DPUi8wSzJgv2334xvSM=; b=ODmUOk5pu3UtV9
	J/S+FUkrUWJS+Xuo81+ujhcWqB7wkxbHIoZxGd1WwVQ6cOL2ke/dLoWOzng1vA4Mh8o2oq7jRh0nf
	U+MjYRFSfKKGDQiAO+J/VxidAwAKQcXIXkSdK/np9/0K/g+UkMT5NrcXCbRu5ilXToE+fNxZvffIo
	zektI/WZO0WKzVSa8FkLymWSpQhoHQZY9keVyQNs55/zTsV9zQlyxulS6GfDeczIxQlFQun0AtsU6
	R6V75yF997L4I1wsPvw3yp9xROapnhA6aOKbl2+N4d58zKixvL9yFvVyfpf36W6uncxg3S3xR7nc9
	11VIP+mc3JgLkzZ5L4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhIM8-00045j-LW; Fri, 05 Jun 2020 19:50:20 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhILz-0002qy-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 19:50:13 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49dtXG0LfBz4D;
 Fri,  5 Jun 2020 21:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1591386603; bh=nw6ZPbzMEGEU3ympvmvF/EBnKh28J/TObnDHFEogcNM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZQGk/WcmQdG+yyITewmCzwmMOtBeMJF66LJXev36YPIF5HrC5ZHZ2yLz3vJylFOY2
 WT3VOkjF3kAcjfTkMR4gxIzFUE/sY5FqXj8AFOnZJ4Tr6DOXWsqghWyoTnW+bmLd7W
 jwf7lDWpwE9H61I5VhaqXwCJeCG+3Lg1TEqxk1KZ6vhl2INRouIoCb0udoubFJKGQI
 IsEim/o9vF8TNZ0H+HPzCDx+zT08J5O7Oou9dsj0/dTuOSTcvd1399RdkvL5g6/Eot
 j+wtjmvTFf8Ae7wTPa5xvRXyXIACc/X1FvT/PQI7a7lj4fzSUFS7z0POvlS/mwXhVU
 JIdjeHtEOaibA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 5 Jun 2020 21:49:48 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v3 5/7] iio: adc: exynos: Use input_device_enabled()
Message-ID: <20200605194948.GC9553@qmqm.qmqm.pl>
References: <20200604072853.GP89269@dtor-ws>
 <20200605173335.13753-1-andrzej.p@collabora.com>
 <20200605173335.13753-6-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605173335.13753-6-andrzej.p@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_125011_977420_1DB7EF92 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Jun 05, 2020 at 07:33:33PM +0200, Andrzej Pietrasiewicz wrote:
> A new helper is available, so use it. Inspecting 'users' member of
> input_dev requires taking device's mutex.
> =

> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/iio/adc/exynos_adc.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
> index 22131a677445..294715bafe25 100644
> --- a/drivers/iio/adc/exynos_adc.c
> +++ b/drivers/iio/adc/exynos_adc.c
> @@ -630,10 +630,13 @@ static irqreturn_t exynos_ts_isr(int irq, void *dev=
_id)
>  	struct exynos_adc *info =3D dev_id;
>  	struct iio_dev *dev =3D dev_get_drvdata(info->dev);
>  	u32 x, y;
> -	bool pressed;
> +	bool pressed, cont;
>  	int ret;
>  =

> -	while (info->input->users) {
> +	mutex_lock(&info->input->mutex);
> +	cont =3D input_device_enabled(info->input);
> +	mutex_unlock(&info->input->mutex);
> +	while (cont) {
>  		ret =3D exynos_read_s3c64xx_ts(dev, &x, &y);
>  		if (ret =3D=3D -ETIMEDOUT)
>  			break;
> @@ -651,6 +654,10 @@ static irqreturn_t exynos_ts_isr(int irq, void *dev_=
id)
>  		input_sync(info->input);
>  =

>  		usleep_range(1000, 1100);
> +
> +		mutex_lock(&info->input->mutex);
> +		cont =3D input_device_enabled(info->input);
> +		mutex_unlock(&info->input->mutex);
>  	}

The mutex doesn't really protect anything here, but I would nevertheless
suggest this sequence instead:

lock()
while (test) {
	unlock()
	...
	lock()
}
unlock()

Best Regards,
Micha=B3 Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
