Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E63132466
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PDXLbUUsAIOenwKVaonweBOAsY/J3a1txukpP032/gc=; b=RfqjjiRrSbIQx5nBtT/fOoLrjE
	DCW7mnvvl7wInhyAl69Gqmrx77ZOx34s11kD7gs2P6cChcYuwGkFaniA9GPFNcqUVH9BDBC4R3YqJ
	WsjQSsypqzQROc7ti4iNDuP6QQkNSgzo1KWq4omt8LsSke/Vrac4iTSIadyFz2hz6ztcLkDhBs/WG
	7pW/g8zUjzFwn2gJq+WYiND00IsNZNeio+Sm+FF0GgwjBjEQSVTGv9aDs+eXm7av1sjleuA1Rb6fd
	VpSCBc8fuDjxOxpGV7HHrCJpmD8ong8WdmKBeTa81lqPXTf+pnk8EYPFR981brWL+w6Ee/T0ekVIJ
	pvjin5ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomdy-0001OR-Fd; Tue, 07 Jan 2020 11:03:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomdq-0001NH-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:03:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so53416335wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 03:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=xyZS91HmTWb7A0olo7U4XRnlJNJkRCAhnyhMR3Zh6ng=;
 b=XLGV3B0w53+LAAAizJxW1KD6wXybJqgKTbqEDCaylaY0nMPB+bmDM8i7LKh3jThJPY
 piJdz/2D7EbKmCcVQrRYJwAmUyub+Ty7SyHXAZDRxLlLdVFE9IzL7NHOmwxKTX+BMvhH
 /tfyxAFTf3vbrWl4PnSzSVVVPtRA1V7NWo0hSIU4nqC2RjJQDAyoojirexKnN2FiADKL
 8nJwJKeQUai6h423Z8BeTpA6X2ZjvlBGevlkk1ghfj47tCArhxzyDKnzqN6nlSVHY0Ic
 4zbRPZIFcPo+iCNmn80bK6j6/MB4Yfh22ECRG66CeUhKKAvm49EkE3M1NSLW3JdP+GjX
 n5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=xyZS91HmTWb7A0olo7U4XRnlJNJkRCAhnyhMR3Zh6ng=;
 b=WwdbI3T6muFEmLe1zE5OZzibhgd1AjatDP5s+R4hQsinVoT5GLLkOl05V3fCfwevTh
 i4A9yx1nqoXInp7TQP9xd4fr0EHWNZsnPHTd0hf/Mvalls2edjYbAFwolhIF7HdZv+JK
 xRqQutsBO0u5IBjJLVF/ewiR1w4UhC3xfrmUT1a2+J+LE9PpM5kzbMsBD3t1t1loFB62
 rpJdDa3vNKstcMZc+mIGJOplVUEkduxS9e7rUivoqk9mmIJHTCJjENXj82zwgWwtmyUs
 d/nPhW3Rw38I5GiBY8SDKw1hvAmUHNLTa7LGtMiwiY6jOxNCsh1cAEbSdRgCoXBH0hCE
 9H+A==
X-Gm-Message-State: APjAAAV1S7MWft0Q1YxtQznT6Unl4nvh9+2Z7tz3wkX5HLkmKkZvQXaJ
 iM3Qo/yirvUotmo/AwyAWd8Iug==
X-Google-Smtp-Source: APXvYqxyl/9a9ndyMLQUorspRbu6urqXJ/bewpXlI4wYvwP42WN3gQ4wZ6G2CNwanKvMWN5KgJ7pSg==
X-Received: by 2002:a5d:53d1:: with SMTP id
 a17mr104815122wrw.327.1578394997006; 
 Tue, 07 Jan 2020 03:03:17 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm26383184wmi.44.2020.01.07.03.03.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 03:03:16 -0800 (PST)
References: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, sboyd@kernel.org
Subject: Re: [PATCH v2 0/2] clk: Meson8/8b/8m2: fix the mali clock flags
In-reply-to: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
Date: Tue, 07 Jan 2020 12:03:15 +0100
Message-ID: <1j36crsf4c.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_030318_702904_867BD168 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 26 Dec 2019 at 20:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> While playing with devfreq support for the lima driver I experienced
> sporadic (random) system lockups. It turned out that this was in
> certain cases when changing the mali clock.
>
> The Amlogic vendor GPU platform driver (which is responsible for
> changing the clock frequency) uses the following pattern when updating
> the mali clock rate:
> - at initialization: initialize the two mali_0 and mali_1 clock trees
>   with a default setting and enable both clocks
> - when changing the clock frequency:
> -- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
> -- update the mali_0 clock tree (set the mux, divider, etc.)
> -- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
>    output again
>
> With the common clock framework we can even do better:
> by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
> we can force the common clock framework to update the "inactive" clock
> and then switch to it's output.
>
> I only tested this patch for a limited time only (approx. 2 hours).
> So far I couldn't reproduce the sporadic system lockups with it.
> However, broader testing would be great so I would like this to be
> applied for -next.
>
> Changes since v1 at [0]:
> - extend the existing comment in patch #1 to describe how the glitch-
>   free mux works with the CCF
> - slightly updated the patch description of patch #1 to clarify that
>   the "mali_0" or "mali_1" trees must not be changed while running
> - add patch #2 to update the clk_set_rate() kerneldoc because we agreed
>   that clk_set_rate() should do a root-to-leaf update (it does already,
>   it's just not documented)
>
>
> [0] https://patchwork.kernel.org/cover/11293177/
>
>
> Martin Blumenstingl (2):
>   clk: meson: meson8b: make the CCF use the glitch-free "mali" mux
>   clk: clarify that clk_set_rate() does updates from top to bottom
>

Applied with Stephen's Ack

>  drivers/clk/meson/meson8b.c | 11 +++++++----
>  include/linux/clk.h         |  3 +++
>  2 files changed, 10 insertions(+), 4 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
