Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BB712657F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0hkNaTMsRJDRg0DoTJPFboCnBsG7hIK+b1ZLSS9HuA=; b=oM0z4aVSpMCJLA
	hD1QkEEk1XvgPs1LQBRGxJeNt27olerIduq2iBOzaAd6yZVAjJ1MIMHhGNHCffVFAUobS3KPX6N2k
	qHD7axKuo3OZP8EpyNIM6M4bHA2kDF6QfPmux2SepZOdUxRyMDqTp2rz2p7jL37VpN8ndggTJMl0g
	aeQ0WKy9siB4mrqpv4vQCRtv+g3AoQ/3gnonfsdhVp3Z10ZJZNffEdUngd5/MifosPx21I4ZoYUAq
	y5Xn8UDKSiu8mGSWJ3/9PkOJ10BcyK6R0MpScxdu98NJfiBgOXz8XAztCOE2ZxbMCtNzC3hLVDS8D
	1/G07cuBLcsT86HB2iOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxYP-0004sT-OM; Thu, 19 Dec 2019 15:17:29 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxYF-0004rm-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:17:21 +0000
Received: by mail-ed1-f66.google.com with SMTP id m8so5194611edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:17:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YbneQoVsZIzw6avDP27JSmKEAr5++pdo0PlDwGw1vCI=;
 b=Xdgc6qxERwqGr2WkA36fDW+MDVfun/7ecb9PYs9d812cOCXnQ1HmTu1OvMqXojay5z
 tiiUjL7LZoy3GeZo5OcvpRxy8wBWKgbO3U62ibClXmXad2akXMAQOQ79F6waoo1E3rVu
 7qeQKYgMpDjjFyXe8rN7fEcRbBH/5WErAZAewsTAsjWupgiU/76ew6vU0jCzadP41F0U
 p30uDWwqPlHJAAGvwiIbyW4AcI681SJFZ0faT5qjy3NW63eUzZM1KiyhT5AVJFNeraZ1
 YKwsft8hA88Oyqogk2Luasneg3RGZB4GVDxvzz8QxdedoNsHZYD0Gv0dJN7TEiqey/Q6
 hWsw==
X-Gm-Message-State: APjAAAVfZLlE9moXFLE/8jrHBUxoXBYNStIvYdpCVxgwwa+DRyqXHG1S
 69GrjV9RgbuK2w2ThN6sOaVp6QeeUAo=
X-Google-Smtp-Source: APXvYqyexKD8IumWLWESw4Eu6xtw2PP0QAC8J49n7LstmlAliiRmcznSkS5rd8t+UcrFISRdKCqBJw==
X-Received: by 2002:a17:906:8386:: with SMTP id
 p6mr9972578ejx.163.1576768637909; 
 Thu, 19 Dec 2019 07:17:17 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id i4sm456803edr.59.2019.12.19.07.17.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:17:17 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id b19so5810401wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:17:17 -0800 (PST)
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr10822456wmg.110.1576768637472; 
 Thu, 19 Dec 2019 07:17:17 -0800 (PST)
MIME-Version: 1.0
References: <20191219091539.948530-1-maxime@cerno.tech>
 <20191219091539.948530-2-maxime@cerno.tech>
In-Reply-To: <20191219091539.948530-2-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 19 Dec 2019 23:17:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v65TqtcAw7WxFHvz9zo15dKAuN+uoKeg5Ohj-dqsBjoeJQ@mail.gmail.com>
Message-ID: <CAGb2v65TqtcAw7WxFHvz9zo15dKAuN+uoKeg5Ohj-dqsBjoeJQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: sun8i: v3s: Remove redundant assigned-clocks
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_071719_871033_7C527D6F 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The V3s mixer node has an assigned clocks property, while the driver also
> enforces it.
>
> Since assigned-clocks is pretty fragile anyway, let's just remove it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
