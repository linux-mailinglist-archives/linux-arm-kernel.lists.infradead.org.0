Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC215170612
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jwxt0vLFZ07sa+2Fb8SUX0A2nJ8yRYfvWD022sqv4Ok=; b=WQ6EnG5MLGdkLu
	8I/OnEiGQQvv/vLYVM0sjZiOCcUqfbbDR6PvBd8cjp94/A9jzx9eYLq55vmyI4yiP2H/X5PPzbXx8
	jlnMtpcF3iWtpdFMRZtFD6GIu5ifnptX7zhzFRjAHapkj3hFJVfa1UNTmPRrcA/Dt3fAKQOGJpdzZ
	W3leLlTxzwLIRx2M9hZq8XHKYIud65Kc4miqkmPeeLMD/L5eoR7lXsS3pZ1UY6+68oNf4BKsed9pd
	NeiIo09YIRMFlMnouBTgCZwom3j7TGDlHLe6xFi31uHjcRzUWPW0kYmCQQeWxc6NbUCf87cjF5fgL
	FbZXarclD9vlDNm9sjrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70Su-0000T8-AZ; Wed, 26 Feb 2020 17:27:20 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70Sf-0000RL-2D; Wed, 26 Feb 2020 17:27:06 +0000
Received: by mail-ot1-f65.google.com with SMTP id 66so147323otd.9;
 Wed, 26 Feb 2020 09:27:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=raaW8UBTeCl4evHlw1MVNiVxN6E05aGpaOJ0r7dkarw=;
 b=ALN94qjm4erW3TPyfCV76lFkMNY4DErtUb2dK80c0XftI1mCEE7MHVap/VTYwrBxQt
 hW+HWIe7eyErUu2IHf8Fo8KrMcJKOFMvjerkxSmET4c5WFKsqRPp1dKw5w0BJORXbRjr
 E8/2zz+x+gZCn+lPpOmQ1t8ODdsjblnlMWZHkPOWPat9Yqi1TgGbhJlEtR2MTRWyjIfH
 oYOzCagYcVmzGwoCxkAP6HtgY/Y766RZ/BCGl1GXPSXYW+FJF7xB/5jo78SqwbJrYMi4
 7U/6Z/qnTjXzJZvrjMVbHyYoV/KoFRAaVzdsOD/5uJ0ZZ/+nRsdD1Q3PyfG/DtW31doz
 kSuA==
X-Gm-Message-State: APjAAAVBe9mCOHTowKfrvu+HLpmwGtTRCsrI9VQH3Cuc6YWChuHSvcOh
 JpHaWzwUlTk3lKua2W7WcA==
X-Google-Smtp-Source: APXvYqyJLt87oV1yskOgQe0FSJ7KzvncCI5vqnD6mIV6msd8sw1SY760epbuw7pYEkmK5A60+XsYPg==
X-Received: by 2002:a9d:1928:: with SMTP id j40mr4012476ota.68.1582738023444; 
 Wed, 26 Feb 2020 09:27:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n27sm1019370oie.18.2020.02.26.09.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 09:27:02 -0800 (PST)
Received: (nullmailer pid 8906 invoked by uid 1000);
 Wed, 26 Feb 2020 17:27:02 -0000
Date: Wed, 26 Feb 2020 11:27:02 -0600
From: Rob Herring <robh@kernel.org>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH] dt-bindings: power: Fix dt_binding_check error
Message-ID: <20200226172702.GA6632@bogus>
References: <1582269169-17557-1-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582269169-17557-1-git-send-email-jianxin.pan@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_092705_109629_C6784236 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 03:12:48PM +0800, Jianxin Pan wrote:
> Missing ';' in the end of secure-monitor example node.
> 
> Fixes: f50b4108ede1 ("dt-bindings: power: add Amlogic secure power domains bindings")
> Reported-by: Rob Herring<robh+dt@kernel.org>

space                     ^

> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This error isn't in my tree, so make sure it's applied where the 
referenced commit is.

Acked-by: Rob Herring <robh@kernel.org>

> 
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> index af32209..bc4e037 100644
> --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> @@ -36,5 +36,5 @@ examples:
>              compatible = "amlogic,meson-a1-pwrc";
>              #power-domain-cells = <1>;
>          };
> -    }
> +    };
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
