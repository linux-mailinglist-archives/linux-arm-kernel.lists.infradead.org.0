Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028058F654
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rumBq8XXQy3Jbyt9FhluBOup1ZuirIJkBKppNl8NX6c=; b=W+eI+0IMLI4AHT
	vVQN19IXYbDGrVqDEmszVOEEA1gN/VMqUmEIp8RthnLqvx08ZRxvUUKONGt76Wxu6ZDV+AhJ+waht
	Sk9RFi9cMNjt4pj6z90uKwgH6CUWS/o/C73/nm3faFUlq7CodJ4yOrdDYgqGCadciNXiSaPw7/c3W
	bThM3cTDrCpy0xcsN9Joxg8/kzNK4U1pBmhwX/vfyqNTA0iGtBGJZ5coc2LpfxkiYsqGZOtr1mdj1
	t+h3b6T/ndl2gqr0jfZssHBo9a+iNmggFzY1JTVwLkaF8UAARwf1/he+C890xQmVOANmQttXRxjVc
	M1tsCB0T+iJnGBF+ATbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNAU-0005SQ-65; Thu, 15 Aug 2019 21:20:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNAH-0005Rj-B4
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 21:20:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so1859384pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 14:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9btH7gObuB7NSQ1wmgbhVZL9CQC9MoVtAlUTgmdlp/M=;
 b=ldOQ1g85IZyn6tEYhDDDtoDQkL5oBt1ZjAFMcZGTsaB7jPGcdGzXIak3YLLZaTR0c8
 qyOas6sL+nx6Bo4hMFou+zcTNTEyIkvEgzdUyR+Tz8+g8VWDmT63g4ErRX971OaPAEOu
 LNTOuzynSiCWRzi4OWMXx//YvU1rCchuwhVAiI4HE3gPmqYVWfDuhDBrq8dSZvafE2VW
 EB5z1lE6MyIhBvHUTIjDm6sUY5s7Qj5cvND4xW7k0oyiTPoRcJPzQ5CGwSo+wvRPAQhX
 zPoirYx3EgGyiqGIoT8sf7B5zYIoTunjTrvVKpNGzhWJbLric8x7VPfldcCljayK+DI+
 iicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9btH7gObuB7NSQ1wmgbhVZL9CQC9MoVtAlUTgmdlp/M=;
 b=DPEsKEZT6IC3Sh51zWFDFT30FEbp5anPCB0o+KOWoiC1gN5gl5+PWz4th07qEMJPw5
 jgRGGN57tv+roI7WR/fDUpvw39ggkf4NHBf+2PlE4Q9ghcH2m21ehHyCn+Ma/iDFxTDn
 vw6r0vxy92yPfsWWMqNnxkTrU4JpV6uTQINu8sJ51XhzDUD3be4YvRigByZgzW6xxCjz
 5FaBCGgxYQDF61cJGZdoGoTvlzKfDUzNPjZrYhu7DHqiQFgKhYE3+84QWRLx0tVRDrlH
 24F3utlMR3KC5SyRt4V8yv4lG7Omw/UaHWiy+2EsHZxU0I9rZ9V27zHK7U1fCtsPKQcS
 +Zaw==
X-Gm-Message-State: APjAAAVEBi/p4sX4b9ohvgvjVZ2YBxNJRwyYSHC7ZlFiuFmNru7wEP3M
 zg02h+X5he11ehRrFgJpM2RuGA==
X-Google-Smtp-Source: APXvYqwMBqMHkTvOrHQeYUS4WkFo34Kt5c0X1L9kzdWXYp9P9JmoS5s7mD4im0y2s/z3WEE8BbiNWQ==
X-Received: by 2002:a17:90a:858c:: with SMTP id
 m12mr4020145pjn.129.1565904008258; 
 Thu, 15 Aug 2019 14:20:08 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:35:cf9b:bad:702c])
 by smtp.gmail.com with ESMTPSA id y23sm4193386pfr.86.2019.08.15.14.20.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 14:20:07 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com>
Date: Thu, 15 Aug 2019 14:20:06 -0700
Message-ID: <7hk1bew2gp.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_142009_429907_7786EAA0 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com, Carlo Caione <ccaione@baylibre.com>,
 srinivas.kandagatla@linaro.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob,

Carlo Caione <ccaione@baylibre.com> writes:

> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> index 2e0723ab3384..f7b3ed74db54 100644
> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible: should be "amlogic,meson-gxbb-efuse"
>  - clocks: phandle to the efuse peripheral clock provided by the
>  	  clock controller.
> +- secure-monitor: phandle to the secure-monitor node
>  
>  = Data cells =
>  Are child nodes of eFuse, bindings of which as described in
> @@ -16,6 +17,7 @@ Example:
>  		clocks = <&clkc CLKID_EFUSE>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		secure-monitor = <&sm>;
>  
>  		sn: sn@14 {
>  			reg = <0x14 0x10>;
> @@ -30,6 +32,10 @@ Example:
>  		};
>  	};
>  
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +	};
> +
>  = Data consumers =
>  Are device nodes which consume nvmem data cells.
>  

With your review/ack, I'll take this through with the driver changes.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
