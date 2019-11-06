Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335CAF0D0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1r+yGgrlafRNBmqLxn4qJE6TtGOwTgGW8IysoGYo64=; b=h0EBh7/CQYcum7
	nYaEhmLsqdARtMyF7VbjvcFrOabEP9IKpicRVM5aMYMwUnI3xSobufQNelEF3YW39UnbKcQ0IUdjJ
	8F7w2TpisPYCHhzi1oKphL3UjvWXOBVvtzXSNOocQ1GSnYHYScCnLho39KVx/WK+w9lpw0KEK3GET
	eQ/bpjT/Y9218X10ztfZxpNittNz04pgTe4MDLYfKRBtiZyeJ3mHaQWlKsJHL9ryiu9/2ajUILuDK
	e9g/Yp0xvUTSXN0GR4rDV2M/0yHKNGXrLE4UTinNOD8Fn1s8ekLPndJUoDPrMvZDQcU6t0ECVhTaZ
	VGqY9Th/7jgiKw8YX6NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSBzZ-0005W9-Kh; Wed, 06 Nov 2019 03:28:21 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSBzR-0005Vb-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:28:14 +0000
Received: by mail-ot1-f66.google.com with SMTP id v24so14339156otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:28:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O0oTid0SW10XwZb1RF+BrVVIvnOR1wYdO6Pj1OAvnFY=;
 b=BlH4JrqFkcNwM6cHr72jwXwHc0oZl7SUaJ1BNPwXQ5bm49I9F9n+lztUVBb3j2if8A
 toF71nr35XCkrvb3AxP/Lel9cuSO6JBh0gHj1V+n2yxjNBpC4/O10bYMJ4XE8HoJII9M
 PE2S0Ew5crugTwK+xjOs4Raf104aN2PK4YfdhBhrQ+fE6bmDUPIFS3sEc17+DTFtul/b
 0/m/miCvfgTMo2Z/jGQcc5ifmtMUy9mHD7Vn6OTbL4UKMkNAV6hUDbHsHj8jigvS7/wF
 GY8hqJP+MMQbDm1llfWf7TGq/lz1VCtbI6q1cKgpPuj3sgQUrSIw4CltNlZ+LXNFPxME
 yjKg==
X-Gm-Message-State: APjAAAV4VYSDqKz8uuHyx/jJnj+D3Oa15QX7R5H+CH2MmVjQMzoXiKKf
 4J3Elsa91hX9vpynLdiIMA==
X-Google-Smtp-Source: APXvYqzvmFAIynZbAa+Lau3VpEysLExen+Ata4ibdUunVPAd4NoDWn0KHV+ZffT5oKe/kQcLjtQNQw==
X-Received: by 2002:a9d:6141:: with SMTP id c1mr152751otk.117.1573010892175;
 Tue, 05 Nov 2019 19:28:12 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 100sm6852434otl.48.2019.11.05.19.28.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:28:11 -0800 (PST)
Date: Tue, 5 Nov 2019 21:28:11 -0600
From: Rob Herring <robh@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm: samsung: Drop syscon compatible
 from  CHIPID binding
Message-ID: <20191106032811.GA24162@bogus>
References: <20191028152050.10220-1-s.nawrocki@samsung.com>
 <CGME20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a@eucas1p2.samsung.com>
 <20191028152050.10220-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028152050.10220-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_192813_414803_4A40CA6F 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 krzk@kernel.org, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 16:20:50 +0100, Sylwester Nawrocki wrote:
> The "syscon" compatible string was introduced mainly to allow sharing
> of the CHIPID IO region between multiple drivers. However, such sharing
> can be also done without an additional compatible so remove "syscon".
> 
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  .../devicetree/bindings/arm/samsung/exynos-chipid.yaml         | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
