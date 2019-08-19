Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89D92258
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkdNqpfLBTnUCW0h7ylr7PGrL9BCBf1DLp/Z+Aluuvw=; b=hvPTDQkYdu95KE
	AxLd9qhlOMOtaOrHWwslAyYt+C+HSJ3fGBqFtM64jrFi3Mdc/NVnTlSY/helnZZolHJgpuH97LaXj
	T4KejaQidz5ZLv3ZNRgfGSLgVyy1BrSSoyDupF9O+tUjZROu18aLcjdxp4UjfNiTaUCRd7fpbzdPo
	97UpH+8Np2hblfVZVQISIDebh2LNXnKpJPXk0BQydZ92Up8WvJ/kDLEAcIsx0yR2vGfe8TSUf+IRZ
	REMNdYYxnheW5I8iZnbd4MmDRLoQBCCu/YOvCyQVYVNYvLRUG2qrgUs3KjpVbAKl6hL8wulFkn8QH
	mZ07dx3mAFzcYUzaFtNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfqK-00008r-A0; Mon, 19 Aug 2019 11:28:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfq9-0008TQ-9j
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:28:46 +0000
Received: by mail-io1-xd41.google.com with SMTP id i22so3432362ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 04:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pUgp/lYE2mh6lZVjp7CtML4dZtKS5hCiUObTY5MOrek=;
 b=VomSogBR+Rjw/zSHOgYzWP0EPLOWDtlkOX71pe6ugmjomlrnQcTpcjmO8sKNJJVF88
 eBBJwuHQMPRsPnPRI1d3VWz79WvjiSugyn9jqibRlINZRgvgDoPjI2EtLD1fnsLV99c2
 ShCoueTKwSrH6XIpq3jwrrr8LQOc+bXuyUl/de11l4GYIgokqYrOeou3Ki93L+WqlQJx
 GBubyAUF11lufOEIB4UNoLNvXP6xnBfxBWyQ5xpZJrGplgu4FdH8bkcGeEjP/ZaKEtLl
 6ea5JCPDW1r6tJ7EqnwrgEoniW2UAOXZ55UlUK2Muaf/SGJ0KQMtvI49SO35Tby1zv3b
 l6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pUgp/lYE2mh6lZVjp7CtML4dZtKS5hCiUObTY5MOrek=;
 b=lYtPS1R6WXOqMbcbfcWLu5n/g0ZZ9KiI5XEmcn8AXA92BdD3HNezxGMatr2GbDr1K1
 dXUIkGMVzy/dyUr1Kx4iuoy3W4y6jV3nHwx20m9e4ePArPavFWIQ1dPFxgdWFJTKY19k
 zXZcLXv7O6L7pI/DpQXobZx3sBh6n5NFvZVpznyP60VWIhFtPngtlqmHYjcDYSLjQSsx
 mWYLcV1F6+d7OLdgwshjpMYxm5iCvFaUXyL9n1YKUtGzz2QUl2kbcc8YW/+dkojGodnJ
 ONI+Gl+MX4v1odyRXfaOD9GeaRFt5RqBwnuRGBaS/CNyfX4Zvx0FlX1XWfPKU92Y5Kb8
 RDbw==
X-Gm-Message-State: APjAAAWrGkR4Hl3yqY92gnSDBNG2h5ju2lXRL5AKRW6M3haVdR7tfjdD
 b/xL8h6xX0LJ15QHEZeK5SaknIf/2dFfokkXczHGbQ==
X-Google-Smtp-Source: APXvYqws9l57+4N1t5CybQVbaJVVd9Nfbb44LfgnzTxj+oSX0EqosHdKwwu2xUgfJeO4/2mhYPOE0MJ85EFvW0XmVeo=
X-Received: by 2002:a02:ca0c:: with SMTP id i12mr25223915jak.82.1566214120815; 
 Mon, 19 Aug 2019 04:28:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190814104520.6001-1-darekm@google.com>
 <42c7ef3c-b7e5-8c63-c7c2-bfc6c56100c6@xs4all.nl>
In-Reply-To: <42c7ef3c-b7e5-8c63-c7c2-bfc6c56100c6@xs4all.nl>
From: Dariusz Marcinkiewicz <darekm@google.com>
Date: Mon, 19 Aug 2019 13:28:29 +0200
Message-ID: <CALFZZQHu1C_8idxkwjBdxpW=y9gKmDnLOeTHZ9iAkNo7YubZHg@mail.gmail.com>
Subject: Re: [PATCH v7 0/9] drm: cec: convert DRM drivers to the new notifier
 API
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042845_349886_9D165EF3 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 Allison Randal <allison@lohutok.net>, nouveau@lists.freedesktop.org,
 linux-media@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Sean Paul <seanpaul@chromium.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Thomas Lim <Thomas.Lim@amd.com>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Douglas Anderson <dianders@chromium.org>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Colin Ian King <colin.king@canonical.com>, Enrico Weigelt <info@metux.net>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:38 AM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> Hi all,
>
Hi Hans.
> The patches in this series can be applied independently from each other.
>
> If you maintain one of these drivers and you want to merge it for v5.4
> yourself, then please do so and let me know. If you prefer I commit it
> to drm-misc, then please review and (hopefully) Ack the patch.
>
> I would really like to get this in for v5.4 so I can get the userspace
> bits in for v5.4 as well through the media subsystem.
>
> Dariusz, can you post a v7.1 for patch 5/9 fixing the typo?
>
Done.

I think it would be good to test v7 changes to dw-hdmi and tda998x on
a real hardware. Hans, do you think you would be able to test those?

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
