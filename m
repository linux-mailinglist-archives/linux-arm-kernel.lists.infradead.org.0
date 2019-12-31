Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130812D992
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 15:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B0sn1n6ivo74JMsUFn+N9r/u9qCzAK+KV5QmtdjC/E=; b=H6QJr9EefyaHBN
	SqqiK9aAvgbG6PvSDa8DgQ5L0rG5CgHwXRv7nQ7AVkBPGPLp56A43rfJ1C5AAf5QKsUZcOmTxXDTK
	KOTE6EJZzEUzlTT42P6sZpDyEEM0qZ/PMTHlP3RL1u/mzoIs7UoOj5/T8S3Rf5T9hw70qSOjLVZNn
	wBWW40LYNHOcMgtwLgoErAqJru2gC0HoukT7iDoZSOKf/hAIzwkLYBFp+6WNMAgXm9W8LEUPG5D39
	/8mhBmKQxPktEF0M/pqjOUHKjwyFVyeIMhfoDhb9+CtYAYsadF+DMFbBg8u5IlizI+l6iNudcy0Td
	omeJ+XzGeCcW3WC91wgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imItv-0000ev-OT; Tue, 31 Dec 2019 14:53:39 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imIte-0000Xr-Of; Tue, 31 Dec 2019 14:53:24 +0000
Received: by mail-ed1-x543.google.com with SMTP id e10so35426374edv.9;
 Tue, 31 Dec 2019 06:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o/MjM9n8lcw4go9hM9V6jfDtkHJJ9OY553EV40YViXc=;
 b=qZop3MAqC3vJeWXvQ48WeOe+IeamgtW3qBOEjDwmEpVxBcnmJMTPgqOyQjUAtfN4ws
 vEIG7JargoFBvhQ9uuWn4t6Fh7zgo5kHmkDFP+pdZB1+gbIfvRiEY+1YcStU57vtJCOR
 cCM9RJ1nExvM2Fb4OTh3RUlCARr00OQfescAOxBB7kGwB8ni49HlpP3hqrbEFEkL853I
 qEDOGbXotw0i9Wb/p/mqsXIQ9hLInoXcG0eIEboa/OaqZq/n7LGouKlUyzdlg+Hl1x1S
 cwnVWh7S94xFfcslXraNfh/ONokmVplLzBH0nv2QDn0mvWBJb8qVgEHMzY0Q4N1TdFOr
 EMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o/MjM9n8lcw4go9hM9V6jfDtkHJJ9OY553EV40YViXc=;
 b=MMxSA0MpHgXg9c6/z8oZ0d/1W8pCDo9CjfmVvz66QFqVZ/U2meeedATjCNtuRWtdx0
 4Vn4ZvYu3VwETpIbY6vXmBDuY0TJz34tgeO4Dy01Zub+010I3izw2S+Rdf7bMDBFmfkk
 HeX0TuGI8FNVkblpzUQRfuJjhHzSIGeJwsGxMh2F3Bjc17VwVZoSV9t7SjDT17MQmsnA
 S4GIxE4izTUainvPuun3/Hq7RFG76f8R2zpfp/cnZ1/JVr6u82fqQA5gA7mTrwnEa2OA
 W2cOMleYs1jxcCRuE8cPlYi1B0Gk5Qww5Nu+SZnwRsluHv3oTbH+YSwaq3xPtNmpwmmL
 kelA==
X-Gm-Message-State: APjAAAVG9aE+KBuvhIXJR8iwQtxuzhG4c47+cUVA0s61sdJzT53yJFXg
 CYGZ5Eb+VbGS/cFNQI+3XzpXXSzDzGgANIHWy1I=
X-Google-Smtp-Source: APXvYqwmgH8ITwrdnbYcdkYHW7Lk6bOY4+gRvm+01zIYN0XFhQlFKFAcuRI5Kn2qdPxicg93ogpO/C0grXYHfQadKM0=
X-Received: by 2002:a17:906:339a:: with SMTP id
 v26mr77372625eja.2.1577804000760; 
 Tue, 31 Dec 2019 06:53:20 -0800 (PST)
MIME-Version: 1.0
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-14-tiny.windzz@gmail.com>
In-Reply-To: <20191229080610.7597-14-tiny.windzz@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Dec 2019 15:53:09 +0100
Message-ID: <CAFBinCDQGGyYxDS9L5iJQpXMpp_+7WW227jVcxWcHhEWcUJLbA@mail.gmail.com>
Subject: Re: [PATCH 14/32] pwm: meson: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_065322_817892_04B00EB3 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-riscv@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, f.fainelli@gmail.com, shc_work@mail.ru,
 khilman@baylibre.com, wens@csie.org, jonathanh@nvidia.com,
 linux-rockchip@lists.infradead.org, ludovic.desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 slemieux.tyco@gmail.com, linux-pwm@vger.kernel.org, rjui@broadcom.com,
 s.hauer@pengutronix.de, u.kleine-koenig@pengutronix.de, mripard@kernel.org,
 vz@mleia.com, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux@prisktech.co.nz, palmer@dabbelt.com, kernel@pengutronix.de,
 shawnguo@kernel.org, claudiu.beznea@microchip.com, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 9:16 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you for taking care of this cleanup!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
