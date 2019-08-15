Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC148F36C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jTzgO4LSoUqwzI4cGKD+4lENqBW+yX6bwApCZyqxRY=; b=uJ83omAW+dg17H
	bg5z194FYet0IbSvyKxcyfbtw9tm8G6fSE6vqod+tPx/w9CY1L25QXpTm8kZfw3mP1Y9+yna0CcJZ
	epazAQZpejPI66sSaxkG1sGQq1Fr7XkCmkrssdWi6oIJiYPbwVc7PrrNNtXlK1nOxh/6Z99VP6tGO
	tjELjpQOxCRrk5FN5WFNENDL8MnED1bEfadpt03FSzZ3h8zGf9sIRBpwR2dbZMGDSSfzXv3RLfXmH
	veJqw655rUReadB1Mtcmq3XxJ6yZbT+X/hvrf9+BPpTUDS2RgST2cUBOYiz3YJu8AruXswF46zbnz
	PNyS3cDhZDXYOEN1Czuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKVi-0000p4-W1; Thu, 15 Aug 2019 18:30:07 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKVN-0000ds-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:29:47 +0000
Received: by mail-wr1-f66.google.com with SMTP id z1so3012434wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:29:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G+ti5MoYAXo5Gey/THUpmV9/n/MyYAX4cVlRNM3ewyk=;
 b=Hv6oDJ6zl+JdvGaIl5DrZUQv60dURXqDQv/U/4Bu5sik+/WCBvuEm4XJTwtY5VRFG1
 GT7m9XcYsJcW/RJjkkSG81YnuOmzOqn9thfsn3PNIFJ9+rvy9jDxR+q0x6k0wQ6bJoap
 QNx1M6ZXWzzpZAaFC/bePXtzZdBTJPzTs4EXHltOKpftz9knDhbAyO9fPCZlihxH7/sA
 222zd7RhcnI9q1wHRgKOxeqmHlwtz85ICf1Ja/pHBzblB776/q5tNr5LNb/iPidLCX3q
 T9PUWH36FMZtLRNKxyVSVKfyogEPe4fGt9Qv4FzkGvFX360mtTs44IXNmV8tlsyxwY7d
 NvpQ==
X-Gm-Message-State: APjAAAWqwjAGdZ+nsOQjBCzLDYO8XyqoP8vWGJq5GP3IXlXf0xGHhHBf
 QZUUWxEhDtQmJYfALZ2vbzg=
X-Google-Smtp-Source: APXvYqzcm8U/A1Qgplcw2RiLILIE0EgMkCH1v2MhQN4StF7iqTRUm9rJjXSeZuEZ0RWP8wo36QOmyw==
X-Received: by 2002:adf:fd8b:: with SMTP id d11mr6497885wrr.300.1565893783407; 
 Thu, 15 Aug 2019 11:29:43 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id h97sm9341511wrh.74.2019.08.15.11.29.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 11:29:42 -0700 (PDT)
Date: Thu, 15 Aug 2019 20:29:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v3 5/9] ARM64: EXYNOS: enable exynos_chipid for ARCH_EXYNOS
Message-ID: <20190815182940.GF14360@kozik-lap>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150856eucas1p1a8957cfe50e3b421ccbc3084404de43b@eucas1p1.samsung.com>
 <20190813150827.31972-6-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813150827.31972-6-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_112945_352369_00E7ECC0 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:08:23PM +0200, Sylwester Nawrocki wrote:
> From: Pankaj Dubey <pankaj.dubey@samsung.com>
> 
> This patch enables exynos_chipid driver for ARCH_EXYNOS
> based SoC.
> 
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1 (RFC):
>  - none
> ---
>  arch/arm64/Kconfig.platforms | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
