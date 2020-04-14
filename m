Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236911A7708
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EV1PEQbNAo/3ZbdoeZcMmyzrTOb+5t0Itx+3wwSbqE=; b=M1PZABwCCUjzte
	xQ5FpMnn5iRxjflm431cHuIjWj3b24ue5V3nhaocY+go+i+R2tj8CCylYUuo7qpAax8KaPYnkMWF7
	YoJzmETb1WmeQZmetSjLZiNP3HgOJEzd/vrU0OseiLvFqpTUDJJfQrVlTgQR9a0vOnxGEfJy+JnQZ
	lCggDXFnKI/hZzCxOCb5OUTNMMmClhB2f4zf6WIA0GMWiay1/yiw2T5S2eH6WYyPYya2cHz6+zWIK
	fJqTUCw58XEF/uq/GG3M7xTGMOli/eG1hjF60vchZWsFuyIrMhDrzJsjV/M50gXeL+DEnBuDtBROm
	irgQee6WH4KssiVvbqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHaW-0002Dq-Ag; Tue, 14 Apr 2020 09:10:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHaK-0002DR-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:10:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id n17so11631731lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 02:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M+ORA61JbRVDaQSCwE9FhkFMr1p49JXPpYfNVNyx3Ow=;
 b=ZPv3eEX6C3HPmbooP/CpPahgkxzzO6CDBHqnibn+1tWgDUOWHcb94l7xApqV+0Sbv3
 vMsPix4PAjLUuy1ac7d1NFpXh/IZjkNcMsn/5VHlppmaspFO2T7DZ7siQ/zUYTFmx0Qg
 0vfrkPEJBApyOOs+gbxtM6+n9mFnV3uRv2zzxUpZPahKDfjojioCjIYpzSR0H5DVlNiU
 x9m3OKXnoQqT5nNz+HhkIxOOxObrUFtGKQQtTPMaLBuCq6Phz2u9z0F+aVG4k7I4mxOd
 282W8w/iZeOEcAjKsATfKww+r4x7/lSNVa047amYdd5oq/Ox/L/jt2xaWeMqpRcJrKg2
 af0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M+ORA61JbRVDaQSCwE9FhkFMr1p49JXPpYfNVNyx3Ow=;
 b=poGe3ZsL9dNlNig7wMo5ygMTauJedc3NDWM118PPL7e06Cyw6px0E2wlOpVjmFUGAD
 2vQm3qwSrqMJgFxcUAl5P6gH1aHCvCndyOlyMvCXTlJRBFjMf4qQH658nEB5pFXfTHmm
 FHhlzZDxhSo5TNrFQQrxflV2nsFGrpYJMa/zCqQ5oivnUVmEqznp3HyzGWFQPSZk1z8f
 7nJx8PJN/lrwaGQxEZ0KAUnNjmb4L+hiVBNaDrkyxN9GRVSuqEQk8ehaU3JpGbyvwubr
 tHNzehTWerUcAyAr+Oe7PLNKynLfStua2RxCDEgy6fHbv1uWa5f4ZPinuFOLRkI0mFAf
 Ojuw==
X-Gm-Message-State: AGi0PuacTi1R0z+4z62y5f2wfOswqkkHha4QqrsqUiVYhSUay0S0jNJH
 orhZS0jNIxBMTwSpOzK+C0RVUoWbL6vY951S46kiIQ==
X-Google-Smtp-Source: APiQypIu6AB8A6nxgTYyE6QM6UM/zp1yzu4LI3Ub8eCzt+Jns7NvUPOwqWoV2yyiJcgymwxK3n0uUCNDbu92MhRfPKA=
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr13373358ljo.223.1586855422326; 
 Tue, 14 Apr 2020 02:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173252.67614-1-stephan@gerhold.net>
In-Reply-To: <20200405173252.67614-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Apr 2020 11:10:11 +0200
Message-ID: <CACRpkdZkr=T+gvBMcv4dQaKN2H528kaCz9nqMTAg2GHeQeRXsA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: ux500: samsung-golden: Add proximity sensor
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_021024_107397_B6AB669B 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 5, 2020 at 7:34 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> samsung-golden has the same sharp,gp2ap002s00f proximity sensor
> that is also used in samsung-skomer.
>
> A driver was added for it in
> commit 97d642e23037 ("iio: light: Add a driver for Sharp GP2AP002x00F").
>
> Now that it was merged we can add an entry for it in the device tree
> for samsung-golden.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
