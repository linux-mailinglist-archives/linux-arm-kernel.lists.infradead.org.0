Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4F61BFD2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjH7C6mUdmWlXdqsGq/NGmcNiVzqbESFkFVnbV7FzuQ=; b=OuJTuyC7D+h1/0
	4UQYzmDOGnJRRdZchnXc32zPmQ/LjIvd6EDoG+ZhD5Buyq9zH1r4DhOBA0E8JkN8cCRYU5z/e06y3
	YvqrDY2J9xmumzZrtDQpyU58nQziZ3ZX2GjuyzT2/fs6nwRnDY8waLk1AjcUM4Cw6ylPKBOKp14Mk
	mA7JQyUpc7YnuRADRGOHEURQ1IB3n4QYWFLpotdPoZnf9l9gksmhUud/z/LFEfgvIeIRQkT4nX/RJ
	GdGz+4ju7xufiNVOh0Jlo3bFmexMnhM4wOQkUEEykvV+hs83QCNqtusglpEZUb4kbC+VbIfsG7GKO
	iW3YRLVluSgxRICPaehA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9tt-0004V8-Rc; Thu, 30 Apr 2020 14:10:53 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9tc-0004T7-2z; Thu, 30 Apr 2020 14:10:38 +0000
Received: by mail-oi1-f194.google.com with SMTP id t199so5319612oif.7;
 Thu, 30 Apr 2020 07:10:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UgTzeSieOrk7bgrXOEEKGS4vqDfJdjTM5De/Mq9VpvA=;
 b=aGZR5mcut/baWDjEh6S/x4WJD23SJDT83E2bP4iv/kJ50XsO7PoAJ14MZOv3zgo5xG
 KtBg2G+GDE6QRJoEIbhOr9iHjLd7kI9M1A6fZ+DdOqOrEKsGXvDk08Sy78/l6/zs4HQP
 iAKSCRHPfKu84HBLPG2P7HyS86ZnQIrlXXzaazpt8z0+/1+Ay6j4mR7lse6++UmCuM4Y
 /ZCZswVHH/sSzfhpOEhb6zG1GHVZBxngY2aV9/q/bZLilDV8ngvj6VGmstYyl2ON05aL
 gKClUiwQSnEbSE7RB3uh88Si1e/3nA3PSFmVBpb53avXLg7M8J/lMibUIZThKvqsNXSO
 oG+Q==
X-Gm-Message-State: AGi0PuZKgSabpOmgWuWwOlzSGq2yM+kaKkZStxdUOIVDvSYeGsMMG6zw
 4TXCrnZi8xorqrFvkQyRIw==
X-Google-Smtp-Source: APiQypLd3ij132amZqmzb1pb6Pu49V28sjYMfyg7bc6xj1bapelOBMaB7UdhZBZ0xlBAKCAGhjm7Iw==
X-Received: by 2002:aca:6546:: with SMTP id j6mr29159oiw.155.1588255835409;
 Thu, 30 Apr 2020 07:10:35 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w24sm1346250oor.47.2020.04.30.07.10.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:10:34 -0700 (PDT)
Received: (nullmailer pid 5452 invoked by uid 1000);
 Thu, 30 Apr 2020 14:10:33 -0000
Date: Thu, 30 Apr 2020 09:10:33 -0500
From: Rob Herring <robh@kernel.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: arm: amlogic: add support for the
 Beelink GT-King Pro
Message-ID: <20200430141033.GA5382@bogus>
References: <20200419055322.16138-1-christianshewitt@gmail.com>
 <20200419055322.16138-4-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419055322.16138-4-christianshewitt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_071036_125664_556591B3 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 05:53:21 +0000, Christian Hewitt wrote:
> The Shenzen AZW (Beelink) GT-King Pro is based on the Amlogic W400 reference
> board with an S922X chip.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
