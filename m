Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158BDC0D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 23:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOyBXaFXNviqJQdrfpJisCzifHj4Caozn4zrILlh9lg=; b=ApMKaIrC1ZILMN
	w77mk1RHqjar6SUMYzKMP3qrDl7LuiB7eO28xzpRoIvh3YQHsiIFdXfGI2v816utQZe4Q6dhKYPVb
	mp+lkvE7wSEjM5JjMO6WWV0kDS0Smfeum4qsxb1ZQ5Y6CRdAIZXMlZIr3XhXEZ2os3fX58lYT35az
	DvbKuVJgJLXU+L0pBPJ4/jWWyyB4E0FQYv0Gh0C80TEsKZUGO5mfPRfFoLwsBEgRAuKBaE8n2enIz
	ZVB3ZjDcRWEhfux+/rY0jwy8Dm157VmajGCLGQnJHFhkPsfIXYkTiidFG1Mj3W87wDowQf+TJPJE5
	frcq1QWjWuZAMPUwJ27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxXi-0000iu-8l; Fri, 27 Sep 2019 21:12:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxXa-0000i4-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 21:12:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so4074290pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 14:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MT3rEIfaJgpzvHmFM2pWeqN2XOEfjsN3Ht7YF+hthq8=;
 b=HWrjXwmyGQrWIktNn2lCfS/WWNp3jM0GJkqLaICHIq/FPWxfdSodtSpyQmZZZSqYKl
 gLWJ5uiWHrbfp7XRrlbm5tcLBi0mF8wxUQGVBvHdC+YrHRlTUWjnN/4obhqljgrPTG3A
 RZtBAyLun1kMIfwj+XzanCaE7pfz5X+1U1DEEWl4a0HFqU4UC+8fia7u1zVDsy87zqmM
 aCnZO4WYMlXyBvwTDY5YzycIIMk8vbQav6mKwEUaLZN6qC6Wase6y5kT8waFE/KYHjR2
 sI+xNuy9ZVIQOG/d3gqTWFx/1AYoGsrnH4KQyKPBRTWgKQPqX7caUSWi/ZiuXFXkwHDR
 u2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MT3rEIfaJgpzvHmFM2pWeqN2XOEfjsN3Ht7YF+hthq8=;
 b=OId+X99opxaTy4wnXXX5jvJOQTjMooI1tt6Nok9AwVQQkk4lSseuqyRrUfWYsSEOVD
 07n1/QEyv9ebjkjnaoXC7UT2A25GUK21zLmVXpiF/jVdM+hKMlHqfwILEETrFErChPge
 kr5llmFRAEo84Oer1GiGI6LF6B2C/rBp/Xc2DNNEjwwCbUIjuuZpxGWKShdg/SqjdVyW
 Fvf+TSAAvE9Hp8lesWLWUnL8bMWKPNyTG+jlxUXviW3h2pzLXTQVk+WQPRq8TRmvOlUz
 7nALVvHaHsKi7QAhOvoeqifUy1Olkay9Zg5b2Ar2pMYrbffKkvX7Jyv8aUratC+RXKI8
 jS7Q==
X-Gm-Message-State: APjAAAUFFotjCGP9jDthJtGYrlT7rZLvicfENRdYG3f/hdw6h3oVIvyF
 oahEUZP04tbN3wkqlLGU06E/1hzktPb3YzyrBykbrA==
X-Google-Smtp-Source: APXvYqy8O3KoXcSTxHqiytQM1iXWb+WWT9oKskcwqzyLQpgWA96K2vO/7MEIdTwZ75zGDyeYqjyajaWRaH5XxPonWcc=
X-Received: by 2002:a62:798e:: with SMTP id u136mr6912504pfc.3.1569618754157; 
 Fri, 27 Sep 2019 14:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
 <80dd26ecf7fc82c88dc378d78210df5dd4138812.1569569778.git.Jose.Abreu@synopsys.com>
In-Reply-To: <80dd26ecf7fc82c88dc378d78210df5dd4138812.1569569778.git.Jose.Abreu@synopsys.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 27 Sep 2019 14:12:23 -0700
Message-ID: <CAKwvOdntD5HNb4Gg04YN7iZwvK3CB4enq4ZPhUM-Bd3huvR2pw@mail.gmail.com>
Subject: Re: [PATCH net 8/8] net: stmmac: xgmac: Fix RSS not writing all Keys
 to HW
To: Jose Abreu <Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_141238_479467_E4434CA1 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 12:49 AM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> The sizeof(cfg->key) is != ARRAY_SIZE(cfg->key). Fix it.

I think the warning was from -Wsizeof-array-div.

>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>

I may have reported the kbuild link, but scanning my email, there's
also a report from
Reported-by: Nathan Chancellor <natechancellor@gmail.com>

> Fixes: 76067459c686 ("net: stmmac: Implement RSS and enable it in XGMAC core")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
>
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> index 6d8ac2ef4fc2..4a1f52474dbc 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> @@ -533,7 +533,7 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
>                 return 0;
>         }
>
> -       for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
> +       for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {

cfg is an instance of struct stmmac_rss, which looks like:
125 struct stmmac_rss {
126   int enable;
127   u8 key[STMMAC_RSS_HASH_KEY_SIZE];
128   u32 table[STMMAC_RSS_MAX_TABLE_SIZE];
129 };

yep, LGTM. Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


>                 ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
>                 if (ret)
>                         return ret;
> --
> 2.7.4
>


--
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
