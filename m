Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED8A1D9F8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTy4gSheiB9WAfTEAyVV4KU4KdAHgdiPVHb6gLUu+c8=; b=pGUw4xMY7kYH5n
	sbHq2QxXkWGfBTP5QxqZAWW4O1CJ+UEbEm9UYbk/frfy/5j3OktUvk4K+XOK8LM84JN0SWKSmTBkk
	5EInTkqsueW/7WekF04B6+9wmbQkGoFcSWDJeDGN1Yh3DXSzVV4edHJ0JiWmtgazjkIntfT3m8A1p
	2BZrJRnGoqc8xIdriss/pB8cVuh19H+7LIQX/0phnrwxrJN+Z69BDvJHkZEjUvIFZwMWNtD1aHGPI
	RPILzPPOAfSe+P3IaTGKafqulwZG2ukCu47k7h1fx2u0EUgBmFRe8WRRO5y0iwL7wpF4d2HMoZeV+
	6Ur2yKUupR+sSpWD9YIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb73v-00028R-0x; Tue, 19 May 2020 18:33:59 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb73k-00026z-LU; Tue, 19 May 2020 18:33:51 +0000
Received: by mail-il1-f195.google.com with SMTP id j2so402940ilr.5;
 Tue, 19 May 2020 11:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lRGaswwEMB9v92IBAfHtD4YZ9rbLBXN//F0Wgadf0Zc=;
 b=cmcLgGKEYEaA0cuosokIT6jYt6tPN/+bFcaKOr/ZbZxvsQb5iz5cCyHMek87NJB5kP
 kv0ZtibWWjwDg6+gy1gebnYVKEG2ZX6CfW4D2SCQ41+ma2ep5O2yCgJbpOPPVY8HQ2th
 PcrIVV+F6VC4nQPjoThmAGNcyOH9Pncfow2xiaFlN02s95An9i1GsvkUE9v4hgfwcFZw
 6RzlS/LVHa4d/1UG2f5efBLptO5zPKiZxB0vY7igdQegfetwrOE5qiceYpcMmg9Bb/pX
 OBfKEhBSnMyaaiq4APQUwplLae6DSi+RvUoWgc4YKZ+X4lZtUcYMHjzR8ppa+L38chUY
 GLIw==
X-Gm-Message-State: AOAM533xFZF8glk1my/+oe85Cc8VlgbHn2tsLytsUrcsQG/vlcjqGQ6m
 icq9jPakb+Dcku1/Ikvc7Q==
X-Google-Smtp-Source: ABdhPJwcESmafnqWpyNh2F7ueLag4ryX4RQmW1OgW1IaqcXdzCybZDn1fzWCfLBd4lKhETLf2to/Yw==
X-Received: by 2002:a05:6e02:5a3:: with SMTP id k3mr341351ils.11.1589913227089; 
 Tue, 19 May 2020 11:33:47 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i10sm110807ilp.28.2020.05.19.11.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:33:46 -0700 (PDT)
Received: (nullmailer pid 434955 invoked by uid 1000);
 Tue, 19 May 2020 18:33:45 -0000
Date: Tue, 19 May 2020 12:33:45 -0600
From: Rob Herring <robh@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: reset: s700: Add binding constants
 for mmc
Message-ID: <20200519183345.GA434412@bogus>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
 <1589912368-480-8-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589912368-480-8-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_113348_699725_9C49F744 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, andre.przywara@arm.com,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com, manivannan.sadhasivam@linaro.org,
 afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:49:25PM +0530, Amit Singh Tomar wrote:
> This commit adds device tree binding reset constants for mmc controller
> present on Actions S700 Soc.
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
> Changes since v1:
> 	* No change.
> Changes since RFC:
>         * added Rob's acked-by tag

And dropped??

> ---
>  include/dt-bindings/reset/actions,s700-reset.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/dt-bindings/reset/actions,s700-reset.h b/include/dt-bindings/reset/actions,s700-reset.h
> index 5e3b16b8ef53..a3118de6d7aa 100644
> --- a/include/dt-bindings/reset/actions,s700-reset.h
> +++ b/include/dt-bindings/reset/actions,s700-reset.h
> @@ -30,5 +30,8 @@
>  #define RESET_UART4				20
>  #define RESET_UART5				21
>  #define RESET_UART6				22
> +#define RESET_SD0				23
> +#define RESET_SD1				24
> +#define RESET_SD2				25
>  
>  #endif /* __DT_BINDINGS_ACTIONS_S700_RESET_H */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
