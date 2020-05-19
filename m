Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CF21D95F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl1RcD3HrvU8NZHsUJv9BoqLuyjtNPo94bgoYozJMqU=; b=jOqKzs0y4CAM98
	pLwKz7Ic+b7OK7VEJGcoaceAn2lsgZQeiEwWZbTzoZ0tAXiXUhp5smiiooc0Bu4p6/W6WP0bq5VIX
	/LH0oe8T/v9xPuvGNrzNVIjFjAg8WUKbtVoNamO14RoFETiACmd+V2LZ/LoiWlPoY2qBKndB5ntbX
	zBsv93Ffc4ukyhS91sYcrJ//6ifSSk9VAO/8cFgKTlpepuIoHnjHAUHjvwvcpgL1WhfrXA46WyWeH
	WJUva1OOQjbN+uaGscuz8TE9e85Y9C1yPvcb3Vk+7EjShv0/K4L2aeH9LuX5JDYt929+2eOgRJFb+
	wZY2nWFnBUUzSEjDZeug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb14g-0002QE-0V; Tue, 19 May 2020 12:10:22 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb14T-0001eQ-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589890209; x=1621426209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7IyHvUdQbREBPZmSOudCaFMVAbLn7+9tZaDPBI7D298=;
 b=QUP/yW8TnbzVof2dW3biuzedw6r69w/yKPLeYoAIeVwTdY3SB5igCmXr
 RzBg4g+lr1X8Pn6cupp29KiveUWGTHjH/t0ga1kO25nF6Bkp6/n2sywpU
 264FmUJmskZild3OdKhRQusQ/0iUx7W1koc7BXn5xtwYvJD7OOzGYTUPt
 MVUgwfa4WR3Dhh7dkWEfjTOJ9JXmpJdv2Tg6ZsoHsobtK0Tkm0pWICwMx
 PFTRfj/TKtq9j6TpumQUgtGri/nCg6ywgrpWBGqUbCmQcTZOrpuRR+Ag6
 5YwA54C4c40kD2nYFr5blWLn0Ruitx7rvbwzA7h5uz1bhBxl0J9bDsvX2 w==;
IronPort-SDR: 0PCZkTRMC2IQaaNZBy9q/R4cO5PFlRUjdc1l8stRhXgVbkdVk4vhPqBhy0PwEVJGbRqqrW6rLM
 9c06mq9YQchNhFqJ8nYip7fMjCzNS2AIr/ZKhL+PEB6RHWdU85Om+ySRXenJb98wLQj4i9PvGF
 wkGRU9Dia4gndlXv2HJS/0iE2l3ldoWmXDmf1bRZtrE+3RSKdVkwU5I06QlVVsXxFBWSVSV6cA
 Yt/kC7Sy549fdEMG474NUZ9dtOtD96OhTyUIvvW/sWUdyUbkB8i5UUiiKvfVJpEXwd+b7Gbzwk
 WeE=
X-IronPort-AV: E=Sophos;i="5.73,410,1583218800"; d="scan'208";a="73869304"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 05:10:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 05:10:08 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 19 May 2020 05:10:06 -0700
Date: Tue, 19 May 2020 14:10:01 +0200
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Message-ID: <20200519121001.GA26056@soft-dev15.microsemi.net>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-5-lars.povlsen@microchip.com>
 <20200513145213.GJ4803@sirena.org.uk>
 <20200519114739.GD24801@soft-dev15.microsemi.net>
 <20200519115829.GI4611@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519115829.GI4611@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051009_718898_E4D51964 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lars Povlsen <lars.povlsen@microchip.com>, Microchip
 Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/05/20 12:58, Mark Brown wrote:
> Date: Tue, 19 May 2020 12:58:29 +0100
> From: Mark Brown <broonie@kernel.org>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> Cc: SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>, Microchip
>  Linux Driver Support <UNGLinuxDriver@microchip.com>,
>  linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
>  linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
>  Alexandre Belloni <alexandre.belloni@bootlin.com>, Serge Semin
>  <Sergey.Semin@baikalelectronics.ru>, Serge Semin
>  <fancer.lancer@gmail.com>, Andy Shevchenko
>  <andriy.shevchenko@linux.intel.com>, Wan Ahmad Zainie
>  <wan.ahmad.zainie.wan.mohamad@intel.com>
> Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
> User-Agent: Mutt/1.10.1 (2018-07-13)
> 
> On Tue, May 19, 2020 at 01:47:39PM +0200, Lars Povlsen wrote:
> > On 13/05/20 15:52, Mark Brown wrote:
> 
> > > On Wed, May 13, 2020 at 04:00:25PM +0200, Lars Povlsen wrote:
> > > > This add DT bindings for the Microsemi/Microchip SPI controller used
> > > > in various SoC's. It describes the "mscc,ocelot-spi" and
> > > > "mscc,jaguar2-spi" bindings.
> 
> > > That's not what this change does.  It is removing the existing binding
> > > for Ocelot and Jaguar2 from the free format binding documentation and
> 
> > The reason for doing this was due to the fact that I felt adding
> > Sparx5 support only cluttered the original driver even more.
> 
> That's not the issue I'm pointing out there.  The issue is that your
> changelog claims that the change does one thing and the change itself
> does something substantially different.

Ok, got it. I'll reword the changelog to be more precise.

Thanks again,

---Lars



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
