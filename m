Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B86C4EE76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 20:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yW5M/hEW9xBkKPzfAjUiUgu5kUe8G4kZdgaPwlsjs1Y=; b=RuHwlYfJsxDqcs
	yTZeftCLWM88Or1PztRDF7nkVnztlOBDpdv5wv4s3UKHnK2pnqvcdpdjZ4LvU1Ec9JkjEyt5bnOrL
	KFGNxIrKskW8ACwq7Yhg/tayHvfQxqtMU21QE1gfPqhkrQa/Q8CxexSy6qUUxDVLiSNlxGwpPTvzQ
	zd2Uk5gSPFoTKO4SPzI4EjtNLNJbw+6cKEuWPjfeb4RjJqYzvdtjzYPLnfAUv9FT8du1UncmRbxf5
	rRvSjcbNdNsZE6rReYArVH5YtRNAhcM+khyXz613Fvx4M3PMc3m/eBbentyHi37QsYwM3jrEd/k+9
	nMqW3dYwp+lEbXvwjdwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heO1y-0001Cm-06; Fri, 21 Jun 2019 18:12:58 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heO1o-0001CL-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 18:12:49 +0000
Received: by mail-wm1-f67.google.com with SMTP id a15so7123441wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 11:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K8ZqNlSRzlw+iByGaPZNdN2szcR/O2ehXG6DihUgi5k=;
 b=StXkfua6NPz/F2w/Ix9t+lU+WENFfY6VKjwSKM4VH+boYWeLRLr+pckGHZ1z2NrAw8
 OQLU+3zL+CX7o2Ej9MNzXcrziSKfH98ZMsUJ+hbXoU4Tvm/5WQXnqZNA9APtMPrx7FEi
 IFv8bXwXWDwvmIFrC1eHZ8o1eR5y/1OPsHfRwll2HHxvsKnIRmHEWcqF+Osud3nky8Yl
 tZjtaMrnYDWIv3y5ugLaB5dxF16f3juomR7SmeV3a6rXSsO+iS8pLlPNel7Oi5eM4FES
 MiYVP1kfBxct37vkuduKsOgcXt08+5moGKIMQJD4rwrLzKWkmXLT/k20dCoILBU4kwoy
 487w==
X-Gm-Message-State: APjAAAVb/owbcIY9Q8JX6HLKaKaNPpefs1HdkOAhXtpATw0/HizgmC0K
 RJZobbjiT31ktOGvMeTZvKY=
X-Google-Smtp-Source: APXvYqxxO+HkCjrMZC9y5KfK+BU2nNihU5fwC/SA7zEcs/MVwbeu/GDip2tz7utkxVE97ewJTt8utg==
X-Received: by 2002:a1c:1947:: with SMTP id 68mr4932544wmz.171.1561140765354; 
 Fri, 21 Jun 2019 11:12:45 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id h90sm4746092wrh.15.2019.06.21.11.12.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Jun 2019 11:12:44 -0700 (PDT)
Date: Fri, 21 Jun 2019 20:12:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: exynos: only build mcpm support if used
Message-ID: <20190621181242.GA18341@kozik-lap>
References: <20190619125545.1087023-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619125545.1087023-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_111248_044895_39134E3D 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 02:55:29PM +0200, Arnd Bergmann wrote:
> We get a link error for configurations that enable an exynos
> SoC that does not require mcpm, but then manually enable
> mcpm anyway wihtout also turning on the arm-cci:
> 
> arch/arm/mach-exynos/mcpm-exynos.o: In function `exynos_pm_power_up_setup':
> mcpm-exynos.c:(.text+0x8): undefined reference to `cci_enable_port_for_self'
> 
> Change it back to only build the code we actually need, by
> introducing a CONFIG_EXYNOS_MCPM that serves the same purpose
> as the older CONFIG_EXYNOS5420_MCPM.
> 
> Fixes: 2997520c2d4e ("ARM: exynos: Set MCPM as mandatory for Exynos542x/5800 SoCs")

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
