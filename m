Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6387715D548
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmScAVLJ3VQls30l6TwcBghGpepSY0m3UgFC89i1Ad4=; b=X0sAF/5WjPh5JT
	NoXrV6cHL1BfuN0SPCg5gpY2kVeVrbfJzHsQ8hqYsaNnZB3PnChti24g7PHClDEuOKpuc0TNmwXdZ
	lV5mgJ1ak4q1o1UmOMT6UhttcUjqHnE1LqdUqoMiqg0NIi7Er795+ACAAmVTJQp46xXNIkI2EeIZd
	1TsY/n+bWLQecLfLdnMwgxYE+rI2CuziW2o8N72Xm3GRkx84ElumoasobeLqmZ9slVbIlMajfM/j5
	GXr1eYNaztPANVuqYJQZWAHnwR4B1cJguEeQM6I8xl3jza/1ImH9x21XtY3PM7M3EXldJRUY7IKzJ
	53aic6vbZLSGWkTTSYlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XyU-00076J-UW; Fri, 14 Feb 2020 10:13:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XyL-00075S-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:13:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id w1so10095901ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3tXYzXJf9WQqBcYnKun85sSjeLfeLQddcA1VRNXGUI=;
 b=rMHSSluMq+/fmj0gS+7HK9GqzPTRS5cIqMuT/aeLUosx/prlamTiybRglZTU0bKEuY
 YY1sy6z+ojZp/+MK41EUCrm3kE69PnzioVp8aKhLBO8T/iEtAaHiGvZUH04C7v7rH28v
 wg4NebM9EA5A4StHuDb3skiiShtBC6j8XVibUJ+kJ21boE6G89RdtSW4Srm8oQdL4XeZ
 L/6ZYyjhBb2NrDeU7dBvAJu2pLvoXntbXuvif3llDyNdWGtFrP1mAM/bwjkT71W5bEc9
 qOs511l7xVxnX8wcitMZMVc6ul6/6yM7Jb1Av2PyUJ/LjS7UK4oJMzoVDQLzlx0ZqF3U
 l/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3tXYzXJf9WQqBcYnKun85sSjeLfeLQddcA1VRNXGUI=;
 b=MCtVIMjjdtw6uegAhJRPFq4NErtJVvkW37rWk2w9VGuR774sIJCa8BEJ6InzevuCMO
 6d8O0+1y76aAr2XIhHZn+bR+nB1NpYfh9kysmZAcbu8InqN+54kERipnk77mKpNbxtMR
 V1gLDIJwFxkL9DEs1cYvmpJkqeKARZMoXf+CXnRhddrCfS8bax2MbhIpfVW/RiL2qGyI
 YsXt0Roj1kg2xkvvcrIPvdCEx1qIbAncXQ0j8IMIx0Ke7lu4nRcfAJbXuQuye71n9FXC
 n+gmlsRM/lXw3UnVNOVyeaSjt0K81/94PmyrC0Y2jBm9uvWKZH6BuiUCtJcABtOx0kGR
 xuow==
X-Gm-Message-State: APjAAAUFc2sT5N0xW/ukoaDiBN4WFyKhr7uHbgRY17YfHMBAj+mOi3Gf
 6eVymOXqn9+YLkHsyqZPb2P9VNrQtcfG981UsUDhDA==
X-Google-Smtp-Source: APXvYqx+B23+vB8r/W3uqemgLRaTP5b8JPziVCWplLFBhl6/3Fu3/KIPPm/sHRABNZytc0yt0PBL5NmvIO2i5MJfcjI=
X-Received: by 2002:a05:651c:1bb:: with SMTP id
 c27mr1675173ljn.277.1581675198245; 
 Fri, 14 Feb 2020 02:13:18 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-18-geert+renesas@glider.be>
In-Reply-To: <20200121103722.1781-18-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:13:07 +0100
Message-ID: <CACRpkdZuxONgGJy73j=+LVhMXAnzQQDD5OLOjYGF5UQ-X_PfpQ@mail.gmail.com>
Subject: Re: [PATCH 18/20] ARM: realview: Drop unneeded select of
 multi-platform features
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_021321_279654_19A11EB5 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:37 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Support for ARM Ltd. RealView systems depends on ARCH_MULTIPLATFORM,
> which selects USE_OF.
> Support for ARMv6 and ARMv7 variants depends on ARCH_MULTI_V6 or
> ARCH_MULTI_V7, which both select ARCH_MULTI_V6_V7 and thus
> MIGHT_HAVE_CACHE_L2X0.
> Support for ARMv7 variants depends on ARCH_MULTI_V7, which selects
> HAVE_SMP.
> Hence there is no need for the affected RealView-specific symbols to
> select any of them.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
