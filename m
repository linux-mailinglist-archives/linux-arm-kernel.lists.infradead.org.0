Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1D997D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAuv1l4KMqSrFWq8epbJrh0JBzX47AgyfPFd8SKRztg=; b=p4OOPWtLvcAdPO
	oizW1kEh7O3+VqmcWVzrdJjlMMzt61mjD49CoXsJD+6b8sDFSKd65pLwDJOTJvWU0oHvxmy0Clxhv
	pr9GGJynUmgbo84B1CthYo0D7mgnbBMRdqTwo59DmLrmvXEtGOvxdXgbkAPORvTkCbxiDupFhcpQv
	XtW5y+EQy6XmlZDjijJLGEpHoXGLC/adFg01yBGEarsooK0UMZHKCu6azHBxmzUrFgLqhaviTjUKX
	AyEmmylbcU4M9eImiQmSOIX76rgJ2EiWzWSciZIRw0HV6nsSA1AVfgl3BRJJBOsT+9JVrlTtiH4F1
	2WM6yn4UBfiSiZDxP+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ooG-0006G3-Nj; Thu, 22 Aug 2019 15:15:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oo5-0006FR-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:15:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id x4so5913230ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4a8L/ifsv/lZTfpUfBFAkIET01IdPIonks0J31fpcrs=;
 b=kaNukhpRiKzO7wg6+4YwXjw+GBU9aEaxl+aRpkf/TylSbqgfiWU4SvBMz6B2d7rOWZ
 Z1qAW9Qf6758HOrFNtrxIBp2Z43wRatr677G+cW4YbvI4Ti4N1oShBTYqZ2sJMIx5BlY
 CtYm0WzQv6pcm3tO/CclwiTA0ip1w6PXO1CEVFq9fhYcxBMt4IW0En2dpLVTKbqnsJdp
 hl1bsS+GnYNQZytg1fYtQeQIZ4DEba9G4Qpv4Tzlk2PGvuP5CLQ6NCQyiR2QEQnU7SrH
 dHOhXJrfniK7tJQMuA+ME9TlvTJoe3xcWH6Q4YKg+YE3Lc48h2xJRd2pSeIzEfeXlUTr
 b83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4a8L/ifsv/lZTfpUfBFAkIET01IdPIonks0J31fpcrs=;
 b=iitaJnHfX+nubYQdZUm6dvEJYNnos4vxeRjQoXrsGb3Ly64cNsszcz2dizKF901Aar
 V+5jI/11tYd87RLYFgo7LTSi5dF7IS/sKR22K2s2KhaBSpuF8vizjAz/2Y9Gznv+1HoS
 9GHMMgdN+6X/dh8rSv9I1r8CFq75oID2l9vNOtX4k7wb4D5HmUSX3BhuI38aJCu0++xe
 K+fQJlA7sMYuSRgMe5a6bNhjP9OZVh4yo5tHob3XOy5OuaaQ//YNTq+a0iFkjmTB0+/V
 6j1cwfrimIgNJy6oz3HtY2YxFUp3X4OYYSVJ0DuCJcy47oQlHLQ//4ZWbaRySCuC9177
 SNXw==
X-Gm-Message-State: APjAAAUG2gBcEhQObydx4yvLLLOXByIFEnWdEOwrSwAgko6yYUG6R9y0
 gU7AD0KQAG0Bc3m0THFj55bi/R4VHKsdbBZRXR7mMQ==
X-Google-Smtp-Source: APXvYqw8H6TI7yoIexQ01YSmkjtsLfwiXufW96szSrkvxjsFx069jHk2VVDMZF+LiT2ojXyCZlvCkfh2Z8ulIljBS/A=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr22635098lja.180.1566486918684; 
 Thu, 22 Aug 2019 08:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190822110720.118828-1-stephan@gerhold.net>
In-Reply-To: <20190822110720.118828-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Aug 2019 17:15:06 +0200
Message-ID: <CACRpkdY=XS4RMufBy8GCB1wGU+hwa64sFMprE-94TcT06xAZgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: ux500: Move ab8500 nodes to ste-ab8500.dtsi
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_081521_157587_5497A58F 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 1:08 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Some Ux500 devices use the newer AB8505 PMIC instead of AB8500.
> Although they are very similar, there are subtle differences
> like the number of regulators or the available GPIO pins.
>
> At the moment, ste-dbx5x0.dtsi always configures the AB8500 PMIC.
> To support devices with AB8505, it is necessary to split the
> AB8500-specific parts into a separate .dtsi file. Boards can then
> select the PMIC by including either ste-ab8500.dtsi or ste-ab8505.dtsi.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied to the Ux500 tree!

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
