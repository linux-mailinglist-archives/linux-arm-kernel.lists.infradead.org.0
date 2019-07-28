Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624BF7820F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 00:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l70GmMCxEaGWZ3uAbF1PmybtO/x0O6wsYZAPROAQjTc=; b=MYf746mIpok+8R
	0tzXbCTzcu5mqOc67t36JXtXLXPA14hbvQpMFf/mgnVfND7ZXU9Mp4bxf6IAtKoAH2fXzMY1fjFZ5
	S8Uz7TkFS4EjRlHZdgRC2SJUrCsR/qp/NPTaARpoS6c9AISfeRPtjWNysWWKDStyBQx7G5VtljPKL
	JOmuw/DBinoHlv3Ds0CXUj+63nsw8c2Hb+QK6auCGlCX1mMNcz1C77+99o3wbp/cP4/l9iNrecv6Q
	d4BbWTfAkBsP0TPhEqhcYz2B8DdI3dmqQJHQCVpx1+S4a9oDyGRAlmDCPTeC82c7S7txYndXFmSbl
	MCys3PhJRzKJp5l3ZCOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrrZ6-0007yz-S0; Sun, 28 Jul 2019 22:22:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrrYq-0007yK-VE
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 22:22:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id u10so1909350lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 15:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mk7OXDT+kyhl11Xs5+A7Dfh2TrPQ+FPHs/EPPvVwBk8=;
 b=cYvUW+CxDim7JdtD71ldQzsj/MU4rTmgFudsug6RVeGvizAVIqyJhFaDq0dLuIb71A
 oQZb+eQ+BZDClN9NIqbEyqeUJQhy73o/bJt89lagppTaQJPiu+MBINpKKCcMRllQZ74B
 hejFCugU0VDAOVKDH5SiI3u9sIE0IYzAKRZCPVvviMkiMLKNjLkJPapEB+GkxjnTjFVK
 kvWn72QcLhP4cogDbONo6xFRpoMjr70SNGT19uuxqzVGTM33O1mB6EVVU0mDVCfsxv/D
 7fYUFZTuQFV86fsHYsbDqUuAVJVQsgJAtEMhluKvtEOBSCGAnUDXfrkN9fdOHaBevVOr
 l7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mk7OXDT+kyhl11Xs5+A7Dfh2TrPQ+FPHs/EPPvVwBk8=;
 b=lPta6bCf2fyHJ9wwVpxDDUi3U7kpcm/RYC9LjvTnC3IdUtyRkXRCBskNBLoOkjlF0J
 uZJlV97xyYDrYy/xkKSJLYxkZINzwBubLBCiGF5Ju3zioJTzgGd9ADXWSeGWNAFlPHWn
 u7aayz/rFzoGfEdAsxE35Cboe4joqiwJ18mHsF1NDN4pbVMzI/AZv+Q6VevLS8lcrKxW
 l8G0xMwnqjmZjkosU9eFfwqmkuRX6V6TasRghAyiSwneJmbyUhUB2ufUNAFFBR1cUK23
 E1F6Gv1AcfOCnpqixoGAsN2Ti+7ei8vtTjy0IZW8Z+V/KQAZie7NjBPEeU5jUR27t8eb
 8Qew==
X-Gm-Message-State: APjAAAUk4JQH6bXNaK3ZoUmfUvPOAjMkUqLpdC30dQjdLNInY0EFxULB
 gJ2EjJ2/VpZJMqjkHqoxFFZJLFM40Y5d6tH6Wy8RtQ==
X-Google-Smtp-Source: APXvYqyNTybbZVFPcp+YYlaKBlY6BVX7hbBoWTvMJUU6+xXNYT4nQVY4YRLaNcR6227l1Uhx28wW1S2+EfHEIlaPABY=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr39357845lfp.61.1564352551209; 
 Sun, 28 Jul 2019 15:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
 <20190706164722.18766-2-gregkh@linuxfoundation.org>
In-Reply-To: <20190706164722.18766-2-gregkh@linuxfoundation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 00:22:19 +0200
Message-ID: <CACRpkdbBXoTywAXb-18LJkTFayLgdRhrxEq0DoJxpCkn=Etupw@mail.gmail.com>
Subject: Re: [PATCH 2/3] mfd: ab8500: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_152237_002787_D557A719 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lee Jones <lee.jones@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 6, 2019 at 6:48 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
