Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5016D10B0C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2C0+nyXHq4G/dRQMuHvKSfVUJ4fl9xnUHqxNwF32xs=; b=BQVrTpXsoD30ok
	Nzjrra+hEcmGhDDIE2t4WfrwMaHdXF20yT9zzpm5RlAjuVw28Tt7lg8GY91kpASrZwO1NVsODZSil
	coalFBJLfpmGY14ELtv+ye7SIMiiQD9I1uAylI/eB4QpJAL6NUWjRkAbNZIYU71fxa7AyNy4M4mlj
	9wEei121npTsFvZQtivF3RQqn9XaxyuJtmWj8PF08LY6/j/4YpSp6NongSOXYcYdi410iT2F2QInI
	BLu5hx33rRyjK5RGpRAjnnR4Iy0c5wOcErSBEBgPvRjw03tg7ctzXXJ1gv0k3gjHGfZ8TmpxxXbmb
	Qcz1vCa7qM52On6eg1aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZxrs-0006c1-Ft; Wed, 27 Nov 2019 14:00:32 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxrf-0006S6-KQ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 14:00:21 +0000
Received: by mail-vk1-xa41.google.com with SMTP id m128so3847098vkb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 06:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xv0agzTrWmCHWWQdEdnjrauxL6G7A6I1j0PhE1Au3GA=;
 b=SMS3LbaEfWEtk84MXTU1uY5sFT4i44DeL2NZO367/zZdh7MGxJwvobTxGQZIvkXmjt
 HKCivkes+H/swMNZxbygP2FDC6U+xHFyiW05trlZU1cniHBIu60/1Ik96HlX/dL/RH27
 Le3sp14Ldq4KMTRYJNQKVZZLhHUiDylCzNRBnESSO4lHsd3c3knyPh7TClIcSdxRGZX1
 N9HCa83BV9qLZHtXkGgqq469wsJeY0mdHM1TCf7UcvPhCkxgZCa2pK1yweCcAZjj4KNw
 +qE41yWCXXY+Ue6T0MSwV/Eb6ZcRLspo3Jlp4dxp5mBSEWDYthXsphbE+mMoG36oY64I
 RW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xv0agzTrWmCHWWQdEdnjrauxL6G7A6I1j0PhE1Au3GA=;
 b=nyHokYr2AiZ1EM/i5dyG/h0JMbamofoATLcs2Tpo5glyj6JnEQgyo0MibwTBBgPQeB
 9OCYxkYknPi+NFuswzltOxST4zQkLXdHJ8pstZ9bNiKCp9Ll12dktsV3lfecLtnfDq1n
 +jZw2FavcOl89Io8JZYD8lfPBzcsPP2+2FOkGH9BwCsM2m2qTB0c4KSHmszbxn+h7w41
 G7j+FWinslwSCvRX333pMb/6gY5HQOXNc7jYsGL+bwVuqjKYp8WT9ls0QqNaTHqnSt2H
 oqDNI2V3vxRMUKpDEs5QWZLIyMHzuDmVlL8HKevqbOyHbxvfjd830ne7+eG8cCaJ99ej
 wXFg==
X-Gm-Message-State: APjAAAWf/WL5ozKUjgW1QnBue87dLIWWnlM7rcLK+Ukdg0qmM2S43q5Q
 v7TKk7NLXR/p1IXVrYwQdtfiSGZ2+0G7P4UWkfxxfw==
X-Google-Smtp-Source: APXvYqy2z1ESn19JzZsxw2MQg1P7KKVZTecOuQKJc1YhRGnEfvelj4LBPw5SELJgHKFj9GZ2pB9Vdn4PruN7+IvV/3w=
X-Received: by 2002:a1f:cf43:: with SMTP id f64mr2942105vkg.18.1574863217253; 
 Wed, 27 Nov 2019 06:00:17 -0800 (PST)
MIME-Version: 1.0
References: <20191124205110.48031-1-stephan@gerhold.net>
In-Reply-To: <20191124205110.48031-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Nov 2019 15:00:06 +0100
Message-ID: <CACRpkdYnR3jYtrEWyKf=fi2c1Mvype9FeiKKmoLjK+1R73iVBQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: Use "arm,pl031" compatible for PL031
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_060019_687289_8F40C7CC 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Sun, Nov 24, 2019 at 9:52 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The Ux500 device tree uses "arm,rtc-pl031" as compatible for PL031.
> All other boards in Linux describe it using "arm,pl031" instead.
> This works because the compatible is not actually used in Linux:
> AMBA devices get probed based on "arm,primecell" and their peripheral ID.
>
> Nevertheless, some other projects (e.g. U-Boot) rely on the compatible
> to probe the device with the correct driver. Those will look for
> "arm,pl031" instead of "arm,rtc-pl031", preventing the RTC from being
> probed.
>
> Change it to "arm,pl031" to match all other boards.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
