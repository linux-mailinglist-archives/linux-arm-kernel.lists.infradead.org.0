Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA158168D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tA6afe2T1BVTKXEfg7kgCRAupAJm5O2qTA8ZgmUq4U4=; b=dUlCOKBtqIO5B9
	Id2sNqhggQoKedFQkp8GEANHvvPIGMHQ9vjlyX9uLYbq5E6lQcTbJy7ppOQTs7k4tGCfFmYEW5gyU
	93D69p6L+o0hAy2nEuxovNoNzHsaWcxD/E1APL/zct/9I1Tc9DVgfq+XAaP3YtVr4FFW+W0NGILMX
	2o5SneGsVXB6fJKi3RSpnBHwzeL3F2SYr5frjE2Pf596wfpTVzHqkctcpLGGFHQTPDNLBxrKcvunm
	KuESB1DFPZTQiac8uSBgTY/s6WlNFvEkn0CyRxtyc/OkBEliz1t96eLUZ1utQfEDs9a6ncnxvb1SG
	1rZ7hdPsmN5PIME/8xtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZxJ-0001lp-Q8; Mon, 05 Aug 2019 10:11:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZx7-0001k8-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:10:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id v16so3603502lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=38PNBCxR8E/gwN5SobPXrhNr+MV57GD7N/MEMGkZI8M=;
 b=i+KWdtoyatpzpphFY2WaJrES1l5iH+km4ZzYvw9Pj8U6cQ9EV8MJo50y2rFheh0sQf
 If1EUHTnLQYMu1Ufh+wue461SW1p3twp+YJYSThodXvheiQUsdX1L8q7rXNN2TVo0+3B
 AKc9XtG1SJ9qwu3cUsAOEB0/PEAlpEV0pI3GTyAtzv0nfOLW4nFFD7clhV75F/w+aNzw
 5Au5ijk2hYONfmLVa0NPleuXW4f9ejdIYsinAsw4Q3fUPuxVvWzGPkZjRvrNsqnWdOJV
 NxZUss8V+kueLKH5812GcCc8+NKYiY0vtDZRGWS4hLJ3JfWGkDXuNt2TcdfZM9DVT3R7
 j+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=38PNBCxR8E/gwN5SobPXrhNr+MV57GD7N/MEMGkZI8M=;
 b=dKFBJhZ1b4UEdOXlxTBR1AmHPK9ePVg2mXpNjhQgGo3ub7IbebSXfPY4vvQKX9HiTO
 pEKOPDQtwMZu9ksO3YWC5x9ukIW7mEhyiY9kQ63HwBSBilNJ90pu4ilMuQ9fYV2ZRdvE
 lLBZKygIkbzSUIC6VpinrKIJ51cGlT/CEVk+MiFh4XqCAwKiZQVqVUUFnei3oe+X7Yts
 52Xp9TUFtdfp9MjTBmT73iTx9I26zO4upvaaK/TR5KuJ+VhkDiF7s0qSHk2+G4PZc46V
 l/fYfpHbGBVw0l26bW7B7PXEW/zGLbDcbUe/MWGReeHlkuqBF83r5B3XUvDIuQnJc/Ya
 11Pg==
X-Gm-Message-State: APjAAAWEIKKuOWetCAHqsk5AzQk6shehjyA55bHxdxTa0n6K9cSzevzL
 pjWp7by9TI3bcLUOiAm4ejvXwP/ijhCltRTFwIveaw==
X-Google-Smtp-Source: APXvYqxusHjcjpDv1JZyVr5ijdjJU9V1dMWbb6Wlipx267US9qZGpWDr37CqWIealFc9Ew2Cd3rGlJafBijXpEfIUBo=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68758068lfh.92.1564999852084; 
 Mon, 05 Aug 2019 03:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-11-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-11-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:10:40 +0200
Message-ID: <CACRpkdbq1rEpTm3Lqqb11WrKumV7bjUancuu-u2Ow0PQsCoLsg@mail.gmail.com>
Subject: Re: [PATCH v8 10/11] usb: common: add USB GPIO based connection
 detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031053_560627_540C8662 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> Due to the requirement of usb-connector.txt binding, the old way
> using extcon to support USB Dual-Role switch is now deprecated
> when use Type-B connector.
> This patch introduces a driver of Type-B connector which typically
> uses an input GPIO to detect USB ID pin, and try to replace the
> function provided by extcon-usb-gpio driver
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
> ---
> v8 changes:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
