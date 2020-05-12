Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE41CEA81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuMFkVW8oUcrQRScuKqiITn54penEYaAIIbzv0pVZLc=; b=gfiaIeanTZRCxH
	7NLboImSBTrx+jQsTgqOlGQMOhlyG7yv3lxaEM8P4scHNzpeN6MKJHjt31V22rllqwcCxSKC7z+8T
	/V4AjxqBHVFJPGiLOQGUmM/+5zEZ/jyYwC57LnMB8V2cP4PzAfLZjATf9PkgcSqWqaVrwPMqLIJNN
	gcTHcfzB0vouUj/DbOMFSVcCWkgxs5H0nJhiNwotQb8pTEkrKpQ6/SbWowGzyDX6HVzRawe/+UqtZ
	TQc6SLeTWiZa4dSyA9DIdKKoELnaInn2HpFCN99Yi/AOkZSz5pRuaELe7EnZlx+sfyuKBxPmf38d/
	PytvrpXDWqPc+ZUIMSOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKHt-0001Mg-Ls; Tue, 12 May 2020 02:04:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKHF-0001By-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:04:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id m18so9255521otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 19:04:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mEwM+2uX3fa1aRUqepH4yi3FVz4o6k87xu3sEDscF+k=;
 b=eqV1HSIFK3xoZld+YaYVZwCM6Mav6Azr/v/d0txBfGlvgbAfcWYQzaAr7x0dh2k0uT
 y9qFVgbm0w3jEZhCmWT4TRrK7vQFagqwdYMOlYZEK0qSeRDNONG6AVdP1x1RuYoos5ZG
 i9Upc7VnJFXhyzstg5p9MhbICXlZaG0tq0qrNw2EenHNOSSXhb5oNphP02SZvJ9beMn+
 7+JT2JwuElQRw5dwf1fE3edoD/U3Br1YaqxubZHr5TlEVu7w8j3rDOaC7OBcVWdWXkjg
 nKpA++YLd92cME6wPzLKvRPpLEAVu2XoJyx0AJBiP+4AQGTltG8F/krSjcdY1Fxkdz4d
 JXcg==
X-Gm-Message-State: AGi0PuYOanllRClWhQ98WMfLJxA0QPT6i9mB3z4XbdUewqXRoDtxTeeF
 ThFun/xEe3nxNa9FTQJYww==
X-Google-Smtp-Source: APiQypLlnpOh6fBGkDv/pYSFX86wYZ0uIGXViDNOoB6reFNK7XbZ1KD8v3HlCd7AUUrCyj+vvJs2TQ==
X-Received: by 2002:a9d:4794:: with SMTP id b20mr15415762otf.40.1589249051881; 
 Mon, 11 May 2020 19:04:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v207sm5046244oie.3.2020.05.11.19.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 19:04:11 -0700 (PDT)
Received: (nullmailer pid 30803 invoked by uid 1000);
 Tue, 12 May 2020 02:04:10 -0000
Date: Mon, 11 May 2020 21:04:10 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 3/3] dt-bindings: phy: Convert UniPhier USB3-PHY
 conroller to json-schema
Message-ID: <20200512020410.GA30758@bogus>
References: <1588055690-13200-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1588055690-13200-3-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588055690-13200-3-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_190413_370711_AD966E2F 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 15:34:50 +0900, Kunihiko Hayashi wrote:
> Convert the UniPhier USB3-PHY controller for SS/HS to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-usb3hs-phy.yaml         | 104 +++++++++++++++++++++
>  .../phy/socionext,uniphier-usb3ss-phy.yaml         |  97 +++++++++++++++++++
>  .../bindings/phy/uniphier-usb3-hsphy.txt           |  69 --------------
>  .../bindings/phy/uniphier-usb3-ssphy.txt           |  58 ------------
>  4 files changed, 201 insertions(+), 127 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/uniphier-usb3-hsphy.txt
>  delete mode 100644 Documentation/devicetree/bindings/phy/uniphier-usb3-ssphy.txt
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
