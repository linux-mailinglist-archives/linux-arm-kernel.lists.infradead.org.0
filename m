Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABE1E2D5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 11:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsLTOcXneSkDgNllPJk+4EOCi9SazGDA6MoIZecpWb8=; b=K2xBwF1Vf5pRYo
	GcAfaeU9bM/Z2DRVVvZNFDnNZ8ukQWEXnifvu7tsvkZGgwTKR2HHZYtHyyZ3JUYldiADjFaZAzxWt
	Uj87hdfkxDVj2pQ2cwJnn/UZpFss6Ky6A9vPbvY2lYfoxX2Y+jai8n23K6NLNUn8tuVq+DltKOl8r
	Vev99G8gMaGgDAReiS+4NKcz6DyMp1eIK9crxCmy+DE22yi8jYgP2oB3Me7/O3jSRdvcGW1smkLSp
	lcKfZ1nQJSzJohwG4O1DJ3xAlKA4OSs8h+V4paGDQV2tlJWyUwWBbr0OZ4taslQBv2SfM0dYF2wMO
	72EBmAGyvGt9puc82x7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZSy-00076J-JJ; Thu, 24 Oct 2019 09:31:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZSo-00075c-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 09:31:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id n15so14450823wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 02:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6XIbW73y9ctw9e/3P96K5zJqGLVfoAK/VYWpXjJw2cg=;
 b=XMP5pmUHvn9M98uKH+J5MZT8v5M4PCWkjafEhZUbn3F2eeF1DOLIflDiDHyJWqq+/i
 F/KS6/w6gkyxjYy4l1Dv7ZDbB/wOtgXlNitmSlg6K4TDT4loDeB9xqdD1ZQJKyukOv8T
 bgaMQT0ZFy2X2EZl6fsDIhAbKc09Du3rC8ATq7cJQGkgC77uh+FmMiK50UuF9KBx/uBy
 LriRMp2Bdw7ekGE8Iccm2v1B4fthtqUgf9euw+nS9CmK5p0qQSDfD6EiLr1Mu3QJ5gw4
 V7G+qw9j6JUCU/RvlKTO6UPQezqdO8LRbeZ5ZMvG4w7bJ/iWsuczWeBRSd8k0DIh5XTo
 vrmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6XIbW73y9ctw9e/3P96K5zJqGLVfoAK/VYWpXjJw2cg=;
 b=bk1wnsI5ZnjbK2hkp5gRPWp7WLMksPIHtubfftjnXIAl4NDdnXyZndMiRdqBZYnat8
 /E1EwGtpKGvauWxpbJoB4HfJemfA8Fe6rgLdZCY8kWXZVgyuGQfu1CvVolAR8uYAhCOl
 QMWt7DXUOEQ+E8IIVQRRJldyRvway3MvOnF4bt2kMKleqEjNYyYH/IdrojnxwyolHGLW
 g2c4q2PJ7bVu3H6qEbITsCj4QUXQXBl4fAGX9YnQcCxk/sHMZfCQDMuLC3fOPpxZqVBb
 7/Jm92aRf7X7Ew7SK2SFqzLxtDL3fbcPlbzy2TdwECwHN2qhZ0o3iB7sVQra3qCiZrny
 XxWA==
X-Gm-Message-State: APjAAAVTFuPVbMbM49DpmgmF9yCWoAvn1CW+ocVTJIoRn8bnxVLRr4cv
 jsUONvStXgDYapQnOBD4kEY=
X-Google-Smtp-Source: APXvYqwZ8rjiLOJ/UB5QcbVNrlN7zQLDzi8Rcsr89hkCErMnGSUnJEExfdTvM7cc4w4Yj9zFIeYJLQ==
X-Received: by 2002:a5d:404d:: with SMTP id w13mr3037712wrp.185.1571909482912; 
 Thu, 24 Oct 2019 02:31:22 -0700 (PDT)
Received: from Red (lfbn-1-7036-79.w90-116.abo.wanadoo.fr. [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id o6sm14733871wrx.89.2019.10.24.02.31.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 02:31:22 -0700 (PDT)
Date: Thu, 24 Oct 2019 11:31:18 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ss Security System
Message-ID: <20191024093118.GA15113@Red>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
 <20191023201016.26195-3-clabbe.montjoie@gmail.com>
 <20191024065005.hdypdl2dgqsrry5i@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024065005.hdypdl2dgqsrry5i@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_023126_327070_194A1430 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 08:50:05AM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Wed, Oct 23, 2019 at 10:10:14PM +0200, Corentin Labbe wrote:
> > This patch adds documentation for Device-Tree bindings of the
> > Security System cryptographic offloader driver.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  .../bindings/crypto/allwinner,sun8i-ss.yaml   | 64 +++++++++++++++++++
> >  1 file changed, 64 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> > new file mode 100644
> > index 000000000000..99b7736975bc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> > @@ -0,0 +1,64 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ss.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner Security System v2 driver
> > +
> > +maintainers:
> > +  - Corentin Labbe <corentin.labbe@gmail.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - allwinner,sun8i-a83t-crypto
> > +      - allwinner,sun9i-a80-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus clock
> > +      - description: Module clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +  resets:
> > +    maxItems: 1
> 
> The A83t at least has a reset line, so please make a condition to have
> it required.
> 

Hello

The A80 have one also, so I need to set minItems: 1
But setting both minItems: 1 and maxItems:1 lead to a check failure:
properties:resets: {'minItems': 1, 'maxItems': 1} is not valid under any of the given schemas

How to do that ?

Furthermore, I try to do that for interrupts and reg, since they are also mandatory and same failure.

> > +  reset-names:
> > +    const: bus
> 
> You don't need reset-names at all in that binding.

Fixed

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
