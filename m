Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED1F18CA96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:44:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgBljqhXzxKREHqMzIRzuoT+uLUwvgq3dPfP5DK943g=; b=k8M91QM2Cf0XnY
	QNLZORzUcrZCO/EpxXVmqgBF0YszMYVDkL+mXvMlZ5yrCEKO/FqtSep7GlI3WYzvXG+1NXfYIBkfO
	vdQ33qegJfB08BD1kjErXhjMMfCEzXt5AibMetdzkGEpxl+dAJbltRbhW8BDW6tyR4QNh0HiKjtpL
	VbocP9/FvXMkh+Z2w1IxzWZt6LsNUXgyJI7n6vSAmt+4aPmw/QKyQqlAyPAIZQbGfZ92dQZp1ARBU
	SfDGHqIx1Nin7Uf5chKP+vM4biBDMQDYJAwkb2WryfVm1upGY5TN9Yo1P6Bo8Pesx4vJkkghvv8TE
	Kfh/jAQnh45Rs5L5bglA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEC0-0006KH-6S; Fri, 20 Mar 2020 09:43:52 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEBs-0006JT-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:43:45 +0000
Received: by mail-ed1-f68.google.com with SMTP id b21so6372122edy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Mk3s5g9LU/2LF49QpiOVlm1YQB1p4hRZiB2SBGyS1Rg=;
 b=g3ttjCO2qFdyJyM0JkQMhniFR9WNDaoDZafHBm1GpX9jYrPZpAxy6qctSIAtCz+ihJ
 oKS9olW6W3WF7H9pjwwEzOJncwBkv7aho+0T/e5oVRaaHoz0xW6NYchL5B2DIiDTRgCJ
 twX9dETBNWrajmKVX+opK5rmNfeK9F8pI0mNXiQ2YeInBIyntU0xxYzmCsEHdH1QFieP
 +O3epKJc7lMSF+u7zAsHWvC8q+cbAr/O3bRSFsr04a/VAWb1XNXg3sz+Tqu4ooyXu4XY
 ucuKc+iGjujCqjbpiKeWrcfMuHHQhpq4/UOTyUxZWkXT0e2WVZoqSVH7A0FSdy/p6j3z
 SRTg==
X-Gm-Message-State: ANhLgQ0wBxvsd1PpQ1bq4RYW+eTStbPzlKkcOD6nzy/fyaIImMLc6D80
 jGMgWyGujHEIebyt1G/ZuQA=
X-Google-Smtp-Source: ADFU+vvfbrYk4IAPU07kklFqUnr/Dobh6VAeD25kkWfv6Ll1pmLkppDs5xtDBx4Uf6lrXVFxzavLJg==
X-Received: by 2002:a50:f743:: with SMTP id j3mr6992962edn.22.1584697422721;
 Fri, 20 Mar 2020 02:43:42 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id b26sm316874eje.18.2020.03.20.02.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 20 Mar 2020 02:43:42 -0700 (PDT)
Date: Fri, 20 Mar 2020 10:43:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
Message-ID: <20200320094339.GB12976@kozik-lap>
References: <20200319173411.20607-1-paul@crapouillou.net>
 <20200319173411.20607-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319173411.20607-2-paul@crapouillou.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_024344_705133_6277E1D7 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Jonas Heinrich <onny@project-insanity.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 06:34:11PM +0100, Paul Cercueil wrote:
> From: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> 
> Add devicetree file for the Exynos 4210 based Galaxy S2 (i9100 version).
> 
> Signed-off-by: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
> 
> Notes:
>     v2: - Change i9100 to GT-I9100
>         - Remove redundant description in header
>     	- Add chosen node with stdout-path
>     	- Rename regulator nodes since there was no regulator-2
>     	- Rename i2c-gpio-3 to i2c-gpio
>     	- Use IRQ_TYPE_EDGE_FALLING instead of hardcoded '2'
>         - Remove spi-cpol, spi-cpha as they glitch the LCD panel
>     	- Make CS gpio active-low
>     	- Update ehci node to add 'phys' instead of ports
>     	- Remove duplicated ehci node
>     	- Reorder nodes to appear in alphabetical order
>     	- Remove useless newlines
>     	- Remove regulator provided to touchscreen node since it does not expect any
>     
>     v3: - Change CPU regulator name to VARM_1.2V_C210 as in the datasheet
>         - Remove unused gpios for the max8997 pmic
>         - Remove redundant interrupts/interrupt-parent for max8997 pmic
> 
>  arch/arm/boot/dts/Makefile             |   1 +
>  arch/arm/boot/dts/exynos4210-i9100.dts | 768 +++++++++++++++++++++++++
>  2 files changed, 769 insertions(+)

Thanks, applied to dt-late. I already sent a pull request so this might
need to wait till next cycle. In such case I will carry this over merge
window.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
