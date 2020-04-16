Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5511ABD30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veVPqRBQgH9b8/nUVsbvwFoMe7vc8foFJWGu2bSmIns=; b=Wh1YUQ9/v9txa5
	T1te/M8l+pmqC1enD8LsFEZ+T3j7Q7dLGM5nRrRiiN912lIRRCiYNfpVpSNwfepbjYlOvzfs6+qr7
	0VCA/a1GkP9aDCSPWJOuncC4ZcgDpKdWbNQ1f+FFJ2fc8fZNkbTiH+PG9O98nROJFlulmLjRgaq+H
	MikmHXnOb0+fw55O8rpMQPsChXckXNP+hM11oyAtvuQN0g0+CHrQYNvYv0I1bnUY8TdLzZeDYCrVB
	bQJ0msIDAD9mx3aCYVfOEosiG+wFrLjheFYo9hc/u0z0ya6Sh+dYSlqEr9i2XzyrhnxYmaY2lCTe2
	drELyykPhTZudPToSKNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP16q-0004Zu-3P; Thu, 16 Apr 2020 09:47:00 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP16f-0004YP-Ks; Thu, 16 Apr 2020 09:46:51 +0000
Received: by mail-ot1-f65.google.com with SMTP id i27so2545912ota.7;
 Thu, 16 Apr 2020 02:46:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RM/nTDzMiJT/jjtvKRl0rtdDn36SiM29khhvLS3Fy9U=;
 b=fzL7OoYxg1tvmULaxZ6iZzZSThbnfvbaYNiRSS9Ow5jqShiIIy6G8rAkQSZoW/X+kx
 7XdiSTgIPMPR1zoBP/T5GnNPZ8Tm27RPyImnt2XWOtCJW8L+ESSVd0+o1sKl0+x3wV//
 XnFJdg3sOC4F0v3n/ciuT1J0XDlXxyta8xzkchBgmKE9xCJ4KJcfJ8Hs9w8f3/6xWOuy
 Dhr1ZqgMURM4fkukgcbF+KxKyyp1ASJxbxTj7bofRyqQyVhsiaczyaG7SHwbDZxY8dNV
 K96Oqga0z8yJKhQ8Dgr5qNM2KM90MgVAdgAMSKahu2lsNZuiGDCdLlwdKF4J9lJrqSJG
 E+JQ==
X-Gm-Message-State: AGi0PuZ9MEjrfzn0/UblETfuZNkG6OHQhB9IDhwnGAj+gbSTHuKwr2JE
 Vb02DaaIXnJsFLLb1GQTktZ1CObQ3SOtwtTd1pc=
X-Google-Smtp-Source: APiQypIl3DcyhF0BNQx8p7xql+qmz/EnqLfrFLnv69mUOw78OJnDaQgEns2mc5nF+ZGDxENyc+UKCUv1ihzy5/CmGB4=
X-Received: by 2002:a9d:6299:: with SMTP id x25mr20179548otk.107.1587030408635; 
 Thu, 16 Apr 2020 02:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586946605.git.mchehab+huawei@kernel.org>
 <221ac8f88034bb55c7029c162c0273eccd6b6480.1586946605.git.mchehab+huawei@kernel.org>
In-Reply-To: <221ac8f88034bb55c7029c162c0273eccd6b6480.1586946605.git.mchehab+huawei@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Apr 2020 11:46:37 +0200
Message-ID: <CAMuHMdXuq0SVUUE3gN5sF2pPaHfhQXX8JsXaR6+qXdnBXVikHg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] media: move CEC platform drivers to a separate
 directory
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_024649_679223_1A7903E2 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Ettore Chimenti <ek5.chimenti@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Guenter Roeck <groeck@chromium.org>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mauro,

On Wed, Apr 15, 2020 at 12:32 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> As CEC support doesn't depend on MEDIA_SUPPORT, let's
> place the platform drivers outside the media menu.

Thanks for your patch!

> As a side effect, instead of depends on PCI, seco driver
> can select it (and DMI).

I don't think that's a good idea, as it suddenly enables selecting all PCI
drivers on platforms that do not have PCI.

    WARNING: unmet direct dependencies detected for PCI
      Depends on [n]: HAVE_PCI [=n]
      Selected by [m]:
      - CEC_SECO [=m] && MEDIA_CEC_SUPPORT [=y] && (X86 || IA64 ||
COMPILE_TEST [=y])

However, it already exposed some bugs that were hidden by PCI=n ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
