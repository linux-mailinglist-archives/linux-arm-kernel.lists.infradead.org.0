Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBFEEBCE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSJgej1D3KjXCLRwDW0Ht8iMn2wis8SO4FAl+trIPXA=; b=rWpe6M/VrpWgz7
	chl7bE3uKomf2Fuwag8H2mPE26Ed0y1oPek1G31IiE9eTa6BOaAPhvff2OeMqzErO8wQOJlF+4Zku
	T95vfnHJ+y7AZ/SdQVl3qGFfgVyFAg09Vn/mQW54P8u1sSSJxTdpDH5CuNq/m/BY9kQCVxAq2Lcsk
	nbdmNtmOjm69eTHtxSBOb2a+7dzEsWnYzVp2TViTFsy0vb4EXnDJGuE6+da2xFnOdT12lMmUSkSMb
	V2JQugfsfJOyMG0iJVv5L+eBMabMNWZW1QfL9fAQw9RzRz81Yb4NS2AAdLMNALiXoTHhlTxnDPhvc
	RdBJDlJdgeJeUy8QI+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQOtt-0003nC-Jp; Fri, 01 Nov 2019 04:51:05 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQOtj-0003md-OC
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:50:57 +0000
Received: by mail-qt1-x844.google.com with SMTP id g50so11575656qtb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yA9zmwK+y0+vYb9mhZkiWIdcsL4UA+4k04MjQIXnKfI=;
 b=ihRZ8UOWwqbfVpNv19Ub5/RXorNawHtfnVMhoUjPKbrcr0JblVBgy0itL9CzHUnQgk
 ru4WPZs8/9O0HHeAOCJbw88ElH5RLVqFDb4qfGlBO6aaSqpB8t0L7H2o3kQT/LaEgTdV
 +GuF3oVnw7kqIAaAa8kJzGRCaV60znAMMGaLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yA9zmwK+y0+vYb9mhZkiWIdcsL4UA+4k04MjQIXnKfI=;
 b=VGTHe0ZIhTqZD6ftNMDmTOR6LeYvWqzTeq/O4VJW/IYmN6u3piU4C8ft83vE3RnbHz
 fE96CMq+bnGGRG5qhoueQwClPnQF80y94fJUtSXQdHo1N6uAZOXlXNzcAvfq64s+5ug2
 hThYOJ6kHt6HMU35r2e9F8ce/tzlw5+o9fdbxrVgf97vdMdXu5HSMdVdsSQI+A1fGOIc
 jsNM8WlLd0wbLtiS3bUahjpjmGN/65lYdICnj2i6ZQXiGLAaSoTarychofb11njhbNaS
 P80JqmNKbV+z1/KNTymv7YNEmfmlqLsjW5n61mqPzd87k5cNSvommozfCwysxxkhrnJE
 CvJA==
X-Gm-Message-State: APjAAAUjNZ4PYPTZ6WIpf4+YryQfXV9RfaEgPizI7kRQOLSMyvocbwaW
 dWvR7s4Gb+rA50hmx/Zg9QeprXhtFh62eM/U2Lk=
X-Google-Smtp-Source: APXvYqz7qXvpd39WjR1smej7kH/DFLwcwnDkz0IJAQhEJT1fnwfpJP75htsUCUl08Y8XeO+iMg5OtJcPeapplKUfTrE=
X-Received: by 2002:ad4:5446:: with SMTP id h6mr8216660qvt.20.1572583854007;
 Thu, 31 Oct 2019 21:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
In-Reply-To: <20191010020725.3990-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 1 Nov 2019 04:50:42 +0000
Message-ID: <CACPK8XcGgGsoLNpCccKPb-5bojQS4c5BePewwocc-z29On7Rjg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_215056_094687_9C6448D7 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi clock maintainers,

On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2600 has an explicit gate for the RMII RCLK for each of the four
> MACs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

I needed this patch and the aspeed-clock.h one for the aspeed dts
tree, so I've put them in a branch called "aspeed-clk-for-v5.5" and
merged that into the aspeed tree. Could you merge that into the clock
tree when you get to merging these ones?

https://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git/log/?h=aspeed-clk-for-v5.5

Cheers,

Joel

> ---
>  include/dt-bindings/clock/ast2600-clock.h | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
> index 38074a5f7296..62b9520a00fd 100644
> --- a/include/dt-bindings/clock/ast2600-clock.h
> +++ b/include/dt-bindings/clock/ast2600-clock.h
> @@ -83,6 +83,10 @@
>  #define ASPEED_CLK_MAC12               64
>  #define ASPEED_CLK_MAC34               65
>  #define ASPEED_CLK_USBPHY_40M          66
> +#define ASPEED_CLK_MAC1RCLK            67
> +#define ASPEED_CLK_MAC2RCLK            68
> +#define ASPEED_CLK_MAC3RCLK            69
> +#define ASPEED_CLK_MAC4RCLK            70
>
>  /* Only list resets here that are not part of a gate */
>  #define ASPEED_RESET_ADC               55
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
