Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276CC66FEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/TKG/g0HPAl9l5EFNOE4HZ13Bg9YVMkSYp4AwlUarA=; b=ATmoxmCy5MoSut
	Tv6NwC1CfB1KMJ6KBBsdIn3pzYND++uPhVD8P181SqlO2Zmm7BVDRCJIUYYnAofEtm3DsvFmTuYu7
	dlAy9qesemAep3qx/Oc2k6pXcCxV6DhG6xf3iQVxOBzYXje/cFS+7xu0tJZZouYYfGPCO5Q6shabM
	zFtAVQZ/zUT+PGf54zIyDTQInzCxUoJMCKKZ6ZhJEbc8GeWeXFbl7iN7blIVpv3fMuJMgJoqQKTVV
	uPX6bNBeydRYRtXU+Ks+5RS5PMZVsyh2slYkVdi7ecdJKgQm5LWTHXS/ZB61+ZLjHx64oCSFVDl7i
	0BB6Vb8FGMf7zlXaNBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvUS-0004VF-Qm; Fri, 12 Jul 2019 13:21:32 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvUA-0004OP-TI
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:21:16 +0000
Received: by mail-io1-f65.google.com with SMTP id f4so20249741ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6mm2ZP45HUTUWCV27e9EpCNxbdRbgRzxFgLva4awkew=;
 b=ZJUZFz9vbuOQHQRtIqImLSx4RY7fub3PpABLNWfqqMnOo+nOseqXpPR8erX2WfS1Kf
 5AZrlOKuzihgVI3uRpZeEho+V+FeQre5W84/rsLl/nxW6HyOfKcIf2lC3DY5uo6xMjWn
 ibpVM6/kkXOCV09z9b0N3CGIg7gtMLyPEJtxcJ59aFlwYuQeD2DV7dgViVJ9gXwAPkgo
 +oibrxPNJ4q8Pk70SGRWeMw2d4UlmXqXpBwArdn0baSVokFUYodsBgkbFeTL6wurMnyI
 uPZgIHNdJ/Hy1HK63zhYh7O3hFH37eB5vgK5kUOUovY7MuqoNAC3BfRPnezDqS+tzrZI
 TL1Q==
X-Gm-Message-State: APjAAAXQnJt5U5rRR8oC7zSiVIoa8fb2+pdw5iXwyiig2mTReu2/DSLd
 YkMj3T9N/ep7UJis9VzWEg==
X-Google-Smtp-Source: APXvYqyDXTW+6nv4SKYRL0nhgWk+xVeUGk1ShvbvkaufQHyaIwJ2auHkDDHLsUBpPdKFEZnX5RgKMg==
X-Received: by 2002:a6b:8f93:: with SMTP id
 r141mr10910099iod.145.1562937673638; 
 Fri, 12 Jul 2019 06:21:13 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t14sm8234651ioi.60.2019.07.12.06.21.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 06:21:12 -0700 (PDT)
Date: Fri, 12 Jul 2019 07:21:12 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner DE2 bus to a schema
Message-ID: <20190712132112.GA11035@bogus>
References: <20190711094036.21777-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711094036.21777-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_062114_985963_4A9C4FF6 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 11:40:36 +0200, Maxime Ripard wrote:
> The Allwinner SoCs using the second generation of the display engine have a
> bus for that display engine. The bus is supported in Linux, with a matching
> Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bus/allwinner,sun50i-a64-de2.yaml         | 84 +++++++++++++++++++
>  .../bindings/bus/sun50i-de2-bus.txt           | 40 ---------
>  2 files changed, 84 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
