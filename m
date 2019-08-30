Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47CA31C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux1GLemHUzvsXt7EMRdymHTe/RsbQf1ChotXnNLPF/E=; b=VDfpH9c8pnn9W0
	TuZksNIEfnZOOovmwPJbb7BTEWFlcIDBdzX8E6SAk7iwtPo9CGAgkQ4mqRe8nAqhHUOsX2Wry62Is
	jF0yt4e4eGmhTDlE/wpkiZErYaznP9OmftmNvon3u4JOMdDmMym+J99JwCNIAPJZz8hMRqT4aLxuX
	zAxAvhCxxu7dgFNOjuEfIvWYsG9zBqWiC6u+F9UBbzS20P+xXNY+/uhY/3Fhk4Ph1100GC35z+5dV
	GzdvKOIVM7GjbIZjwAlnifIuIw96axAtIhBJcm4Gv2pNiKRaMX53yN7QDXpoSjlrwGUtMA7+v8Wl6
	gET791spXb7tps0FFVbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3brO-0006Me-FL; Fri, 30 Aug 2019 08:02:18 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3brB-0006MD-Nb
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:02:07 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y62so4216306vsb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 01:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zSReTBR+21k+gQlfPIxdDjT6LtoW1ARQm0j/COjHJ9U=;
 b=qp8yU+LPUcX/mAFN/tdWTbxE8ZDUp2Z8cCy/SKuHHj80GZtnQ3tQP7JQDmbyIBAWoy
 ZePqJezkftPXgjaRJ7H2pFtF5ZnZOQZy4N5kyyN4o2HhEhsa410M5iWSyc0l/Ynzaktm
 YOSy3tWjasqTapLStwH3UrO5al31vEt96KXMWgXhv2YXTynO/2BcGjuL+2uj+TX6vHDJ
 UVwmxzPe4wEYqJUHp6HIsvv7G9ymY37avF2pBFZHYsAo8M6r54t/hRz3V8vqsvpuFx4x
 JuYF9njW9ZhqiqYVZqFshkjVEd+qOApUqzk1gOe47O82ybxuy80NG/F0a3bmeO2YRwQJ
 8eEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zSReTBR+21k+gQlfPIxdDjT6LtoW1ARQm0j/COjHJ9U=;
 b=dRsXBLtjVx71R3/wuUHEAbT2U0wee6SxNUaO5A/tDL/Ityr94Z2YwUGREiExZzuxvl
 TfmSuAQW89MJ35j7AzXNu7x/8vGtGDPCBJaqXDJL4qV/ynn3c8lwBPD3htYa2g8T+CwE
 n94HD4LD7/vfeC7jCNrYmzykGxOW13XGVvRluhkGPdc/bXZNmiyUCGEu9GLshkxzqAOs
 mC9rXFS3V3LVqUW5I0nSF0PepA+rwDFOtA0HhYJjTO1NhIiMwGt3fJzg+4u4+Uzy/CF5
 r95jPZxc6wxwvXzNdtDloEoyNEqFtz3jujOxP75fmAjt41w1thS1jEAnphAfPX5vsO9V
 9r3w==
X-Gm-Message-State: APjAAAVw/dAzJjmwtkqTAVLE2PPw9WJ0DRS7ydlAV/AS+Hcsv68Zw0jE
 sikE7ElBVR/+DDZfhmjgle9BHqD/2UH7j+lglNGOiw==
X-Google-Smtp-Source: APXvYqyOx0hFYInMfmpsUnvpCKFGXIHa/+Ahs3V3CNXSh7WcogIeV6A1MSfhHPGxYA3SEvRTgK+RozQPc8r1yR8QgSo=
X-Received: by 2002:a67:983:: with SMTP id 125mr2338906vsj.191.1567152124259; 
 Fri, 30 Aug 2019 01:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190830074644.10936-1-andrew@aj.id.au>
 <20190830074644.10936-2-andrew@aj.id.au>
In-Reply-To: <20190830074644.10936-2-andrew@aj.id.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 30 Aug 2019 10:01:27 +0200
Message-ID: <CAPDyKFrKXfB1F2dh63KrkCiKGbmbBWaAM16vJqtQncnF4YctQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-aspeed: Uphold clocks-on post-condition
 of set_clock()
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_010205_773928_FF3692A1 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 openbmc@lists.ozlabs.org, Ryan Chen <ryanchen.aspeed@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 at 09:46, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The early-exit didn't seem to matter on the AST2500, but on the AST2600
> the SD clock genuinely may not be running on entry to
> aspeed_sdhci_set_clock(). Remove the early exit to ensure we always run
> sdhci_enable_clk().
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/mmc/host/sdhci-of-aspeed.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> index d5acb5afc50f..a9175ca85696 100644
> --- a/drivers/mmc/host/sdhci-of-aspeed.c
> +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> @@ -55,9 +55,6 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
>         int div;
>         u16 clk;
>
> -       if (clock == host->clock)
> -               return;
> -
>         sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
>
>         if (clock == 0)
> --
> 2.20.1
>

Further down in aspeed_sdhci_set_clock() you should probably also
remove the assignment of host->clock = clock, as that is already
managed by sdhci_set_ios().

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
