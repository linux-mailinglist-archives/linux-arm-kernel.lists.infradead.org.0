Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993F926547
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyMKIlxPBXAVB0boigAegy76OU517sv28gbTHZ85XvQ=; b=uIIkn/wO5mppHz
	52ik9iMtjneJyQn0KDXUOJlqJkjS7frRUKZFe81p4w3wJF+exvWJ5T21qipKbQXyjQ8zc92Wo/Sgs
	orA1iyo1gxUIemAq2cvKD3kt5H6TSUqFR/aMdUeDET66ZndPfl5he+vqWzmx3ko/627WkA5itvHQu
	eMckOr4hp1oLgUFo9jorMKn/d+JyDHpZsnKq3oblL2nqcAbTBLtcNZYfTsua1dGtOHMoWog24fOTb
	2aJvPnYQugjQ/rDae3RZJ5gmqA0AITa8D7CQLdmTKw1hYDPqaESBYTgYIGq9IehC9ZMDujgF6h2JO
	0zPFGnWW+PRrXWuPaN/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRkG-0003gY-MQ; Wed, 22 May 2019 13:57:28 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRk8-0003g1-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:57:22 +0000
Received: by mail-oi1-f193.google.com with SMTP id v2so1655809oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 06:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ufc5xAkTgGElLwGV3th2QQhKqTN82tIInC0mh/mr/zI=;
 b=iLffsqkJg5GTJqGHdxyTb9oldNgxWrUXPG26sIlWrnegoAHFx72qavyRFqIpsA5Ak8
 rns9wnNK30+OQXagUfOgcNafUQpnJqe9a+RKCzoHkyGM7QRzwyXec5ciHZBtwDnJX4mo
 /K4BxiUhFjkgeyI/yhVIqI57hpJgIZVVnYxRrIfY/uKMC1D4aw3UJVVzwZO0wu3viMLM
 cae5H1cnnP1aN90O3hCDO+VvU+ywbzz1/wmEApfJ+3XiGCxlYewVoeM2OhbkClueBSjn
 Z7MJNokgrO0tZci7R/wCACT1lvB9KC4EbVLSaYweLyMKHfVT5Rooc7oleKdVCuVG7xfm
 Zi4w==
X-Gm-Message-State: APjAAAW99qJtcSKo3ECeYWsytSQQLNtULyfrM1NKQOTMYqXBrmyIW0dO
 01/ZpfIdUZUoH3L60QIoVsuYTsc=
X-Google-Smtp-Source: APXvYqxi4uaUalBhrHYmE19XVGTw8ZehARzdqVww9dDisYp5w60DNiLvbox7RynSvNzpoP7eq2gAVA==
X-Received: by 2002:aca:b255:: with SMTP id b82mr7227466oif.52.1558533437666; 
 Wed, 22 May 2019 06:57:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i5sm2253114otf.26.2019.05.22.06.57.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 06:57:17 -0700 (PDT)
Date: Wed, 22 May 2019 08:57:16 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: Clean up CPU binding examples
Message-ID: <20190522135716.GA4030@bogus>
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
 <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_065720_955259_30C90DEC 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 May 2019 17:44:27 +0100, Robin Murphy wrote:
> Following commit 31af04cd60d3 ("arm64: dts: Remove inconsistent use of
> 'arm,armv8' compatible string"), clean up these binding examples in case
> anyone is tempted to copy them.
> 
> CC: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/arm-boards     |  4 ++--
>  .../devicetree/bindings/arm/cpu-capacity.txt         | 12 ++++++------
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
