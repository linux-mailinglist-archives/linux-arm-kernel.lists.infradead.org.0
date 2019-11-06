Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EFBF0DFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZB3Bi5Ib7NgpTzvE80xsVFyINBHpjRp+PsAhTLXlss=; b=Cbvm4lTXP2CEm4
	T5qhYe3Ql8gjVLZUVK1zgctVUN2bhub2dVaMM11tl05QckkN6aWQLNTdJq2F/CEPOzBr80dqylIco
	wtWsFa+Mq7vZETRBnoL7UP4tyamFW5utApdrGQEsz/BKrJm+sC8cbRC/eXjsFONEEjGh2NB0W0aRQ
	8er/amUXZe1GtRQiWveNGwC2XGnYW6F2MzTC+LFIg0gmuXp5oD5Sl+VcaR0xV1f0g86A50OXpIv8e
	uzKUPbVFqlbi/JzXZ6BYd5xq6FDBR6v5HCymU4+nqIp2NPE+pubxjxh4oHVKZv033MVolmN5sP7Hq
	44Zqrzumavp8jYzURHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSDDA-0002Kb-5L; Wed, 06 Nov 2019 04:46:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDCp-00029V-GJ; Wed, 06 Nov 2019 04:46:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id v138so19800494oif.6;
 Tue, 05 Nov 2019 20:46:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wGH4y8/QINgJibe6iZ9D+TwVEAiOc3D7dGreYmQ5/Jo=;
 b=P9JPKpYZ/Yl64/VdiLNaHpUn2A/VSB/NzG6lQq78ic8rPwOG2lOSIKeD7F8FDfnRB7
 gLnNsgoY9m0joJa/aTtKG/GFPOZbQkU2cqlsy7gmRKKM7lDfgMXAQgERdCBrOJ4b+DPv
 YzaP8fnCHJh5OMC93Tssp8YV7ALR9nMopZkxQBJ5lNytOWOAm5ubFZIaed7TN3kkC+t1
 g62zQNMiq5nXVqNzvwKWihLbyDV5APtkwpeH0LSRJs62IVF2c259IzYmK38vg1cQAIU7
 UXxy0HcaA79G3RAuGRKvB8McCN1BOwAQTqMnFOPHHEevWfv1ajEuW4+Gc+51Elqw/gW7
 IC8Q==
X-Gm-Message-State: APjAAAVvpU0kp4BP3lbmQHU/wcM20Cj4fS3Xq9okQdLqDizviK2v3MVw
 7I3HpHdBRsg8mxAH8EwOxA==
X-Google-Smtp-Source: APXvYqxfLJ2h0dh0Tw9BSu30JLuugYqBhvX0Klb2+BzPFTk0XNj+BsaKeLMDjCxGYwt28bCZd9hang==
X-Received: by 2002:aca:ad52:: with SMTP id w79mr500353oie.149.1573015566353; 
 Tue, 05 Nov 2019 20:46:06 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c15sm7156877otk.12.2019.11.05.20.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:46:05 -0800 (PST)
Date: Tue, 5 Nov 2019 22:46:05 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 05/11] dt-bindings: soc: realtek: rtd1195-chip: Extend reg
 property
Message-ID: <20191106044605.GA28959@bogus>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-6-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103013645.9856-6-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_204607_538899_C9AEE308 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 03, 2019 at 02:36:39AM +0100, Andreas F=E4rber wrote:
> Allow to optionally specify a second register to identify the chip.
> Whether needed and which register to specify depends on the family;
> RTD1295 family will want the CHIP_INFO1 register.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  A SoC specific binding would defeat the purpose of the generic Linux dri=
ver;

Why? You can map any number of compatibles to a generic driver.

>  is it possible to check the root node's compatible in an if: expression
>  to prohibit using more than one reg on "realtek,rtd1195"?

The "rule" is different programming model, different compatible string =

for the block. But this looks simple enough, I don't really care.

>  =

>  .../devicetree/bindings/soc/realtek/realtek,rtd1195-chip.yaml  | 10 ++++=
+++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/Documentation/devicetree/bindings/soc/realtek/realtek,rtd119=
5-chip.yaml b/Documentation/devicetree/bindings/soc/realtek/realtek,rtd1195=
-chip.yaml
> index 565ad2419553..e431cf559b66 100644
> --- a/Documentation/devicetree/bindings/soc/realtek/realtek,rtd1195-chip.=
yaml
> +++ b/Documentation/devicetree/bindings/soc/realtek/realtek,rtd1195-chip.=
yaml
> @@ -11,13 +11,15 @@ maintainers:
>  =

>  description: |
>    The Realtek SoCs have some registers to identify the chip and revision.
> +  To identify the exact model within a family, further registers are nee=
ded.
>  =

>  properties:
>    compatible:
>      const: "realtek,rtd1195-chip"
>  =

>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  =

>  required:
>    - compatible
> @@ -29,4 +31,10 @@ examples:
>          compatible =3D "realtek,rtd1195-chip";
>          reg =3D <0x1801a200 0x8>;
>      };
> +  - |
> +    chip-info@9801a200 {
> +        compatible =3D "realtek,rtd1195-chip";
> +        reg =3D <0x9801a200 0x8>,
> +              <0x98007028 0x4>;
> +    };
>  ...
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
