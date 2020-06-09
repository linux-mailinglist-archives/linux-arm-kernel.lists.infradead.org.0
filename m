Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C561F1F44B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njXY5+hwZ98gSRjW9ha3LjNLo0zrlbQd415NkkH2p4Y=; b=Kt0QVMyGagfs+H
	X6iu5ZaCAQ2H2DInXadynoEQqk0o7F4DshCKj7YuLbdBw9TT9hsQkoRq8zIhjazFRvqsLxlbrbXXL
	66H4Yw/V2XG8hrkQ8CWbDVQJUMnD+qUt3PP0uyWK813u2yLM0kpYnqwD2+vHKEnkipEIcGtqoD/1w
	paEteakBDp4dSECCh8Aa9lw9/FOTtQhwn70MIiVyW4s3Ov9hQoq7TZgOQbOnoByLcYB0TmjkFx+S1
	/aqYgZ1pI9lHQHwSOiSHlNEZdWaPR7Nf+MM1tVxeJKO1c+IVrpOorSzGpFeCacv723BSSORfhYPhW
	Xx4CWWGDJeUeeMb8cM1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiifE-0008Cy-NX; Tue, 09 Jun 2020 18:07:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiif2-0008CS-Ig; Tue, 09 Jun 2020 18:07:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh7so8329528plb.11;
 Tue, 09 Jun 2020 11:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=leBIztLZS+gycW5tDPBUooZkb1WMMdh915dWRfvmIIw=;
 b=Udt/fSiioTBFCo+SzRpdK9Rp4MHzgaXKP91jdrViNRrlf3IhivsOFcUPaKMGiH9qjc
 fN2N0NcPwTucK5KypB17fl/nvm9CzspLJBO6als1XmamXHhSN9cnHCAsoZSvdpSWUKjN
 l825sZT/YT998dqltM51cESrg12VV98CQw+82l9Sx9501dWw8E0kGfdx+uAbRJX5s3Rl
 Z8XQaXJs3RnCd8h2jO9x5crfltFaO8epHxFzBjU/w4j25gpsNmWdSUSPAIdqP3DkhfZV
 D8a9nzX7BcUNAGspW4kLUgZ+6E0TLKXVDqo+Z7bMwmIWZKGtnMp53TPDDzVbfCJ/1Lm/
 sh/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=leBIztLZS+gycW5tDPBUooZkb1WMMdh915dWRfvmIIw=;
 b=Kk84dacYJ5ns1gyr1wl0NtF2JeMdM2F3PDaDpuqDQlRnrEXaaoeyAVPuGBQvuR+jks
 bGRA6NZVQx/TxfjLzp7qk4MTycrKvoi6ixd2uRy6BgWYHCXAW8Iz57m0lABxaAEMyw1R
 YM0NXsW0cUnlxjO4a89ONlTdEwUbsZAjUvQm7hlQgjY++8oZ6H6AwaIEebEh5czNXShy
 ftO+GGWcu5iu3HbRwFEEhysE5NkEU8Rp47bhH4tmt2K/buJDiiL/6R7zNFlKWS5zjRwu
 nnTd6Mu1J5MXNV8GtHigTe2saNokWENEjrSGrWNttrY7JkID5Wxj6Y5FdLT4138N7Tmk
 67gA==
X-Gm-Message-State: AOAM532c1JogbJI+7K/PSe2K4yIYwBjz69YTu62iq710dhJ0Xl2Fa5ys
 4n60LySklAEgTjHY0a9eqWk=
X-Google-Smtp-Source: ABdhPJw4by/dyQj/70rTpHEZGgpHl+ORIEEB5sxvU9/qLdJKKjKPZvj7a58YrGkamO5R6/SKn4HDQw==
X-Received: by 2002:a17:902:ab81:: with SMTP id
 f1mr742977plr.321.1591726063862; 
 Tue, 09 Jun 2020 11:07:43 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o18sm11683012pfu.138.2020.06.09.11.07.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:07:43 -0700 (PDT)
Subject: Re: [PATCH v2 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware reset controller
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-2-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c3dc9b7e-4440-7e8a-3da8-b147c48c4c40@gmail.com>
Date: Tue, 9 Jun 2020 11:07:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_110744_617405_0024A03E 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> The firmware running on the RPi VideoCore can be used to reset and
> initialize HW controlled by the firmware.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>  - Correct cells binding as per Florian's comment
>  - Change compatible string to be more generic
> 
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> index b48ed875eb8e..23a885af3a28 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -39,6 +39,22 @@ properties:
>        - compatible
>        - "#clock-cells"
>  
> +  reset:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: raspberrypi,firmware-reset
> +
> +      "#reset-cells":
> +        const: 1
> +        description: >

Is this a stray '>' character? If so, with that fixed:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
