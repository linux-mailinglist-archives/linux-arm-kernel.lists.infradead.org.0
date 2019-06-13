Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6606433EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGRCUh6wjPn/heS/hBpWo9uSkiRHrqIcIzeoShigIwc=; b=uEmGFa4NMEWiPi
	JkAbM79unDV86rBwZlvYz+PdN34b9ZbCJbi+j0MQ/y04ctH0hyVNaPlD2YIzw9SGRRA+mxw+t91AS
	ok6geKU4CivNowLksZ2rxPQ+JSfjAPGgGucJydbwZPdPBXpn991OvHQLBJ+BwYswM7YWQALQC/WpM
	ox23p94ZLvxiWQbjxMz07Yb5IWcnHyPTl8g3fEy+cqXOrlcDHR2phdSsconkbjaKnwGAbm9w5EGD4
	KEpTnzKteQSTli4AcuEexYH8+NvbCU0ZWZSRmhzsVhvkup0/t96MEIf7HFHnw0BkLcq+vubDMmSmM
	cBtEHpCB7Fo7jAWlJMHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKav-00067z-7q; Thu, 13 Jun 2019 07:56:25 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKab-00067T-2r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:56:06 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so15270537iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 00:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mt9IXgQK0R3bZVbL1gX4lwhgNE2WNQzmEIjkbIH3lKE=;
 b=CtrAEoilqvh20HeyueqUwiW7Sa/FbuwD7y/aJXyR4xt9xVi1BLl8zqjbMMpgvcpfBD
 TJalZ6QEJZvTLm4nqCFht30YUEyRuM+d2nhm/jtcU7Gi+OVZTfHrUhuwe4D+d1PfnBBc
 RilEpAmd11hs5QxMrxz60PzbfFEFEoRfCQWSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mt9IXgQK0R3bZVbL1gX4lwhgNE2WNQzmEIjkbIH3lKE=;
 b=QiOrQy+gKO0yBiyyeHPZdwpwBaoG19DbDszVtpDuyWpWKq3Y717PShmF2y+KHaKeW3
 8Baso0/2KAdIV2VMqt5M8Xga3IyQ5Bk7IVrmjDCiNXLzSPr+/PvTwAuOEHNjZYbHw7bD
 wi/vyB82JdC3213a1sVbVxsY/HnsL5u1YHD4VmKobiyfwrLjlIwsrnh9FZEX9ai5NTlb
 Xtve9smissNYcU4gYbrsZbJ8GYBuf22Rkw9BUnpPaGVobpo9KLKJfLRSIvY5NTp+MJ6V
 t5PdKCzOJdvwtRjPJsQMq8O9wlqMU6IQABzyFS3zgaUNIYDoEPPPVGKSmF7kWMhbiWRT
 vegw==
X-Gm-Message-State: APjAAAWxbjYLN29Y2FRwfBOLCUnMCDiwxf39CFAATDo0FrSunPNgIM49
 Sh4V+WNMWdOjcldrYcLHFiyT9UgpxLYQkTwuUs/Lbw==
X-Google-Smtp-Source: APXvYqwDhRfnaHJtf1PQHQ/jF+8eogSJypvcgbC/dcDrOKV/5SpBek5mjlGRiNPmxM88wklf9JqUz4ZZ47Kx3KJwqsI=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr51043170ioc.28.1560412563915; 
 Thu, 13 Jun 2019 00:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
 <20190520090318.27570-10-jagan@amarulasolutions.com>
 <20190603134907.lh5rdpucbrzrsdps@flea>
In-Reply-To: <20190603134907.lh5rdpucbrzrsdps@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 13 Jun 2019 13:25:52 +0530
Message-ID: <CAMty3ZC5-y8RJcLjFP_G8i7=9-BuOQWdnxoo66TO4mrrOxqDLg@mail.gmail.com>
Subject: Re: [PATCH v10 09/11] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI
 regulator support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_005605_337143_C4EA2898 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?B?5Z2a5a6a5YmN6KGM?= <powerpan@qq.com>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 7:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, May 20, 2019 at 02:33:16PM +0530, Jagan Teki wrote:
> > Allwinner MIPI DSI controllers are supplied with SoC
> > DSI power rails via VCC-DSI pin.
> >
> > Add support for this supply pin by adding voltage
> > regulator handling code to MIPI DSI driver.
> >
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> This creates a lot of warnings at boot time on my board this is
> missing vcc-dsi-supply.

Is it about regulator_put or similar, would you provide the log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
