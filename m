Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A041026AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:29:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JTqfSzJlzafYCNTNWgI7pYF7rGpRmjuf3VZFqfo5rY=; b=t4Ke33ZEE4zH8W
	nnzWsVd10e8REFNGXxfgErRBl/Q8FyA3SdHJ95aKMsEK2fLFZnngpj+9pLMUVbfkSzcrPsqs915ss
	1jvlCY6S2e/Yqdvy1OR4NFim4zfUx/6Zc+P1y1PXkAJ1GKgCXpL5RZm6tECWPRhE2YTYakdAdwujX
	FQV4JrP8dp8LSDt6oYDvaFNgjRZDngZ1dezyJHkh+ss8KKJOJT8QfzLiM2vSy+Qf7YG2DCQggMo8S
	9dswq4YAzpELhP9L5jeimXj+Lo1AStn2R6aR1CjZeqJSrABUQi6VZnrbM18y6V2ED/IGpb/1HuSLF
	zIhGMFl50F1Hql2GvwPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4VZ-0002j3-94; Tue, 19 Nov 2019 14:29:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4VO-0002i3-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:29:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id 139so23572645ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 06:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6sNcMIRGVALNQmfCoOl6isJBOVyA7zcFBph0eG9kcTE=;
 b=X8thbqFEidQ+5TbZYwyYc3+2/23nQdjsHW/Rsf2n0DtmZqXiUke25AM3h3+AKmGQI1
 nZSFJXxzeoOb0MQm4M2slhRG3hdAOzUfno+2o4ok/CgkZ/ItEFrBs7o2jNzUvg3ZWcba
 nUdzB5+cqDak9xGFtYqYtN1Vza2f4UvVu9FS1FEidNabfhEEaihuWsZauWeCpJo/+bDR
 MGIdsg6s89W+bfR+rOtdJiQBODJp9EXpHR6tTuxh5HrLNTCJkYkdWYh3vwK+EusRW0VB
 nQnkTe2Fml3/+DnHob7PuW0aCiQsz17mkSYXtYuTWNBrUsCXWOSND9u+T1U5x3edUCQ6
 1BDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6sNcMIRGVALNQmfCoOl6isJBOVyA7zcFBph0eG9kcTE=;
 b=U5KAQ3Y+1haoYCOB0m6db0oBYOH6iJCOlbXCs/5g1nY/PN6IhK0++Q19KnHjrVaFnq
 8l/duh7niIXRDfmxrDn58NsfqZ17TM6qyWKXJoMENlLUrKQ3Q88ftWXf17FniGqvb6wx
 orf1GJzClKboTVrm4JeDeQpb5cjPWgMI/BKDO3scdgqyFdZaOfxI7m4B7pzuOmW6au5o
 9b7YXbWQZfeqfoiNWvL96coUix9YsN/ZnbqvWGSZzvaYGaMgBVK/+UXbOU4UN4wmYdiZ
 I60TEJ9dR2eTecd5qLFrt/qjwaO6lQdlg9B8IhJQCBwtiLt9O5NdGXT2iDCnWWVXQZm3
 kqdA==
X-Gm-Message-State: APjAAAU+rlrVexyI7gdMTfYIT+YOEcoH3QMbLDfa9rcQwt066IYxa2Qo
 ggLegIiq9rLZqP1Qa6Iwurp1E1VtoKkpNYBr4SuZ6A==
X-Google-Smtp-Source: APXvYqwGMNJbpjx1M8t1gc9I1w6Y8MsDjoR/Pq74R8UC/6e1zXoMpKROXOqmTmNcU+cIJQXxASZ46PrJBMcP0STvsv0=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr4038963ljj.233.1574173758800;
 Tue, 19 Nov 2019 06:29:18 -0800 (PST)
MIME-Version: 1.0
References: <20191117222732.283673-1-stephan@gerhold.net>
In-Reply-To: <20191117222732.283673-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Nov 2019 15:29:07 +0100
Message-ID: <CACRpkdZtsg9g2m7w4Uk9mZ9a6KvQADfb9m1W4DKxbFismk82pg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: snowball: Remove unused PRCMU cpufreq
 node
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_062922_455642_FE09FA0F 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 11:28 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Commit a435adbec264 ("ARM: dts: augment Ux500 to use DT cpufreq")
> switched the Ux500 device tree to use the generic DT cpufreq driver
> and removed the PRCMU cpufreq node.
>
> The snowball DTS still references it, without effect, since cpufreq
> is now enabled by default. Remove the unused node.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for the v5.6 kernel cycle!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
