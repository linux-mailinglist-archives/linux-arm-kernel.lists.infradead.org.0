Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35CF2FD91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56kVKMQ6AwkDbrjv44vGFpuFbxLJRdPK0HV/H3gx5+M=; b=Es62feQ5hN1zUI
	+OHoxHpbjlck85le6ZIbN+GTVw1/IM7xxwqd1IMqN0xxALOcnax7AedWI9sEvZC+qSLsizJxfHv49
	LaTi5imhX1b/E09ehVyewNK9u8gSkDfYTa28OKYB08WGmkBQozoheQJj8AgW9vSmbZtovVp/6ekD3
	ggk7Y34+fBk2GwZ/OngwA9GKFZKl+G373KImPYKpXRpvHkGSrZ4vgPRNv+YJRuO9+EF9IQgukZkCi
	B3mQKHYbjSSszA48gvNWfER3uIzWt8EWx96LnYcOHZvYZBZyFmsUEht+12AesXW55BxEx8IGzqnlU
	b20E/3njBrEyV97QCp2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLvu-0006Fn-Pf; Thu, 30 May 2019 14:21:30 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLrk-0001LU-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:18:03 +0000
Received: by mail-qk1-x743.google.com with SMTP id m14so3923375qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 07:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l+LOT5T/HmBUsdzCxRl5dLbbljv3/ECxiQWhmt5quQ0=;
 b=Lp7NHqOwMPQVLwKjwmPtyYv6BBVOczLj1a73C6xr2V2zY9ATwNY9UPq8yXTSXrkq5r
 L4phwmL0wNDGV9sklxFEuTIUL0WNtXLLw3syl3N7eBtW8YXwsMmtpFKW9fTFvEto0imz
 ylPC2npd0R+mRKamHItWAhq5iJJGp8hp4cE+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l+LOT5T/HmBUsdzCxRl5dLbbljv3/ECxiQWhmt5quQ0=;
 b=jzDHAfBwfKmYOvuDe5VNjM4aQv+GFgf/WU/ZWY4WlYCyU0bNmgU7IUgsu3JOh4frj/
 pW57k630oGHO23MSkrgCAmAsVgGzDM7o1X7hwtb4jTtpVJXgvvnYav60fWeb3fBuHkIe
 zuJ4Vj3JhiPCdX2V5kNUTlwKxECPxsUxfgIJf/AH23iZ97OLVmQfuemzOfQ1gvRPW3Yr
 ymINUxzqFAWtDM0qYAfVZjLMKpKbc62XGQPQwLMqyTGPN76NgaqkKHBmBi/PVdm6e+cj
 TfrjcTEG42IWF6yaWo5qiE1qsimh7KFZrSgg9HbODFSdp59AKnVXFC/woAjmcPqpYRCi
 /a8w==
X-Gm-Message-State: APjAAAXKAmMgA25bY7swpm/ssy1EX+R0gBvHjs0dR6u9GfY0XfFH9gdw
 sLnPOME/kQk086M9W6pXrPJ/k/M7I5W2zEwiYxs=
X-Google-Smtp-Source: APXvYqxvcdqalIqdQbZ8c+pH8PwVq3is068RciFxLPOT3so+FaMecraJ+Da1cHA1B+kh92m1vrm1sTnOMVgRKO/Dr+E=
X-Received: by 2002:a37:a3c5:: with SMTP id m188mr3485959qke.223.1559225831160; 
 Thu, 30 May 2019 07:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190530093948.12479-1-a.filippov@yadro.com>
In-Reply-To: <20190530093948.12479-1-a.filippov@yadro.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 30 May 2019 14:16:59 +0000
Message-ID: <CACPK8XfG7j4Z2bqX9CFxUeUrpx708Uqbh-5ts9W5SnDfDw-xYA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: Add YADRO VESNIN BMC
To: Alexander Filippov <a.filippov@yadro.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_071713_040975_C9C0E492 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 at 09:40, Alexander Filippov <a.filippov@yadro.com> wrote:
> @@ -0,0 +1,262 @@

Can we get a SDPX license string at the top of the file? Something like this:

// SPDX-License-Identifier: GPL-2.0+
// Copyright 2019 <copyright holder>

> +/dts-v1/;
> +
> +#include "aspeed-g4.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +

> +&i2c3 {
> +       status = "okay";
> +       cpr2021@59 {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               compatible = "general,cpr2021", "general,pmbus";

Do you have a driver for this one you plan on submitting?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
