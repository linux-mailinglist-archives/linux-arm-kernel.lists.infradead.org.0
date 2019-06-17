Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528C8489DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTIjrzOs3w356fxexNruxvkkehtevMNfIFFzMoxoBjo=; b=UFLXT/6z326Axp
	wBX51+t8fAIqXCO1Lv0+qF61z3Qm6pbA25/VnvJcK7ZefHKBO2mbpxurTACjRUJfUOUXNIfq5ythg
	VnQDr/EnlxqqzcwIs2P2PxfxRYqZ0JjH21NSeHILHCvMdQudILaNWg3v0YOZezaxH3dXkdJM2Pc87
	W87E1NpuUDKsfgUgNW4SNUMHkuaI73TumMuetqoIrhaL/ELc3otGHnD//c0T0RSx0KmgD3gUBqhIf
	mPtkb4brJFAC+2KLfKe3IXUL7GgKVibniOn0JkxYRjV9VvGdI/+H5647MJKWKl5hukITZFGA6DHvC
	iQNOpZMDWDrPQ1ZGlk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvGN-0001J3-0M; Mon, 17 Jun 2019 17:17:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvGB-0001IL-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:17:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so4350560pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 10:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MfbRHst16AuRrONhOcPfkNKHkukWQnEsmkrhJDSukAg=;
 b=ulvmKH/Ju8SfbAVduOinGthQyf7R1nunpPaey9GIgtn38PX2rfEGhXRIo0OnMswZG2
 VgmtBAm+yh8sbbelDhY88OyC8R+YtRCAxCBp3n9Uih4r0RsBiUGQvimfWuwfHtrsaq0i
 zDV9K6u+07nx33hT8AK6y1N9fJhwNxZk8HLScZvwOpIEeic9zOUOKVZCPt53l63SE4Wn
 PAXmaRLDfXhYk4prT9KNuSWQdHMRKmx5TLAyy2ce2gLV9QxGsU4NyutBFZCGO/cUoRQ6
 7nzkAX4y1SGEPffZ1/pbW4U5kVtw6Zi/id53dxMNauVkJlui+XspKBJNDl7j6emwf5/b
 9acQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=MfbRHst16AuRrONhOcPfkNKHkukWQnEsmkrhJDSukAg=;
 b=fl1bgxsQFyjpGA18bFeUfKIHTkqQSZjl6asWydyAzxp9mjTUXKKPBRLvCc9lN9tJt9
 chpQMaEu5MYIJlK4URDgnnQCqEOD+s9yF//nNlft6Tk0Do6oOeFQ7PnZEmXZur6y12hm
 sQQd/8+CBnIXWNIOoKTKGvnewebIu1OZmVXtSinxbcN5Td4eOoPcphern8yrwP76sX3U
 9ZVPbffw2GA2oX0Fqs3DYqUL7PeTd2/xguCSrkzGqJGhQiS2F3nEGHX3BSVnzdusiYsw
 W/FP/RcsdRaOGGaRra1NBM0HIBY0IBoz1+1uunuNr2lo97FVaNLiMvYF7Y2PyfsUzvOv
 Bv4w==
X-Gm-Message-State: APjAAAVn9MucC2IQslo7Zbq9lohFDCbauIBwBMU9SmgbDm9TcTgR6kyb
 ZgJ/MEQUHVKtieVln7h06g0=
X-Google-Smtp-Source: APXvYqw4Ix7wxKE9E0iy6CWwDHfI59N9/BZUPm9S2eGlqyRfLPBlE7Ygl9sF7OTDXAq+cCbGrNoVaQ==
X-Received: by 2002:a17:902:ba8b:: with SMTP id
 k11mr7400665pls.107.1560791851987; 
 Mon, 17 Jun 2019 10:17:31 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id i3sm12795393pfo.138.2019.06.17.10.17.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 10:17:30 -0700 (PDT)
Date: Mon, 17 Jun 2019 10:17:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [PATCH] dt-bindings: watchdog: Rename bindings documentation file
Message-ID: <20190617171729.GA13807@roeck-us.net>
References: <20190617090953.8770-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617090953.8770-1-horms+renesas@verge.net.au>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_101735_612540_119A1C2B 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-watchdog@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:09:53AM +0200, Simon Horman wrote:
> For consistency with the naming of (most) other documentation files for DT
> bindings for Renesas IP blocks rename the Renesas WDT documentation file
> from renesas-wdt.txt to renesas,wdt.txt.
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../devicetree/bindings/watchdog/{renesas-wdt.txt => renesas,wdt.txt}     | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename Documentation/devicetree/bindings/watchdog/{renesas-wdt.txt => renesas,wdt.txt} (100%)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas-wdt.txt b/Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
> similarity index 100%
> rename from Documentation/devicetree/bindings/watchdog/renesas-wdt.txt
> rename to Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
