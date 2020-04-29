Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395451BDAEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iQdhpDzS4Z38x34cE0YPW9DbHwcOHMQO2/oSfyg58LM=; b=HR/+2JvubUaI6Jm9bqvIpvl5Wp
	eg4tKCW8L9qetS/3LqvnGY7wY9GeH2kPlC9i4Y4OVWwajrRiJ3X7qBBO4zKIjH3MED1DG4fsZSAWa
	Ndtj/sbAgSvbL+8sIX3uD8DqQ5KbqNtkg1sdMB1Z8B22Nz3vngt9FeH1ljTp73gkKW0KLw9yMvamr
	wKPFFx2158INvuERjTtDMMWuc56Epo8sm3Uhz7h8kYW3Z9YWLWnloGEYJ6X3ddP6qqgS8kNvls5l8
	ehkqzdkA1mi3mY4PmInTBQ7s1pNAg8GWevNedAuBA6cqhwGOtWybbBjj9BaJln13J5XPGXlSa0FmT
	YyaglTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTl9X-00034d-IO; Wed, 29 Apr 2020 11:45:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTl95-00032p-B2
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:44:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id b11so2123644wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 04:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ycL/xol5LXc1oCnHf2lKepLV8YI7R5oU0gAskKNmHEg=;
 b=m8aseD4BGSL2eeyIyCCtWjiVzInZjA9AOhfIWWHODJqtsZn3u8IiZm78LhL6xbNLXZ
 egBMXWzyS5tpOXxLihcfxqD+Lb2ikPScf8qTirnKlsO3Iw4So/70aOvCDL9XG3pDLZTD
 MFyA6G+W+2lloNKnkwXdiIl78GUA8HPcqZgVV6JmrVySRDyfhw/Oe1KUPW2mVSo671o2
 l6HNwZkudieQaqswTiPD0p3wq/2WHsKUqLgcnLjh5W7gLr1QAfVXaBUGD/iSvK7doL33
 o3T/OEEmwDHnVzQKZod20K0v7oHIk64Ihl2XPtOQ7zkmzeHlpneKKQu2dNVhRie6qCsd
 0rCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ycL/xol5LXc1oCnHf2lKepLV8YI7R5oU0gAskKNmHEg=;
 b=kabGYelHX7oodlPYldUKWU6pTnAv0NwxyPGcDABxQcfpQnzZdGj9aZbCOLttTihxDx
 sE15Uwc2GJkxGZ44i5fUeGoZjtMLUa7pXiVA9iozFY5JJ/vMRNfdX5ojDu437Iu/O7W+
 JQsJ3m+zCb7+uZAiH7ii6eNsSdvvhjOOAGbx47Mh9NjpO7oMJY9l1DZfa0YlviGDiIvj
 lRcMOg16EhJhTaGG5CBJaQjy0yv6LIF8ZarW0pcYVdiHl+hHYP+tUBHKpsBNGZWPUa7j
 e4EDEHhStJY8VRgfa+Xwd4JfPgCuZeh+7YIDDy2DH2xqabxxFR9l1VDFSQvOIx6/wJ0T
 vhRg==
X-Gm-Message-State: AGi0PuYo+MXiuRY4dhTrkHMsnMq1byCCXg/2EqngifFCVSCz/T+iAzSk
 188xiVWjKNQfMEA9F0iFm2mK4g==
X-Google-Smtp-Source: APiQypJh67PJZJCKLabOQpyBwAm1TEQoQ/CjhAvqt2E5lBGcLL5HQluaH1NaN2U1R8Ksxp+nn0C5Xg==
X-Received: by 2002:adf:f1c5:: with SMTP id z5mr38733111wro.100.1588160693203; 
 Wed, 29 Apr 2020 04:44:53 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id z8sm28289847wrr.40.2020.04.29.04.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 04:44:52 -0700 (PDT)
References: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 0/4] clk: meson8b: updates for video clocks / resets
In-reply-to: <20200417184127.1319871-1-martin.blumenstingl@googlemail.com>
Date: Wed, 29 Apr 2020 13:44:51 +0200
Message-ID: <1jr1w6iki4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_044455_434715_6D4C139C 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 17 Apr 2020 at 20:41, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> This is the first batch of fixes and updates for the Meson8/8b/8m2
> clock controller driver.
>
> The first patch fixes the video clock hierarchy. Special thanks to
> Neil for providing a lot of details about the video clock tree!
>
> The second and third came up while testing video output on my EC-100
> (Endless Mini). This board is special because u-boot does not enable
> the video outputs like most other u-boot versions do. However, this
> is very useful for development because it shows (the hard way ;))
> where the existing code is buggy.
>
> The last patch is a small improvement for the VPU clock so we
> utilize the glitch-free mux (on SoCs which support it) and avoid
> problems by changing the "live" clock tree at runtime (with the mali
> clock this resulted in system hangs/freezes).
>
> In my opinion all of these patches - including the fixes - can go to
> "next" because the relevant clock trees are still read-only.
>
>
> Changes since v1 at [0]:
> - updated the description in patch #1 to clarify that (it seems that)
>   there is no fixed pre-multiplier for the HDMI PLL (like on GXL for
>   example). Spotted by Jerome - thanks!
> - simplified the logic for the active_low resets in patch #2 by
>   shortening the if ... else. Thanks to Jerome for the suggestion.
>
>
> [0] https://patchwork.kernel.org/cover/11489079/
>
>
> Martin Blumenstingl (4):
>   clk: meson: meson8b: Fix the first parent of vid_pll_in_sel
>   clk: meson: meson8b: Fix the polarity of the RESET_N lines
>   clk: meson: meson8b: Fix the vclk_div{1,2,4,6,12}_en gate bits
>   clk: meson: meson8b: Make the CCF use the glitch-free VPU mux

Applied, Thx

>
>  drivers/clk/meson/meson8b.c | 105 +++++++++++++++++++++++++-----------
>  1 file changed, 73 insertions(+), 32 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
