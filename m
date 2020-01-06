Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B5A131B29
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:16:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TU7DuHXWHczhkXK6YwyX+adhPcDXoITbjs6P+LZGPoI=; b=m1uQz9XkUB++/G
	lY4hfD9YLOYKlQRrkEZbiCLqfCmPg5CwAHW+ciOtaVnz+LiP3g+/OlWcxYeQp3E6xFdM8C4K/1iQf
	xpOjJ79HD5Jlb/Dgj4Hc7ms0BT23E6bSYvXtct+BKEoogB/zrjvnEtD9CHzWpc+QqjYeZDCFawhZH
	zqeOBauHiODPEyv0K8sW4VBLHzvb0/tGi7xUIEuqDLoRgWlNKliH1/9SHnxp5DIH7hGafIgNDPx80
	UNEqdTlydG4b3wkdUjBmWbhnr+IegKEwDqj3uf25VHsa29Xr7C0geSrwYBOE2etuAgzO3NMg923kl
	/c5QzOsipm1GEt2XXXXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioafR-0006ND-D2; Mon, 06 Jan 2020 22:16:09 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioafG-0006Mh-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:16:00 +0000
Received: by mail-ot1-f68.google.com with SMTP id p8so37144077oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:15:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q4aqEcEXQdHw3uki8qu3nWuz9k6ghGOYowLINem0O0M=;
 b=XPIcUTCPrSksVy45btFI1j+robN70/bvt8S4UhWjqXlGObSl2GOeFJOs1qCq24yfiv
 t0lOzrtSSEy2qAIGYTJA92inMXzG6Dzo2UA5f/4DS2PeqiV6YucX3I5yg4m8fRWExoZl
 erw6Js4ZBdfntH8u7TOaNp1/HpsTFCy4CEUGsjmxZonU3UhTchKHOT39h4WpEvdIDwrx
 UBWRZp/+vOJ9F8BdgSPttIpYEyCtxoJlb7Bgj3qYg3Ewq0veAOEqxnrnW/ubQImi7g9G
 GXwaYUatPnT1PWnSTW+vdeMYPNBznfkVaW/aVBKj9EiRQdAcr34be+nW44SDCHzAwM3C
 wNRA==
X-Gm-Message-State: APjAAAULuZQtbQbOhzjHXKHAhzUcixn5yltZFwfxtWTTbq3pz9GUJNaj
 ekCey4+L/yOhqF/+tMAMmqlFoEs=
X-Google-Smtp-Source: APXvYqwgGUejrSSi3eVpGi4t/MWK2VeVP8fOnLkaskPEQvIk9svORGOu9qLKc4BXmQjeaS4hAE6g7g==
X-Received: by 2002:a9d:3b09:: with SMTP id z9mr119283428otb.195.1578348958045; 
 Mon, 06 Jan 2020 14:15:58 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id l13sm21742626otq.78.2020.01.06.14.15.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:15:57 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22043f
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 16:15:54 -0600
Date: Mon, 6 Jan 2020 16:15:54 -0600
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V2 1/4] dt-bindings: Add Broadcom AVS RO thermal
Message-ID: <20200106221554.GA26925@bogus>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
 <1578072236-31820-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578072236-31820-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_141558_944090_856654A6 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Zhang Rui <rui.zhang@intel.com>, Will Deacon <will@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 03, 2020 at 06:23:53PM +0100, Stefan Wahren wrote:
> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
> must be retrieved from the AVS ring oscillator block. This block is part
> of the AVS monitor which contains a bunch of raw sensors.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
> 
> diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
> new file mode 100644
> index 0000000..7dce05e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0+

Dual license new bindings please:

(GPL-2.0-only OR BSD-2-Clause)

With that:

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
