Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B850C1044E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xq1xEnKkjgGBW8mJ0cuQVoFOdiDsquAqO8dG80KoOHA=; b=T0MZ/ZqYI0lays
	xZAZteyZPwbrMhIpWW49Q3kvy1UTSLRxknnOS+lFeRI+cF62qKIssxYFISwTpKgISBdBuQT+kPGbZ
	ugMwT85I31UPsvYdfxPZ0PeGtEyZ8wgqDD2iaGPze8LbtMh6POpbvzjaqzajo9QPtZM351DVdhmOU
	aV5RBFNGjo017A5mAkF2ZdGrApWEXg0Jkbz3myfogmq0KaNpz+fskbNsIhtQ5BENOw1FuTR0hRUtc
	FuuZVNmhIHcqVJUNt9m0kb5QGTpSPqJTUq3ofv04f7/dirF2Vd5doXLou2VccLPPC6jAKfST8/5xz
	3r5eRcP3HqKpSga6bkDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTB-0000dC-Fs; Wed, 20 Nov 2019 20:20:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWT3-0000cg-2A
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:20:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id f16so623734lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EaeubB9oup5HPqMiD5Vl71T+HPv8UFVWjeFHFcqOIRg=;
 b=g6z3K/E68Ogd7jMI6ZONW7+DAdhxqpPKHIDEaoNSMtYue8XTJ/HvPPAXCzSxcQ9Myu
 tKo0KxfliQKm/v2eXdO7SoooMtGHZNBg9sJGfWmqJRszcUhYyJ6q2zAw7qkYAuUbJ/1z
 nz8h5YA2W7XQOvrRod7zoL9FoSiIkybl2X0BzoPlSs7mQ96rO/e38Tum1oHxvHjbNKrF
 kVMHz8sS4IlV7PVQho2QUBLFlE7pzSZ4+U0bxv8vYB3yc3OdSHmATUEej2S7CEHwwQNb
 Iz1SCfMdz8IB+vFT3qsYCb2SF3h6aOuTdCajPLIzmSlJ/7SC+Rlc4H90C3eNj/O1F6H0
 QupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EaeubB9oup5HPqMiD5Vl71T+HPv8UFVWjeFHFcqOIRg=;
 b=psWdYK06WMznDS8zbCCFbI+A5dTBFa4SAUcAA1rZvGOw0ZhkWyKjzED/me+iSlQivO
 2ngK+aFOg8c9e2Bvj7UNWiK3YJ0jK+FrT79fOqPGKuPBsRBzxOqrAYQat2TypbWUP4N8
 9tJH+nu6/7E/3Jppc1X346f5QBZbnuio0RizBwoe5vtZ8p0Fl8yhDTiE5c22IipTCrBx
 61qHn5bTllGqLWYQhLkvheYfVTz7Rdxv8Dx3LsAXnPd0GgS2Wl/QXOtIjsSu3Mp6zygR
 Ltv/ZG1bUZZvtSoa4argRm8MZ+62YkHRbdW1b+YEFr5wlI2sXyhsGHxD9zc7F7E+aY6R
 E8EQ==
X-Gm-Message-State: APjAAAVdPGk8sGB8DkylB0pSF49Xhy1UDIOqNBP4Sm47RksHdIoiTVJ3
 CnJw2mWkl1Gd4J2PtDXEi3eQvP8sqhKUOIH0reh3dA==
X-Google-Smtp-Source: APXvYqxhbKk0D/bHbd56rMIcDb7oudDKdTswz6YCWF2G7ykBMmGOeVyKBHsxVMNvRMkkTI0Q37OuJ+n8wDj2M9zOHLU=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr4212581lfi.93.1574281247289;
 Wed, 20 Nov 2019 12:20:47 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-2-stephan@gerhold.net>
In-Reply-To: <20191120181857.97174-2-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:20:35 +0100
Message-ID: <CACRpkda2UJB=dA+1ydBqSu_0D_+xoRX7jCCYEZDE-LPv67WxrA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Deprecate "ste" and
 "st-ericsson"
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122049_119131_3A865B99 
X-CRM114-Status: UNSURE (   9.58  )
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

> Until now, device tree bindings for ST-Ericsson have been added
> inconsistently with one of 3 possible vendor prefixes.
>
> "stericsson" is the most commonly used vendor prefix,
> so deprecate "ste" and "st-ericsson".
>
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

FWIW this is the byproduct of Ux500 being used as guinea pig
and shooting practice target in the early days of Arm Device Tree
support. I still think we got out pretty clean :D

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
