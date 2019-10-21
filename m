Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2903ADE211
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCuIUstysIgYuyvTGwdnCN0Ez3gmboaNlZnkWcWN8Yg=; b=E+MKqVBVYD6NOs
	J59CUnYcAJ/TRqfxxsg93unqS0tRIq1QKhmflLcdpEHNN8DIMRp5z2I+daajVr136T1tSjCrlCv29
	2+fhWU5rtK/YOl8JE348oer7sZZZ4HFyWDUrDZwbK2k+1JCr0Ikql7mZ4/zVdPonqzo3UCIvzErOX
	n0L1VR0SEOePYKyjpXpo5LVWElsoWSGx9WJxMM2ylv8RCWm2RVLQTEmQXTiL1zuPFIXgmLD7LLU9o
	Gucx5Kh4zEY7XvjBcWmqOY1xaGyI1wDyKfDV1Tw496SSiMmaePeunLbezwQswac01/m8+Jrb+7Dfh
	RhLfGdYX3OkaH1IRY7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNOu-0005F0-65; Mon, 21 Oct 2019 02:26:28 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMNOi-0005Cm-Ht
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 02:26:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id k20so6803690pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 19:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pr/rGG/mLq+ux0BA0oJ5xhvPVmVJKmTBUD+kYnaEMFQ=;
 b=XO0Y/0vRrT7a9yj8g9FT7WxMhv05CQmhcrosoxKyj55Lbbc3uF96jpPLNSaujXBnTh
 ajuMLiCmzFzIWhcP5AMqAaGDsXxFAbbsXB5gu3WM6X1uVjfPpYS7tf2GNN1JliW3E+o0
 fgK0IKdGlEUGfqRfFZ43pQntnf2HvIV3A0Ju5n3izY6orU9MfRnzZcT8WUJRuRcGXwSE
 S5VkGTfvUKJtnkDwSwNB3cpQnanNtdn6MAJiYAttX/2aERLwpINJinISMcUnf1blTKpK
 dS0vOkiIJk1gmv9bjWHF7WhlWhR8o78h+2DMZt+P1c7+mNTfNJ4UNoPre3O2ZVVMpF+G
 9wlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pr/rGG/mLq+ux0BA0oJ5xhvPVmVJKmTBUD+kYnaEMFQ=;
 b=bo3izltBMoKPIqhOiWvwrjHl4kMumeyQ6Sqsi5mi/KYrb73KC0mmadCdiin+4oizah
 dDaiooKGwxBFIR0HhQEvLH+ZQ5WxRiE7PScPiY5bt0CKpJtfNghYLuNuJy08hcBYjxKH
 lzd8PURsw/yx8PF04CFV9PVD6LjMT1U7cPssZ9WbjcSlPmtcr7PrPX5G+S76mfTebJoI
 AIoESghfIvAk7HUeVhTNNsVkyo+X9wKagAi2489iZlBs1+7Wx7jDpfOM9jvUT0dosdXM
 SiqGeFJ0bvJbj0Afo6VN+hTwKB5tleMOcluSLXK8VZy/G15lSwXX9kungKMOR/Xs6X7z
 pThQ==
X-Gm-Message-State: APjAAAWPrqarjaOZA52ScpLLE62Mui71hVSW3IZBDA2s0kvc+Lbr/KD0
 T1+uSuXUzxIOc8B+DTYPS9NAtw==
X-Google-Smtp-Source: APXvYqzds7k29oQ4eyX6PpIwq/UPWGsW2c53kCK0M4hNt/TssOTMKgAXPae6bLblBUYndtzyEcCYgg==
X-Received: by 2002:a17:90a:ba86:: with SMTP id
 t6mr26640303pjr.56.1571624775229; 
 Sun, 20 Oct 2019 19:26:15 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id v4sm13698783pff.181.2019.10.20.19.26.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 19:26:14 -0700 (PDT)
Date: Mon, 21 Oct 2019 07:56:12 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 34/46] ARM: pxa: remove get_clk_frequency_khz()
Message-ID: <20191021022612.ckfqbhsulbuetomd@vireshk-i7>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-34-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-34-arnd@arndb.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_192616_596029_E0EA5930 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-10-19, 17:41, Arnd Bergmann wrote:
> get_clk_frequency_khz() is not a proper name for a global function,
> and there is only one caller.
> 
> Convert viper to use the properly namespaced
> pxa25x_get_clk_frequency_khz() and remove the other references.
> 
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-pxa/generic.c      | 15 ---------------
>  arch/arm/mach-pxa/generic.h      |  1 -
>  arch/arm/mach-pxa/viper.c        |  2 +-
>  drivers/cpufreq/pxa2xx-cpufreq.c |  2 --
>  4 files changed, 1 insertion(+), 19 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
