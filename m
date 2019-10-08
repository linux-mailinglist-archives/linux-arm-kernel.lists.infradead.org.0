Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF535CFA10
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4LkD8vhmflLuf4OPcMq9MUPUiluF6jqdHtZdOq83EE=; b=jtdjx/HRKDzTPp
	/68gmhrEK0tdmzTynXw1tM4ATpOoIP+hiCFNBexZPp0CmaHr1yQiYblmojH/ADreWUY8Oc3JYuCHu
	cO45GFFeNAyqsM0Gw5+RFDV9uN791O3Zp/C7Pfkxk5qhKXIbD6iVlBk+ky6NX4mtqaIJUDYmkBvpN
	APgE+pn2lKFVn5Vm+FMaXSsCVyLq1rz8Es2APW4mGbu4KBZ+b5EpuPaCy7OCpysd3QxdzXCvB3lLl
	j6Z3xN/6wlPgrWrWrYPlWzuJ4EiE2Z5iYHOgVOSD3jQkBnAD+IAkOXvZGGfYuPtJVBhBQo/crEP+C
	aAd3lLXtyntJZrqa1llg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHolE-0003ts-Mz; Tue, 08 Oct 2019 12:38:40 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHojr-0002ji-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:37:16 +0000
Received: by mail-qk1-x744.google.com with SMTP id 201so16497472qkd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 05:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4v0d+1p/aArXJ2yOJRd5yNu1aMPL1BHOkAquOKCrLz0=;
 b=hdoPfz7i2ZAKAojYg3MCdn1h3u+bC0JsI4n7zh6dL6bVxNYeSc793Pmj5qltJe44fQ
 to9MLzW0F9Q2qJMBxS063xbPKegLPpoWtkY13KtO91GW7ABSL8Ijg3sD3+wEzdn3gUKl
 KdAuBnJ7Q4VRAthQ+JYQcg1M4uXtSRp5ZpLUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4v0d+1p/aArXJ2yOJRd5yNu1aMPL1BHOkAquOKCrLz0=;
 b=gsIT3eXG0PLu9ASqeDQuvVDHdGvbxK+JdMax23nSa3KlpgD/kltP1YW62H8343UTXu
 6zUT5kiIRnstc3kptCwoY7o6GneY/9cPBoPnDvRl4Tt9kaq8FnaBfvRQdUmm2SJBbEmn
 g318Hlen8M3/un4zi+puA76oDmy0uxYYaVD7pMIdK3rqFz8t4L12BOQqYyjQk2m0UOsb
 nOBLr7eGJVfX0qOUxyht80dibrurxWTqCjJhxGwP+f7vXBdMjb91mp7rueAfViuGMbaq
 9LXBaZE6NLGXvycB+1B8cstmcB94aDfiqXSZlaI9RhReGl8cUj1D292x2ixiKZIR76hZ
 Qvig==
X-Gm-Message-State: APjAAAVzp8bC3xFo0xtmymovssISRVGz5gcN8/vkDEb3qvSoVI8kARBM
 6K7jOJ3Wsjsao6So0Pxfu6iQawSILLQlkS2A38A=
X-Google-Smtp-Source: APXvYqwWnZfc72JvmcJyYRX4c70u9XGRpY6zMM0qiDyLh1kU7xYPHgtRMVXxvCmA/MGSrjXZ3fNWualilBMYFbbhMQE=
X-Received: by 2002:a37:4a54:: with SMTP id x81mr28628198qka.292.1570538232484; 
 Tue, 08 Oct 2019 05:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191008113523.13601-1-andrew@aj.id.au>
 <20191008113523.13601-2-andrew@aj.id.au>
In-Reply-To: <20191008113523.13601-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 8 Oct 2019 12:37:00 +0000
Message-ID: <CACPK8Xf-f-r4S02GoxYdBYOJi5NGYMCOr6XGVza4vEGAsqzR9w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: Add AST2500 RMII RCLK definitions
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053715_546168_23458670 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 11:34, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2500 has an explicit gate for the RMII RCLK for each of the two
> MACs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  include/dt-bindings/clock/aspeed-clock.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/dt-bindings/clock/aspeed-clock.h b/include/dt-bindings/clock/aspeed-clock.h
> index f43738607d77..64e245fb113f 100644
> --- a/include/dt-bindings/clock/aspeed-clock.h
> +++ b/include/dt-bindings/clock/aspeed-clock.h
> @@ -39,6 +39,8 @@
>  #define ASPEED_CLK_BCLK                        33
>  #define ASPEED_CLK_MPLL                        34
>  #define ASPEED_CLK_24M                 35
> +#define ASPEED_CLK_GATE_MAC1RCLK       36
> +#define ASPEED_CLK_GATE_MAC2RCLK       37

Calling these ASPEED_CLK_GATE breaks the pattern the rest of the
driver has in using that name for the clocks that are registered as
struct aspeed_clk_gate clocks.

Do you think we should drop the GATE_ to match the existing clocks?


>
>  #define ASPEED_RESET_XDMA              0
>  #define ASPEED_RESET_MCTP              1
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
