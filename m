Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56B15C314
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL9ovGmTuM2CpqLXrjthCTqYm/+eV60DYutlGlz9rcI=; b=WVWBnFvP1YvbuF
	zRHGWPfeHw32Yimk9kc0ee0Yjg9qvvAU/67lueSevKCO4EAZh9uO4D3b6UYZ0AvbEoP0AoA+LMLc4
	MeFOaxVSXt3y5DSS9bLhC9ZQGsXId+ZHJO49JXCPwceJo2jhQ4v1AKmUHaiN6RWPivfQkSfI75aNP
	H0hYcCA4dcehcdLtJ/LqgxLFP+HyIQwU4Ow6JwOp13mOB8JjNB2suP3KSrePhGvKMJANBUCQmMlcf
	m/lsvek4UMxcN3GqsfZhFftHsd06U2fsKZedxbSkGfZTtuRxrx3FulR6KqGKWMU/NyzW8M7fli4eS
	VNY8KbkbHDHlaniXjRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GeH-0004Gx-7p; Thu, 13 Feb 2020 15:43:29 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ge9-0004Fy-1q
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:43:22 +0000
Received: by mail-ed1-f67.google.com with SMTP id j17so7358047edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:43:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xWjlmZnVBt/ZlK8vapzAQmz9T3RLkyLlYRSHtgLmYd4=;
 b=c0pLRh2YsnhldzJTrkX6s/e8OHy9xO2cAiUSUoEWx5MkKafkCYRCZI45J8+0p0vDRS
 AW88m/ljWyBy6d++5+f+2j9JmRjSx4VD/s/n2OrDULLVyWQkSw9pGSlta8PJrBZCuJvt
 bO6mSv7cork6bM007LHlWgk3YgXdahJvpehLnVYs90n4/RpsN2nL/J+8zSMoCxoEPKdE
 Om305adz7DKvNcLxwC/sBG8O04ZfYJYzlBxp+cJmWLhC5ix1bkM90WISZukvmc6L6Acu
 /QMbtOH533jHMTeXbojIP2gXbSCdATTnaOEUkPrnlNwKmpEBW+V8zDU9Kdg/rnpm90Yz
 kqZw==
X-Gm-Message-State: APjAAAX0aT9pEwhXD35EyvBmXa4jMeqJ8TRmU+sbKwDipcvQoIgoY9mn
 ahp9JAhaTkxD1bLcI5730b4=
X-Google-Smtp-Source: APXvYqxC6vfH1GEp1GXd5aDVxuhj2SoNdVlypepsj2HdRdhqBL5BWW5qSOnvNylv+AF9dT1OutTu0w==
X-Received: by 2002:a50:9b03:: with SMTP id o3mr16345398edi.371.1581608597930; 
 Thu, 13 Feb 2020 07:43:17 -0800 (PST)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id w18sm293112eja.57.2020.02.13.07.43.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Feb 2020 07:43:17 -0800 (PST)
Date: Thu, 13 Feb 2020 16:43:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv1 0/2] Add FSYS2 power domain for MMC driver
Message-ID: <20200213154314.GA7215@kozik-lap>
References: <20200212120237.1332-1-linux.amoon@gmail.com>
 <20200213101744.GA11087@kozik-lap>
 <CANAwSgR+PFiE0=FEhDY__FDx+470pe0OsbUXcSG64JDuG++ccQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgR+PFiE0=FEhDY__FDx+470pe0OsbUXcSG64JDuG++ccQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_074321_093539_4361DD22 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 06:58:51PM +0530, Anand Moon wrote:
> hi Krzysztof,
> 
> On Thu, 13 Feb 2020 at 15:47, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Wed, Feb 12, 2020 at 12:02:35PM +0000, Anand Moon wrote:
> > > This patches add the power domain for MMC driver,
> > > but somehow the suspend/resume feature is broken
> > > so any input on how to fix this.
> >
> > I think S2R was working on XU3-family after Marek's fixes, so you mean
> > that these patches break it?
> >
> Yes I my testing mmc driver failed to come up after suspend.

Patches breaking systems should be clearly marked as work in progress,
e.g.  by using RFC instead of PATCH in the title.

This patchset cannot be applied.

You probably have to figure out some missing dependencies, e.g. in
clocks/power domains/pinctrl.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
