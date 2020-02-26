Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6467A170132
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB8EvOKBJ/79snBDn/fILsRR2widjpG58hLOxaJCv9A=; b=YVBuMwSbIg9xGC
	Q9MTrGY2k7vXK7ZnASHOYVJyr/Msi8OwYCH48XLDGE0jltgAyiTiJYPYSRRh65batlzrZvGgPuAIH
	K9qxsIsV6qRCywZO1rNBNYTUHIMFWkP4/JhLMDH/hW2a/8VpKTmW4mrrv+aRtAcaMtP1LnV3nwF10
	oM/sUnoG9NoIueU8EjTlhk+RLBqcTYH6Hw8IlVgZNOPDXpW1ud7zXN2HZLaiWq/2QNXoF9Ut0/MGH
	vSSQE5K5InnacCTUQDpTNz8sp24jDQ1Le/h0/q4+JSVSFJmLHDjUhuQT8tsxKvCISKrsRbW/Edthp
	NCORlA14d8YHC3+ieVhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xhd-00054S-4s; Wed, 26 Feb 2020 14:30:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xhT-00052D-Pv; Wed, 26 Feb 2020 14:30:13 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2028A2468D;
 Wed, 26 Feb 2020 14:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582727409;
 bh=FTavrhRvD3/cAi6dtPOZfJq/yT2BV2F/rKEuNXloXiw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UgKEAOVPqCjEnalnG/MJpctIDGJWpzc2VZ3liqn3FBmTSyRcGR6x0QQxl+hDA8K7m
 0N/mJRIgoKmlNj5OsWGP15UXTpGPisYFxZ62tjsvVR5qzCWQS5DYFn4Ij5KrMu0G8J
 JQK2IWg89VZASe7ljBjnu5MKAJcRa0Sws1CB9+HQ=
Received: by mail-qk1-f170.google.com with SMTP id z19so2775716qkj.5;
 Wed, 26 Feb 2020 06:30:09 -0800 (PST)
X-Gm-Message-State: APjAAAViYQk2kYB7PXJyYSHGcRIKOOBIUmuumfysJ9PoPMgWvnZYy9a+
 u7mlWDzI0rGtqxT7ij16lI/eichO8Bp6LOhTYQ==
X-Google-Smtp-Source: APXvYqx8P7fHvCOhAoSOWA8DnUwX4yyOHQiABO8b/bbXdZCaWKAxi3z6qQ+ITbxwwNfVk+W8jZLhM9/ZJQIl6x+NuTM=
X-Received: by 2002:a05:620a:12a3:: with SMTP id
 x3mr2439558qki.254.1582727408199; 
 Wed, 26 Feb 2020 06:30:08 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
 <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
In-Reply-To: <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 26 Feb 2020 08:29:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
Message-ID: <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_063011_869332_498684A9 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 6:15 PM Evan Benn <evanbenn@chromium.org> wrote:
>
> Thanks Rob
>
> > This should be a child of some Mediatek firmware node. I assume
> > watchdog is not the *only* function.
>
> I am not quite sure what you mean, do you intend this:
>
>  firmware {
>    watchdog {

Not quite. /firmware is generic container. I'd expect another layer in
the middle for the overall set of Mediatek firmware behind smc calls.
Look at 'xlnx,zynqmp-firmware' for an example.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
