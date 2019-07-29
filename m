Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF1B79B32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fwqGTZIipKX5iHbk2kug/P6oXblQewEWB5uhd6Ry7c=; b=KJ7eDHWfSGrG5t
	jBwquoU691jAm5uoXT4INerrD1+JR+qBkHX8H2QJLYsJTjtvbEh84aCd29pu5CFe6MwWEXjGm3tud
	KN4ysNyEBla7MVOhsPLtyDAlRZiV5OiAzk+CxD5QA6yCmq5HxTU9LdkWIXNUJLgaQ10qqFJuqYvgv
	9lAhFMwIyS1+ddTNBRbtIkkBqOksvj8ZbsB+jGlIx0hooKYLMDyJKKLnOJLwcd0kE2Q/byXIIQ2Bd
	tnih5CZ5i8FBMuSen/Kg/v26ya436xehw1OOEZkD1Rz6xJVOpvynSaCy5/MkrLOgCs3X9ONtTwPki
	TBxpuht8STJzL8dPHdpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDK0-0006s2-P3; Mon, 29 Jul 2019 21:36:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDJo-0006r8-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:36:33 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so5773644ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m+uKl3DmiY8dW8TGLrxGk/fNxMPrGaMpCCMkd3OfZgg=;
 b=XiIC1pelgzO+M5iJgoHNGaFTyBt4JyMKlOsZ+f6+nAfV9oBGWKwb7dU3vhdcbctnq4
 VCEcyn7DrLpIeckFKbi/1dLpgiJtSsuxe2S9dKXC/RJ85kB5lYrKh0T7ZZ2A+Lsc96lj
 RZiZhzpeU87NdQRdREAH+PhFluvzgtMhf4R85gbIovSIzVN07VdPFBUZ2DymoY4rkNq4
 t6ipq/cHvX4AzeY+CiEFb87Q6Dkc26eS4keDhi13IS/16+QXJpHdfi7+Nw7ttGvzKd41
 Jghzth8iqGKCq40V9ct1stdODtFsAPaRDLUJcHC+kuGT94mQMJ25XhbNwswKtuNkNFaR
 f6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m+uKl3DmiY8dW8TGLrxGk/fNxMPrGaMpCCMkd3OfZgg=;
 b=K6DyH58zYK6bXmc+MCiYunOcXVi24gLg/EkSMyRf00Jgzppv3E/WJMBTnziraknkbP
 AvhOfkBhTUUlN/nYC7hw+J9V51/jmKAjxZS6EkWBXrrGeQ3sjmH/XVtNA1VI9xEMCLc5
 D5/eBwdBSHN4b8om4hHoNFK9tu9BQj97ITjL+AJlp9Y+TI57LL1PObyHIkOSlsWy2r9Y
 YzQRTdbNEAYV/iUFlEjQEJKn35Aqg/o510PpXdGO8SeMQRN7GwJiGmsPZDG/PrXnwAhW
 Jb3Il5SjRu8xeKuenZ6zQAjSyHbYLIJPz1CqLH7ofw7cy2xELVT2Xtt5jFtwfujCofew
 roQg==
X-Gm-Message-State: APjAAAWSz/K1DqdsCUe5Pvf+DUl3OGuSRZuKlnlSKv4rf2JGI1KD+MUH
 Sp1NJj/lvDZPpUZ3Q0bWtxBGKakZb8pfSh1Qp1/Wig==
X-Google-Smtp-Source: APXvYqzpGev1ZgT7UDoBmrvnEtfYU3dY7RXU+9rHQOkrcjsAH41AmeGJd40sfREgQBCjTHKjCZUWI87ScfuEsB+15wM=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr12040674ljh.69.1564436189593; 
 Mon, 29 Jul 2019 14:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190711142457.37028-1-yuehaibing@huawei.com>
In-Reply-To: <20190711142457.37028-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 23:36:18 +0200
Message-ID: <CACRpkdbBWPN8px=5gxeXWifDz5gCdbqWvgk6ZPdXS6Pa_hKO0g@mail.gmail.com>
Subject: Re: [PATCH -next] pinctrl: aspeed: Make aspeed_pinmux_ips static
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143632_684993_3653EB06 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 4:25 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Fix sparse warning:
>
> drivers/pinctrl/aspeed/pinmux-aspeed.c:8:12: warning:
>  symbol 'aspeed_pinmux_ips' was not declared. Should it be static?
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied with Andrew's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
