Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B136A2AA97
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2D9mHVDcphPm3qO5LMkqOmN1AibxN3s3WGnPRXVCIpk=; b=Na5GO3az0BWE2I
	D7GqdLT9tMfPqRT7MpkBrJ9JCDq7MhRBjubdPu8p/T4oQlkPWpTvezNDagJuk5iV8UEdjXYzyPV8P
	GyuUUDk8myN+IEIMjkZSuWxsIa3oD5QVEan4Y0pmNNvd9/1xw3FzTK+nJECVXM+W0ow1jyXaaloQQ
	1bD96EsgRs057kgPdbgHGJepaj0gYw/F7X/ovZEspvMAnLCFOEEKjgeYTYwxJwKiE9odOKaUbGmiH
	miU+sOQg3a/rWUK6CUlRWigeGD+RlRb6q8Mfg+9zL9G+N4djlqTz4OURPLcj8nwzHu30ALtMibyMT
	JX54KYd7oF+/vFGu+hgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvez-0002bK-PC; Sun, 26 May 2019 16:06:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUves-0002ag-6B
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 16:06:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id n14so12845580otk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 09:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=snoy8tugr3y3IvMDEaVYed+w2Gz83p0ghzZ7t8kp7Zc=;
 b=WaxIbFZ1qtSQy574C1TfY68sJSBxpczVnw2KNhaWyF6AhArHKPBuhcwBtPu8ptr1gS
 toe3Uby8/BhF8GQWfEU1CD9lI0gjJGQe1NjJoiOUG/WfZIu5DvtEF/jl4GOLUc0r7MT9
 x4jjCpWNcyAIZtNWF0d39mSCf/IaEMPBCiY+1p5KiWGB0Fjne4DqBWqbXZSDFpFSHGow
 NCLHUg+OaVW0egOcLEGNAZhJFFcWdkAg8ZnD3M3rQ4X8pOXUCL6kn6NRPD86uGHEE5zY
 GjEiRSHJ6MoDkpzyYx64gYvpE6u/cKUqgehUtWfpoJx6uh0xJjpGbmmSegXh+S9Hc1fr
 LeEg==
X-Gm-Message-State: APjAAAWYyLRuzgrV2/N5iWi77zbrdVSKPgbf5C0Q9JAykVDvxXYXErti
 +nRkmjsRcrPahLgH3l5TgA==
X-Google-Smtp-Source: APXvYqwjhgS9mXpmu9ZSby6zJl/uab7TlVy7RDIASzWAm6+qU9OvveXrq0TywrEJPT/dP68ndv4o4Q==
X-Received: by 2002:a9d:694a:: with SMTP id p10mr4907637oto.61.1558886761150; 
 Sun, 26 May 2019 09:06:01 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d30sm3023409otk.19.2019.05.26.09.06.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 09:06:00 -0700 (PDT)
Date: Sun, 26 May 2019 11:06:00 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Message-ID: <20190526160600.GA1399@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-3-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_090602_225191_AA5B8E7A 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> Add all the missing vendors used in Allwinner DTS.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
