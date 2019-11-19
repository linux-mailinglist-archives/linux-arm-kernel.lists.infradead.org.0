Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B159102D66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWgM/k/JNztiIq8gyCum1JNXvpGMwVbUMq9WTl5705w=; b=lNhkXC3o/YfHf5
	whk6mtKWB0Fal2YMyLrCLyLYFUw+Y7N57Ql1UXC8tdByYstZ4aI6mHSykNM4HwETXucVhCmcjQGVI
	dvVREYTozYNQGVldvorqbRya6L23pksv5XHKYkj6u/pSXkFCraliJe4V8dDh3/YggsA64xceKyXqy
	aY6AGZ4sscsPKnFheKp3Aya9mf1HzMzi/cVK5DsbtAmfiM7bUCwV7GPXw/5o4q+Ib54qFo55qRxCC
	jn5r1tu28TuiR2yODdVP9n9FxYYPYZzmi9PEifeXJP/j2Xn6N5UcvDBJidYK7IyGJNz90hP18x5s8
	9wAFLArZf3nJOiX/PMxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX9xF-0002UZ-SX; Tue, 19 Nov 2019 20:18:29 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX9x6-0002UB-Sw; Tue, 19 Nov 2019 20:18:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id 94so19086213oty.8;
 Tue, 19 Nov 2019 12:18:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=onoq+Z2JcZ0wm7xV09BtvAAc615BtbBWD3mKE843QYY=;
 b=QZ3UWizso//X/ZDJPEEQpF87NRsFi7sXEhOi2sFJmbNqMDXL/XtfJBhB+YGaHjjfzg
 idgMv2/Ig1lOz/Z5Jj8ixFZFKM9AoHCvq7gKCsUEtBxlT9A7xR0sBR+lu1s+HAU8swNv
 nYPsbXSAdbjczHT9eYHc5t/3K1PdAkVlgASWyMMbI8eRlRZuTGNK8iF1X8MmNL7I/gBa
 +feEVYH2r4mFiz8AgUm/cFmk3IMpXogtp9CWAPzMJjoAZ123tUlqK4D7z8JQDTy14eYy
 bLkbvZ/nXhT/MsbH2+nPph3RXrwaWH+OS6MPpm3QEr51cc5MBmRgR3tDv9OOPqFh1dFv
 AKNw==
X-Gm-Message-State: APjAAAWH/FNefMCRKbsYvPOeZfsU29Ws8n8bXn3GWjULJ65s5SjyGD4F
 njW1LzTzifx83N8P5HUMIQ==
X-Google-Smtp-Source: APXvYqzk50DUwK44cVAQKNTxSjvx/DhWiu+LrLwLviaKJdBnE6+0GzA6D87C87M4wXVUnS//c5dHvg==
X-Received: by 2002:a05:6830:15a:: with SMTP id
 j26mr5085138otp.342.1574194699323; 
 Tue, 19 Nov 2019 12:18:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u1sm7574771otk.33.2019.11.19.12.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 12:18:18 -0800 (PST)
Date: Tue, 19 Nov 2019 14:18:17 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: pwm: Convert PWM bindings to
 json-schema
Message-ID: <20191119201817.GA17082@bogus>
References: <20191021160207.18026-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021160207.18026-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_121820_935627_F5898237 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 06:02:06PM +0200, Krzysztof Kozlowski wrote:
> Convert generic PWM controller bindings to DT schema format using
> json-schema.  The consumer bindings are provided by dt-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

Looks like I missed this one somehow.

I've applied the series now.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
