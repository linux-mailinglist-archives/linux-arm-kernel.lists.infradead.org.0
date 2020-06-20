Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1883420266F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 22:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04s3LqS21xU80GYDNmZyliUdkho9oXvqgGTbGQEk0bk=; b=ITCvOnx81SH5kN
	IRAQdGXpoYPr3CZWiev8GxrLYaUkPz8HALCoxGDp61zchfsBWvh/bXTfJi3GxGcw3c0NhXGou+QM9
	iZslE+mwDYLjzfCDl5EC4/9vEHcUnDNL+NLTuI1Cdn0N5Lqhq/wO+W57KoROloH2OlA/ax2C5FkoF
	oky4kgO2rxKAsWMVCZk6CLHkeKa7bXguYO4domL+YmXJY9zAV/MaM6pPZFG9j9x98+K4+/3RAlMkP
	T+Oy4TZkj4zg0h0aUQM8CTH58niYuuP9hBn3PsyXYC3cKqWc+qAle3w4xeEis+ZMbx7c888xwBY9n
	zAAXon5WarKzbC2MmXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmkJj-0001I3-0J; Sat, 20 Jun 2020 20:42:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmkJb-0001Hc-VG
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 20:42:17 +0000
Received: by mail-lf1-x144.google.com with SMTP id g139so6683727lfd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jun 2020 13:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lcFxZDJV0JE7EILOFQLnvdmPuPHbFA43GAORC1SuIgc=;
 b=UJDRoyXfza9eu6l9hI9fr7ez3X/6F/4uo85Ob3sf281CMgHH3m+Mtx913shdmjDCe0
 wzT1brbPxl7u1YLem58YAbAa4VpZFhvnGvMihW/TlnF6bZ1DoH/Wu+ayNVzRC6yB28kw
 7TlBjKeoqPAGw7KP7ahp3CrVxtxGP+gXNgau75MLjl6u/z5yMPZf5QKKEy7le2fxjfjk
 q92+piYiIAsi8zTdAD0tFoH7sTEIpefFXSn3742nZAZBLtDSIGpF65YMY/aPDU7SHUs+
 M/HOxh1ELVqvlSqscMPa0KBYOA8R8J5zdAbxcXIxdltWl0DL8oMAxbyMonfdoQHqtsRR
 oLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lcFxZDJV0JE7EILOFQLnvdmPuPHbFA43GAORC1SuIgc=;
 b=m3z/Otl3MJFxx5uBHCNjeK7xVnltB59Y7u8o1DT/996XYfG+7CPQWe+pxeNhvXBq93
 +8P8n/2s91JrZOGYYLzGX/Rq77DEFv1RZF0WqK+cZAs/++aa/H1p3YjSsvw1wZUz6fxm
 UqzRPYp89qXXd1iGH8Cp5DmEy9EhkGGKrK9ExTkkUw1J4pVSQ5dEDZVSJIFY0O0d6NtH
 kD9svT65IWa3kpoO5sDIjIYZNHTGG8lL/QlR7ExDmZCdSX8UWGPt6z7EwcYKH5A3wq4Y
 +H8S9fCoxBdWCTwnDEYybRY0PtLSIUl9+E/zn+p4UP9KgfhOyH9Q9HQlTRHBpSjQA699
 XDSw==
X-Gm-Message-State: AOAM533UUXIoqnbWi+SvyoxDt/W7fv/2XuhL2ONkQbUHkzpFxqqkdd+b
 +57cR2qEBLfUuB1hrh/eDGBPlF0p6ySA92xr/VuW8A==
X-Google-Smtp-Source: ABdhPJxYtAEDvRBSpp8tdmOckarOes/SsxhEPpZ0qNeeF/xp2t4qLjK5NUS7m1mNGy9cL9z49GKsu9JGaSMlrHxtXso=
X-Received: by 2002:a05:6512:31ce:: with SMTP id
 j14mr1633403lfe.47.1592685732304; 
 Sat, 20 Jun 2020 13:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200612112758.GA3407886@x1>
In-Reply-To: <20200612112758.GA3407886@x1>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 20 Jun 2020 22:42:01 +0200
Message-ID: <CACRpkdY8u8DxtO9nv5_Y17H3cs+ExvUOGEhmwWqz34q-QTRNtg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: single: fix function name in documentation
To: Drew Fustini <drew@beagleboard.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_134216_011789_26D4393A 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 Robert Nelson <robertcnelson@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 1:28 PM Drew Fustini <drew@beagleboard.org> wrote:

> Use the correct the function name in the documentation for
> "pcs_parse_one_pinctrl_entry()".
>
> "smux_parse_one_pinctrl_entry()" appears to be an artifact from the
> development of a prior patch series ("simple pinmux driver") which
> transformed into pinctrl-single.
>
> Signed-off-by: Drew Fustini <drew@beagleboard.org>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
