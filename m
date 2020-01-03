Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB20512F9CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+j5GTN/NhgJap88jEgwr3ACfZE6boOQg8Uyjt783Y0=; b=lvrr6rTF6XhZXB
	msy6xna4diqRzrIdSac2DE6cgEm3eCM2Jq3bfXK3NYal8hCyC+Aij2aNAL8fmlI8Q8WxGLsBr5rJ+
	5qv25bYoxOj78YIrY/F9e50JNfwOFAp2RsREuNLu1ddn0hY4LSZcViOPTQo30kHIDrFI2TJSbA0fE
	66a7owBPJ30//NHNqhugnAsBuTr4ELIaatS6iZKpYm8GF0ldUfnwmmo6dS3SH5S7GGiM9mxumsW24
	sXPkBSnVonsm/V7VjdVEUiVw0rgXSs/d+4bdqLSCHGwILrDzh7r6am+K8W/UaS5hCYPpxvTJGA1d5
	deSDCJKa7MjjAsufxJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOuj-00076T-M1; Fri, 03 Jan 2020 15:31:01 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOuY-00075i-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:30:51 +0000
Received: by mail-ed1-f68.google.com with SMTP id c26so41881575eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:30:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ByAdBB1G/PoGRjeTtrFxzGAEpeGoWNuIbHWkC7xwGOE=;
 b=M9lxn425Q+E7NP98GqZdCxXIu1uh80tigy0ID5QBfXbzG/udm+r5YFR6HeCN3/WIBg
 hHmIwpqLXDAN1yLa81kc6NeHaHjASLwG2qOhBi6EeoUPeJbXpf/xgQzbj1TfL4wwJq3a
 bLy2XEF9KgeiV+v2Jvvt1UZFihNyfMWQdh3l8txxds5xf9a6vHBCsJ49YTqSxB+BH9Vc
 +5Ixhgl+PYwxCoLf1joLjFDIielOI3aSwcTq83IVdzW7bPElQY6qevxlfyj93K39iMkC
 bRllNnFM9b8+RHOgg9wlbkubHFJa0AlozAq0Uainm8MgoQmpj7C2SmGRw1xORnCM1Yx5
 fyZQ==
X-Gm-Message-State: APjAAAXN4iqysTIc7epwHakKyTeK7IVGxEdvrjH35bXZOsi1tgTgf23L
 loxJLfhnU2qW4f3FvY1/7ZzDI+cCldw=
X-Google-Smtp-Source: APXvYqzaafBLR4UsZoHk0PpypPE28zZOQzjLcUOLKsL4Q/neh2M/2OzXiQHTU9MGaXU3VAQr7TNYaA==
X-Received: by 2002:a17:907:2112:: with SMTP id
 qn18mr91788216ejb.92.1578065448326; 
 Fri, 03 Jan 2020 07:30:48 -0800 (PST)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id la19sm7790416ejb.76.2020.01.03.07.30.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jan 2020 07:30:48 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id c127so7172901wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:30:47 -0800 (PST)
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr20513346wmg.110.1578065447558; 
 Fri, 03 Jan 2020 07:30:47 -0800 (PST)
MIME-Version: 1.0
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-3-maxime@cerno.tech>
In-Reply-To: <20200103152801.47254-3-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 3 Jan 2020 23:30:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v662mJCGaRx_-0ij9inTGz1GtzNxkFyBeeq2hhbSYZm3Rg@mail.gmail.com>
Message-ID: <CAGb2v662mJCGaRx_-0ij9inTGz1GtzNxkFyBeeq2hhbSYZm3Rg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] clk: sunxi: a23/a33: Export the MIPI PLL
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_073050_859937_4C6482E7 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
> headers.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
