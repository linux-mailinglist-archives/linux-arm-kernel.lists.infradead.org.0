Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E093177CBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLV07ldsU84W0JzGoVfP9jH0BLHO6jmId2kAA4wPxoQ=; b=PLDG+77oaJ50Dq
	otezFrPlwB4/j1UWIC5sMpfsr15Pc7SvOeBIIjiQgcbddSWH5Ct4K9fvAqQ37YnMFNSmBy/N4vZVh
	6GVTGH6F+FYU5CINr/Zk/sfEfXiDpMkz9YBnZQCvSUV0XUpjsrfP5ZRYjQpOaANAICUTxImzTClfZ
	qsU4MwnXy/RMkjoLA4JRBUW4XNwV3YPAe2JNaWjDIjpgox1abYRQJbeKtFIvuCsLxGPtpkUgmZjaJ
	GWmD3IQbvU/JkB1ARB4fnfhcabYNz/0WYEntxJWsiD857oY6TXeystk7/zao6Kt9H0xIKnfA1CWgO
	rCHeuVnJbNubychMvLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Axb-0000i6-O0; Tue, 03 Mar 2020 17:03:59 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9AxU-0000hH-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:03:54 +0000
Received: by mail-ot1-f67.google.com with SMTP id v22so3682035otq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 09:03:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PjbKJGUmviegTrwgU+MLxk9QSGF2P0N3kmKzVENOADo=;
 b=YCVShTnnF+Tb5SRXumH69kGospJ3qd5vwJKEmaRZMpIVviIHI3fNDFFszwHjez7hue
 Xxy6Mv0L6NRsz47sGfznuvaLRkcUudmKG29e7LFOGMbsZgmhTDy3QJy10iYta2ViWv8+
 L3jkK3DNgrPY+rNIr5l+t8vPEyNgu2T+pX5Fz/MqGhI3/b5ZYgN6nrFeadAykltkVCoF
 rnCNnamAP14SA4k2iQlYm6cOloMqlj/ttKxis9FI/X7A0corZzADPw7gx7QXaM9pVB5k
 62R9sE4/qOwBOh/weARzT5h9GhqQtEgUlhh7qsdK9McBhopi2EyWThd6tBuw3VV4g6PS
 497w==
X-Gm-Message-State: ANhLgQ146/Zu3/ZDPml5SLR0lnRFx+Iy0UonNWgGZrTR+l8gMH0Hd99O
 DE4SOurhBuW9g/IONoL8Uw==
X-Google-Smtp-Source: ADFU+vv8UBfBmId0F/IsDNBZkut3LGAPI6W5tybrGJw+OG5zvO312QOb7rUyGsvJgN+9hWl9Mgej/Q==
X-Received: by 2002:a05:6830:60b:: with SMTP id
 w11mr4198360oti.350.1583255030953; 
 Tue, 03 Mar 2020 09:03:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y14sm7798449oih.23.2020.03.03.09.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 09:03:50 -0800 (PST)
Received: (nullmailer pid 8052 invoked by uid 1000);
 Tue, 03 Mar 2020 17:03:48 -0000
Date: Tue, 3 Mar 2020 11:03:48 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 4/7] dt-bindings: power: Extend nodename pattern for
 power-domain providers
Message-ID: <20200303170348.GB26191@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-5-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-5-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_090352_826048_25C4E961 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 04:07:46PM +0100, Ulf Hansson wrote:
> The existing binding requires the nodename to have a '@', which is a bit
> limiting for the wider use case. Therefore, let's extend the pattern to
> allow either '@' or '-'.

That's fine, but...

> Additionally, let's update one of the examples to show how the updated
> pattern could be used.
> 
> Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  Documentation/devicetree/bindings/power/power-domain.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
> index 207e63ae10f9..dc232759013e 100644
> --- a/Documentation/devicetree/bindings/power/power-domain.yaml
> +++ b/Documentation/devicetree/bindings/power/power-domain.yaml
> @@ -25,7 +25,7 @@ description: |+
>  
>  properties:
>    $nodename:
> -    pattern: "^(power-controller|power-domain)(@.*)?$"
> +    pattern: "^(power-controller|power-domain)([@-].*)?$"
>  
>    domain-idle-states:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
> @@ -71,13 +71,13 @@ required:
>  
>  examples:
>    - |
> -    power: power-controller@12340000 {
> -        compatible = "foo,power-controller";
> +    power: power-domain-foo {
> +        compatible = "foo,power-domain";
>          reg = <0x12340000 0x1000>;

When you have 'reg' you should have a unit-address.

>          #power-domain-cells = <1>;
>      };
>  
> -    // The node above defines a power controller that is a PM domain provider and
> +    // The node above defines a power domain that is a PM domain provider and
>      // expects one cell as its phandle argument.
>  
>    - |
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
