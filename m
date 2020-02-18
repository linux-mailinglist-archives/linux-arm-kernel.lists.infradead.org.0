Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCFD1634CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f34UaaKl9lO5OwdXTNoiwVg6iuruRK+3mRVV4wmZr70=; b=rsafppP/8mPpGY
	2piMpstLDAsSsJMfcipV8zvj8eTzBnSWZMhy0IiHrhkdPMS4rhcll5WMTGZ/BPBNXL3nq13jnjzot
	tdQc8pDFGLm+fpqwdEM7fEnKUebP1+C8Wfl5WgD31aTnu9gSyxLw0UNm6Czg/Msxfi2ZSqXzmUKUh
	7LUvftL3qhK38KGAQbSS9+MtlHOXWNs8bIFM1An8UrSiKkKx4/44XLjfYiLibF1arKKSuRjh+u5BN
	26NiKxtT0sN+HR+e7gEeM1N3jKE91KcUgAAHBulact/3L4TH+f4dhsJciPZitK+Vd+t+D4K2SrBNY
	WuKJtBqPy3pgOBRy6Acg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AMC-0004SR-Fo; Tue, 18 Feb 2020 21:24:40 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ALt-0004Ik-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:24:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id i1so21616661oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:24:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wtMHXyFhYbqyTVO0vF6Kcqe6OQmnz/7Cal/xbWgxM1k=;
 b=BuazoG+5zZRgnYS33RL22k8cym37RnolU8GQE1moG1JaFIeVX/jgduIUJ59HlmmgtI
 cMSy9V3r9BrJtQrzvCH/RNtnIjfLy4c80RRT6yv6MyFQ247eiwf/T1y552L2Q9uakDgg
 zK1bGgqdTsm+KWskDJ2Bd9JRJ0h2mDgOU3C7JbNPey9YXsJGvEPw9UVhQw0r0BA3BzV1
 rqGZR7RpyLlC6PcVGebKFUtSxVEEsofi1ea6psohH4KCrVL9RJ49fdbb2JjAytQrJ1v2
 qWZM1om54a4/lSltC6Ce1EQUYRwTHNm2EQ2iOfnr79hWxwHVC08A0NujElyOk9s7XDWb
 5pmw==
X-Gm-Message-State: APjAAAXMRhUex7B4dchVJsvJjwuA/wxtMZ+5Bl8ePA9Y8Jyz6T6vpC01
 qCU63QUeg1aFoNDFKydieA==
X-Google-Smtp-Source: APXvYqzRApOAzxWTuj6FxZU0qh45JNaX3foVD2D6h/wVsRSCi4UeCotVaoEUHsPi9xiZdnGVL+n19A==
X-Received: by 2002:aca:c1c2:: with SMTP id r185mr2676756oif.19.1582061060244; 
 Tue, 18 Feb 2020 13:24:20 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm17411oib.42.2020.02.18.13.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:24:19 -0800 (PST)
Received: (nullmailer pid 29988 invoked by uid 1000);
 Tue, 18 Feb 2020 21:24:18 -0000
Date: Tue, 18 Feb 2020 15:24:18 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: mfd: Document STM32 low power timer
 bindings
Message-ID: <20200218212418.GA29946@bogus>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217134546.14562-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132421_083858_63C6CEA2 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 14:45:44 +0100, Benjamin Gaignard wrote:
> Add a subnode to STM low power timer bindings to support timer driver
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 4:
> - change compatible and subnode names
> - document wakeup-source property
> 
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml        | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
