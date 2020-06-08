Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1746E1F1285
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 07:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yg1+ljFLHZhD4TWymft2rrwwua3v4wBNGbqswQ7XBFA=; b=Y/qvXLLJPOGPh0
	3bkpU3LRUsbyFg21wrPWWaD4gmnQhSlL6xsRTz0V5skPh/YEiNd8jV8BoWbaz5J8wGy0byk4R+ipn
	w+c3yMR9LuWSkZFiqeM244KBUUVHtNX10iDR7fZsAGrmc9S6NDIwFoGwMoFVYQwDO4fDBsZJz/Wzs
	ZTFui1uJGI2TO3GXxn2wIl4sORSUjGeVKgv02XLBLMSxnbFM+Z7PNLAuwhQMZPkKaoECZ6ihFYa/r
	yjwWLKGegcbECHkgcmjEwjSHU+drKM1Nlrep6KTTO6RjDbk6NNxTWCqYNxjbS5e5ZOaVSHavXj93v
	YOg0moqTRyJUrNAIbYcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiATl-0004Du-Ue; Mon, 08 Jun 2020 05:37:49 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiATe-0004DZ-Hp
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 05:37:43 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ga6so5278247pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 22:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=;
 b=DITjcqepAg/aiVMxe1Gh2awTCmo91vVu3S9mlVdU3hgfcPrStCTsiH/eLXmFFx4VRn
 o+ChFk5Yofnb659Ehd5fQWdqZmVijpUVnFuGNuFhMOE72kvC1E3+mfpKEr/ZswrbVsJy
 sipQ8XyZUaVEwcIfHzLeHoRReoDiJt10fqtwJ3c4BO29KFNyabOsxQSftZ67b+4X3i7i
 XR9li74InWK9fBIdE0y17Jbyz8DsjgWa/+fMyP1yne5aCzj4UJD1nLwMXWmxvqe9Spvq
 wc9P1vraN5a+3iQ96WNuaUdHrp7GU+r2Ij6WnopwS0BjnouSD1RBVYKA1uSNqvSLb6Py
 s/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RTapcU6gK7wVagdpIBy1syxYRT4o5dx2x3mb/55IfwQ=;
 b=gIshLHWo7ig/P7z6C8yNpONrX2sobW1nbOS1diwEP6NGuroLpybcKWOtj4GBVOIIn8
 1LQ0OrSsfSIlWQks04THcvEAFw3KNsCmSMv/pqWmrCkSgifU79o9VB8NOUQLJbEmNNtd
 bGrxXGnPp37ZQmd0AuBBHIssdVyjO0Eagah4GzV1GHPkgMd9O0MXCSfoNhgWBt6hxzPY
 Dwl6SvhjT4J8XuxRgTiZQcDn4JOtzfZP5869FsAlsPXq50xgfyjs4Ph80I2nnf6skMZC
 SsH10RZ9sFIZmY1KGiwzvMdAtQB5qQbvIWCpPBO2RzFD7vNJ9chedQ1NtoDsxZNS9Q3T
 BnNw==
X-Gm-Message-State: AOAM531MjoHQaCQuvqAmmBRUdAX9dD5oYGx9fxjwKAWXf8OgOPn0vbzl
 1VWhBIXlh3aJwuq57iPI6ZM=
X-Google-Smtp-Source: ABdhPJzN5CaIdVRcGxuqJwlU7nQJooHDxxicu9iq+KnTRKt689A3cjTNxnb8ofRVOYLQTpNcwc0RwQ==
X-Received: by 2002:a17:90a:c283:: with SMTP id
 f3mr14534964pjt.166.1591594661380; 
 Sun, 07 Jun 2020 22:37:41 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id k14sm4926474pgn.94.2020.06.07.22.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 22:37:40 -0700 (PDT)
Date: Sun, 7 Jun 2020 22:37:37 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v3 0/7] Support inhibiting input devices
Message-ID: <20200608053737.GS89269@dtor-ws>
References: <20200604072853.GP89269@dtor-ws>
 <20200605173335.13753-1-andrzej.p@collabora.com>
 <20200607202414.GB13138@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607202414.GB13138@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_223742_606493_C5D37D8E 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 10:24:14PM +0200, Pavel Machek wrote:
> On Fri 2020-06-05 19:33:28, Andrzej Pietrasiewicz wrote:
> > Userspace might want to implement a policy to temporarily disregard input
> > from certain devices.
> 
> Wow, you certainly cc a lot of lists.
> 
> > An example use case is a convertible laptop, whose keyboard can be folded
> > under the screen to create tablet-like experience. The user then must hold
> > the laptop in such a way that it is difficult to avoid pressing the keyboard
> > keys. It is therefore desirable to temporarily disregard input from the
> > keyboard, until it is folded back. This obviously is a policy which should
> > be kept out of the kernel, but the kernel must provide suitable means to
> > implement such a policy.
> > 
> > Due to interactions with suspend/resume, a helper has been added for drivers
> > to decide if the device is being used or not (PATCH 1/7) and it has been
> > applied to relevant drivers (PATCH 2,4,5,6/7).
> 
> But is that a right way to implement it?
> 
> We want this for cellphones, too -- touchscreen should be disabled
> while the device is locked in the pocket -- but we really want the
> touchscreen hardware to be powered down in that case (because it keeps
> SoC busy and eats a _lot_ of electricity).
> 
> But simplistic "receive an event and then drop it if device is
> inhibited" does not allow that...

I do not think you read the entirety of this patch series...

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
