Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C4F34C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhaple+KDMqsPSptvcdfjtmwuTlZgcm4Z/mbfLFMYr8=; b=uNC3vYORBTDZqP
	w7Smi2p587rPBZMMS2vXn0TSGOm7FBPfJSu64D/pR3VaJzz7gAAjR4X59XW+krlW2cb4VmCeRJRo7
	+Z42mELok99eP8TiR5DtVsCGp2jVesnCplhkVShbaUbyZwOFoIOoGaPpuHCFsEcG1IP4amtVGhrqo
	e7Jg5zlRaJ4E40mFTdWgkrdzpWd1jviK5iWC0uhWC/b1ri38w7S2wJjosavavXFnDqtmbDhqgEo0R
	XRyT1ABn6wK3zbULp912TETNdyc5EKKm7NGDzwOtJNIh1VK64ibXdFilidpt0x5HXTGln4htbKtgc
	df+7pLDHMblClJrFGB+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkqk-0003vP-JK; Thu, 07 Nov 2019 16:41:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkqK-0003tO-VR
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:41:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id e3so1846499plt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 08:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bg6kqSIBxYXX6N9owOwBDRy3DhfK9Nfe+pI6Kd3oi9c=;
 b=c2ToS8faBSqCzfedGrU0wMS2D4Qu7ZHy/dBBCR57h46vqBxMe9HoET5KzgLXGEGvMS
 3KI5OJaNqwyvAW3Veq0cBIHKIXq4goSYuryyLiMpRymaPzukb55Rwq8AqD6gODbfedbI
 IVmtcs6oOGuPXG1prJr/e4FDdUfun83VkQOYKqYzhkM2jl6WTt7FBDCtYGyfr7dW3Tq3
 4ZUvcPoKX0VYTM39k1kW1aoPOufqKUTL3K6Js+zqoJcQm2B7CSRhHwUlEYEK0Jp/rw5U
 sxigbGFKlzV/Caeu6Z8nMdt0XDvzXHLkFtysrEJKYTbEE05xo6WMBSj78rZWFG08IsBa
 X5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bg6kqSIBxYXX6N9owOwBDRy3DhfK9Nfe+pI6Kd3oi9c=;
 b=A1V1873qsGHa78Mt6q0Gw8xW4ZAhtxkLqxF5iWFzl64nAioi4wQf/EroadaqGI/u3M
 NNjmwgUqYv2CwPmHPhC8ROb2f/W4YHs+3oFzZ0fJpgY5GgGMcikzHioy2i+5Pb/e1gzs
 8J5Q7o2f6l0wxOGDTTMsSuXtVgJlQIVEoRlVz4bvPw4jX1CMsV10Oa5XpmBw/ExEa9BM
 /iEeanX3++6ooF3vlrvhhuAP+AgiC/nR8UQdeBJLvoBYJpKC0Py6/1ubojFllAGCNGn8
 jjL6KvexX9YE3QaLMETnvGCC3QVaHTr7I7k1OgbliC2H8otqBafN97XqZo1ZeWq5o6WW
 +E7g==
X-Gm-Message-State: APjAAAUjfDiMCPeQ9EWPR3Vag/0Iiq3kagcy4mQVwcf8KZR8/mos8BRl
 bxELnWtXkyK7LxA7MjFL978=
X-Google-Smtp-Source: APXvYqz+yUC70FeNjMNghD4MEe6mV1Uw81F8V0J/pDKFKNS4LOFazlyFVX8zGdYiz34uEGYKXlHeVQ==
X-Received: by 2002:a17:902:5a41:: with SMTP id
 f1mr4789890plm.168.1573144867702; 
 Thu, 07 Nov 2019 08:41:07 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a6sm4438511pja.30.2019.11.07.08.41.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 Nov 2019 08:41:06 -0800 (PST)
Date: Thu, 7 Nov 2019 08:41:04 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v2 2/2] watchdog: sama5d4_wdt: addition of sam9x60
 compatible watchdog
Message-ID: <20191107164104.GA7693@roeck-us.net>
References: <1571648890-15140-1-git-send-email-eugen.hristev@microchip.com>
 <1571648890-15140-2-git-send-email-eugen.hristev@microchip.com>
 <20191029132831.GA5643@roeck-us.net>
 <28c6b394-ae88-f913-312e-6b38be1dc5a8@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28c6b394-ae88-f913-312e-6b38be1dc5a8@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_084119_226548_D81C79BD 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 12:51:15PM +0000, Eugen.Hristev@microchip.com wrote:
> 
> >>   
> >> -	if ((wdt->mr & AT91_WDT_WDFIEN) && irq) {
> >> +	irq = irq_of_parse_and_map(dev->of_node, 0);
> >> +	if (!irq) {
> >> +		dev_warn(dev, "failed to get IRQ from DT\n");
> >> +		wdt->need_irq = 0;
> > 
> > Does it make sense to ignore that ?
> 
> Hi Guenter,
> 
> Can you detail what exactly is ignored ?
> 
The missing interrupt.

> >> +static struct sama5d4_wdt_data sama5d4_config;
> >> +
> >> +static struct sama5d4_wdt_data sam9x60_config = {
> >> +	.sam9x60_support = 1,
> >> +};
> > 
> > Unless there is reason to believe that there will be other
> > configuration data, please just assign the flag value directly
> > to .data and add a variable to struct sama5d4_wdt to access it.
> > Please make that variable a bool.
> 
> There will be more configuration data for future products, but not at 
> this moment. Do the change or keep it this way ?
> 
If not as part of this series, it is better to just assign
the flag directly. If there are changes coming at a later time
which indeed need a structure (with more than one object in it),
that structure can be added at that time.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
