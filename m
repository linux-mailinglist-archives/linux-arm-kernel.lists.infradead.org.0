Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D9230174
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 20:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+R6twVkQHk5f+Bg6mlSg6iz3UDbBMCvRvy5E8AgqCo=; b=BGjwSLGrbULCYw
	In+HQ1jRzdVgD6xdSUpcCqjYs0tK2ZwZssQWm5ayQVXEHqr8QfrvdCiIqJ+cmpQHyt4mRl9HxghCp
	4HfW6lpI4hLPwJZGTRBo+so45g25zNqDz7QqOioK2AzDghLV6x61soI/J4hQpLJpWS1wn0sv+8uhM
	dLwQOUXYDcm3ezMaYiEx8ktF2CiQrkSKAmCWPYiEH3slrUMZepy2fw1mx/mhMrvAZNnfIUXz9QRKw
	FnOMfn8s3XFCnJoslmaWRXQ6+X85WObGJ761PPaFgPyqqF53dtk1s5MDjIPtT7A0oRhxIDztSwdjF
	YA3Pj0hT4w34DoACE6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPQb-0006LU-F7; Thu, 30 May 2019 18:05:25 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPQV-0006L8-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 18:05:20 +0000
Received: by mail-pg1-x536.google.com with SMTP id h2so2476314pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 11:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=i2BiFNHqSJYQ1M5Sbp+c4F+mSlPAwsmPkoY/aA3nXDk=;
 b=iyaWguzNCqfift/Do9pSYHkHVU+pf7uadvPAWSuancxJZr4FwDDqtt1Sn2OgmcvFBy
 pN9edGFJxvg/9q4CiwJJHpxszxCtP+SQxUf5Epv6d2MRXkVHqEVT5OM6M6PQmGOQYEDH
 jXEjwu0uUNwu4xdmB0RJawkXQiwdr1iIkTFLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i2BiFNHqSJYQ1M5Sbp+c4F+mSlPAwsmPkoY/aA3nXDk=;
 b=hBQZH8qjZPtX5/71ospfSMK1Z/9SsJNJZq+jLdgzY5Boqn6NWYehhVhOkZFvZp2oMx
 XQyNaw2Wce3wEEEP4s5vtY5YYWX2UxLgKxqoDv0kDu+U/vodD9Uvll1zyjSTVFnIB0bv
 3cp0dE2asZff2P+p8OoFilketoo06Np28uIf+IfptPuu0ezXQoPwx6ZU1uCQeCtD0eLa
 86IzyLKE6w/GvBv3P5Jiak+WmvX/k7Ag9iUq4OsicQF/fBHZbvHG5QNMWH67MH/UmLRo
 TWqmpR6G8mT5iihPU6iXuY14HdLbwNPwvkwDwv/oewvQYFYAoky7z0/hpfH2fzQ1h1sN
 3bdQ==
X-Gm-Message-State: APjAAAV9nGGbzWp+Ct6OAjOqBeJNMe5kzbgZeGie3+Dr1OkL4GSRv0m3
 QR5/MQNivC8N8Ach4LEG+GfxFBYAMyo=
X-Google-Smtp-Source: APXvYqw2AQpyri6Q0Wv7liGOJz7ZaSWWuOf3WqwkjfTkebq8PxxiME8LDV+dYhJULar+3+XnoBH84w==
X-Received: by 2002:a63:fc08:: with SMTP id j8mr4683557pgi.432.1559239517392; 
 Thu, 30 May 2019 11:05:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q17sm4597337pfq.74.2019.05.30.11.05.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 11:05:16 -0700 (PDT)
Date: Thu, 30 May 2019 11:05:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Luke Cheeseman <Luke.Cheeseman2@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <201905301058.CA55245A0@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_110519_238126_576C4F07 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Christof Douma <Christof.Douma@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 04:55:08PM +0000, Luke Cheeseman wrote:
> The semantics of this attribute are straightforward enough but it
> raises some questions. One question being why would I want to turn off
> BTI (also controlled by this option) for one function in a file? Which
> gets a bit odd.

It's about leaving very early CPU startup functions in the kernel from
getting marked up (since they are running before or during the PAC setup).

> I don't know if the alternatives have been suggested but it's
> possible to achieve the result you seem to be after (a function without
> return address signing) in a couple of ways. First and foremost,
> separating the function out into it's own file and compiling with
> -mbranch-protection=none. Alternatively, writing the function in assembly
> or perhaps even a naked function with inline assembly.

Fair enough. :) Thanks for the clarification. Yeah, split on compilation
unit could work. (In the future, though, having the attribute flexibility
would be nice.)

Kristina, would it be feasible to split these functions into a separate
source file? (There doesn't seem to be a need to inline them, given
they're not performance sensitive and only used once, etc?)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
