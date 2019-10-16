Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939DFD9078
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXR4/gHcpVian8XAuAwpuEi7EG+R5okUHdmgZfqWNSc=; b=R0YCuhHRS5kXA2
	QRWIFcaSqJ3r+qzICBU8Qo761Bo2nISK0mlBm2r+sQYUfqQhpIQEnDon/veYKXbTxQ+b3vKoxWmeV
	kybaMkQ9Ul+Z1U8FYVkK619bxjU93GiGuJDjYCrovwGcGz5tEhVkJLuhVqbLK7eSO5XWV5EJESC/X
	AJWvogNr6zWMh0vMJ7qIj5YCePkQdzXIgmLZtU5VOc2WyDu7kIbGJpcLtWfPHJqjxgLSSA0H3j2he
	8CcsRA0YBL/SI1UEadpggrlAKkQqYKwhHdQnKNMjaz5QwRo5Jr1+laQ/8M1UFDU7fwT8PRnjTQlWG
	PsTImq3cLqO44esuUESQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKi94-0006zZ-2a; Wed, 16 Oct 2019 12:11:14 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKi8u-0006yf-GF
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:11:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id r2so17245941lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zAcMglJ0sMZP7+r5P2KE/QX2T7ue0jf4q4Bd1DSk2+o=;
 b=kPp2LbyytXuiszE7XqY4dsXBc5wTYwqSTDkG2glMbJy8Pzs+bcaA9exT6sjDt6XIxI
 zbDgBJPyZkMVp/13P/6/lt/Am7sHZmwIQXCDGs9gNOmVqkTKc0ASGOUrz1Tkxf1vOdUG
 3+hgdaFZVjnoJgKTORduGR9Px142SvukOwkjnhZ4d/pZsRSWfTcFrMzxMkiLgF3hLe3K
 Csr2B0hlXr5Td3UaKF3awDZKfKY9cC+CvK4bTh/rFyvf7V3iRGlJ4QDYS8RZ6m3014HP
 um/NzdbRHbtwz3zKwxhUh1JOv7s0RkC9B3V8DxhSywbPSF9Nz4ktSeYRwZ9gBWRlA9fA
 ee0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zAcMglJ0sMZP7+r5P2KE/QX2T7ue0jf4q4Bd1DSk2+o=;
 b=d+8hEI/aUQpCkQ6eRbMB2XUJKtmRJLhROlUam8wFNphHZGszRbA7Uy71x6sva7H4Br
 iJSEQU/SWT/DMY64rCazcdGgjBsYS187qD5cTKgYnZnNCaTKrJfjLpBJNRHBfVSNEAD/
 K9FasP/k8Hvkgt9mszrDeJLju5vU9r4+u0oH4DAAKry5c5BzVa5P1ASB6Axkb/4jhcEg
 sMyVAo5Q36ifsneu+R+3pEL2SXEFMTtNxmA20cgvIWC8QPJ+u8C9C6OjJAg7ZlQFkPQl
 0lfpmsnXaLMInUnZL3k2sCGbso18IQgHdOS5rtDjuY2vB99U9c+49Xs/9z5N1UVSaJUU
 jutQ==
X-Gm-Message-State: APjAAAU4nr0ak89OfmTFhltBrB9qxVBEOut1hQxO0ec745OrSu/GuYEC
 OSj7/AC/FH5GRzn39XRix3wOv+pKSEVl8uv8UL6F4RSx
X-Google-Smtp-Source: APXvYqyC/8s5wFJQZ84rZaLlU3QiDyhyWI8h+dFx0LNQamFK0NlRVzDmYzTFmoBGE7Ny04pOfYsYDfSM9SKQDobKlpU=
X-Received: by 2002:ac2:43c2:: with SMTP id u2mr2022223lfl.61.1571227863019;
 Wed, 16 Oct 2019 05:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191011005643.41007-1-hui.song_1@nxp.com>
In-Reply-To: <20191011005643.41007-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:10:51 +0200
Message-ID: <CACRpkdaU82GHxRbWqF-CxHdsJJ02YHtdA0kWvZz-8eCWXNxHAA@mail.gmail.com>
Subject: Re: [PATCH v8] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_051104_546627_65C5564F 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 3:07 AM Hui Song <hui.song_1@nxp.com> wrote:

> More than one gpio controllers can share one interrupt, change the
> driver to request shared irq.
>
> While this will work, it will mess up userspace accounting of the number
> of interrupts per second in tools such as vmstat.  The reason is that
> for every GPIO interrupt, /proc/interrupts records the count against GIC
> interrupt 68 or 69, as well as the GPIO itself.  So, for every GPIO
> interrupt, the total number of interrupts that the system has seen
> increments by two.
>
> Signed-off-by: Laurentiu Tudor <Laurentiu.Tudor@nxp.com>
> Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
> Changes in v8:
>         - merge two lines as one line to fit 80 characters.

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
