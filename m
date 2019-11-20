Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CE81044F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNo7ghSi9HCMGe94EKLGcmBvwE8yYFZ5ceNDYbhaPIA=; b=H6LZmZDCRSJWWn
	y7Qt8tWIAh5R5INWWCBPVc4AZShQddD1spyP8vCC47y7ajJhfhbAcOSggrWQiOFbdZOTKIfFPjXEe
	axifozADcChnXNLTx7SSUch6Ua9n6wTRT4kY5SM5Ppwpvs6WDUAq8Nc/o6EQNQV4jBy6ZXImDafLS
	JtjBgdQ8lnXDNGCNf085Ki/fg6sSWiuULxpoEkGCBM10vlaKqM25Iuo6Yvy5M7Gu9jCkHgWo9Rw4g
	BKdO4psEmkEkaNKpsy+nMOjLtGmSDWj5YKYNWeJWiYVRRT1d2B1QMh2iqNt+QxUyG4Qdt3S6HsAjy
	D1+UOAlmDJJRndxc/vww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWUu-0001W8-Hm; Wed, 20 Nov 2019 20:22:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWUj-0001Vg-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:22:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id m4so565849ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WIs2wEBI7GHcKXrPIdb0P1t899q8+wkAb8c9SvukX6U=;
 b=ff5LYegovKn2N31GnRkIVaZC23z2BnCIHNQhHghOxSeUxVY2MyLfrH2ORY4uFz+zMk
 +svyf4VlzsPF9hyXo2oouXZAhq9xoAhbomPHWrAhS7XWl1pcT7qzauhCVfVIv1jF7lDx
 9kr9+eUO1ZKlwYwJB7AaVHdelTUIZs6BgeEuHXqYbE9zY7JyJgi9Xq4CVVEi5Bah4ES3
 DAtNA0TgFKne97QdHyCg1Z3fDpktmMpiQCWC+ojr8DU5ZfsLsRuFysea965v+dZRtm2W
 OdinZb/T5ygoAh1oPgW4E1vtnm56s9scRp8TQ5hgb4XHCChyV/vvNeBv+jKDjmmWEBqi
 R9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WIs2wEBI7GHcKXrPIdb0P1t899q8+wkAb8c9SvukX6U=;
 b=sbq0jcBfo64AvBKo7/teC0d6s854M6El/p0c3wDvjHqSKlorIfvnSFCu4itK3gCX5S
 /QNs0NkSPc8SBkEIik37w/LtRJ7/SKiGGHLUs4vv6u+TskZVrjB4EQqrH+TKctofEyyr
 FZbcIVEYzSVldYfO4Hpm4wnutxp5A3cc63Bi9M7WhOz9YhuBiRrtjePgP3qPsG1LEBGg
 yP3SySTmV4ohyuaxB/4ZTE7to5P9OqI/0dN02Qb8XalKG+l8C+et5wLD1F6FEkH69Dgh
 C6/xdPAp77u7vlhjsEixL5hjk0GJyVoJFkIyStRaPgcd+Bl74lSGA2u01IUmGBuSMhTF
 b5BA==
X-Gm-Message-State: APjAAAW2qLXKZpJxK4X5/Pnbutn/YLWBYV/B43I9RdoDGjh4KZNK4W3d
 Fc1sdh4xd/owUHlcH7XyrIIWn8nO6IeaqlgaasPq1w==
X-Google-Smtp-Source: APXvYqy2BISaXVNMfN24w1XiqMw+nLLDE0BQUreU/J6rnVcy1Ij3PIjm9d04GqP69zz3p2BYuHH2gKiarIavmZVruo0=
X-Received: by 2002:a2e:9699:: with SMTP id q25mr4387891lji.251.1574281351953; 
 Wed, 20 Nov 2019 12:22:31 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-4-stephan@gerhold.net>
In-Reply-To: <20191120181857.97174-4-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:22:19 +0100
Message-ID: <CACRpkda-rm=1hz_p2YCqBVgxsM9cmKYJVUg+T91MyBrgmtDP-w@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: Document compatibles for Ux500
 boards
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122233_778515_0E04A699 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Wed, Nov 20, 2019 at 7:20 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The device-specific compatible values used by the Ux500 boards
> were not documented so far. Add a new simple schema to document them.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Nice, thanks!

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I expect Rob to merge these patches as they are bindings-only,
alternatively I can take them in the Ux500 DTS pull request
for the next kernel cycle.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
