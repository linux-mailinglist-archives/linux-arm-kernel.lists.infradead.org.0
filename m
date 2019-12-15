Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7078311F789
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 12:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBmvWY9xib0tsKHMNDQV43UM2fdt/edmWUqk1stQJAg=; b=VDrZiAi8TqaNuv
	mJT6fVnHM4JCQ8i0ivTvVTLzGgGq65zS2R2Czc0AtsB02fZJx7Gj6sg+0Zg6s6EnIFXthbEuclG33
	3zFBq6bzdb2nv3YonhYM1K4MAXvzxn+FS9GbGJmXDivjyfoHWJcj/iN0Tc8Aizb/v3Vp+c4VUs4VD
	y3X821c0w0OBsZATDp/rdeckJJgQ43vg2PAfC7vExHTVUxvtjApfQDWRpUcPUMk+wRmNmXqSppJaU
	kZ38lG+b/v2Kgma4+lnx5o9hWNORDCDH3fdTZx28+RVAZOmEx6Y/ydEmT3sXE5EcUbWKwdjBuEZzI
	kfpzZXJr2uZkhb6xjs8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSWs-00017J-Is; Sun, 15 Dec 2019 11:57:42 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSWi-00016s-9I; Sun, 15 Dec 2019 11:57:33 +0000
Received: by mail-ed1-f65.google.com with SMTP id r21so2788004edq.0;
 Sun, 15 Dec 2019 03:57:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3bFRjA9UFM72dx5MZDZ0tLg6rOZz8LMmXjc51eyWHQw=;
 b=Jd5omKNAEbdzRoLRBSesG4YIFt9XY7XkJWQ+J33TenIMsF6yDNaPjrmr33ONsf7bGq
 LAjpSkqLcsu8oHLJdyQsHCU81+naVIrwF6vRokHrxvYeOA9jIYnXHv7JQZ68kkqRNreb
 ZsrAeQYrNIOHLDjxUsVCUd2L3bLuq/LAvL9OpL7U2sUBNNxB+r+0qY8+6NSaEnfCcwQx
 F3b3L2pFbqusIKgieNNJn+H6OvOUkx52qvQodVDADhNDYquKGdptopf1U1IIQ7MUAwZ1
 WGUKfsx0ZGZ1eg5ynE0TYBqW9CfBsrXIq96j0bU7y517o2743TRNsemOT4aQt1M5FOFE
 oNLw==
X-Gm-Message-State: APjAAAXNlkzWoVrvx/3MezBZn+feuUMapGj+6a8mUwqpXOEAbUxpsDvx
 KRB9pOdkefBS0V+LbAqEEvU=
X-Google-Smtp-Source: APXvYqwZaqP3BPfUD1WWLgwtYw1XJJ7Zy4zkrjF1M4qRiNjNshTKEWnoyc7zscsZ5R0wuEWiJvnvIw==
X-Received: by 2002:aa7:d306:: with SMTP id p6mr26042390edq.72.1576411050586; 
 Sun, 15 Dec 2019 03:57:30 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id l18sm663825edw.59.2019.12.15.03.57.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 03:57:29 -0800 (PST)
Date: Sun, 15 Dec 2019 12:57:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 02/10] soc: samsung: convert to
 devm_platform_ioremap_resource
Message-ID: <20191215115727.GB30973@kozik-lap>
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
 <20191214175447.25482-2-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214175447.25482-2-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_035732_380405_417ADEFC 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 khilman@baylibre.com, linux-arm-msm@vger.kernel.org, ssantosh@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 mripard@kernel.org, leoyang.li@nxp.com, linux-samsung-soc@vger.kernel.org,
 wens@csie.org, agross@kernel.org, khalasa@piap.pl, kgene@kernel.org,
 john@phrozen.org, matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 jun.nie@linaro.org, bjorn.andersson@linaro.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 05:54:39PM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/soc/samsung/exynos-pmu.c | 4 +---

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
