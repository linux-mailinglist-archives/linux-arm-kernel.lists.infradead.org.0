Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDD5154E77
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:00:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4KdzlD5oKw6m+sqg9c5Y99QBGfX+h1W54mhjh53L6U=; b=Nqfc6HPnNF1zLZ
	FXJG7zAhlUi/5x1Ov5xV6eoZWf/IE3A/5V62BfA4dKcHQwSYSWNeBYm1IFHyGnV8ASURGDGusdgC0
	jF6PhWfQChTL0T6hRNB7DEbJR3atyYYfHRqJ6FqNddwexYo+9Uraoi0qTe8yY/M89RpVPUrGPjzoO
	UCsIC+PWM3vtYCFi8trzIe0y3iqPAEd+3/gVmoohIiFvR7m4nJPqiKwrJF56x5pe3V4ji7+GinPYI
	2+8XDlF7fKcJgwnEPNfIEFacl2uGXKGDYWtis783YSbLgV5ZQUttPvveETmuw5L9Xk+bxtTo4w0Rd
	U6tDW/bvkZWF6m7uahxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpBo-0007t7-0h; Thu, 06 Feb 2020 22:00:00 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpBg-0007sJ-Fj
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:59:53 +0000
Received: by mail-pl1-f193.google.com with SMTP id p11so103393plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:59:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sVXixa0B18zMPBUSYheGAsct/qyckxIS2tHmquk4WAY=;
 b=MrSvBRvWJsPfe1f7ByjBiyH8yxa+4Xtu1w6Xq+5xhgzkFeRy8Lj+bj4lIqAifxMP88
 GmT/oD2vjIbrK+ttEFLgt2d6cS3NoS431wm3MW8Vxf8bqkR/BViFqyS90C89D44TXQJ3
 YglLDKpY7DFniOYw1iEoerI9DLD0O4rcdNXIz1W4non+hYMQsnp9uHlQUtf2xVM9qQAi
 j8DJ2GK4t5jhOuDQRA2OIwA52/ysCnlNk7Rh6zYQGBMnpAu/QIiFHU/T69Tsz+/oj/7T
 +9SYfrMgdL+Gk+401Yr6a8EjvTD6xGn3SNlC/JPI8aLeyUWca0TIIpY9WVLWCzVDZtqr
 Q0cw==
X-Gm-Message-State: APjAAAUnZwntXebsiRYsL4jvZt4ihanILJsQH/mJ7l9ovvino5whhIV7
 SOx0Uu2AHqeyn2tu+UHXzw==
X-Google-Smtp-Source: APXvYqzQ9YsVc8gaumvlVWv2GaV+63IJpG8P6rBR7UaLfsBaOKX7ODYfLVMDfZ2RjAeHqRqV4JhmWg==
X-Received: by 2002:a17:902:d205:: with SMTP id
 t5mr6261830ply.138.1581026389477; 
 Thu, 06 Feb 2020 13:59:49 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id v25sm343170pfe.147.2020.02.06.13.59.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:59:48 -0800 (PST)
Received: (nullmailer pid 23357 invoked by uid 1000);
 Thu, 06 Feb 2020 21:59:47 -0000
Date: Thu, 6 Feb 2020 14:59:47 -0700
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Message-ID: <20200206215947.GA21514@bogus>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_135952_528299_36643531 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, andre.przywara@arm.com,
 linux-imx@nxp.com, sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 09:01:25PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> SCMI could use SMC/HVC as tranports, so add into devicetree
> binding doc.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> index f493d69e6194..03cff8b55a93 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> @@ -14,7 +14,7 @@ Required properties:
>  
>  The scmi node with the following properties shall be under the /firmware/ node.
>  
> -- compatible : shall be "arm,scmi"
> +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
>  - mboxes: List of phandle and mailbox channel specifiers. It should contain
>  	  exactly one or two mailboxes, one for transmitting messages("tx")
>  	  and another optional for receiving the notifications("rx") if
> @@ -25,6 +25,8 @@ The scmi node with the following properties shall be under the /firmware/ node.
>  	  protocol identifier for a given sub-node.
>  - #size-cells : should be '0' as 'reg' property doesn't have any size
>  	  associated with it.
> +- arm,smc-id : SMC id required when using smc transports
> +- arm,hvc-id : HVC id required when using hvc transports

Don't the SMC ids get standardized?

>  
>  Optional properties:
>  
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
