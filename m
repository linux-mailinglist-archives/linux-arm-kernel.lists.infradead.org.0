Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF991CF7EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJaUg5I3XuquLYcdmlp8+48O7jOYNbeBuY6QEKrvLPM=; b=Co5swSOBks6z1I
	DRQDOq9b0FmBuh2TSKdel52/TbXfMMt/aU36nTA4kVTZItRJtjKRLqENgDmQ46+lPXjGjJ2tKaYkT
	B9uyiYyG6IhvmZ83Sjb8fpmqXmTH72R6HQbabTmAPz06MVo/YVd0p8GQRBDxgTfyfI2nyz3yEcidH
	ipiu0cfsJJrjnBtVVgHHRWrJxIc/tIktu0FgWwzkVqiOUk59I799dkUnPIzhX/KbFhnzV4ferD7RL
	Jz5OxRVbQQMegkyFkQJbNxfIAaPxYF497JJt7VOeFflUhmcQAIJjaeCfHRXO+gwjyIFV+AosAtNoO
	mv746EgHP+56aOjXMTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWHK-0001qq-H2; Tue, 12 May 2020 14:53:06 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWHD-0001qN-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:53:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id 63so3318115oto.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zvQTYh4b4eUlBTZLUxX1hHRbUDU2+a4tZbKUdGnF3aw=;
 b=l0pMPM3LfbTRFT8SwWD7Qdgq/8AAEqlzekjl4LYiEHaHvpkWk3HQNa5pdrWPeL9Mw4
 Hhe3NAmqC3qllCbOcp4Bro45VEu81tY7hX76nTTz6qeX6+g3pXi/J0CGc3nqoDwtlC7l
 zEXtkAmcMySglVaX3HBPIoq6TSfB86J0/9LxQj8aXXWaa7T2/jDgnE9z1c7HzIDtGLXn
 PrAMhaqMAJq+dIAZua9+3n8feqrnER9GrMxe6D+BSo7UnWJCl0VrI+TKznEVdqTXfJeW
 YkwmD+3C3DNnKEOOijuvKuQaP/fhdm8Ugn88uL6I8wvP4PUe7jdUgRViJWp2SIZylJCe
 xhPw==
X-Gm-Message-State: AGi0PuY5S87zVyHwqFL8Fw3l/OISY8zFRGfOvB2fPgyeTLukXPP1gxlI
 ZfPJMpNEIWrRur6rkVodMA==
X-Google-Smtp-Source: APiQypIeWKML2Q2yIs+q1ZFta2wuSTpS8VDHIRQT/NP72fQGGMWPfyUkA8nAi41dFXRwTXFKKHTXJw==
X-Received: by 2002:a9d:7e99:: with SMTP id m25mr4092098otp.45.1589295178802; 
 Tue, 12 May 2020 07:52:58 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t20sm3475826ott.51.2020.05.12.07.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 07:52:58 -0700 (PDT)
Received: (nullmailer pid 25183 invoked by uid 1000);
 Tue, 12 May 2020 14:52:56 -0000
Date: Tue, 12 May 2020 09:52:56 -0500
From: Rob Herring <robh@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 17/18] dt-bindings: gpio: rcar: Add r8a7742 (RZ/G1H)
 support
Message-ID: <20200512145256.GA25121@bogus>
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-18-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588197415-13747-18-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075259_415533_9F54C5BF 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dmaengine@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 22:56:54 +0100, Lad Prabhakar wrote:
> Renesas RZ/G1H (R8A7742) SoC GPIO blocks are identical to the R-Car Gen2
> family. Add support for its GPIO controllers.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/gpio/renesas,gpio-rcar.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
