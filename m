Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F4C57B3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1o6EdVnJndrPGrthGlKLCwdQ1pZCrYoLoStEj8FDUQ=; b=U5lMcJSVDBsCzA
	epG1Eecuwr6dP7W3O/zvZrhnS3D3X6h+OWsNKDutWQiibI5OApfB/HgjClqdWWGTXigBIQarc007G
	JjrrQ63E6S8Xnuxgk1K+mekNeDq7Lcpymwu//dE4bX8DrcTOUkbTmhC1qcdJ33y2w0ZjRfjz14ze4
	Gva+zPBpzIvvSR3pwSLf3F3RuGKw3Y9/UXFyvb0Jvt+LZdBQRI84y5vaVKSGNtZxApHtoznHxy6r1
	J7Kdlf98CXMEqXZqZw6boxFPq50Nt5FwWxV+lgUrXo+JNTRrhp/w7hhqCw9JYaZoaVKVN/j/q3H4D
	wc323033LMp+Vnm94jpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMrm-0002jx-Gb; Thu, 27 Jun 2019 05:22:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMp0-0007bR-DK
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PH4AXqM58x9vuCT5X/Gjbq2w5DxoKAA6BzmWgUbnGec=; b=XU+B3XmJ3PtZVd+83ufek3J8I
 P+andkXvkLWuQZgdm6/r3JwiFGkjiLYt2Fpj/sGKuNJ8DhaKYl8f+6jseLrLOmfuVUnWb2GVqPJ5M
 GpUY969IJ9iiW7afUeL/3J6nQTVWNSAPhYVmfFAlLDNnQm+tEph3uuuFuBGoSC3zB77dC5Qe+V904
 kDBLnPtsDqIxBHbFcJwUgiWHZwN20XDd2/FdceiAMBeuyuqvBGrBkjJk0YUbc+JCIbiOq9bXpANnk
 bH8uXRTw/tD+olQtetBRQ1UfZKVZSnyYsV9rYo/p+adeB/W7mZHiFYr2ocythtmaYnUXL6+qoqpwP
 58GwwxRYw==;
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgL9Y-0007xB-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:32:54 +0000
Received: by mail-qk1-x744.google.com with SMTP id r6so558724qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 20:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PH4AXqM58x9vuCT5X/Gjbq2w5DxoKAA6BzmWgUbnGec=;
 b=HhoUPy+/s+uM198lB0sSRK5RzLmFemtOSgwIVThA4XV/JBpMKO7XSJKKiUEjIoMHYI
 cPFhuenDq2eWZI4Nc/J+ol5jiFNl/EJgg+gsRQawWfY78OzG23qrGq4pjTadJccD7LoB
 Zs00YKlSYCsPNNJISz1TfBni2Pugj6cU1yg1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PH4AXqM58x9vuCT5X/Gjbq2w5DxoKAA6BzmWgUbnGec=;
 b=J9vtIQYByHuU8calLso34+0b9bIhbhVJgpLeFVLGR2z6X4Q+0h1WONOeJNniflW8q/
 Ke/omZWaGZZRKwlylwxPVOTaINjyDK09wzXPk/6M2go37FiYh/xk0hI1rXHfUy1DFpI+
 PlSz0WJOPbwBFCUGk7CwuE7DUASOaaT0qhY0nSsNU/8xtrSeR5wp8L/qZopJtghteMhZ
 F597ge6jwLZFtwaub++1Ee+OOwMNzYcUlUfu1+/nLUpSNyPONc3c9+1wwyQKR1tyaKwH
 qIqmo+YF8NIltrlNZkJLm/O3zAlbPxnwk4pegZ0UnuE/G/jyvPfsjdwaSqEMpYh+3+yB
 ENJg==
X-Gm-Message-State: APjAAAWzKaA8qzaXv112mMlBUVj8fudrEYe7RNvZTY+eHSqLY6SHiQvg
 viWQxARsq608AzrMxJhCTGV/DZZis3MNhmIBuUQ=
X-Google-Smtp-Source: APXvYqzytvrGwxA5InkHOne1NbDI8ndj6XRhPb/DQ8p6hv1uX1zDjyqrKfJPGYZgR1BJKTI5rjNaxEJb8lx/mqSfFe4=
X-Received: by 2002:ae9:f010:: with SMTP id l16mr1341881qkg.292.1561606246697; 
 Wed, 26 Jun 2019 20:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-6-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-6-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Jun 2019 03:30:35 +0000
Message-ID: <CACPK8XcPxJAOBAnKMKxtiG4Fkz8BPf8KtW1Kc3A9tU_emQviVg@mail.gmail.com>
Subject: Re: [PATCH 5/8] pinctrl: aspeed: Correct comment that is no longer
 true
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_043252_641811_EF7C4A53 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 07:16, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> We have handled the GFX register case for quite some time now.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/pinctrl/aspeed/pinctrl-aspeed.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> index 4b06ddbc6aec..c5918c4a087c 100644
> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> @@ -240,8 +240,7 @@
>   * opposed to naming them e.g. PINMUX_CTRL_[0-9]). Further, signal expressions
>   * reference registers beyond those dedicated to pinmux, such as the system
>   * reset control and MAC clock configuration registers. The AST2500 goes a step

AST2600 too?

Acked-by: Joel Stanley <joel@jms.id.au>

> - * further and references registers in the graphics IP block, but that isn't
> - * handled yet.
> + * further and references registers in the graphics IP block.
>   */
>  #define SCU2C           0x2C /* Misc. Control Register */
>  #define SCU3C           0x3C /* System Reset Control/Status Register */
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
