Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC571170266
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8+BA1YEC7hSXrA90ysUmz1AnRFDSP87DdI7dVfrGew=; b=XXlGLsCNfwgQm0
	oqzwZKOVn4/xyH7utvW2UrxIhb71agiCJbNP9ri/0bSxZe27t1ZMlnkZ//6vyoZQLj/XETypl2two
	jotbFqTY8cu78G+vDn54K4xbHuu8RAB7I1xbOMtbqbinpKC5bkbxCFLUV9jUY2DH/zx9PR+8HWfLZ
	hCFe+hvQ57seM9jfMP3gtLIL2ByohvuTHT92SsuifvAJJCyPmaPYfiSc4swW6Amkx/npBaacCa99f
	7FpBsqEUGUVbfmu4exESCKoBuO6CKRoY5vbIaWNar9vJGPtI43RIKJAqOMzzoP4PHesLzoo/2m9q3
	k+CYo/wJ6BoqbNJaBD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ycg-0004Em-Iq; Wed, 26 Feb 2020 15:29:18 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ycV-0004EA-O2
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:29:08 +0000
Received: by mail-ot1-f68.google.com with SMTP id i6so3289223otr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:29:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+gnnwOAg46K96ABM0Tlqt7z83cd8v189Qw9HHsITB0Q=;
 b=cv6vMruPU7m46SV8PL0jkFY0yTjfYcfJHwfY9RTLjnMrunQsej5mKerLzg8+rIfw6u
 mUZLH5IyL48T041kayEv+dD+8hkkqh8KXELoN6W1yeuQYZJdRJLgepKLeiON9+2Y8PUn
 m5QR2/inNSqeFy2L+8QODtUYOHPz7jPRctlewIToFJ4EB7Qig5bj/USdElJg6H6QtY6D
 NAwOW70u5WNJPaokTiEV+QGsyG3gcmwdYEO5/DS/wEmjK2/ZFucfCY46iarITkRpREll
 fyqbsXMRwNLe6gne6/L/V9jHSR7cxXRrm8Hv9Fq+LiNJlZNEY96YpaVSEhQXRF+sYy8m
 hCHw==
X-Gm-Message-State: APjAAAUIc9wr0q1ehnGAFn/hXiuxf3YSjcblSieJ38+a3l0Li8TlPxme
 JlQKz/ics7Dt7rCw0C/BZw==
X-Google-Smtp-Source: APXvYqyxAO7Tb6IqRKVYATE8l+4tyCwvJ2dPN2dFOyzIZrEyJqElrfMC4rzGX8bJamVzvG69mw00Pg==
X-Received: by 2002:a05:6830:16d0:: with SMTP id
 l16mr3686225otr.83.1582730946203; 
 Wed, 26 Feb 2020 07:29:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g8sm874762otq.19.2020.02.26.07.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:29:05 -0800 (PST)
Received: (nullmailer pid 4725 invoked by uid 1000);
 Wed, 26 Feb 2020 15:29:04 -0000
Date: Wed, 26 Feb 2020 09:29:04 -0600
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 08/10] dt-bindings: marvell,mmp2: Add clock ids for MMP3
 PLLs
Message-ID: <20200226152904.GA4663@bogus>
References: <20200219073353.184336-1-lkundrak@v3.sk>
 <20200219073353.184336-9-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219073353.184336-9-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_072907_778421_1A0F80FD 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 08:33:51 +0100, Lubomir Rintel wrote:
> 
> MMP3 variant provides some more clocks. Add respective IDs.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  include/dt-bindings/clock/marvell,mmp2.h | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
