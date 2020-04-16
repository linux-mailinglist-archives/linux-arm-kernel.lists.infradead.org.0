Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CA41ABDF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xmCQxYfZ0cBYcxDOPGEZ/dxTImRwbqbqvi8xNNyt/Go=; b=Lb5mMWNcJ6paxONjCwcs5E08Ec
	Is56Jr7Y9zS1S1Wso8YpIFaWfiXnhmEhTbLa+Xp1LQcD1hqIjj/7xLvjY+V10aGkNUSgWZo6Q6Zse
	kT9VbW4B3KhOyCP9RB0GdXETTvo+i/qXINzw4/M18nw24YTTxXQEs7zvay2S077g4qLXJDqmzhaOv
	olsuKeEF8o8m/+e/zzbUrle79Z1JI/ZxN5TN2eMgE6ERPHq21o5MTvjb9eo60jSE/uTigu7DwAmy0
	cZokp1QD0SJTqR1L88N3yNBlslVuAldDPUg9Nd9Z0J9DWsNYz8vw53xGHb//iZtKL9avUMAqtaxlR
	GlDhXMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1ow-0004ww-SY; Thu, 16 Apr 2020 10:32:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1om-0004v0-9J
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:32:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id d77so4019957wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 03:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=9L5k3Ln1Qt7W9TpURaqzpjRy4n7lxiu2UCwSIpKQOFY=;
 b=Ryq1RWfipGTXPSDerCgXOnwVBcBk+SES+dQi/983JsKTieI0hUpxVt0XEnAt5BZtc+
 3j0OPScJqjuBIE/e8RGOCz2qxvAOsR5mXaTJGLhb/2duJk/L3WjLQ/RFj565RNvubZUj
 hrSaYRFzGzIrj5sKgXIknAqEaWAnJEKXWJhEzJV60auxxyKw0K6wI8LTl2AvhZqxAIzs
 uUb+EokUxmU9Z5axhY1kITo29sfTFoPdQv2b6GKfiFiAtbS7xobLEghD53lOPZN2TpEu
 nZmpRVx6DspQ/ffW9RGXXgnbX7+3JVYh3AZBYzIMNW5yjBNXwQzkQJY9vONcYn4HDTT4
 WFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=9L5k3Ln1Qt7W9TpURaqzpjRy4n7lxiu2UCwSIpKQOFY=;
 b=pFKQv49diq2tYo3Na/oie+1zxgpS/xKWqglGXc1A+fF1ET03LYp3U943my3sY2gOtK
 6bypqdmZ1kHS931rgRJCQ2+D0muh/xB0B4k33/0MIymb+aZadR62TbIpIChdIsdhKPvJ
 0IhwWz3Mtab1XJcTVHIknR9evQ1GzRapFq1h2QhXE9PHaRmoolKSQwu0ExyG4uFjFBe1
 joFf35FzKQsEF1luhvqk1cIKLa3JU823CZKYNUvGRjfiDwCUh8N6mtC9oP8o/pid12oY
 hwZfgUUCv8lAzZnMpacLsAHmyy/hmNa2mpF89lxzdBqhPJQCXqxTgIoa56ZG2Sqd3aP/
 c/lw==
X-Gm-Message-State: AGi0PuZG6eNvhLkizSVSvh76asYlNd5q8rflWb7ZGNc+XzeMNhXHTuiT
 XWjEswZlVd4LQvA3IJ7OHFW4XA==
X-Google-Smtp-Source: APiQypJclY5jrpfvL8yZKMalQnkMXP+jCZNrFkQ3BCEqz3+ltwYSFd7LZVCdQLzaOSzpaZBpIvP+Cw==
X-Received: by 2002:a7b:c181:: with SMTP id y1mr4442183wmi.83.1587033142678;
 Thu, 16 Apr 2020 03:32:22 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id j135sm3021115wmj.46.2020.04.16.03.32.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 03:32:22 -0700 (PDT)
References: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
 <20200414200017.226136-2-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/4] clk: meson: meson8b: Fix the first parent of
 vid_pll_in_sel
In-reply-to: <20200414200017.226136-2-martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 12:32:21 +0200
Message-ID: <1jblnrbu16.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_033224_340254_9DA1895C 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


On Tue 14 Apr 2020 at 22:00, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Use hdmi_pll_lvds_out as parent of the vid_pll_in_sel clock. It's not
> easy to see that the vendor kernel does the same, but it actually does.
> meson_clk_pll_ops in mainline still cannot fully recalculate all rates
> from the HDMI PLL registers because some register bits (at the time of
> writing it's unknown which bits are used for this) double the HDMI PLL
> output rate (compared to simply considering M, N and FRAC).

Have you considered adding a fixed_factor pre-multiplier, like in the
gxbb driver ?

Seems to be the same thing

>
> Update the vid_pll_in_sel parent so our clock calculation works for
> simple clock settings like the CVBS output (where no rate doubling is
> going on). The PLL ops need to be fixed later on for more complex clock
> settings (all HDMI rates).
>
> Fixes: 6cb57c678bb70 ("clk: meson: meson8b: add the read-only video clock trees")
> Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/meson8b.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> index 7c55c695cbae..90d284ffc780 100644
> --- a/drivers/clk/meson/meson8b.c
> +++ b/drivers/clk/meson/meson8b.c
> @@ -1077,7 +1077,7 @@ static struct clk_regmap meson8b_vid_pll_in_sel = {
>  		 * Meson8m2: vid2_pll
>  		 */
>  		.parent_hws = (const struct clk_hw *[]) {
> -			&meson8b_hdmi_pll_dco.hw
> +			&meson8b_hdmi_pll_lvds_out.hw
>  		},
>  		.num_parents = 1,
>  		.flags = CLK_SET_RATE_PARENT,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
