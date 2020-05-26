Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2A11E3017
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdZGvyZ9F32wc6P6Kjl5BLiM3BaXPR8YggfKSw63+EM=; b=ZjZNLUoC94KSBU
	nX13MB3CTQ7kJSF6Ul73VutCLeNfd7TfNGjrCEEt4sCUWq3sKC9KcE4Jwd+8+EnBUDMhSPl98FCKO
	aK0XLjWhADCA9z2fND26PQJNkBiGwU443yNb9VlghzVVO2h2zl/t6R25w4gXz0+2CwPvHAG4d/GwS
	EOFw6ePKfTKh7/jYWSQyqoGd/GSlASwcNyeuejYbaMw4y+PesUCzygsfj4P0mdnGvj6bjQdP8CMy/
	uPvWBxzJqvqsoAnI7vyjkzep5Oa8cYV7UbXCUZPaU8lxUq4xFp+YNf+WRf3KOsSKyZPXnSgK//fER
	vTJVuPH+/t46R5U/Aq2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgIF-0000qK-7R; Tue, 26 May 2020 20:35:23 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgHq-0000q1-7o
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 20:34:59 +0000
Received: by mail-ot1-x343.google.com with SMTP id c3so17404147otr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 13:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xlg1WEt/1KpzYv+/vA9j7Mf3YWi1IPnXCFcohcpUSKM=;
 b=vqBfuJzMnCts3H+g3tzxBLb3DHdb9u8YAPd1Lr4hpr9zPYnd/hQ9htQE4e+QzEUmjl
 7ZrK+oEdm0wLIE7MuIMmiI71OhNKS8oqoG5svb2EehG6CFlmnhdeq9cw6Vf2tq/axJ2H
 ssZdHqJcXZVSLkR/cPGAeFiJSasA4lSnrLDZRpKXHynba/SmCOYCvHWd2hPTm3NCdn4r
 BNzmOO0gWoq0pD+6uFTBvcgyL6jgx7zvs2rGaMsCKa11K7bwAsrXJaOHz3GnLa3znOG5
 YZJKlEQz0ZUmv6xTUjr2n7E5cvEvNuf9zyblA43KWchCM+klzpd5j7n4bXULce1BXFzm
 8BLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xlg1WEt/1KpzYv+/vA9j7Mf3YWi1IPnXCFcohcpUSKM=;
 b=akHRH4UjADUw+UHhD9NLjP6F/Dj/znGUy/xMrRFiW8qLXprT4AQh+LFDGLIUBKw9YR
 DVQjQEL+VM/B2pUjBJZybTXYKKUyY3Kreu6SbaOFrhec6v6wOdmV6u0gI8y3Y6VDtsQZ
 nzqVfYi1x9twugjF91yk/w3AskIFjiPS0iB/CBMo5nc6F5iLKbFAc3l33hA2eVG/uoHY
 nIWlNJCel2eMvFO5lb9CN7YyHQ3tP1TSwULr424yyejWuvjsfplm4mqvh9mRnX3j7VHg
 3cBVEwz39cg6bTKntdrrZZXxgNqqLFP0y8QAn8B3GCdAhjS5qDR8SEOg1TFaL2GnLOUy
 k7+A==
X-Gm-Message-State: AOAM530e59yQWfF3c7HDlKVXahSS3cfLOIdkhFb2CrfoCNRfRLcfVnnz
 AbBlYAsnxHpX2rfVrSHWvkqTAz8oaEmFMKJaudVW8A==
X-Google-Smtp-Source: ABdhPJwRnLRczAXOAB9YCm7o1K0N3H8lb7+2jzEf7cyls1IaN/ZEhrkFXvBSwAYhJHpTTYYnVbUBS2F8yL7vvHUmhEs=
X-Received: by 2002:a9d:b82:: with SMTP id 2mr2072353oth.221.1590525296383;
 Tue, 26 May 2020 13:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder> <20200514193249.GE279327@builder.lan>
In-Reply-To: <20200514193249.GE279327@builder.lan>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 26 May 2020 13:34:45 -0700
Message-ID: <CALAqxLVmomdKJCwh=e-PX+8-seDX0RXA81FzmG4sEyJmbXBh9A@mail.gmail.com>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133458_312822_939F7388 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-tegra@vger.kernel.org,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 12:34 PM <bjorn.andersson@linaro.org> wrote:
>
> On Thu 27 Feb 18:57 PST 2020, Bjorn Andersson wrote:
>
> Rob, Will, we're reaching the point where upstream has enough
> functionality that this is becoming a critical issue for us.
>
> E.g. Lenovo Yoga C630 is lacking this and a single dts patch to boot
> mainline with display, GPU, WiFi and audio working and the story is
> similar on several devboards.
>
> As previously described, the only thing I want is the stream mapping
> related to the display controller in place, either with the CB with
> translation disabled or possibly with a way to specify the framebuffer
> region (although this turns out to mess things up in the display
> driver...)
>
> I did pick this up again recently and concluded that by omitting the
> streams for the USB controllers causes an instability issue seen on one
> of the controller to disappear. So I would prefer if we somehow could
> have a mechanism to only pick the display streams and the context
> allocation for this.
>
>
> Can you please share some pointers/insights/wishes for how we can
> conclude on this subject?

Ping? I just wanted to follow up on this discussion as this small
series is crucial for booting mainline on the Dragonboard 845c
devboard. It would be really valuable to be able to get some solution
upstream so we can test mainline w/o adding additional patches.

The rest of the db845c series has been moving forward smoothly, but
this set seems to be very stuck with no visible progress since Dec.

Are there any pointers for what folks would prefer to see?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
