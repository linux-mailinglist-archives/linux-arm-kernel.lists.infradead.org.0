Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D41910911B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kce6vHilx2UuKk1RZ1ix8KgPvPOGbgEd22F11GgaoY=; b=DaXhFkZYl6Q8Rd
	rIDmbdKhzu+ZxvSyF0gYmS1b71yLTx/iMrhA/fx2AajF1PKokReSxqBPANDkhGISuDpwASETPl1XR
	KNFOrpbIuQHpA4ogWD3XY7XLIFuXiEc2qvzOK3HaYMnyow8x6UZ1eVsN4UDXbfS8UDE9VBl6gUfNn
	Qhyx7HzTeSVGE61L6vdHXo1rdoebBP8Qw8/8j9VWL6fY8oe/Eku6Y4O0I3kVbQtK3XpTYNE+jArlh
	3svJ6FA9Di0pvOKpCuC6BbFLPZgBfqOGktXWljWoo5hfnkbw5QIQo/kK7GdEbtb/ng/9sD+mZ7Y9O
	3B0ro+vsScUvJBbSj6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGRr-0000q5-Ir; Mon, 25 Nov 2019 15:38:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGRg-0000pR-GV
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:38:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id y23so16380399ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 07:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JP9osWIZmD7xoqDPjZq0lxxN1Et7rRHogEF4lRtbdrI=;
 b=ZJwBa6mLAtp4tfcRWLhDowPXNpk2LeIj3uvdB3sxr9+ex1gCr5J6qa0uX7+80oHn7+
 SjhOSxogX9l7fH4YZKdCbpl93wdC5DSoJht5+ivJ7WAqyYKHMg1SvujBXbPKMp7sppMW
 f9APlJXPYCxHa8lF+KeKsIQCkLSBByepqX/MWZoUexGjkVJgsSNHTpEPeimTipW5KFQI
 rniH5+65ZfFmcVzJ5AoMi4KcqR/qdMQoikcHXWhLuwyvm9fsLTUiDtYfhCOxTX//npMo
 Zt71BedVLyaLzMckk+5gQ7z79vUCiNHB1rILlTqhA8inJ1+LS8pbpi6miLMRCjp8haOe
 uxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JP9osWIZmD7xoqDPjZq0lxxN1Et7rRHogEF4lRtbdrI=;
 b=D/KvisFEHEgs9IWiRGyBSeU0X3q7wM4OeGhLmomtX6ubO3KWZ2w74v4MNfEEaSFkmH
 /WLQcY0puo6xTJAE3CJYBUwNUSmPPMbfslWANv9EmDfcCjG4p5+J0hUSdy7j9J3ux7bp
 NQi8MIPJzAPr9if8o2o8Mfh9lE/8U/8t5DplvK8EjYvA37UUluK/7nsp6RsmtgufwNjX
 rjBNeH6Fi/Had7xM92goQ/oQpG5bQFSUkFN708tbILp6g+NmDcnn1quWYvqHEgxg6Eev
 2UjU5j4+vwU+S3pRji6lyF5wkboAuNEBX2kogpWKoNnI8AmaG3gWzyL0KtYYwGIY4H+x
 8N0Q==
X-Gm-Message-State: APjAAAU0jFKk1yY/9/CVlBnriVXFolaMfcZ3b0x1sGte4FCvKqgBXpxN
 UijWw1iKGI6eR1oRr3OSy4jtIPfsxhObg8+V66lm5mjqxTE=
X-Google-Smtp-Source: APXvYqzyAnvpCh6lNQuPZXbqWJSpuUAH5SCiLYwyha75J4nb4FqI7D3Bv+YpLUqqexRIevgopcC1EPkPCvxWl0Snjx8=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr2329267ljm.233.1574696314927; 
 Mon, 25 Nov 2019 07:38:34 -0800 (PST)
MIME-Version: 1.0
References: <20191125122256.53482-1-stephan@gerhold.net>
 <20191125122256.53482-3-stephan@gerhold.net>
In-Reply-To: <20191125122256.53482-3-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Nov 2019 16:38:23 +0100
Message-ID: <CACRpkdZ2Ph7X6kP6ngL-K65cx-9q0bfU2ug0Dde1ddEWqJSrFw@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: ux500: Add alternative SDI pin configs
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_073836_546453_83B4E679 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 1:26 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> SDI0/SDI1 can be used in configurations where some of the pins
> (e.g. direction control) are not used. The pinctrl driver has
> separate pin groups for them.
>
> Add new pin configurations for:
>   - mc0_a_2: like mc0_a_1, but without CMDDIR/DAT0DIR/DAT2DIR
>   - mc1_a_2: like mc1_a_1, but without FBCLK
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for v5.6

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
