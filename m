Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900292AA94
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 18:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvXHenBJldyZCfoRnzPGS/S71nhbEiywIBf7xLRDYDQ=; b=Z3tobStjI1Gua1
	IgjIhTbgEIU8gVUP8WGDjRT8o40RO5ZcW4ZCp3MGTPLwA7cwhWzSRU+h4MM+HsMEj2rPmB2r4F0xg
	LOAYKef1oi1PzkJz/hTUxpRjfndBLAkja/U2Y0i0twP9fxpUiVc0wQCUSXbAmeeby5qzAOfEsPEoV
	tAa+nWmhYE9bnJeWy1NCW59t5SbiDST+a0NFNCyaO8G6YoaMo2BZJYZ7Hw6215qtFKefoytZ8Fc0J
	WSga42q8nCfeX6frygBt+m977op5kw11jvBBmK5ZIBdpacjRBL5kp4fO8irKmIBzkvGZprJU2Hadf
	pm6PQE85TG0a3DCqfesg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUveO-0002Fe-7G; Sun, 26 May 2019 16:05:32 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUve3-0001Xz-A5
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 16:05:13 +0000
Received: by mail-oi1-f194.google.com with SMTP id u64so10318183oib.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 09:05:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=spCObiZuoXF/2k81ars4iYeDrKAN8YsErQDyxpRSzfA=;
 b=p0kUx0Kwu7BDUTxXq8EvhwL1F7O4EwkCQ+O49jHeFLcfPucIz2QIt9u9SuE/lYh97i
 ndKTFNXo19E6vFpDd29AW5pUM/lelkt+uZ1ScdOwWCI6mUGHKGNHuma4m5OFE5m3NvDs
 /STCsuMo1LVAPBEKRtYB5q6F2GnguD2hYsRAUCX9j19NtS5iATs9E/xys6rZLVjrQNbB
 Zdavcfnxw4V8/1R1/CaL4xONKDLsSyXPB8s4yVOgVX5TFni0FXjsX0NE1HNbM2SKf6F0
 jK1D/alHJvn4N9YZSwroWbaG7JLFzbn7huL/+mtLQDT1PsYpScFTC7LKurY0EKtX9gaQ
 h9ug==
X-Gm-Message-State: APjAAAUW/xo3rzgVtxn9+M3SexQwpo6rEXT/sj7SF/QmpAUIlkZHTDUp
 hjjqvtpo0Rw3wQ46JBygjg==
X-Google-Smtp-Source: APXvYqwCSzwp9mqcTNtS5Y5ZPPLAlTCwMkCsQQllnyEUr/B+lnzJKIwqjAFFxq16cy7G5aq4uPOhyA==
X-Received: by 2002:aca:ed04:: with SMTP id l4mr11677058oih.64.1558886710201; 
 Sun, 26 May 2019 09:05:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k3sm3211314otf.42.2019.05.26.09.05.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 09:05:09 -0700 (PDT)
Date: Sun, 26 May 2019 11:05:08 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/5] dt-bindings: vendor: Fix simtek vendor compatible
Message-ID: <20190526160508.GA32215@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-2-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-2-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_090511_517987_FBB11776 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Sat, 25 May 2019 15:41:37 +0200, Maxime Ripard wrote:
> In the text file, simtek didn't have any description and apparently this
> confused the conversion script. Fix the simtek entry and add a proper
> description.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
