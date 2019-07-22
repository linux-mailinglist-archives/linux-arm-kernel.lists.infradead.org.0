Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2643F70A56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7CLaxzRXA2nKKUESfENN0x9AokYVMYW5T+vG6/Bv6Q=; b=YumoKnuoXfl3Xz
	IxvHiTkqqS29U+Vv3u0Lv7biXlaaHoWj+eGEbZnIbC73yLd9jKEM+i7WSKOemr9BuIKDXDQxN0w/C
	Pg7nNYKbU9xFt9bMUP3KITBdmgqlb2eL0Qp4u7uNsgWFSkqNyT5BRtAYtDkrFfzkFcDSco9VyhFca
	JPxLJXidmD9we20BogdhXgKo/+fHNLn2dnO05I4qwlyijEGyByLtB9o9bVQ8i/Noh+sdB5SllwUz+
	Fg7AuoxP6ZFWD+9WQZ0OSMyFvd2pM5cmNUfo51ZrPzU77Q0sbe/zIv37cKrN9nQZJ3IIK2HN+weu8
	+7Up07XQERiUFalcF0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpea1-0003LY-CO; Mon, 22 Jul 2019 20:06:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeZl-0003Kk-F0
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:06:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so17893525pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 13:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dc1nDbjKpnpP+a+/MmVe5NpW+Or0aQ+dHKZXZgx9JfE=;
 b=b8HWUQlFI4Bi3Vsm9h3pIL1BtPQ+jCsskWoS3LtjbQqMzNMt/ByjHN8SUdmCg4wCvg
 56aMy7KRNlT5Nyv+O+oWRkgwIWjVJ2hfQ7yczoZweGJLJbOe914LSiJsaHRGx1lr1FEp
 kC9Nx9QUUS8SrXKa1bvAwrbSDDSaqBTJf3vN7+Y9D1MKF5fnMwXNinoN/Q6WIk6TAK31
 Oyh8D5d5wUR/yIWMJzLhxnW5kMJ8eC5r+RY7gIrkOtwVc9IcKgB7bzqnOE/g1m/CMBl4
 rX5e6DeeEXM4oGUG5qWj0EvzUlLdkjOqwsn9BvkYvFtenYXanekOBprQdaWBcQktjGdG
 EBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=dc1nDbjKpnpP+a+/MmVe5NpW+Or0aQ+dHKZXZgx9JfE=;
 b=SnZRU+tG5fzr2UVAbCFSa3E5A+CMqID5/L2g789ztDA/h+PdsVDqdkM03fX8R/Mflm
 GaBZP5XeHJNvMGYsMxnCsPQ/Bf2Pi4VASofiolbjnTbqOhej9JebIaKeQG+vWRHWQdEj
 /+Mm2/T9FMwk98JzVAuiB7XF/7JMtwJZ1/7cPX9J+w1/lClW+PeabR8xtMK/Y++AszN/
 DG4ulWkwSc6RZeAjJPLYMH0bIML666KEyQBCr4od4R4Rkc+S7mBYjOEjZ7+agkxAYhYv
 tIhi3Fv1BjmLnreBZvM5OZxpbkjeOJqRCIE9EKkGc78eujYkHaNAfZCMctCCwTeCvraW
 6UBQ==
X-Gm-Message-State: APjAAAU8QjStBrcYYORDcMSdTeV8tYAw/gQHOASrF7WGUn/ENwUHrg4P
 /d0aqRCZvXkSdg9ys3fXeD2JSFP7
X-Google-Smtp-Source: APXvYqwrrfr8vZZ2zi0ljFQ1dG1N1h86xfW6V0hOrIDJx0pWBHs5P2AHff6cpF9shtD3j/eNTJY0qA==
X-Received: by 2002:a63:1046:: with SMTP id 6mr75083719pgq.111.1563825984205; 
 Mon, 22 Jul 2019 13:06:24 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b26sm44559517pfo.129.2019.07.22.13.06.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 13:06:23 -0700 (PDT)
Date: Mon, 22 Jul 2019 13:06:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Vijay Khemka <vijaykhemka@fb.com>
Subject: Re: [PATCH] dt-bindings: hwmon: Add binding for pxe1610
Message-ID: <20190722200622.GA20435@roeck-us.net>
References: <20190722192451.1947348-1-vijaykhemka@fb.com>
 <20190722192451.1947348-2-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722192451.1947348-2-vijaykhemka@fb.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_130625_532777_FDFA12C7 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, sdasari@fb.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 12:24:48PM -0700, Vijay Khemka wrote:
> Added new DT binding document for Infineon PXE1610 devices.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  .../devicetree/bindings/hwmon/pxe1610.txt         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/pxe1610.txt
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/pxe1610.txt b/Documentation/devicetree/bindings/hwmon/pxe1610.txt
> new file mode 100644
> index 000000000000..635daf4955db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/pxe1610.txt
> @@ -0,0 +1,15 @@
> +pxe1610 properties
> +
> +Required properties:
> +- compatible: Must be one of the following:
> +	- "infineon,pxe1610" for pxe1610
> +	- "infineon,pxe1110" for pxe1610
> +	- "infineon,pxm1310" for pxm1310
> +- reg: I2C address
> +
> +Example:
> +
> +vr@48 {
> +	compatible = "infineon,pxe1610";
> +	reg = <0x48>;
> +};

Wouldn't it be better to add this to
./Documentation/devicetree/bindings/trivial-devices.txt ?

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
