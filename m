Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4397B1044E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sLIVoldCttlcJTrJV7U9QGG0ujPu7d5ZCubgXRWPoo=; b=LbtYYc13KacQQA
	TP3FzlfXr/0ZrHpNzT+U3i+kkGnyjg2BvYGRvILqGRNQbfTtpYk+uIe0fx0olEMOrc/PmdaI9gzxu
	z4hj71plDuaNoW8h4z+pd08u8vSt2BlbTBQ+BURekztlS5q6qSKqiOaVEs3ISc/revzNfEXuAr8yV
	FYrDgpq/1U/mOMzJ9FvHlNv6KSha7ZjArpTzhCKVU0GmGNNx2uMgsWwcfHz/gfCi9Znwqm/TDfuv2
	qXlhotWKkG+sUzzOTb5rI/U3IoziqqnmBJeIS4tVFuqX/PMPOHLmVjGb8qI4w0kyoxKyYSaNUv2G2
	z3s2K0RHIOpigLWuf7Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWRs-0007Vr-4j; Wed, 20 Nov 2019 20:19:36 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWRj-0007V6-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:19:28 +0000
Received: by mail-lf1-x144.google.com with SMTP id f18so597897lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aO1eMdBEY7hslgerH7x8XFO4GiCMhOytkTZssaC68pw=;
 b=ge9P/unMnfSLgQKieWjra0Yc3TavwLv4MnHQ0kKjXV9ID/Ai7DCv6D3LpMLYde7ECm
 4zP6oqrEagImpHKTJgc4Uc222dXBFxQIEb4KtBTcKZbnBsJApeUelPFEr6sdrd/sWsWR
 AtlHpclzUpGdoSNrKSNWDe00+5cyyA/IGkNlgE27wxRXS7oLFKgQUr4PwPfSM52qfD8/
 Bv8dl0iV1b3pMLwEq1pGx8yni2Dqc/UQH7KaLIi5PdHyabvZnzCJHLzjqXX7599e7RXI
 bzUk8gpI/F4/E+sIjLNV4+7Ba3jk/eTqHW5ADhDlDj3cK4ZbAWHdkudPEvYWgRJDjNIG
 0g0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aO1eMdBEY7hslgerH7x8XFO4GiCMhOytkTZssaC68pw=;
 b=mmOdJr+mzL+tDN9woGUHMeXePrzKMmPHSuynPc27w0kcCBjGQuIuZouyvv3VB/FAPg
 92Nv9+dfXd8qLJ202dSn060i8rfCW7OVEEZTWvd93h3oTaWTHh2Uxq6VSENmJ4rLEH00
 YSZVFg6/WbNosB/pTXicv/4uPF/4pL9zsoEjcROlSmWm0N6GeOhKNqRvD7dmQufsLXbU
 pB9O6d38AMYyrQ4fqovp3LmjIAPQCSy/XG0MZJdhobC5O+1qgVVIGaK2Oai8skM8JnM4
 i+CxehXJn4NJ33gcnxb35C9n0Ky6WaB/+v0dh6eNtP1yYW6gRXJmhekSBClv46Fnv9Jt
 z/FA==
X-Gm-Message-State: APjAAAWnUH6i/+s03HvkbkxMNPg2FroJ8O6VNwnelhuKCL/lvRgdOtRY
 rW9DucEo0EJCGv5aVzdcROLvEGxyQwgkj5DuyRLSkg==
X-Google-Smtp-Source: APXvYqy3kknXCsT33k6sxjMGF1t83Wg3lkQLFFDj3+gZadBEi2HsWf+UQfPK2lcnZH6+5k82htgilxD+HRGtg1tXFlg=
X-Received: by 2002:a19:c144:: with SMTP id r65mr4409719lff.133.1574281163584; 
 Wed, 20 Nov 2019 12:19:23 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net>
In-Reply-To: <20191120181857.97174-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:19:12 +0100
Message-ID: <CACRpkdbE3wu9MAdy+y39idaVC9Yq_fwb+fdPmanN3CYzRwzeBg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add yet another for
 ST-Ericsson
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_121927_203596_DD8CA499 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On Wed, Nov 20, 2019 at 7:19 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Unfortunately the vendor prefix for ST-Ericsson is used very
> inconsistently. "ste," and "stericsson," are already documented,
> but some things in the kernel use "st-ericsson," which is not
> documented yet.
>
> st-ericsson,u8500 is documented in bindings/arm/ux500/boards.txt,
> and is used to match the machine code and the generic DT cpufreq
> driver.
>
> Add it to the list of vendor prefixes.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
