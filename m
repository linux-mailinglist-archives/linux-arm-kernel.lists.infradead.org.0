Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EAB91B05
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 04:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQ3Ps9hqiLhWSITHGEY2h9SUbM1cjOlTQgsJHe4Yjd8=; b=ZC5zHKA81tah+p
	FHWQZyKnCh3JNyLjvaCvxo+2+gWohk9lyoNACEDgcr5Ne6Kp3DsDAy7VPmW22i+kPtdaQ0ldZsHf2
	b+IBDNA9KeIiXWT6BNRrO2sBFvtHXeMCnHFeZvFy+kSBmRVS7eqdgA+A9M/zDMblF7rSCadXl1IV2
	DZlyiznoL/Vm9eR8jLBSDSSjGwJMwTZgA9wZBardLjNvhzRXiYGXmvRTMdbMrTST6dDs9HPu/If49
	sUNmHpbi+/0ezQNLV4kMYXkXrVNsXp64bhOWRz1v0G+LyFDzZladSsx1bZ3+4jFKrOcGoR2un1eWt
	c6oFzxu76ZiNWFbrVjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzXIS-00070h-FV; Mon, 19 Aug 2019 02:21:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzXIE-00070O-2f
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 02:21:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so182360plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 19:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qfYeBrzqOCPRbAe0pH/EnZQJIAn9XVbtwSzrmk2jdBg=;
 b=qLKes6Hago17zpLfMDPt+c2OQICgyL5TOJe/NImEsKiFOyFi2hKnHGlqPa17Y9R6R0
 10mSZy6G4KtzroTNnEYfNx73PHe9DGThJZYLRUcabz95eKxutS7l/tQubrL2aHrBXCEn
 w4r1JEVEhOldhGXagrL3vADQ/dulzzHfwy6QWSAGovJBZ+gfsvO3JF97rHpPhiaZWWE2
 hsfWY0w3MhLVtguVB+e5LAW0QnsiiOZa2krUl4eVu1p0ZW+PwyQ9en4vyuqgXXZL5Fgj
 WJ9XVkP5d3pEiYoNl7uJ2RsROmG9Y+5kE68c2m42ZdOYCoVFJ1EYYV95jGxoOnJOlDxX
 HSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qfYeBrzqOCPRbAe0pH/EnZQJIAn9XVbtwSzrmk2jdBg=;
 b=KI1H05XI2mE8HsQH2nFGFRU/jT/mu68c0T5lpC7B6I7Yx/pvhNKagkBeShuD8vYXt/
 J5Y7U6JXuhaklIL6nu+pC4Bj6r0lxSdXc2tx495V1i+uZaQ+Y6/2/ZdQ0idZrkMxuvnn
 dgqdv8cG8RjJ2KPwyRXEy6KnK0lx4Dxy3TmPJtAos1pOi+zNmRwr3GAwBRYv5NojkNAX
 90QBHrv0zIJuX0xvZEo6OHDe0DCZHmVhEQxjKdv1j++m7Lrk0DI1RjefjiLpUpHpmqgI
 Gguj11AVGdJKx1W1009nGDHQ4OadNDKhJKW84QqNkAT8066y1Ow5F9JIicvmTDZ1RKbE
 NMnQ==
X-Gm-Message-State: APjAAAUAg7YgSfFjqc+2m7/97dY10Pmoms82309PCmPw2CWQH7XAf+RC
 b+QRM6KD/qiR8tcGPGvPF9Q54Q==
X-Google-Smtp-Source: APXvYqxdUTgjI3vU7RPeKEZyZugm05SkqUttUbintank9MC7jvaxmAGcmtlcUJdxpp+cUyrtgB/ZWw==
X-Received: by 2002:a17:902:45:: with SMTP id
 63mr20259916pla.264.1566181268365; 
 Sun, 18 Aug 2019 19:21:08 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id n128sm13333302pfn.46.2019.08.18.19.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 18 Aug 2019 19:21:07 -0700 (PDT)
Date: Mon, 19 Aug 2019 07:50:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] clk: spear: Make structure i2s_sclk_masks constant
Message-ID: <20190819022038.wkmod5qezx55e2gy@vireshk-i7>
References: <20190813085714.8079-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813085714.8079-1-nishkadg.linux@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_192110_186491_DD461D39 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, vireshk@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-08-19, 14:27, Nishka Dasgupta wrote:
> Static structure i2s_sclk_masks, having type aux_clk_masks, is only used
> when it is passed as the sixth argument to function clk_register_aux().
> However, clk_register_aux() is defined with its sixth argument as const.
> Hence i2s_sclk_masks is not modified by clk_register_aux, which is also
> the only usage of the former. Therefore make i2s_sclk_masks constant as
> it is never modified.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/clk/spear/spear1340_clock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/spear/spear1340_clock.c b/drivers/clk/spear/spear1340_clock.c
> index e5bc8c828cf0..9163bbb46411 100644
> --- a/drivers/clk/spear/spear1340_clock.c
> +++ b/drivers/clk/spear/spear1340_clock.c
> @@ -335,7 +335,7 @@ static const struct aux_clk_masks i2s_prs1_masks = {
>  };
>  
>  /* i2s sclk (bit clock) syynthesizers masks */
> -static struct aux_clk_masks i2s_sclk_masks = {
> +static const struct aux_clk_masks i2s_sclk_masks = {
>  	.eq_sel_mask = AUX_EQ_SEL_MASK,
>  	.eq_sel_shift = SPEAR1340_I2S_SCLK_EQ_SEL_SHIFT,
>  	.eq1_mask = AUX_EQ1_SEL,

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
