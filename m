Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB45914E7B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EZWQBf97JrbRnxK+UUnbw4VWH132TsGZ22VTT18KEY=; b=RMHpmZFq1hTXa+
	Dn7D2H0X4QZ7fTIVm5M5tvuN8RxJPYBmBObM/l83YiDELtwDpwDJNXEKbW711kZnjQ5BuDwaiNdh4
	bv24118RHl9odOKvVKryNJxBl5tg762+cHtDtDnRO/UIGphJaTb2N+j9kUpKJva1Xic8KuRerCG4P
	8ljH6W5LvKGUXqdUvKHdbeWFl74vf96ujffpG1lZl2xmgNqBolceQjM9Db4GTV9dNM+UaCiUdBgk8
	NaVrSp4SZ3Xkn7ovksmpbunoAJTBvn8QdJLSiicquY/peKxqkG+0x4DyAkVBHW6y2sNMw5JA5jkkg
	1dS02YJYl4GGCnnqALpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixNQB-0003BQ-Pd; Fri, 31 Jan 2020 03:56:43 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixNQ1-0003Al-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 03:56:36 +0000
Received: by mail-qt1-x842.google.com with SMTP id t13so4415492qto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 19:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=giaaas3saM7ZnV4c4smX1JcgTAL1YeM8DtaRFKtNHgc=;
 b=crNbZOH9Ed0ABdlKTXB1vBiOXKB7+GjFPPrcykjonbeRhA77dU4D95buRmuSb/HrTf
 lhpOiS4cAAUqZgxGlqbJ+h4wqsWTzf2wpwTyEHHJeDGT2l1kYposPBEuTywoKwmbtOj4
 YAfplw+l3R8Uxp67cX3Khtk28NkYrLFgNldho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=giaaas3saM7ZnV4c4smX1JcgTAL1YeM8DtaRFKtNHgc=;
 b=hyrRyLNGAHNrnw5PmWj20HSq8h9yM8kxTHLqQh2RKHcTeyGKr4VgJ23JnNpBEKgLvR
 3j9iGHvGlCgtLq65H2cilnohjwGw0sxBEo+2E6UfoLmtVpROCXQUjgGCEtgYH4KJB3j1
 6fj5Xyao3ZqI/Zn6Z7zbMAn0l74oIkWC58tiZDIFEw0h/K9b4p+AfPbZALAIslGEot3S
 /bK4bF8a2ovDuFSp/6De0fqLTIliex3MR+r+utLi2wFHaGFLZqk6X6AvgTw2mAqWMuZA
 w81KZeT+50JaE0ySnBGDMG3DbG4AUpOgN60WJmBfI0D3nQZntDBziiQVI2uergIlIF9V
 NA2A==
X-Gm-Message-State: APjAAAXwBb0S+o2AxWyhVAqkaRawKdhcf6X8XWNOH++MgwE7LET8sDxl
 ubgxCVMn0QVvIo8pXFtWnVFES1RvUrNNYO8BAbU=
X-Google-Smtp-Source: APXvYqzuY2q7VtjMI43kwIjVulHF6td/oZnRE/hNAX7gUXypAD+c+GinBXcwLLN5Y0oaVYyv8JfSq5V15f8talvX9lw=
X-Received: by 2002:aed:3b3b:: with SMTP id p56mr8919865qte.234.1580442992161; 
 Thu, 30 Jan 2020 19:56:32 -0800 (PST)
MIME-Version: 1.0
References: <20200128011728.4092945-1-vijaykhemka@fb.com>
In-Reply-To: <20200128011728.4092945-1-vijaykhemka@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 31 Jan 2020 03:56:20 +0000
Message-ID: <CACPK8Xc6TbHLgWO3p7YXJf+jfzNhiGzGsdDwQsQ56ix8sUQGzg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: tiogapass: Add IPMB device
To: Vijay Khemka <vijaykhemka@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_195633_529512_0262D3BC 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 at 01:17, Vijay Khemka <vijaykhemka@fb.com> wrote:
>
> Adding IPMB devices for facebook tiogapass platform.
>
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will merge this through the aspeed tree for 5.7.

Cheers,

Joel

> ---
>  arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> index fb7f034d5db2..719c130a198c 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> @@ -5,6 +5,7 @@
>
>  #include "aspeed-g5.dtsi"
>  #include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/i2c/i2c.h>
>
>  / {
>         model = "Facebook TiogaPass BMC";
> @@ -428,6 +429,11 @@
>  &i2c4 {
>         status = "okay";
>         // BMC Debug Header
> +       ipmb0@10 {
> +               compatible = "ipmb-dev";
> +               reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +               i2c-protocol;
> +       };
>  };
>
>  &i2c5 {
> @@ -509,6 +515,11 @@
>  &i2c9 {
>         status = "okay";
>         //USB Debug Connector
> +       ipmb0@10 {
> +               compatible = "ipmb-dev";
> +               reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +               i2c-protocol;
> +       };
>  };
>
>  &pwm_tacho {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
