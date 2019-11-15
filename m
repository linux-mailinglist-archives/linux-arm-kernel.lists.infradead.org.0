Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C423FD9C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5S1jXl0BXjHmmCWsh7wGnzEDRHhzIQL224fANRD8HA=; b=FBnvFND53CjGIb
	a/7kLj7+yx0qOmRuf7mQX9Y1RnDaqn4KsJFUpvZ/sqLPAIA7SpZX2usnLcoVz03UHVoWWQDkD7r4z
	LmZrVcudSLw8xRlRAjjk/VRnoyIAMg3j5piqPcGGigFrKCGBiBa9lWYf1jAWY+VnFUmxP6JmVSkL1
	/RqndXF83hXdr6wVAMwC/0fYjxDfiNFD999UqCrj+BxxecBvNgeOPky2fo6YHsmZAUNPYt2lbNfq1
	Weu1dauUSrUw7tgWg9gIY5ZCD2NITpSVCfdFZpCMfiKEOKf1pShQ6hFe02FWveBJMA+p0pybqcmwd
	H18E6Oh5uvrSFQQCmMeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYFR-00066a-13; Fri, 15 Nov 2019 09:50:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYFI-00065I-Q2
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:50:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so10021364ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 01:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x/UA8N9071Hs67JB/CtCLOKYsRujWaxB61T4BkLclrk=;
 b=Uj//MN/eYpagIL5SFVK5o9mqojQITuF2XVCgryREyFOYqXwn9xWNIEKr/hnSu/yd37
 OgcpwNqi83ryL9yGP1i3iNYM1NbRKkpytuLcvx7ux/H500d7XGmBTA1gGyjzvIoV1iEw
 ld7CduY+HoP5HPEWtCzcfMm9I2Dm+Qz4o73G7hmWuJKiE/659BHe9isr8jEu6zfrXY5w
 p6E8t5bh/a39/Z0Xs8X8yXae3wjaBpHdwtcjDJIrI75l11sES3dl5SnTE4LguB/l+0rp
 l/TlA8QLOU8hAcIlE+mlbdA00awq8mAiygKQOZVYY63BinchNpYcFAYnxZkBzVC+ig3U
 4gDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x/UA8N9071Hs67JB/CtCLOKYsRujWaxB61T4BkLclrk=;
 b=fwJ/2hfblS7jPrT4cIFm68XV23vuNOU9qnGx/lXfnyiAxSFsudJwdQhfDMPV5obMAn
 8pew6euV6T0cUneYkdmgqxNvuIPLrmbd/NpwnIAWrEx5BrqCqbpC2Rzf5mQIjbdqM59b
 um0JKJERbnFCeyT6c7LyEd2cSPCG8jA3zEdpQz7uWCHiridpczLA9c+lSqW7cy1SvuIr
 NhMUNS5lSFwePiLizNtBm/E14XhOEetLPV6Udb0jhlLgpUPV6J9YtBcfDZR5vk7ZcHRI
 gV5khL0zdwaCURkC2KUYms8Da2uNlDYna4l+wJ6VnswCq9gzpVEjiMj3gJh8XzBY+cgp
 A7wg==
X-Gm-Message-State: APjAAAWMHIdegUb7CaU7tJldRE5XWNz7UTOk/90M/SxrJazgWpO8eHMI
 Rb6r6PZYERNl8q1A8goZDogNotcNCoX9gkFsWBEgkw==
X-Google-Smtp-Source: APXvYqzoH0lE2meSnOsWYn4w2Vnm6zFN87zG7pAIdO4qZpC8+1a/pUkOgr9YtQTghftKTYLC9GIcmmSSdCngI9weV+A=
X-Received: by 2002:a2e:161b:: with SMTP id w27mr10500539ljd.183.1573811425820; 
 Fri, 15 Nov 2019 01:50:25 -0800 (PST)
MIME-Version: 1.0
References: <20191115062454.7025-1-hslester96@gmail.com>
In-Reply-To: <20191115062454.7025-1-hslester96@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 15 Nov 2019 10:50:14 +0100
Message-ID: <CACRpkdaXcas08jy+oZOi4fKuXZYkbFAOipqf49smSdGd6TmFag@mail.gmail.com>
Subject: Re: [PATCH] net: gemini: add missed free_netdev
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_015028_882697_6263FB5D 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: netdev <netdev@vger.kernel.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 7:25 AM Chuhong Yuan <hslester96@gmail.com> wrote:

> This driver forgets to free allocated netdev in remove like
> what is done in probe failure.
> Add the free to fix it.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Looks correct!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
