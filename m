Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93977B16
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 20:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeHRyEAn58mziPlifyyc3Jxof67qejD97YD+xQht18A=; b=BJRWa6SdO5XgGj
	9AZJ8dPG8/Z8d1wTpt8xEPMR7nLiMD9ichyeTLbwWA4PqW9jW2U+0eTHf49//DSQR5i4N0wIEXMN0
	pH+m9P4tfjBtxgJmDIkkhxAk4YyrD18xGAAbgemLs3IZf3ppDmEVimcPKNaywaTifkVyLZBP8l8c3
	USfwPwDAMbYR/RrIfZr5c65pVUf0orrXnCjJOkrIK5P4dkp1IB7VDn2WWRHA+Z7EUcewFq7GZkeO8
	SI8n/UryOMtvedefZgfCHIqqbTivC4JDQ41rnCEaDq87IYA9PTY7dO0uUI0QmUV7mg4Zx8f3vRwm7
	fca2xg9yYoV754a0SHDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRWI-0000OJ-8i; Sat, 27 Jul 2019 18:34:14 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRVz-0000NF-6I; Sat, 27 Jul 2019 18:33:56 +0000
Received: by mail-ot1-x342.google.com with SMTP id s20so58588770otp.4;
 Sat, 27 Jul 2019 11:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zykk+16i/VaVO7vGCiEbOdwpwXy1foVL2dprzKW3VcY=;
 b=trJ4em4+Up9wf1cWi1zJIcTeKiL7VU8V9eR5/totF/SJ0sOa2b18vWkoRsYUxxjzXZ
 bpbUjXFrViU1uLaFI1bFyaXG3jXnsd/VptCVzoGhYHUtyPKCfE7qY3mRHhnJjQUQgps5
 QH1MDSQ6e6BO3L7fA174okRYNj8wrkebTPaGzABuPmG1O06GVUYNkIk5gwhb7aobsEL4
 bJtYvldv5e5lbou3rE9WXAJiexTIhjSPu6N+jbiglnMbX4vli9Yss52Y+bh0jzdDlZ+q
 HeyajiZSxZuhogSB1u+OMqPLkh3JkyBsJxjA/RweVlQm6ry5uxMMhzqMmYv0EUkUfY+d
 h0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zykk+16i/VaVO7vGCiEbOdwpwXy1foVL2dprzKW3VcY=;
 b=mzqLVHNtMBKyQBCG7HOVGvYO/31EwS4NPR11yRmTdmvbpghAbH2MBfgZd6GIl3SbqA
 irSBb2xtmu7VpYcTxd57FwHFJRTzp4+3t6QNLFuGTvZnPZBWp21ndN0rjMCIp2biuzZA
 962mKEKLrO1W8Hj5oIFk3a0DNOBJStuR5y9BeUAn3WHehqvdukk76eusm4hEgFSAt2Il
 fEc7DdYPRTc2kA3cntmrPZfC0VthQwatYlyY/ECgdhXYfzwC7MEh5XNhcrmESXn4qU7O
 RpPfsFy8iwU3JS91kDIavtJMTb+oyZ3oSDkpzQa874gSV75+9bWNlVhglX0+VV6o1Jas
 DNKw==
X-Gm-Message-State: APjAAAW31F6wmgwUcUE0iL2EF7aOMb3LFhwiMAh4P+5n+UCr5PaEXKWd
 a/v9aOYSbSS07ZxaC54Fxgl/VY30LlvJnhYcxztBU1Pg
X-Google-Smtp-Source: APXvYqyXx94WA5EdJdcpHMg/R/oEWO8JMmb/K2pzFqcu3/J8K/4V0sX76FoWK0bUo/XsHICC0CqCHvBxvgMmF7RF9t8=
X-Received: by 2002:a9d:39a6:: with SMTP id y35mr11080912otb.81.1564252433247; 
 Sat, 27 Jul 2019 11:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190725164238.27991-1-amergnat@baylibre.com>
 <20190725164238.27991-6-amergnat@baylibre.com>
In-Reply-To: <20190725164238.27991-6-amergnat@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Jul 2019 20:33:42 +0200
Message-ID: <CAFBinCC3D87AxTJ_SpATWM8BcKAtLPKjc22mF5GPS+=-u0HC0w@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] clk: meson: meson8b: migrate to the new parent
 description method
To: Alexandre Mergnat <amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_113355_259272_0A410F92 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Thu, Jul 25, 2019 at 6:47 PM Alexandre Mergnat <amergnat@baylibre.com> wrote:
>
> This clock controller use the string comparison method to describe parent
> relation between the clocks, which is not optimized.
>
> Migrate to the new way by using .parent_hws where possible (ie. when
> all clocks are local to the controller) and use .parent_data otherwise.
>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
thank you for working on this - everything looks fine to me, so feel
free to add:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

and on my Odroid-C1+:
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

(I compared the output of /sys/kernel/debug/clk/clk_summary before and
after this patch and it's identical. CPU frequency scaling also still
works)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
