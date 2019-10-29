Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4CE8D82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMq95Aqj29PwakMFZJDuFRKwiE0jw/mCiGO8du7t4Ns=; b=IqT6VvEXwp+o8B
	lLR74ijbVVHKfF7Wh/cEQ5AoL+r69noKLcXvNadJu6BaLDwwAbFGFQE71HNYjcoqcr2y0u/z2dAJl
	Xo7zB6ka7p53ZDWQ26WUXafeyYQJfP1+BlBznuiZrsm5cd1BZbsSiQXC+SSiYu8CvOn9BIeTj79gE
	8cbQPnb7GkYFz72Nw/kaVU0KB2Ty7Uv3cCL5O0emEvoH0lQhHLqS0lOCKEscGJ/Jdd5QGGOp/aMmL
	ca9JD1SiXdGl/LY4E2mjXEZe1btg+aD9DoBsEwxkbaaYSOSdmhlgMbu0ur5gOTJYREnZkxw7K9iY1
	TypawS4sVReUA3ZDGOHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUs3-0000Vc-RB; Tue, 29 Oct 2019 17:01:27 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUqB-0005oA-GB
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:59:33 +0000
Received: by mail-oi1-f196.google.com with SMTP id i185so9538208oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:59:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WEljFb7fdnZ7H/05vl76i/wPX1q7/WajKC2wO1/piAU=;
 b=C3q1tNnEWWYyCfOqdK+vCTn9bMQh+QuWX4ynMOHrXGnCpch8XRCu3q4JxEf8Rb0rGv
 DJ5Ygo/rM8LZOttXUMljSWMg4dVKzUQNJkcvEvxvmaGQEoXzFOsaa4HyoUETr2KTEzMI
 mpXFmN6BI1PDytMxVwSYZ335ah2Zj+fvRx766Tw9B+hWtWD5UjwPQLVfwAq6YC94YxeJ
 OQWbvMvzT055c7J+Vw+emLc2CmAaMAPjGUWq/qb4scvDRoCm+n8GBJUiriDz7ky3Aqcf
 w6dngsBRSZQJMddprhYLJGuL4kvGcncMbDfddsvM9FFxAHtbds0cIyEeiRRF+KPFgYaN
 8ZJQ==
X-Gm-Message-State: APjAAAXj4A4pJwfdKSd2VKkhr1kibjMLU1jSWZm2+OnlUZGWb72+xhC0
 x7ias2NdLGG4xGD3GK+ewg==
X-Google-Smtp-Source: APXvYqzZn8tr0orO+5cx6rMdFkShcbrABGLcIDgX+2WMu+I6/bo6/LAyDfAJE1DqoVUT6p1xLa0LDA==
X-Received: by 2002:aca:5015:: with SMTP id e21mr5136685oib.174.1572368368009; 
 Tue, 29 Oct 2019 09:59:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o22sm4676415otk.47.2019.10.29.09.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:59:27 -0700 (PDT)
Date: Tue, 29 Oct 2019 11:59:26 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: can: Convert Allwinner A10 CAN controller
 to a schema
Message-ID: <20191029165926.GA13915@bogus>
References: <20191022154745.41865-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022154745.41865-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095931_555928_D86ED7BC 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, netdev@vger.kernel.org,
 linux-can@vger.kernel.org, mkl@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net, wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 17:47:45 +0200, Maxime Ripard wrote:
> The older Allwinner SoCs have a CAN controller that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../net/can/allwinner,sun4i-a10-can.yaml      | 51 +++++++++++++++++++
>  .../devicetree/bindings/net/can/sun4i_can.txt | 36 -------------
>  2 files changed, 51 insertions(+), 36 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/can/allwinner,sun4i-a10-can.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/can/sun4i_can.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
