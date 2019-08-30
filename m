Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3B6A3C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04BsSlL12TBp+eq2luwJlUHtDVM83fe4HCNBpXt4dAw=; b=WRh12Rf9UiYr22
	DejnkC8uyN7PabdFOOVNgfS5LInzfQ8iYqgfhGaYg7GSS6r2gbhEZFEj7gNOKA32oX3HFVTMrhAS2
	Zy/LJ/F28dYFsKLUhOtvYyFZD1kMZ6Stc2OWMdCBi8nfiG6A2TQcDGPmBp04v9LdU8nVHXTDZU1nc
	FlpvkvvpDIFAJrCHSdCuv2Ln5Yi5WQt7TssDezRpXqRgeormx57l0l8/JAe2/JwFpItnwrZHO5xpy
	0ZXQVIV/eXIKc0M365dpeKlxZpXKoHqThJYUoQTUxZ00oSPONy0zKp6TrXCRZnZWT0HjJtrMxK3FR
	P4XmhrBwIcOhmVafVW8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k5B-0007vm-SN; Fri, 30 Aug 2019 16:49:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k4f-0007hj-3n
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:48:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id y9so4992343pfl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NoWyd+lYQBmF9GqrvMJmB3YO9IYLD77A1CH88ORAoIg=;
 b=mTo/FR4fkrBzWT0O3+62g9Qp/hu9V6F1vWpyevQS1U9veZ8PigBugh7Xu1/yiPzzxX
 y9aB+4fBmnT7mM/glcGZtAVaeYan5GUG5/xptUWu12q1Rvw/joHk66SdWEa0lXrRCk+S
 XVJwC1Zr06N2YjnCW+zQGNsE+Qw5srI4SuSk35x1eeNmPHLDZJQGgm+234XBXtDzM1HJ
 WM3KeWm6aQ//qFhLgX2e5x+WAVmwKv8sBhVBZ372c3sx516h4Zt+5It8lgwnS35ZVEsT
 fwVXRVOTpSdG9TjXUJiyPD1u54XnITkFFz7PzM5yCxiOUVhgt6sCEfNGMFOs+ZdBxKQZ
 s7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NoWyd+lYQBmF9GqrvMJmB3YO9IYLD77A1CH88ORAoIg=;
 b=Ecu/3q7Eeh69heEZa/38/eZ8enZfVP49wxnbN3uC9EpOCxxSZ7VaH8qQm8rj+ZX0iX
 OsZwQFgkBXlE2PcSkeMT6k5r+Dv5lR3pEnBbVLeu/4q1XrX9+MvSIF/tAaGYg6o2hBAh
 IfDp0BS/4PXb3iLBlxfWUEsWeq64OPMpR4yRxsEoXmB/Z5GUweIDqwDrrObCIvbbklnW
 1hr2wPJl5UsSw5Qy91b/6sv67QxlZbUmU3rYNTG4lALk9ES8cixwWRM53DMOSTDxH7p6
 lfnQH5LDIycBqBvrgddSaWEA0z2k2NypsH/NC0blidvU+aIvBW9ZTYe5osfKBbuo4oPM
 Wkbw==
X-Gm-Message-State: APjAAAV8TKKzDEfutZGEQ7u7tVOVc6M0loEJ2vz8L0iC0Udu7q8RNF8n
 h4y+Hd8IlfZPEAA2Q96LqTg=
X-Google-Smtp-Source: APXvYqxoPmqdngw2RvRJzBNod1E2jSVJcIABHSzC/kOkClI3TWyveYCid6Dk7zA39Rc8F2LTKQAPow==
X-Received: by 2002:aa7:8488:: with SMTP id u8mr19621731pfn.229.1567183712754; 
 Fri, 30 Aug 2019 09:48:32 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b14sm6882699pfo.15.2019.08.30.09.48.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:48:32 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:48:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RESEND v2 3/6] dt-bindings: watchdog: sun4i: Add the
 watchdog interrupts
Message-ID: <20190830164831.GC7911@roeck-us.net>
References: <20190821143835.7294-1-mripard@kernel.org>
 <20190821143835.7294-3-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821143835.7294-3-mripard@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094833_337688_81115CD9 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 wim@linux-watchdog.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:38:32PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner watchdog has an interrupt, either shared or dedicated
> depending on the SoC, that has been described in some DT, but not all of
> them.
> 
> The binding is also completely missing that description. Let's add that
> property to be consistent.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> index dc7553f57708..31c95c404619 100644
> --- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> @@ -31,9 +31,13 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  interrupts:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> +  - interrupts
>  
>  unevaluatedProperties: false
>  
> @@ -42,6 +46,7 @@ examples:
>      wdt: watchdog@1c20c90 {
>          compatible = "allwinner,sun4i-a10-wdt";
>          reg = <0x01c20c90 0x10>;
> +        interrupts = <24>;
>          timeout-sec = <10>;
>      };
>  
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
