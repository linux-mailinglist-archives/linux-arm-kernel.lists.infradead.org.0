Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BCF14458E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 21:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayClNHNtSQUMpkMd8/2VXCaybdW+hZm3cIOjwDWtm+c=; b=BbjThGvcSuXWex
	IeGM1vPcGQa5qtDn4/QBFl1uvXvR5qhmLhWpESGMR9wXh2jZTtGgOzQGEI+0sa7jh4nk/FuO6nzc5
	vmNlVogViluZVEPvpgfjTJVABHiuACH8V5jgvhBYhJ55QhYKPduU7r3T9HP+7Y2dUKn5F68GpN1eK
	Hp01OQWPjA+UmNkCerGvcKHyHSviAg53H0dY8zZhpcWjMxcPh84xHA0rsEv1o20837hX6q047TnrJ
	DS+KgLsXmOSr5NXFyLVjP03S0zxn/ju0swKuRyGkZ1n+KjBTWAOid67HSequMfNvehDYWY1kI6trL
	VzbzWefKBiMad8kSYHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzgs-0001CW-HE; Tue, 21 Jan 2020 19:59:58 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzgf-00019G-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 19:59:47 +0000
Received: by mail-ed1-f68.google.com with SMTP id i16so4304240edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 11:59:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EfnQ+XKYizwj9MPIAzRJtjIVqLk9CK3TPy4MQG1Zm3w=;
 b=LcXbjp4+RwjF11fw/4dVzxhcDGeSXqWOEhAbw+XBWKMOeE1qKUDIjjf1FokWRD5dFY
 DIlcWbmfmMH1zMnzvoqT0zfPKuiUiNy7+ZD/R1cmKtUSQHwdL922uL3O1xPu5bQV4PCT
 8BMritQ3ZtrXmS8ddedXHTDRGcV0c8QzZcE/Lhy383FEYDzMv3E2VkXQynBDxwRSJzzc
 TELkLmfgHq8ixDR5cq/SlZtCZUgP8j84j3Cipg7ILu4vy8ExoobnWzhIDZ5uR/AwQs0x
 Ji5adHUD1ytRS0qvnJkU2Rsb8cNoL1GDzMAvjg6TWmVqS/TzF7Ge07r+6gHoGjJ0hJ6t
 nEjA==
X-Gm-Message-State: APjAAAUJFf3f4aG4wGPO4tkwAnTaydJLaxW+l2eB7yoHrja90/s2RRP8
 v9FE1XJ4PYKPpMNPvuz6dDPpmtGF
X-Google-Smtp-Source: APXvYqzLcCMV+S8XTliS6yB7SbvmW3d8ogdAc/uE6vbbr8i0gZpt+AiMsTun+gNhCzCvuBwSoVimZA==
X-Received: by 2002:a17:906:8593:: with SMTP id
 v19mr5983038ejx.377.1579636784558; 
 Tue, 21 Jan 2020 11:59:44 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id u21sm1511345edv.43.2020.01.21.11.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Jan 2020 11:59:43 -0800 (PST)
Date: Tue, 21 Jan 2020 20:59:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 10/20] ARM: exynos: Drop unneeded select of
 MIGHT_HAVE_CACHE_L2X0
Message-ID: <20200121195941.GC24380@kozik-lap>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-10-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121103722.1781-10-geert+renesas@glider.be>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115945_809119_C47B3891 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:37:12AM +0100, Geert Uytterhoeven wrote:
> Support for Samsung Exynos SoCs depends on ARCH_MULTI_V7, which selects
> ARCH_MULTI_V6_V7.
> As the latter selects MIGHT_HAVE_CACHE_L2X0, there is no need for
> ARCH_EXYNOS4 to select MIGHT_HAVE_CACHE_L2X0.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-samsung-soc@vger.kernel.org
> ---
> All patches in this series are independent of each other.
> Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be
> 
>  arch/arm/mach-exynos/Kconfig | 1 -

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
