Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09BF1310D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deN4lG5xA+eNRvPJ6PgCQ2slmFI+473hfRVinerCzH4=; b=e/d/e5hAQ0R+42
	VJLQ7//o02PDo3Hbiymlk+O+nnxme6dmnbiUV0+3xCjTuCNWK0cdPFd1sd3rIxrd9xcKYlR/s+NRD
	MgY9BFKZ+0epg0sOhdr6xOr2VBTNURmO1jRBXEVhhB2K0cRYs5NI+VtcPBhDWVbWnF4cDEMheJTt4
	8ERt0eSO4NU6E4fHZLegjbgkiOoyjvIOoDdjGd0Vkmt88oO8F/f9ToxCAM8Qq/AYBeSAkr9jqeBgn
	4mumldtjDaJgISBfhqOD07xlVT0nH6f4zdr3pNPStYK+5S+XmmT5y2sRmDKmv/2rmoYiQHHUceWXE
	XFdBOe1frkIxN7nbrYgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZxE-0005t7-Kb; Fri, 03 May 2019 15:18:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZx7-0005s2-FJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:18:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id y5so7206942wma.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 08:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=b4bYbi8YD9r7VkoaNAe5HTZAcJUr3+8rVC7UnnMmUKM=;
 b=FlnqY919rtUpMPpAyFSkstelMDxDpZz0et+dJ1WjTcG7j4nAZsnAg5/6ChGvwG9Hsc
 caTFt4nwbeXQ3HPlV0RD7/iqZdCBpIE0Dy8pU9eXFl5SxbORaWWy/LL1+KrBc5PgCx/g
 YfcE3571gInUKNQPgXZr7diyDwr9Jeh0F4ZJBMoXsU1aixw7t6uf0kh90xN+mL++hOJd
 spzfCZI0D6zXJSje2GxHusU9qC5+e6N6KeEngc/1WLbFw5Rt/xoFiA77dIQvD3KJRAQB
 +nhlqPoeQIvRUnXbWm1u96SL6iKrceY6rAwGiZDTLMuczVVLOpuVm6snRTXHQ1ghQ93Q
 UBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b4bYbi8YD9r7VkoaNAe5HTZAcJUr3+8rVC7UnnMmUKM=;
 b=bzvmCeRP9gI68DP1F/GTdeiXqhEoS6meYMkg91UEKHkvthL0wxL7pAtJl+cbQ/q2lO
 eY0EofOE6H//IOZrMqo2xLsSXBRQHjh24R0XakrkZOz4Dwig1qxrMuIXYRsifPaTKu2+
 t4ZFA+GGbWiPzFfkb3dJx/HDlYXYsMcJMgiqB4xwWWRWeAcHItMis2GAxGzFyJ/zbMHZ
 dNsd9xcYd1zPxGHSK26jZqzZp6726QstIH4MoR8YgSbqUYKVVrRrUSZ+P957acenD2pB
 s1eBsyWZIvCLidWwjHtOHzwPHSpmRU3H85u5zhf4BTIgummjY4ii1wrg51RiEox0k9C1
 T3Iw==
X-Gm-Message-State: APjAAAU4LhmWEMf7XVZd+vrNRc+gmaJQIu5vfjhpBHWJ+dAHi5/fKKnY
 l6C6aQpGUZ+/2aTF6FtQBL0=
X-Google-Smtp-Source: APXvYqwBonBB/rPSrMqlaBkXk23nXrEJT1dwpnliPBl8EyPDu3+3q/Ism1DcUyMMQCbkPyoOI5flWg==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr7059073wmh.32.1556896699306; 
 Fri, 03 May 2019 08:18:19 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-110-70.net.upcbroadband.cz.
 [86.49.110.70])
 by smtp.gmail.com with ESMTPSA id 195sm4366416wme.32.2019.05.03.08.18.18
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 08:18:18 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190502140634.4529-1-marek.vasut@gmail.com>
 <CAMuHMdVGAq1XgSohBjc8i4c_o-N-yWGedS_LLS_Apr4Bx10xGQ@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <fa79e656-d71a-6f3d-21a5-8acac72e20f0@gmail.com>
Date: Fri, 3 May 2019 17:18:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVGAq1XgSohBjc8i4c_o-N-yWGedS_LLS_Apr4Bx10xGQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_081821_544901_EC2A5510 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/19 2:36 PM, Geert Uytterhoeven wrote:
Hi,

[...]

>>  &rwdt {
>> @@ -309,6 +314,8 @@
>>  };
>>
>>  &iic3 {
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&pmic_irq_pins>;
> 
> Given Blanche has a single device connected to irq2, I think it makes
> sense to move the pinctrl properties to the pmic node below.

It makes blanche somehow inconsistent with the other boards, but if you
insist ... ?

> With that fixed:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
