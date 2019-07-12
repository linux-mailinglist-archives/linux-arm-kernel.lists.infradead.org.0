Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A22B66FF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8UDhxzd4C8ZQlN211Bl95DHll1MVLFaKY2N/vEUu1E=; b=ldiNL0XNDB+aPV
	agPZU+8n1qiyYpfgd16kz5uKr64BeHwL0m2bhPb7ahB6pGC2VNLO+CZcpJ9/gmMj6kYBnhr/B7RbP
	tAkQruE7tjt4RSxnnWWRovXoGCFQmir6nI7ye64JX5XLeQZzD1vm6QcsD2V+j9mcqx87StlfAAadM
	RU6D7uyzlTKRwKTeGM+x2ePcHghJr03tzdUJeh+FMR9kBdWbQNHp6HV0Kkz87uk1VLaEg5zkvi3dh
	3uvVavIBCn4CohHTK6OM+2U3TVcHJI3Wx5TZYYC6yeVBogmpxLnQzVp8gtyW/tueV5Gf8meiruZq6
	eYydg8aisusmyVU9aS8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvWa-0005JY-C8; Fri, 12 Jul 2019 13:23:44 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvWS-0005J8-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:23:38 +0000
Received: by mail-io1-f68.google.com with SMTP id m24so20329242ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:23:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ED7nLvnywkFVSysEQZ0OXOazHI/ma8KNYWcu1c32QPE=;
 b=ZhAqORUhJBhAAM+z1Z1NnH0Uyao9MN6+VD5NegayCTaE79JPSOqvZMrm3PtwwLmXZK
 c6Q5cBBc2iuHs5g/syc9z368FGa8A5HbaJBz4KjkA/AAFVwuNCwsq2HzxBekOasvnD8M
 0sX8YOL6Zyhu8T9yWH8QIzvqa9c8ZHTeEx2/Knhy3QPMGQXHnIjSMLg0bnuiP8dCeNdF
 20+4+L1EnyFR/Z+2COF9uvoymH1cpx/7kkQcl5ob5b7ngTwh54qwGUjwts3Log87nZ/w
 Lh+EBnQhxvdKthRHK2ua87KbrDmKnaRV/RCvuSSA9/MEQyXRXwdLj7S1a8qn3KCs90k3
 nPmg==
X-Gm-Message-State: APjAAAXuvW+YvAvYFQZgov3aWefhGWy92NZKIatZQAJUP/KpFlL3e+7D
 Ajr9RifamtHlbvWkl7t76Q==
X-Google-Smtp-Source: APXvYqwtZSqCWcobJ/R917NbEBSOARis/jLrEID6T8BhdTU1lDdG6dMatZvDE3fwzuxxAuJm+RHdiw==
X-Received: by 2002:a5d:8416:: with SMTP id i22mr10620291ion.248.1562937816200; 
 Fri, 12 Jul 2019 06:23:36 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z19sm9502604ioh.12.2019.07.12.06.23.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 06:23:35 -0700 (PDT)
Date: Fri, 12 Jul 2019 07:23:35 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: crypto: Convert Allwinner A10 Security
 Engine to a schema
Message-ID: <20190712132335.GA14684@bogus>
References: <20190711122301.8193-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711122301.8193-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_062336_871978_84F44552 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-crypto@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 14:23:01 +0200, Maxime Ripard wrote:
> The older Allwinner SoCs have a crypto engine that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../crypto/allwinner,sun4i-a10-crypto.yaml    | 79 +++++++++++++++++++
>  .../devicetree/bindings/crypto/sun4i-ss.txt   | 23 ------
>  2 files changed, 79 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/sun4i-ss.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
