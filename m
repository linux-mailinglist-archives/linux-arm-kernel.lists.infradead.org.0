Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AF010E03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Zwi1dATMP2qIlM7jNQYsgSf53DGcaPKoa7AiniSYw4=; b=LzNZD3N5OXmvud
	/Hxh/N/im2cP5iIlMPdMdQXrRYqSJB4Heg1q80WOeuz3co8XeOrM0qHp9ouQZf+mMDjKyf8p/TvSl
	B9KpUU5KaHNJrJRGTN9RQS3qva4FTaekxHVUSHTzrwBISF8GFdO3u0XeKdqwvHlJBcTkPOM7e+y4G
	JEibdmYAwDsHGVh9FKXU1B9W9YeXNbIWTmfOEsP2A0Kgd6ZfRPHNMiz5YP7C6/smsixcBAYVVuq4o
	825zR9LtLH8xW8fWFvnHqwGpDhxo3+D17RxC0k6TTK3Gk4Gods74MHDmZAcISp9S/t1p0n9aneFqa
	6PeAp9agRZBOLNrC/gfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvqY-0004Ao-0o; Wed, 01 May 2019 20:28:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvqR-0004AE-Cm; Wed, 01 May 2019 20:28:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id o39so124500ota.6;
 Wed, 01 May 2019 13:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iM9Lzvx9eurZ7iNAk8pEFB6h2rhy/JbojZtOGoYy1fM=;
 b=I4UgLOjsGpdffem9YPJR5YTKw96YH28ApaMCG3OEIrcrwrE8GcWovl/cdG03qY0038
 UjIXmkbzUaEfVYZoW0km1Gbq8f4d37hb/WyJyzJcKElDfrzGi8ZYyU5WWaeEtYJ5/hNV
 yggUxB4aRT0FyWYygBxRGn151N0dz5X362K5Tt//wVTsarC8Hg7HDd6LnjLCgSzQbdxq
 s1qwHyNYTNjguzARgHws5rB8unN9l0Ynl4HKyFbeuQXtTgRwqvgrCpPrFjtXDcYSgHSN
 I3ItDf034lTeFNmDeDD8JyTlRXNUgZYn23Vj9tRO5GfUsqE1Faj2ZZNcseuXQ3+KOb/Q
 FeSQ==
X-Gm-Message-State: APjAAAWvuycxYunrFiCXFNGvTyBKjrZ+MKQVlKJdqblnaBjgkzRyKH7S
 9vlqjVpwokjhWlQj9fWz0g==
X-Google-Smtp-Source: APXvYqx+WVqWajrngCu2jyO/2REsqFPYSDsjATjmkISKqjIRUzuaY4guT01c4xi2gvLZdnu7Jl16ag==
X-Received: by 2002:a9d:22e7:: with SMTP id y94mr15193785ota.318.1556742526577; 
 Wed, 01 May 2019 13:28:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n70sm6017786ota.65.2019.05.01.13.28.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:28:45 -0700 (PDT)
Date: Wed, 1 May 2019 15:28:44 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [RFC V2 09/11] dt-bindings: interconnect: Add header for
 interconnect node
Message-ID: <20190501202844.GA5092@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-10-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556614265-12745-10-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132847_430252_E88758CB 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:51:03PM +0800, Henry Chen wrote:
> Add header file for mt8183 interconnect node that could be shared between
> the interconeect provider driver and Device Tree source files.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  include/dt-bindings/interconnect/mtk,mt8183.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 include/dt-bindings/interconnect/mtk,mt8183.h

This goes with the binding patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
