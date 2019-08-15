Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCE68E47A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcYYnLIGmcGs+10X8M1ef8pQK4jfyUGlsrUxu1F0GKs=; b=E+efB+zGNvtrhI
	Kigao0VUDrE2bJqUQl5Nrl0BJe4F6bNgL0zXHHDBNX09vzPwGeiGp6C/sYBvcc7/l47GGU2TVcaYU
	YYi/ClKQypFdAnSniIKVqlP1jfa5CCB4y2tJj7JImPLjVV2OHnN1cUDZLFz1T5RhENzfcQCkM/hcz
	DkK5xXJ76LFymk3tGkJ10U4pWak/4jIU+ht7MTjP/vd0RHMle/04tUftlQ6qtv6S2LrJ0woV8RJzj
	khQUx5POLZpdzLJsIIzpwfa53+0IPS1W+qBUo6ZNuiu54Otzka7KGTBBw8p++4FAvvIUvIyqRQqpE
	+tCXH2gBpgEQyDKBDrqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8RC-0004UD-Sr; Thu, 15 Aug 2019 05:36:39 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8Qy-0004Tr-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:36:25 +0000
Received: by mail-qt1-x844.google.com with SMTP id z4so1278911qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 22:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9+kkJNfz1L/1lNjECte7oZEQ4lUZcKf6TkxAuh4O+hA=;
 b=So4qbdY5UtL+gcLQZ3POxMTyukbRWjWsrvKlowK+8slodSzcQhq2MQ0+Y86qGKH0Qt
 8h59wNj/5KPgsKXwLvUoVmlrIhn1VR96kfux20xYgl9huoZg6TLzXpilT2i2MI0IxeIT
 21Tnzz4VdqdpMRYLlr8/kJCOj1eK5gCWDxinQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9+kkJNfz1L/1lNjECte7oZEQ4lUZcKf6TkxAuh4O+hA=;
 b=hZeqHYkKAoRM75UlQQnAnBMLYq/DaN2Yr+xqKY1psQ6aEu/+7PudBoDDAaektTK1L8
 0ajYTWMHtsUQw4Iogj5cSUFHzHgolDDbqDGz/pKwhgHEQP0yC7FVdkNkIk+hYmr85BeZ
 RCV0x6FSIlNRvlX6P9panCdzZpwbaeJxXK8BkfGW3HkMnhLauBDCFHiBu1R6+fOFQ2Ox
 YHQMR279ybCgMOiY78aSWyABAFJKMRpqdjawIp/Yc4CyeYDHnMwjwpsYBqg2fettAFns
 sxKYj3Jnmj2tyZgRFYed2QzSAXmF/wwT5pOHGY/BfxZiosv5YuxdqU7j7+UREnPpsChc
 FmPw==
X-Gm-Message-State: APjAAAUaeQCoQX8Gvb1wlXYTM3xdOFZ50t1bn5uzEKduA8sbnZ8U0zuI
 +FtPqGui4wbfpKgLojvUWovSXOOZ6CrYdin078Q=
X-Google-Smtp-Source: APXvYqwol/tQGbguivrqClfvlzTk/yRlLUw/5IIvwxZHdBkwx1bL58BKST0+COtnMS8slC8AVVjNxk55OxxaRQNAaW0=
X-Received: by 2002:a0c:dd83:: with SMTP id v3mr2145001qvk.105.1565847383251; 
 Wed, 14 Aug 2019 22:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
In-Reply-To: <20190807003629.2974-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 15 Aug 2019 05:36:11 +0000
Message-ID: <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_223624_155672_603303D0 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, ulf.hansson@linaro.org,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> data bus if only a single slot is enabled.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

Two minor comments below.

> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

No "Copyright IBM" ?

> +%YAML 1.2
> +---

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    sdc@1e740000 {
> +            compatible = "aspeed,ast2500-sd-controller";
> +            reg = <0x1e740000 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            ranges = <0 0x1e740000 0x10000>;

According to the datasheet this could be 0x20000. It does not matter
though, as there's nothing in it past 0x300.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
