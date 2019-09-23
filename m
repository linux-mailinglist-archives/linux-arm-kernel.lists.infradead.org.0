Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11557BAFE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKp9AXr3AdMLacv9tFjB0/QHHBpWsCYF2e+QCkO0jg0=; b=YhY+1NIETk+NfU
	ypXBPYGakZ+A4h9PunQj6ul3dGWmVx7ogCFA/oPLR29MXLxnmVEpTk4zntP079clV/c/PuU0M3cK5
	A3KgEjAtscfpnkWTM196XerpWeFUblYxQ0Ih4y/gWERDXKI8FrWZ9VX3Ai80vzMvndHMpwDHEnWQk
	ljIPZeW3yUbtzpQM9pXkutJsMIYr9HeOwnrUtzDR1MVamVEh2QU93Ecv+YZjbz8+TdSgCDNJFuPfH
	IvmTpCQputqnkBf/e+9tS/ockBy6VJE5X3rrfEmw7zxDTQ3Aiii5vC/9o4mURuXug0SLjTQsry0tk
	4lWPR22fwXYFam2k0bBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJz3-0004XU-7g; Mon, 23 Sep 2019 08:46:13 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJyq-0004Wo-73
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:46:01 +0000
Received: by mail-lf1-x141.google.com with SMTP id d17so9446894lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BJHjML3SI9D2+EbTLuvMPDk5GTC8ZZ5KbbxFlhyt+ws=;
 b=UsZPbcuZRmE+Z3GSClH5/Mu9pa0xactT8q65lCY9ZQRMxMBG6shGQrEFWmS0QPKePT
 NbH/aWlJIVV/9FnXQijrVB5eG14WBp07hOFwnBLnZojOsILfMyD9JEsCCB6pT1OcWCp4
 eMpNQCu4hZN0omTdSXytMm98/IpN8fCAY9LZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BJHjML3SI9D2+EbTLuvMPDk5GTC8ZZ5KbbxFlhyt+ws=;
 b=iAgYrJfWRfFiZp1IK9uC/1KAuiaev3xxUT/uaGbs22+A0XRAvMNF03DNffEM/Hd6fL
 wjmofGC6UjY+PK3kRZD8TC/eKVr07MhIGeR9B4uMKGXNXJjk3KvIVm2SH11cqyP7cCXW
 xVo2c7DvqfhQcVBxwRnPyw4owXnSYanwaVMtRXNKcr3oGUMbLCF/d9Mg9o5ofsIQZQdJ
 qwxcWp1LjXPZy/TLTLjuaAoCsPh79fXLVuuLagxDQ8VMroM4/mNl+mvZhLxiRhif7EJh
 VmSIbaXXqyqqqxYVq5UJWgTXhbvp/l1DyfGfi3cAul3x1ECbqxqM6MAQZzSI/AWnrGcZ
 01rg==
X-Gm-Message-State: APjAAAXO/xHE7SpS7ho/s/36YfhOk4mEkySQxWhKKS2MeU1Emj2z7jlJ
 3DSq77VPlbo3RZJGqqMMxd1JQT3lCG63QHMB
X-Google-Smtp-Source: APXvYqwfwYktaF6d2R/jJPuhIAVMBaQ1LbNQL8tbVJGh4whnsoZQo/JOgdIOZpuQji6Y+7cNLWAfXQ==
X-Received: by 2002:a19:4f5a:: with SMTP id a26mr15849533lfk.116.1569228358242; 
 Mon, 23 Sep 2019 01:45:58 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 134sm2072003lfk.70.2019.09.23.01.45.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 01:45:57 -0700 (PDT)
Subject: Re: [PATCH 3/4] pwm: mxs: add support for inverse polarity
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-4-linux@rasmusvillemoes.dk>
 <20190923082735.tzxyhvjlnztsxhsc@pengutronix.de>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <d2b29144-3de8-4561-3292-49db7e697aca@rasmusvillemoes.dk>
Date: Mon, 23 Sep 2019 10:45:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923082735.tzxyhvjlnztsxhsc@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_014600_259624_84DC0B0F 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/09/2019 10.27, Uwe Kleine-K=F6nig wrote:
> On Mon, Sep 23, 2019 at 10:13:47AM +0200, Rasmus Villemoes wrote:
>>
>>  =

>> +	pol_bits =3D state->polarity =3D=3D PWM_POLARITY_NORMAL ?
>> +		PERIOD_POLARITY_NORMAL : PERIOD_POLARITY_INVERSE;
>> +
>>  	writel(duty_cycles << 16,
>>  	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
>> -	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_=
CDIV(div),
>> +	writel(PERIOD_PERIOD(period_cycles) | pol_bits | PERIOD_CDIV(div),
> =

> When will this affect the output? Only on the next start of a period, or
> immediatly? Can it happen that this results in a mixed output (i.e. a
> period that has already the new duty cycle from the line above but not
> the new polarity (or period)?

The data sheet says "Also, when the user reprograms the channel in this
manner, the new register values will not take effect until the beginning
of a new output period. This eliminates the potential for output
glitches that could occur if the registers were updated while the
channel was enabled and in the middle of a cycle.". So I think this
should be ok. "this manner" refers to the registers being written in the
proper order (first ACTIVEn, then PERIODn).

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
