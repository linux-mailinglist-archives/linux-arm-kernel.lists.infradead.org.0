Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDDB3935D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 19:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2vYa03FXE3Zx+oaj51iiyhFxFIt45tOqgYBhTIWVaE=; b=DsrmklQzafcqOk
	0TGIMsZHDMvMQiKUyLNAP3V0n81F5e1rwXe7Fz/9cAlf/pibT5hJ136dOmFK6jzeKcQdnMQblqkRi
	88Yy1LEbT7x2fpFMFXgJyfM4ccdx90Am8P8gmUdjF6bBUoZe9APTEIUBAHM5kfz5X3UTlgcCgtIA9
	i1wMXylLFFyPPViujuavg8LWoLxw4TcSPTc3aVHw/iA6EGYvXJ4ZdR0h6T1FwZltQhsLhxD09DfyH
	8PZbphqlnay2330dRL/FQI40SHT6WBEFcvrt94xJ1fV+sxEGjN4r9XJ0+c9OVl+YV6w05U1QB4P7I
	5J7411tALB0KglfuZQkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZImF-0003u5-P8; Fri, 07 Jun 2019 17:35:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZIm8-0003tZ-ST
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 17:35:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so1499001pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 10:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=d8Zhil16cCklev3Hhi9oIiyQQGrl2e9GqmCCwrtiXdk=;
 b=AZX6GDj6WfsIb1ibf7l1wAescvlPCsTMwGSKgulKl6tlJiq8ZgOKFU/hL+Z+WT5ife
 s8pK0rO7uXRdEOJV1uBl9qft27qSxNTwoGhxKVeguOn3h+Pi+7HP5IIbtWyyyLiOB4tL
 5ZhdjOGdP5k0DPBDH38spUPUfzPWY/XkQBMkISY5mchqc4Bl9AKT6X3RK8WxI9XsOhXw
 ojNl/REyAvrlewhCdOMkQ0i4ivrtqjjDqTygitDkx3GB7OmibJ5/9JCQ4dpJi6Bd9FZ7
 ANWn+vlBglvp4EgG3hnQCIOZWVp26YrfxRj0ctfhOlbPU9LMzeVmEYYHEibi49VrZfSZ
 ko1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=d8Zhil16cCklev3Hhi9oIiyQQGrl2e9GqmCCwrtiXdk=;
 b=ubnUt92SysyXp6G6oR00Ige6DGcIHSnjRGBAC7MqqG2eQ8dZrIa5Vu/l6RyRbvpe9z
 MbTE+hUDqpdr0NRjKPPblavH8W7A3tSPz6FWrwFq8y0n4FFcETVKS9NuFRzQcSV1F9dK
 r5CCe5+1/pC6GxJCDj87Jks85ObC0BlSlm+NzRS96e+cnwVkjAMnpN2gI4l/Oqdwcg1R
 LBEiATXwBYQcdXYJM8WfV5EHQpe4HB8ESTdnPE0UfGFArDG/cqfLWrIx9Gv5UTqdg3OS
 vXS2/sTcit7rXG2D3ebvdwAn+/k29Deai/t4HofkachA0h2wu8wRJ0P61j++drt2ROxW
 +E4A==
X-Gm-Message-State: APjAAAVtmly6KlriQHlQGb4l1cmzTxLESySnc69vuZ0agS0HhKB9GddM
 YOEQZw9VOzOeWUwzdLSpVKOw2EVG
X-Google-Smtp-Source: APXvYqye3uhb0jhDnBYaj8BRcBNlfbyR8esY3incoxAlfXi7sx2TjFLkz9Hiah13kkAa+WVq2sq6eg==
X-Received: by 2002:a62:1692:: with SMTP id 140mr58660048pfw.166.1559928936179; 
 Fri, 07 Jun 2019 10:35:36 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e184sm7419799pfa.169.2019.06.07.10.35.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 10:35:35 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:35:34 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Message-ID: <20190607173534.GA14933@roeck-us.net>
References: <20190523151050.27302-1-peron.clem@gmail.com>
 <20190523151050.27302-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523151050.27302-2-peron.clem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_103536_949109_A8F9E586 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:10:47PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a similar watchdog as the A64 which is already
> a compatible of the A31.
> =

> This commit add the H6 compatible.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt b/D=
ocumentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> index 46055254e8dd..e65198d82a2b 100644
> --- a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> @@ -6,6 +6,7 @@ Required properties:
>  	"allwinner,sun4i-a10-wdt"
>  	"allwinner,sun6i-a31-wdt"
>  	"allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
> +	"allwinner,sun50i-h6-wdt","allwinner,sun6i-a31-wdt"
>  	"allwinner,suniv-f1c100s-wdt", "allwinner,sun4i-a10-wdt"
>  - reg : Specifies base physical address and size of the registers.
>  =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
