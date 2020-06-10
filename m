Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16AB1F5666
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hod2c4j13nrUJouS8Mh5uk5NeLrkp1maO441oB538jA=; b=SQEN5RpRwp92uc
	2xBKcjuXADhVEwKyZDxTicZRMIKi8cGPtbMOMTfZfZrTLyeumMHu2u9WCIU8lKcWTgG6h/Bj+OdeQ
	D9zt7lcE3NEDyybw8id+PO4NF6oEmJ+x7NHhGmBQTaLfsrhiaD+QpAVbMInsvwcQNPY7S1B/vlnJz
	6G2xik5nw1N0n6RumsPONVQDwmnnkp8R6rc6iUNeFyTfax49XMPMLX1/P3M1PgWgq+fnVHSKmb9y0
	iHpXY3yKlZw2ny+V0YW9ljDfu+nzNQtpPuvYyiXRIgCzrlDTljZrl3UZJq3IZA6ceI4SYsGgpow8O
	3KKZ0bxA7THg8E16bfCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Is-00071s-T9; Wed, 10 Jun 2020 14:02:06 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Ik-00071N-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:01:59 +0000
Received: by mail-oi1-f196.google.com with SMTP id x202so2106491oix.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 07:01:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nl62HWLkcdUncszr4NfDCSNaITirf4yc7zsH9ph91Mg=;
 b=NzN2BNNLPVRzuibzFntnhxxgZudTm9Uqm2kWUlp5ATg8GylNb9i42eEWJDomZce2t/
 DGpHeAkq3N9NO5q/krd3TSQKQ0Mk3De2PqAr8Vg7yh19eXXKDF5QeIYS4j8Q18TJNdYv
 f30EVo+934skC/u2YcgHJfgsEzBR0QuTDv6aWBypNLxot+JvnlP3BIJBXrIQsMQXaRW3
 6fWyiWKCL0x3DsHraP0fQ13L4vQqOTT3Id68rHolz6vvyJptvlLkE32dOstZKsJwbQOs
 T2+yoObqOisveaPXGxQ6RzQ9PruE0Z9NvFQWhAQqgmaj4hyiOB66V6VmX5teYEq3b3+q
 kK9g==
X-Gm-Message-State: AOAM533aaR2NIKZLJs1/v1lZdTrHjZrUvsNEgziMSJjYu94ASNsUGSvM
 hLgtPxG1baXbBDrJpbmu+ijUKrHdcF+PkTWCez4=
X-Google-Smtp-Source: ABdhPJzorUjsiFcKJqkTkUHEOkzCM8G8rZoea2g27dOAzap4gGLrBRRziPbedIOP6/JlYUlFFWbvc+8f9RAYMPdl7zE=
X-Received: by 2002:aca:ad88:: with SMTP id w130mr2656825oie.103.1591797717254; 
 Wed, 10 Jun 2020 07:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
 <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
In-Reply-To: <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 10 Jun 2020 16:01:45 +0200
Message-ID: <CAJZ5v0gVBzLpQqNrV-kzV84mLB86Gd6Ws63RwBKT=r1WgbeDSQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_070158_263591_C25BF718 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 3:21 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 6/10/20 3:12 PM, Andrzej Pietrasiewicz wrote:
> > Hi All,
> >

[cut]

> > What would it mean to become a wakeup source if there are no users,
> > or nobody has ever opened the device? There are no interested
> > input handlers (users) so what's the point of becoming a wakeup
> > source? Why would the system need to wake up?
>
> Well this is what we have been doing so far, so arguably we
> need to keep doing it to avoid regressions / breaking our ABI.
>
> Lets for example take a laptop, where when suspended the
> power-button is the only valid wakeup-source and this is
> running good old slackware with fvwm2 or windowmaker as
> "desktop environment", then likely no process will have
> the power-button input evdev node open.  Still we should
> wakeup the laptop on the power-button press, otherwise
> it will never wakeup.
>
> Note I agree with you that the way this works is not
> ideal, I just do not think that we can change it.

Please note that "no users" merely means that user space is not
interested in receiving and processing the events from that device.

If it is configured for system wakeup, it doesn't matter whether or
not user space will consume the related events.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
