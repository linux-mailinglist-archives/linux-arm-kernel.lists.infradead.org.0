Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC41E70C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7E7MFseq/4pFtlUO6KfNADYl9otsUMIE0/x4/8KZuE=; b=QREdrWR+mw3j9A
	rJTnuipwtW09cQf9uvC1RdA3gn94UpBic96luxLgWsqvr8mHpdH97SB9WwtaAG/0LsYmJnj/By/kg
	nhnGDAjDCgml65cCaPQnUhzA9XdiAGHg4brENEAyHt1b44rwnPSku/VdCQnWK6cDXpcfx4rD40Qz4
	qK8anX7s4lmtn2OhjdG/kHep2b9QEhJGVtmPKVR0uJPlF0dA67GMvG1KMEwsoQZk3Ba6kawJ7NaWF
	KDITVCETZUgZCgrj2Kf2DTwph1K5bmZTNSOu9L4xR+2peBR5wKLg3dYDq/jVv5USO+NNW+feAe6qi
	myq/Xrs7TZN7Wf9xrc8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSIK-0001Cp-MA; Thu, 28 May 2020 23:50:40 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSI7-0001CB-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 23:50:29 +0000
Received: by mail-il1-f193.google.com with SMTP id a14so776133ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 16:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2qJyG0GFuzoWv8bxaOoVXs4zVLMpWwiclg2dMSlRSiA=;
 b=MgA4rxII0kEg+cXlfPcxBdLQcs1D6v898E5erAHrMBqn1I36tevTaFZ6GHPvqvCD1u
 gcQKghkN9MU60r/ohXEWrOLd2iGnEnh8FBLOq4MRnU+Dctrk1L7U0sPSFT4nsdNZyycu
 DQoQnO1Fodg5D2J3Q39gcqKOTQyJhjYp+2nNbQuLtGRBkl6/txx6TZru+HO3oMAUSStM
 5xUajYM0fe9EfhC1dJ0sR/MkbkZCakn9MDAQ+aAriPxlxOqjRAE6tq6BLyRWQu+9nUTW
 3s3lm6Ej4lbUh+EMIPIKaJqfnUnS8m2I/e1AS4NpCKbeQMx29IQjocr7tUcCrmQHYKDG
 MJbA==
X-Gm-Message-State: AOAM533HodTnO0iYIBLAC8nuXePK2hf7CoNOJTfTGMeTy5e7Yuk7L3oP
 qSmpRo6oDeQ6FkZnTBHva2/k7xwofQ==
X-Google-Smtp-Source: ABdhPJy/fymDNPaBLeg8iuyl7WPp2P1JP7ye0QdzXAMYnnMfUAKyg8ZzrB3TvlVTBv/KbOx2mJi/qA==
X-Received: by 2002:a92:9f12:: with SMTP id u18mr5160160ili.287.1590709826961; 
 Thu, 28 May 2020 16:50:26 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y15sm3906169ila.13.2020.05.28.16.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 16:50:26 -0700 (PDT)
Received: (nullmailer pid 915140 invoked by uid 1000);
 Thu, 28 May 2020 23:50:25 -0000
Date: Thu, 28 May 2020 17:50:25 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v2 3/9] dt-bindings: irq: Add a compatible for the H3
 R_INTC
Message-ID: <20200528235025.GA914475@bogus>
References: <20200525041302.51213-1-samuel@sholland.org>
 <20200525041302.51213-4-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525041302.51213-4-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_165028_815344_65DB7156 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
 Marc Zyngier <maz@kernel.org>, linux-sunxi@googlegroups.com,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 24 May 2020 23:12:56 -0500, Samuel Holland wrote:
> The Allwinner H3 SoC contains an R_INTC that is, as far as we know,
> compatible with the R_INTC present in other sun8i/sun50i SoCs starting
> with the A31. Since the R_INTC hardware is undocumented, introduce a new
> compatible for the R_INTC variant in this SoC, in case there turns out
> to be some difference.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../allwinner,sun7i-a20-sc-nmi.yaml                  | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
