Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFF415832B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHcvHlnjtozXNE1kspJzI4z8wtsxpjM+3R+JJxlhfQo=; b=n9zu9Kb9Cb0/AJ
	LUnG1NE7Fybh9wsniXKjQrs/U/G5b7uSFGZ7wGk1HwbU0vipfVXyoacrCbFImwDlmLsGtd9NyZtZa
	oDGdeNMg98Z4PiwaZGx9dInCfd4OdHsVbbF6BO9rv+Kbx2d0Q97cDMwYB21QF27RM7W3aXj3sIKn8
	dG0lz3zg12mfQRR18yV8Mi8HGd4WqW6EUqhB0Q/J6DLue/SZnn510tBI6WaQ3SfDg9ldK/hCn3h+i
	VtMydm4byoeIIGi2Q9fCTqLQxBPAZysSdFAhxj0p0HKMRCr9wwnOX2KxuIgtuC4qMKNjWtv6r2mkG
	beocnZt37W4NqJpNlW5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EIL-0001Jp-9B; Mon, 10 Feb 2020 19:00:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EIC-0001JO-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:00:25 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m13so146212pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IP2SLBX7s7oABfDZ2PXfVL2aB19T/X0Xcl9B0P8WT/Q=;
 b=F1E7OG0+N4r9lV4soTCK3KCNKIRp+9TJO/MEoZpO8ct1N+fq6IVDt5ExeOm/qLsNLm
 bn3wWAX45eZopYAbVyJZ9hg+YpNQx4pDWwtLmFkI8Qj+Ijh6BEXiu467s+t+VSdY+EdT
 BhTMRTyB9h3Bat5sqftflJkXjNTjnXBx3rXcu4rlsWAgbAkTaCNTzhsxQsgJHq/IMW+7
 pkqDRdjSqt9DH7xX4T4crvTb3DsQUxT95v6Cqv2ToQL+ve3LIHyIe5s9QCCyum9eZSOG
 AsgT3+GxZQbQlCX24lKOesnLKCcBFepSb+gd3fdtkGblyojJee3nv/oRXvyL7USDWFS4
 hPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IP2SLBX7s7oABfDZ2PXfVL2aB19T/X0Xcl9B0P8WT/Q=;
 b=lcAFNpYCHcPfOgNgc8D3uOnkAFjyf3YFFHnnVTTFnSBr64zh6MR1eytvPUFqrgvL7s
 kWLt+oLQTz3s+R87GDWi03oLkezd4aFmp8fo5cLbh3FmUxYG7bBraznShb38rUrLqFmR
 r6pBw0+c4TnKZ3KA/C8J2qG6z/fsvnUJsNS4kVCpQYlrwlwh97aaR9+50474dciLIWrg
 84xpU8tBrIRrq2FVCrWeNIiboOVzNI44UsnED035Zrgywq90xBlFbUnPsxAZEFc/2cnf
 tDhXjVrX53Cvxdwxcj5aZsZkXrhUZ3P3V2UM8gSV4aliZShcAbQpUIIvSTMl15dwcOp5
 U5hQ==
X-Gm-Message-State: APjAAAVrEFNxXYUGZfd/fngVmx6/xJPZ7KcVGjy4WWO3iu5Br9OakYIs
 x/u2z1iw6kgfA2e+8hU+NOn05XCVtPk=
X-Google-Smtp-Source: APXvYqxNY3QEOF0KJ5KimOYFaujRMyvRqJdxrh7IcsIQ2G7TQVmjP7rxLxwX2xkjWKQBZWbYMN5eDQ==
X-Received: by 2002:a17:90a:3745:: with SMTP id
 u63mr497634pjb.123.1581361223658; 
 Mon, 10 Feb 2020 11:00:23 -0800 (PST)
Received: from ripper (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p21sm1114597pfn.103.2020.02.10.11.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:00:22 -0800 (PST)
Date: Mon, 10 Feb 2020 10:59:35 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 3/3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Message-ID: <20200210185935.GM955802@ripper>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-4-nborisov@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210170143.20007-4-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_110024_633603_730B7B5E 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Feb 09:01 PST 2020, Nikolay Borisov wrote:

> Add binding for the hwspinlock found on Allwinner A64 SoC.
> 
> Signed-off-by: Nikolay Borisov <nborisov@suse.com>

This does look good, but could you please rewrite this in YAML instead?

We will need review feedback from the devicetree guys, so please include
Rob and devicetree@ on your next post (i.e. run get_maintainers.pl).

Regards,
jorn

> ---
>  .../bindings/hwlock/sunxi-hwspinlock.txt      | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
> 
> diff --git a/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt b/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
> new file mode 100644
> index 000000000000..af1fbf8fc9f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
> @@ -0,0 +1,27 @@
> +Allwinner HwSpinlock for A64 SoC
> +=========================================
> +
> +Required properties:
> +- compatible:		Should be "allwinner,sun50i-a64-hwspinlock"
> +- reg:			Contains the hwspinlock module register address space
> +			(base address and length)
> +- resets:  phandle to the reset control for the hwspinlock
> +- clocks:  phandle to the clock feeding the hwspinlock
> +- #hwlock-cells:	Should be 1. The A64 hwspinlock users will use a
> +			0-indexed relative hwlock number as the argument
> +			specifier value for requesting a specific hwspinlock
> +			within a hwspinlock bank.
> +
> +Please look at the generic hwlock binding for usage information for consumers,
> +"Documentation/devicetree/bindings/hwlock/hwlock.txt"
> +
> +Example:
> +
> +1. Allwinner A64
> +hwspinlock: spinlock@1c18000 {
> +	compatible = "allwinner,sun50i-a64-hwspinlock";
> +	reg = <0x01c18000 0x1000>;
> +	clocks = <&ccu CLK_BUS_SPINLOCK>;
> +	resets = <&ccu RST_BUS_SPINLOCK>;
> +	#hwlock-cells = <1>;
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
