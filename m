Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD0AD0031
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVpMDLqsqAr3aPCVpbNuIGXa/IEF0z2HIvJHH5cMkd8=; b=kWP0Qoeeovl4Fs
	jbg2Acd31jKZvZNX77xg4t6OcVV/cCQSSgnE+xl6AP7W0ATZnxEIrtEAeOxx0fyqMQmSbhkkfRvac
	GYpK/AvvxzdxpsdJ5tBQL5O77FSFeU69Fh8cHTl0+CoQlvM42V5kOPrCPGPMewwhE6iJ+MxJSNrX1
	pHGrzarn8X2NMM4cW7IiX49/tMkIdaoYjtrOj6dFkJBOZTfAWYlUIEC9271C/pCdiKKAEXdphRfbl
	aasDqsMXhsusKdFMXt8kDdPP3+ZGfMgl9pwPzBJYXk0TxxHq6R5Wt972it0Ul4Vm0/NmwS/scYUJ0
	UEt6vmNQ7HR+gZD0rKsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtg8-0000oh-7A; Tue, 08 Oct 2019 17:53:44 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtg0-0000oD-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:53:37 +0000
Received: by mail-wr1-f68.google.com with SMTP id p14so19504432wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=biGUlUHt7gI+lvxrPWTuGpTY989m3mtLcUoswoyT+ig=;
 b=GioZzfV70l98+b2zLle1dC5+KAl+MckDt83V0KSQovnopAs4oQuZrjNLoT4vEllg+8
 kK/in0YNYG/jUI3kZpgPwJCm3x0v64gxUjWT1b8JRTJ36sDgY5Dm3O7/Tw22tgNIpAEt
 N6DDMw2dmGI4hM2zPviPtIl5hdqq1ezyA6DxHynSgZiptRQfZ/Z37DO3f0ChTOWfz+R4
 V/Sk1BNaPrsqBUbWZ3kHDXYWfFWnsO0zj2rc1bRqxUhV1aX0u90+gjo5KEg47a94F6A8
 qZQh1DukkI1JOPt0fmqrZRxVWYfONSJTpGlaTz7XtuPEo4Md11b0JWz6TEbt9umsNW4e
 tQTw==
X-Gm-Message-State: APjAAAVo1WmQNf+2v40vEQv+CCu+iaoU8yN/XWDIha3wTaE7WQQWrFdu
 IcH3cqUbY6MIzFuW2LSUvYg=
X-Google-Smtp-Source: APXvYqxcSOUZjtZkaOPACSxR3aFYAuWRL9aDUd0khkLJhPdhJQE9JK92kwvKDqqNrk+Nxg2TFrTmZg==
X-Received: by 2002:adf:eec1:: with SMTP id a1mr25802083wrp.151.1570557214261; 
 Tue, 08 Oct 2019 10:53:34 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id r6sm4336796wmh.38.2019.10.08.10.53.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 10:53:33 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:53:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH] ARM: dts: s3c64xx: Fix init order of clock providers
Message-ID: <20191008175330.GA28160@kozik-lap>
References: <CGME20191008165931epcas3p2dd2937d851ed06948dd7746e5a2674b4@epcas3p2.samsung.com>
 <20191008165917.23908-1-krzk@kernel.org>
 <ceede424-e4a2-03f1-3ce0-04f405688721@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ceede424-e4a2-03f1-3ce0-04f405688721@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105336_335735_319570EB 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: Lihua Yao <ylhuajnu@outlook.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 07:30:50PM +0200, Sylwester Nawrocki wrote:
> On 10/8/19 18:59, Krzysztof Kozlowski wrote:
> > From: Lihua Yao <ylhuajnu@outlook.com>
> > 
> > fin_pll is the parent of clock-controller@7e00f000, specify
> > the dependency to ensure proper initialization order of clock
> > providers.
> 
> > Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
> 
> The patch looks good but I'm not sure above tag points to the right commit.
> That commit is just a regression fix for
> 1771b10d605d26cc "clk: respect the clock dependencies in of_clk_init"
>  
> How about picking some commit touching the dts files itself, e.g.
> a43736deb47d21bd "ARM: dts: Add dts file for S3C6410-based Mini6410 board" ?

As I understood, the mentioned commit "reverse default clk provider"
caused issue to appear, because of reversed order (first version of this
patch played with the order).  Even though that commit was not strictly
the cause, but should come proably with proper DTS change.  Therefore
the fixes points to right moment of backports.

The DTS commit, at that time, was correct with bindings and with driver.

> 
> > Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

Thanks!

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
