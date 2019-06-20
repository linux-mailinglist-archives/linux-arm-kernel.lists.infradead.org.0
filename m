Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE804C97E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed4oI3NcvsboN0PlsNMCdF5BypybWS9wNnjyoXfWGK0=; b=LWFePH3dGxyt8j
	ArXnogYrPIUZXeZ8/rUoIfeysUQ/6BZ3umo1PcRi9jS0h1UEiA6961Jtl/G0k5dk7BDTCMFQfZn2x
	oshGfWfNgPh9ULRB7ql6cXMnpbO382Oyfu+JzHlfdWFB69bIOw/L4cMuCtOZjrolEw1rpYy+meY4m
	THuoxqQd/AGOJmbniiEkURFuuhSt12p7nIOvnuR6q27DEUxAE6EPVGIaDUsJUxsE1ScZz3uYna8jx
	NwCtt7SSBJDpnahpe5sIxMIQpNgmxJyhkxxNwCvacSsCBW3eLFPrS++QFcXNegBIh/odcSvcVl+4D
	io7pE1Sm8WlzrveBW5OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsSL-00066G-2g; Thu, 20 Jun 2019 08:30:05 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsS6-00065w-4e
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:29:51 +0000
Received: by mail-qt1-x843.google.com with SMTP id p15so2395268qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 01:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6+LDECNzk7Ax81lY+NTXinI2CggAW7FJancdnXbish8=;
 b=CtuzE3XrAV1rVmsdqj11M6pmKHISAnlRUomi1TlE3HzkVaVNorKLX2wW/stFBg1Bv6
 DyIHp3jITT2jE0rKVoCLPQ360+74LzXT6mmKu2+NrX5JQsoKH9lgwciuIWycQoNxySYe
 E/CSxBpptpTlZ//LZbwz0Wkz4IVdBnFrG+bkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+LDECNzk7Ax81lY+NTXinI2CggAW7FJancdnXbish8=;
 b=U1uaw8rPwD9E50HjPt9Ga0Fy6U+FzG0J62t0tnlC21D4BKvDQxzPzBp1rA7lfTk++z
 Z7UEPhORjIV4Lh30WENEVF8l/DY5JNjPkskfKL0MnZ4lULE3y6Dgb1GxTLikTnlOE1BL
 pdG7mNImOqsZnT64QN/L3xXzDsiGB8r8zwgdvxpXVZkYTbSZjPUEIFKJUR5DuDEQmzPj
 w2TUNJN+olPoosjGmokFJWzgOeGNsTJZUDjhQNhtoQzAJ069RcI+jOzC21JpHIgDi0q1
 XhhuRC/6JxKLsYVouM4cL+zXqB9RxbBK9oBkn6BQD282HFUQ3QyQAZcktwwYTcw4NXiU
 BhsQ==
X-Gm-Message-State: APjAAAWmEZ6iJr6Y9ud+8Mag+3a5l+eK6XNmhB1n/JvDA92jUgVGkniW
 9l/AKedbuYvFofgdD/Chg68JhpQ7fg/ZfN4CYW0=
X-Google-Smtp-Source: APXvYqz9ktCSXKcc8gJFwqeG+AN29q9x2gYJJMH1Lf+t9yZGIz77JKqmMdeqFF/zzNE+Y8nQBNbxTH4cVcRoubKl5l0=
X-Received: by 2002:a0c:afd5:: with SMTP id t21mr38274708qvc.105.1561019389077; 
 Thu, 20 Jun 2019 01:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190619125636.1109665-1-arnd@arndb.de>
In-Reply-To: <20190619125636.1109665-1-arnd@arndb.de>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 20 Jun 2019 08:29:36 +0000
Message-ID: <CACPK8Xe0Ppr8QjPSTPyNSHEbSXvuZLjC04hqP6ATTSystY888w@mail.gmail.com>
Subject: Re: [PATCH] soc: aspeed: fix probe error handling
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_012950_183669_A969F33E 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vijaykhemka@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 at 12:56, Arnd Bergmann <arnd@arndb.de> wrote:
>
> gcc warns that a mising "flash" phandle node leads to undefined
> behavior later:
>
> drivers/soc/aspeed/aspeed-lpc-ctrl.c: In function 'aspeed_lpc_ctrl_probe':
> drivers/soc/aspeed/aspeed-lpc-ctrl.c:201:18: error: '*((void *)&resm+8)' may be used uninitialized in this function [-Werror=maybe-uninitialized]
>
> The device cannot work without this node, so just error out here.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks Arnd. This looks like it applies on top of Vijay's recent patch?

The intent of that change was to make the driver usable for systems
that do not want to depend on the flash phandle. I think the fix we
want looks like this:

--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -224,10 +224,11 @@ static int aspeed_lpc_ctrl_probe(struct
platform_device *pdev)
                        dev_err(dev, "Couldn't address to resource for
flash\n");
                        return rc;
                }
+
+               lpc_ctrl->pnor_size = resource_size(&resm);
+               lpc_ctrl->pnor_base = resm.start;
        }

-       lpc_ctrl->pnor_size = resource_size(&resm);
-       lpc_ctrl->pnor_base = resm.start;


Vijay, do you agree?

Cheers,

Joel

> ---
>  drivers/soc/aspeed/aspeed-lpc-ctrl.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> index 239520bb207e..81109d22af6a 100644
> --- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> +++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> @@ -212,6 +212,7 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
>         node = of_parse_phandle(dev->of_node, "flash", 0);
>         if (!node) {
>                 dev_dbg(dev, "Didn't find host pnor flash node\n");
> +               return -ENXIO;
>         } else {
>                 rc = of_address_to_resource(node, 1, &resm);
>                 of_node_put(node);
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
