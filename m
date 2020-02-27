Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7773A172565
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtOj2Dnqo7eFNuUbLN/Y7lZURdOqfEdYPrCqI92hL8k=; b=VranmrQ0tYEr8U
	WdLiaJ8xez0CQw/kUjuaY0h1n2qXlvztQZ8PcVQ3vdl4QtQTtT/1xWZnen2hflQF6gyvWCeR9Mm+K
	QBGGokR5Dp+togTCJtkqi0JzPzT9jGju/qR5MWf/nVcvH/v0OPKhdo2rZ2Tlk+tjrAR3tPyIS1+UY
	f1PV5/WV+qc5/RkVRQDYIXC/wEM49Fa9U6fwkWK5Fv5LFJI01l+yfNm9BeHjPx9Y1Bc+trS+58U0E
	N2mjrEtPBjP81SR40hL9JkvUPJ116mwWSDH+Z0oQiCNg/xGsGs7ZuKNswHc2bxzKeOPPWraL7X3BU
	dI5tVogvd0XnUulCZFbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NGM-0004xJ-4s; Thu, 27 Feb 2020 17:47:54 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NDG-0000y6-7Y
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:44:47 +0000
Received: by mail-ed1-x541.google.com with SMTP id dm3so86561edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vN4LAevYUXgR/zeHryxyZWF34rkf9QisD87DT7VXpik=;
 b=MzmN2H5vmBTYdKDibAeWGqpCQCe6Z2o3Y3bf5tydUfVm4A3D/k4DZVdfmrtXW8RouG
 dpUM+SYkUFgmrGWzeKCwsVF9moheAC338dfB0OH9CbsatEE6rNolXPLdf0qMtBAJJW11
 M1OSp0A7hpVRPA6sOWPTWaP3P6zpncj426Rfo0O4Po25giw0SsFyLSsfjozZXQXDEyDJ
 ijb0gzfwUOc8OQCliNsi4mkFKmI/phbSB5lUdRF21chW5F2DGMBu7R2J4fJCokB27O7M
 GBo8VYhvHbOMJ3+/e5wFi0hy+Sq7eHe8H62Q8/v/bh42ZhYdxL8ADn12qv+POaJkf1FE
 q5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vN4LAevYUXgR/zeHryxyZWF34rkf9QisD87DT7VXpik=;
 b=G0KxkN2mYGHf1ikIiqSmNkKPNCF90RWtHSu76in/Sc8ytJmU9NHM4+rvNl0NGXrQe7
 q7xVhyvtb7wqOjwoH7G1aOv5DbCpHhNWsNc3P1eYUTBSvg8BQFSij5MZX8tEDQMQvJbR
 SnvUN17QbdmvOsitIhRG87PNTPH0C0jyPIWrdik/HAWGB4wa7haKssVZ5yK4JcG5O41a
 Wx7VMSgB5nHuyWv0ZJvKfwk3BOCjm4tbsWB+ApJJvMh2SX6JILOTajtOu1vbKQc8zcjN
 X6gIEYE1Di/n/OETlAek3bjcc++i8EYzXIMAh7sSpukl96wb1OWHpkiIyuyR/d2B1KSs
 wM0A==
X-Gm-Message-State: APjAAAVMiXDek0NHUrOsw8Dm0nb0Ll5wEh4KYY2L+bStW3R0CrR+VULz
 5VlqKL8Vm8nPMPm9anEGaS0=
X-Google-Smtp-Source: APXvYqyrJ3zhGETgW4hEQ9ZRCb/P4RcERojU1JvvH4X6zB57je/Pwvx/fze30TGbjXuooRpLllAQNg==
X-Received: by 2002:a17:906:7c9:: with SMTP id m9mr190311ejc.243.1582825480096; 
 Thu, 27 Feb 2020 09:44:40 -0800 (PST)
Received: from [10.67.50.18] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id l11sm394908edi.28.2020.02.27.09.44.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 09:44:39 -0800 (PST)
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
To: Russell King <rmk+kernel@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <1bcb9a92-d739-6406-6414-783b19bfb66e@gmail.com>
Date: Thu, 27 Feb 2020 09:44:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094442_305632_BBF98261 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jason Cooper <jason@lakedaemon.net>, netdev@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/27/20 1:52 AM, Russell King wrote:
> Add a DT bindings document for the Marvell 10G driver, which will
> augment the generic ethernet PHY binding by having LED mode
> configuration.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

We have been kicking the ball for way too long but there really ought to
be a standardized binding to configure LED modes for a PHY. Something
that we previously discussed here without making much progress because
the LED maintainer was not involved:

http://patchwork.ozlabs.org/patch/1146609/
http://patchwork.ozlabs.org/patch/1146610/
http://patchwork.ozlabs.org/patch/1146611/
http://patchwork.ozlabs.org/patch/1146612/

What you are proposing here is just a plain configuration interface via
Device Tree, which is really borderline. It gets the job done, and it is
extremely easy to maintain and use because people just stick in their
register value in there, but boy, what a poor abstraction that is.

Maybe you can resume where Matthias left and improve upon his patch
series, if nothing else for the binding and PHY layer integration?

> ---
>  .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/marvell,10g.yaml b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> new file mode 100644
> index 000000000000..da597fc5314d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/marvell,10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Alaska X family Ethernet PHYs
> +
> +maintainers:
> +  - Russell King <rmk+kernel@armlinux.org.uk>
> +
> +allOf:
> +  - $ref: ethernet-phy.yaml#
> +
> +properties:
> +  marvell,led-mode:
> +    description: |
> +      An array of one to four 16-bit integers to write to the PHY LED
> +      configuration registers.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> +      - minItems: 1
> +        maxItems: 4
> +
> +examples:
> +  - |
> +    ethernet-phy@0 {
> +        reg = <0>;
> +        compatible = "ethernet-phy-ieee802.3-c45";
> +        marvell,led-mode = /bits/ 16 <0x0129 0x095d 0x0855>;
> +    };
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
