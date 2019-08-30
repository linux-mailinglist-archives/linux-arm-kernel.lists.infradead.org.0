Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C27DA3C81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xr0TDLa91M0A5dradcTZNqPaV15Av0lc9NuHIR37wWY=; b=ZuLowIs0K4P/4d
	fPtXg1uCzW04C3pf9GEV5P+OlSIhALJWd7ZBgmG8lhR9OWFgr08XYEpobi41VK3I0zEIfEZFM3DnO
	NA9kJmv5ccaY/wi3xlYlQwiKjMXfn42RyD6tg409zZRKDa0Mgx7X3wrw0j+CVw+1MeV278mGALeuj
	w8hP48wVOoWY4ul3d8+TsvuAwNQ3GQ5Td1j6jk2S7JGAKPrdq7sLIZpfA9GJxgylMSUJZVnGl6YBi
	2ijO9K9hGLJDAKGxlkngTn2h1Wn4V+uLlKRx/v1xbqhayZ+pP4PDliTkxnsT/I6vrZjKza5wXikhv
	e9dVSBnjkcgtuMZy5WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k4Z-0007Vz-N1; Fri, 30 Aug 2019 16:48:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k4M-0007Un-Hu
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:48:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id 26so2628472pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Nhls23xbDGnUOtZmZSQGkaRaqazmjQF4wx/66py5COg=;
 b=k1b2yLM03jtlRLdZJ2CwcVaSEEi2pqzP7rpWfJHtUuzEV1Ll1CC1VHBINbmYGCGAlI
 zNxKUWJySUl8InbCuar/A+adgfGuqB8VHLJ09EY4/uYlH5I+XZCQ480u/VIazt8jNoBD
 R7Azfoc5abhzygYcDYQRU6NPcA4YSSqaFsGPS59i28XL9gZCbHhbd57jcKnw01XmUep1
 7YMP0e22/FFl1+XoQ6E+aYH1Cp64Z+rcZ0ZBolXa9p+zOqt5uCpiox5iSHrLfgLqTxOB
 lCd2cRLW5HgU7TKA85U6mOwx5Kov+B78l7tZJb0unD3af03ZxBpikURZse8EQ7Zh7Cna
 IT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Nhls23xbDGnUOtZmZSQGkaRaqazmjQF4wx/66py5COg=;
 b=NIzVUEmIWcD1z3+DlLK4Gvq8Cy1Tpki4gRawnYC56zIOnpwo85A+bJ3MyOspiw4NR5
 +oAeyBUjnKfsCKTRZmJlSYgPt1DRnxH+7Km35EaTVZNHm/GPSFQaMsiKh6AMdl2eSWa7
 SqeNebkgRegNiMw7/LrHPFUATTwXjuv2Oyk8xsY3usa9A00qJczBWzCP0USEAP7I+JvW
 KPZ75ezdTBZhR3pXldTBGZzDVFGM5Ut67vs7GP3ByfFzjgH0rBgIGu5dGBEF/mV1Wt7r
 y8/9lDDmfTrCneQmIhuzm6qWHASTVGLn//zSoFLv3mvyoatt/xKBvHs6hbOEFNx7Og5E
 ydnA==
X-Gm-Message-State: APjAAAWTOmKNhl30vL6hPZMK+/xxq8wkIfRj75jz+K4lC2ttDxqBeXqA
 WPtDQc37nyUINTJG8oN15+U=
X-Google-Smtp-Source: APXvYqxp+u7C0npib0ee3GaNBuW/2YaLw8oR/aYYj79MXLdN+1c2/iBCEju/bL1wN4sctbwys6W+VA==
X-Received: by 2002:a62:8204:: with SMTP id w4mr4612864pfd.30.1567183693830;
 Fri, 30 Aug 2019 09:48:13 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a128sm9867876pfb.185.2019.08.30.09.48.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:48:12 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:48:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RESEND v2 1/6] dt-bindings: watchdog: Add YAML schemas
 for the generic watchdog bindings
Message-ID: <20190830164811.GA7911@roeck-us.net>
References: <20190821143835.7294-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821143835.7294-1-mripard@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094814_590126_E2C0D066 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Wed, Aug 21, 2019 at 04:38:30PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The watchdogs have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> 
> ---
> 
> Changes from v1:
>   - New patch
> ---
>  .../bindings/watchdog/watchdog.yaml           | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.yaml b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> new file mode 100644
> index 000000000000..187bf6cb62bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/watchdog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Watchdog Generic Bindings
> +
> +maintainers:
> +  - Guenter Roeck <linux@roeck-us.net>
> +  - Wim Van Sebroeck <wim@linux-watchdog.org>
> +
> +description: |
> +  This document describes generic bindings which can be used to
> +  describe watchdog devices in a device tree.
> +
> +properties:
> +  $nodename:
> +    pattern: "^watchdog(@.*|-[0-9a-f])?$"
> +
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Contains the watchdog timeout in seconds.
> +
> +...
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
