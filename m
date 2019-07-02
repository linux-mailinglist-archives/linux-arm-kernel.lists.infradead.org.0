Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFEF5D855
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11ZOhTj/hizvPt+rEf+UN6QHQ6SijSrUURsuTeFiQAw=; b=R0IbNcTRvF2Xkf
	Fg8bDxiN9xG6JhEgvGnCdGNrO47FlKKwQXnNxVuarMkS700FzV/KWyAOzyBx64MfNdOOo3ZMLJkKe
	haVkOwSBbClldhK+KVx5GqN7ZT2XYHrKjfeHrcF79IUqyUsMzOjyOArlcySN9F/3g/kyvjQGZdZ9b
	bkUiF3QamBlzJ0dDSZTW3FhQr2+oBtsWmFF0kPcjKbvZGgrcSfh/9FQOJeFNau46NbPvPfwK+Hb4Z
	cydNIq2Cg0BhjtkWil7ufy9udu0cRjK13Y6PXgONi5u+/9jY05wv1vcg9kx3ovCqHyUYABfeE4NBn
	2USWhA6LEhzJpsL19aBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRwT-0008EV-RL; Tue, 02 Jul 2019 23:12:05 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRwF-0008DY-D0; Tue, 02 Jul 2019 23:11:52 +0000
Received: by mail-oi1-x243.google.com with SMTP id w7so439434oic.3;
 Tue, 02 Jul 2019 16:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=svNvFatzWg+J+IzhDu/8UapYNg/XQoHt/D9xO5S8sAU=;
 b=F9MUeCgD5cE83rQOPzxx5wJd9MM4XsOaW7CIpa4R+sQxmLnclcmJO63t/siBAt1bnG
 dIq1jh2p3nvQRTk0klvt+b+dpokQiEvBU/mW8Tz0/iJhNbNb5VS4lIjToMtRZI/IEpCl
 witmuIYcjSU0uTUAs/gfjuL22B7GZKSiIWHLpET9fUaEvmReFRIc7y+jZUIUkl+KGFez
 VFO1+gJp2ROeOhbIcjhj8mdVRjMS938Wbz4n+9d06KWPmZEzJO02wIgDirjXj7o/yGus
 lD5EYU0K+0/34oYdedokRlbfGcTNxqXAcEJ1UY5wCLwjl9Fy4FWiYGq3r2u+DSd1+3Bw
 D33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=svNvFatzWg+J+IzhDu/8UapYNg/XQoHt/D9xO5S8sAU=;
 b=RopmJcP1aOTLoKAfpPjyzkAKuKjPgEYr55fpLmbBwwQ3+lxr4QVQYns7fXfTct+kr1
 VJN65VVErq8ELMnJG8QDdAfKX9WcXhSk1jmqMzcypM0FWdYhKP7zfalCpCm8pKNnN69r
 +Z9N+RGXMHpGB4BQTpxDOYUpmvJD5US63pvfNDF6AdcecoTwK+Q4d/qoa0v1CX/sezTR
 kkJbrBzPPbOlX4JqOArd3Sr/L/T4zc8josR6mMn5Og93GrssQMbteu4untVfaD2j3cuO
 PFzChDfyGcFuBtN3zTAb0AL2g8oAM8FqFZKDalJhMxAHer31Lr9/H/OzumJQNe1pXZru
 0MuA==
X-Gm-Message-State: APjAAAWzg3jm7ZBFjZT+0CjOwutr/24s/Q9tqM9jMvc1eeHBx2vR5jUa
 Zw1KQUFGYsLbAtTF0av0NqPScaU49RGcqjVRLpg=
X-Google-Smtp-Source: APXvYqynGDp6RgAE+20EuhfnSaAl8FY4WjfZlQXJcX2FtOElvoAuFudGEiRTQUO42XE3uT6QyB6b3k1bfYY3Tam0nmc=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr1458640oic.47.1562109110323; 
 Tue, 02 Jul 2019 16:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-11-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-11-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:11:39 +0200
Message-ID: <CAFBinCAJPQ-gu20UoJEGx+fx6TZ1Eezh4sA+24mppffH5Ft25A@mail.gmail.com>
Subject: Re: [RFC/RFT v3 10/14] arm64: dts: meson-g12-common: add pwm_a on
 GPIOE_2 pinmux
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_161151_439411_D01470C9 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the ao_pinctrl subnode for the pwm_a function on GPIOE_2.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
