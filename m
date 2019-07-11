Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A73B65A34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stxYMR07/NQvOpeZhav3u9iQ9wbFPJjmyF2wyOGszns=; b=t8ayNJ+haxGbwO
	zQyuUmcdUezkuEpIaiMp9lQ2bK3dd4/3NQyRAH7szuYp8cK4EoDwo1sjgUuFlhbygNy0AJDaInsWj
	A6DTzoCfWe7BiBeVVEe2AnpDKtsIug/onjbVdAIH16oxXhjUuCtWtGOj0/XnXf5oszJHJTmFIzfEA
	fOcPDHMep+HlQH6XBpcuTQvaP/i2ShY18prz8jvkDkeTpEKk8/B7toiRaq9Rv1zOuvFlZkBVVgTch
	OOYOUhI/ATexVRr5pzsNrGfB69US2L+htaV4jBmzV7hh8AIhNIU9n4RF3xPIpZQ3WvHfy+sVSPs4V
	Zms3vQg+o9GXcXnh9otA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlanL-0002bN-RM; Thu, 11 Jul 2019 15:15:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlan5-0002aq-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:15:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so2897112pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xSAfzihkBVubvwbGX9ZrlE6NTtzUO3EOukswRzxGahk=;
 b=VFbVfXvYNAmrk8fEvvRWt5qmnjJGk0vBhLfcOJ5/cL7y3yFfU4LztkHnr7wHWcZ/Jv
 VSNlf6h+TrpDM0KLVXdxI1373NscxYlyHtnQd7wW0W8Y3rbtGCo3w8guIQdXVhdB8Ts1
 JOzHxHgsiXG6VcEN4oQkiWDLb7QnlGTmPBCzY8cMs0mfQzu3qwPhM2eM/GU9d7r/6AKl
 yAMETZcXypWr0loYBlDTq4K336w8Y6ELlf8B38wdd3glvHhnUBX7LfJaB1tUosr0s+i8
 GXzOju3i50puudzMmvEq/oGHcU3QBG4TSThxvls3piC9D/nG6E8V4iZmWXkb34ToNURI
 2TjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xSAfzihkBVubvwbGX9ZrlE6NTtzUO3EOukswRzxGahk=;
 b=rSilxoL/u3swMRtsaWcZ7fKQxOnyuudTXPDzlrmnborpa/+xWNEUhZQcXCJVYwu47D
 LkXsyTk131XmrH7ukUWChvcImu3AliItbH5nWc0PgHuJkGVvNfMzlvXWENobaYBxjqZJ
 VO+2DWvPRrdyZGkizScW4Wt7pNcYRLHfdhnTziyCObSx6L3YrKJfm9EVQzEKfu9R8fe/
 6RPSoXmGaqsbrf443DnwZmVx6zolRzU8ImAgn/1aqI+S2AwLeiUbJmFx2RWoC5o7LsC+
 NGmPY0H0CcsaQPIS0CCgeBX62XqDosstzpCJnnfuGaC1wM8sHwzslzppWn4yjh68knai
 PI0g==
X-Gm-Message-State: APjAAAUoN9A0dqaHvpVBF68K+hs1U/DfX1tbZHCu6GNH+0/uAIgt6YtF
 z2AXyc1qqC1YLmLvWafRA6LmBQ==
X-Google-Smtp-Source: APXvYqzmMtkuBfKjFvauyK+dpeSUQ1cBgUt9Vc22gTwPWrIDaxvy+lhE4EouscliQ8F41wdlpdEGrQ==
X-Received: by 2002:a17:90a:7d04:: with SMTP id
 g4mr5476744pjl.41.1562858122182; 
 Thu, 11 Jul 2019 08:15:22 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 64sm6083195pfe.128.2019.07.11.08.15.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:15:21 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:16:31 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 08/14] clk: qcom: hfpll: CLK_IGNORE_UNUSED
Message-ID: <20190711151631.GI7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-9-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-9-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_081523_408506_D0EB6799 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> When COMMON_CLK_DISABLED_UNUSED is set, in an effort to save power and
> to keep the software model of the clock in line with reality, the
> framework transverses the clock tree and disables those clocks that
> were enabled by the firmware but have not been enabled by any device
> driver.
> 
> If CPUFREQ is enabled, early during the system boot, it might attempt
> to change the CPU frequency ("set_rate"). If the HFPLL is selected as
> a provider, it will then change the rate for this clock.
> 
> As boot continues, clk_disable_unused_subtree will run. Since it wont
> find a valid counter (enable_count) for a clock that is actually
> enabled it will attempt to disable it which will cause the CPU to
> stop.

But if CPUfreq has acquired the CPU clock and the hfpll is the currently
selected input, why does the clock framework not know about this clock
being used?

> Notice that in this driver, calls to check whether the clock is
> enabled are routed via the is_enabled callback which queries the
> hardware.
> 
> The following commit, rather than marking the clock critical and
> forcing the clock to be always enabled, addresses the above scenario
> making sure the clock is not disabled but it continues to rely on the
> firmware to enable the clock.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>


I can see that we have a real issue in the case where CPUfreq is not
enabled and hence there are no clients, according to Linux. And that I
don't know another way to guard against.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/clk/qcom/hfpll.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
> index 0ffed0d41c50..d5fd27938e7b 100644
> --- a/drivers/clk/qcom/hfpll.c
> +++ b/drivers/clk/qcom/hfpll.c
> @@ -58,6 +58,13 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>  		.parent_names = (const char *[]){ "xo" },
>  		.num_parents = 1,
>  		.ops = &clk_ops_hfpll,
> +		/*
> +		 * rather than marking the clock critical and forcing the clock
> +		 * to be always enabled, we make sure that the clock is not
> +		 * disabled: the firmware remains responsible of enabling this
> +		 * clock (for more info check the commit log)
> +		 */
> +		.flags = CLK_IGNORE_UNUSED,
>  	};
>  
>  	h = devm_kzalloc(dev, sizeof(*h), GFP_KERNEL);
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
