Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C346100A66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnpYK7yiw83bSuCZf6h+MLoahfADqvhEArAv1NS+lYQ=; b=ntmocs0OnZCw+I
	iv7bqNZrTnZgdLfmfQM5MKidDqwvepE7pamV/EFY2YE7oG/7rZ0nx7+lAvZTUNI3RgjKBrYId78SP
	YuyBdpHwVsI5SMLfg+nOdBTpTZg1dJRnL4iy9aiFBcNiUQ0jzR+bSKdF6sa1cjvu04Kb65ajLJcTt
	bj28fxlAxhbX+439bi8QpUctphA/GEFi12rH75kGaPP9MJQphXnaOYNySj5D6Amb4kWAgW+Y5pUop
	babkg6F/bCGsW74nFE8Novq/hiHNwMf4HyaSmxEcB+FJXGkqemGyS8p3mIif0jNYuwJtX9IkD25pU
	SMaHqFzSg5bplSGhJQPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkyt-0006jv-Dz; Mon, 18 Nov 2019 17:38:31 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkyi-0006jR-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:38:22 +0000
Received: by mail-ot1-f50.google.com with SMTP id f10so15266844oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 09:38:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OPHeZ0ONb7QxOGjnxEqPGR9GP6+JqjS334aISM2h8GU=;
 b=W7edghhhhzI583Txnx9RUzLt7nFXzfmtOCp2HAGSgpthI2Au85ka73Ouo5bHfxJ2KL
 eTyS5itNlMlmNmKlR8GWmTcMpDsVnS5u9SfwrjA1O1xYdAcC0HTO8i0JkAVkAg6O1/qM
 pt/WNPRmo6AkQqqwiICeu4o+OhZr3pCoDSALsDH8712fN7Wy7m2xYWSmQwUfQU3Fhd37
 crwi7hItjWTR7QfgZHwxtjy5UAvnh2gsBiDE6fbofwkZj+cVjc+zC/dgOou/aeaXOm1T
 PyhM+vdU4tw6+KsOih1w8cnPqE+LFCQv0OWrA/7CziZRhu4qlyBD9pgsuQiK7sO/6fAa
 PVcQ==
X-Gm-Message-State: APjAAAW4aEdr2sci5nBoWkEWrGz+IfoPTNnm96FyjEXRkqP8mafG5k+0
 f70cMvs9KTXA93cVLAwfNg==
X-Google-Smtp-Source: APXvYqw3tWOj5MbY9ztmdhsoNXwrQowUjyz8g9ciL4cSXNT28Yt+hGeB/JDI5JSerIw2w9s+s0L6Rw==
X-Received: by 2002:a9d:30d2:: with SMTP id r18mr352029otg.6.1574098699575;
 Mon, 18 Nov 2019 09:38:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 202sm6275752oii.39.2019.11.18.09.38.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:38:19 -0800 (PST)
Date: Mon, 18 Nov 2019 11:38:18 -0600
From: Rob Herring <robh@kernel.org>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 01/10] clk: ti: dra7: add cam clkctrl data
Message-ID: <20191118173818.GA4684@bogus>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-2-bparrot@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_093821_020957_8D752E02 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 08:27:44 -0600, Benoit Parrot wrote:
> Add clkctrl data for CAM domain.
> 
> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  drivers/clk/ti/clk-7xx.c         | 19 +++++++++++++++++++
>  include/dt-bindings/clock/dra7.h | 10 ++++++++++
>  2 files changed, 29 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
