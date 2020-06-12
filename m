Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C621F76A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBV/ntE2OkWw95QlLAukiCiCK49Td74xHRGNdbSjfog=; b=m/JfIHaixmC6Kr
	yu0yX9F7BRu61FvLcK7pwX3IzMsSi/X3gp/iYQdixfOa+XjlQMggC0mqa8pP13U3V8V9TH0dT2Xom
	WKmg7GKH42Y3WFX4ZlWsvYw7a1zql9NOQIkI40Gs75H8ZoGDk7QqrGngoWS93AHTFhY8rleeGFC5l
	0r6ei2KCOf9g1VYh1+w8D3lGU3TAks+CO513uewqYN5Tz0siQ6r/FEpwyacqtUQhMae7x0fK0bdhW
	DfkuUZxXVi/D0p15AcM7sj9q9X6YiwzYNk8bK+N3xq5znxGf4d+KxwcLM6f/h0858s+EfKaan0CmH
	j0bXTa+SFKyu0ZDO7rTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgoP-0005br-N8; Fri, 12 Jun 2020 10:21:25 +0000
Received: from mail-ej1-f65.google.com ([209.85.218.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgoI-0005bO-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:21:19 +0000
Received: by mail-ej1-f65.google.com with SMTP id gl26so9530775ejb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UCmnkQ+7r4Yl/XA1DWNILW2Cx3UCtYcdqwjb2/DioLQ=;
 b=XWgS9IfTCLmrpY9VYkPELlfe+t5zDOZjlTEXxelCYdXsu4/nn11QqPY1l0YbNmvVNZ
 10IVxS6AAGbH4D20TEORItiJW32QwrXQv3XdTQpe8jiuVYHB/IKldDdGWYIN75kyRwlg
 gOS8GGouFxt3+nAQxwbF29Fm7PuuPWq79WORuUSuAdUAZN/O7U2bhnWftyk6AEh606zB
 L1+fTCc07jpQ10aIJPkPCSAtu7e4zIVPXSax6eXoBxYQwyjDxtyevNPggEshJ89G7F7m
 V8Ms9i7jx6HRsihUIpXf82F1AZKg9IHt7Jeik8/l5/HoZZ3nFpLPFBT8m0JMT8Tm/Iay
 /oXA==
X-Gm-Message-State: AOAM532KeGABf7rSKlH+8YCSBKwNj2qk2blO/T+ds53JPghyFBPBtJPb
 xxkPjhIfgvRn8OzmXxNYGcY=
X-Google-Smtp-Source: ABdhPJzJ6RaY0eAM4hGkuYlc3SLJUwUFh4TiDwD8FMRxFmZkjqZLgmm7NPWi924xDJTeY04nohakWQ==
X-Received: by 2002:a17:906:c2c6:: with SMTP id
 ch6mr12273554ejb.36.1591957276099; 
 Fri, 12 Jun 2020 03:21:16 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id ws10sm3227738ejb.24.2020.06.12.03.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 03:21:15 -0700 (PDT)
Date: Fri, 12 Jun 2020 12:21:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612102113.GA26056@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612095604.GA17763@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_032118_430982_8BC595BF 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 11:56:04AM +0200, Wolfram Sang wrote:
> On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
> > On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> > > On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > > > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> > > 
> > > That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> > > SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
> > > without fake injection, I assume?
> > 
> > No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
> > some debugging options already).
> 
> Interesting. Maybe probe was deferred and you got the extra irq when
> deregistering?

Yes, good catch. The abort happens right after deferred probe exit.  It
could be then different reason than I thought - the interrupt is freed
through devm infrastructure quite late.  At this time, the clock might
be indeed disabled (error path of probe()).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
