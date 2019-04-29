Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2F0E94A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yIxsGcW++HsGUEF4PyOlvogsRyXZRHSTZi0txZtpq0=; b=SsirzpKjT8mLla
	8upGn0r1rI1u3MJWgEoOI46K4jVk2/t2WRS5/Yrv1E94HY12Np1KjeScXmcgAzciLY9OwYuu0+Tga
	AKTe3v7rloRLuW4h/1z99527jVfWylDXj8YNxJP09TxSGvB1CLFLkhI+VoEL+h726McNiLlbSyn5L
	zzIsNuaah8belNSsMY5eWIL4pE9K1Ry2DnZQL9znLt/w+CZLYG/qaP13vVrWUDAtpqsCTK/dHeE4R
	abcaSsm01zHYY8RXJttHhNWzZJdCRG56NAWY26y/djkLT1RylLaxt0CGmh9KGkUj1eBvZ1X55zCVO
	eceG7cP5BH31leMS8yvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLADP-0004zs-PX; Mon, 29 Apr 2019 17:37:19 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAD0-0004jE-R0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:36:59 +0000
Received: by mail-ot1-f67.google.com with SMTP id r20so8265812otg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jAzJmF2TDQHSyudozQ8MRP+x53QYDHzdtWrUcOyie5o=;
 b=YNZFJCxz0B1oVbaiC15155T22tSPqgVDDvS+dX9Nc2HXWWmkXDtBJS3r6sXjDrCzUM
 /lWvMs16Sm0GH8DdzhuLWHS2qUsiy9QkMjp/f+6GgTtVtWIvI48uQvibM/hF8C7N9VW0
 /3TaXRp0piosODDTrV6IzWaoyntRZqG/JnaJG/mBLPGf1c2sQsQl0ff1KGWuKPr3PFH0
 8uJMrL7I+ENrCaL49hR1qpju0560wZQQp73DANeK+qzyTlwhM+OOS+3ky1wPRnZKteXX
 5k+8/eGHWo+e/qlbHNTL8lF7bgJx50O1iEtVlj8dFY+D4fk92ymY7msUer+fB7DriBaz
 S/ew==
X-Gm-Message-State: APjAAAXP9dNEHkWXnzCnYcghGrMHPKCxqnKuq5HDct9nRg2wiOKp7MSv
 rl8scMMUP0nlKMGtV2Vx8Q==
X-Google-Smtp-Source: APXvYqyDmhrZrBxVsjETXa+G0jMSBEdawMchYDvBe7bdT/A54hBJgsvfF2vIblFu+/8+xxw3vWkkFw==
X-Received: by 2002:a9d:7f89:: with SMTP id t9mr23252837otp.169.1556559413449; 
 Mon, 29 Apr 2019 10:36:53 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s26sm13741338otk.24.2019.04.29.10.36.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:36:52 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:36:51 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 2/6] dt-bindings: media: sun6i-csi: Add compatible string
 for A83T variant
Message-ID: <20190429173651.GA6551@bogus>
References: <20190408165744.11672-1-wens@kernel.org>
 <20190408165744.11672-3-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190408165744.11672-3-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103655_223142_CF78C9E8 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  9 Apr 2019 00:57:40 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The A83T SoC has a camera sensor interface (known as CSI in Allwinner
> lingo), which is similar to the one found on the A64 and H3. The only
> difference seems to be that support of MIPI CSI through a connected
> MIPI CSI-2 bridge.
> 
> Add a compatible string for this variant.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/media/sun6i-csi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
