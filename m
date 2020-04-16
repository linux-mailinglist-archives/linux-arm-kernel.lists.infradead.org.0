Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA0A1ABB12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbtdVMEa+9rMQxrmqplZWhbc7UwHFuNX4hU1PstQGSU=; b=KEtzk82Oo6nEZO
	mpEUeLIEeXSvNN6Sf3jlebVlXb01wq84BxToaii5ch0qCxR3bD8p5Wcx6MwoqHHFIaOWuIWHnscoR
	JP9iYl4EFRsFCyUdu3LsMSH64NS/GajNjeRAMl2DlnP429NH94G7YrhR7ptDwFop7/0me0c+RXSR6
	5y6qiq6VaKfd4m2SDhqqDpD/KRxoNNVrICZBS7xugH2oy12/9V7thyQI0NtzhXwltE0e3Iwz22rPH
	HIB2yw08nuda5JY/PZxqMD5HUJxslVQLxDPRlX0PI6ydE8+7t2BO9BUj+XpCVNMO7Ym/2SGTU8Ypf
	GmylgYX2oxj0s1ZiUfkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzog-00042T-Kj; Thu, 16 Apr 2020 08:24:10 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzoX-00041y-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:24:03 +0000
Received: by mail-lf1-x143.google.com with SMTP id j14so4906878lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H9Z4l3hppp6TCIa45Hxja3dsjinLCm6mBL8W41Pph0k=;
 b=O88sX/eY/ZndHEXjyGgsfVESIDfup0ASEpFabBfcGOezZWo5R/Prw/qBIt8l4I/ayI
 sIDV7348QRlh/2mRxDSesMsCXA6I+YQa1siuyNJPz07mIxeZXs4JWb7Pdp5wvzCbl/Pq
 unltqkjacLW+WcBpwDxb1Lx2u+cmvi2eo2JYx3wLxlTJWEhdA985xjaanzgG5vJpkCoP
 +JyW3uGpDrBlBuEzOeizBJ+mEUZ1gEd2MbLFrluD055JDmtTb5d0w7Jzo3PbTNMxg5Y/
 kRi8cjn0qXEJ4qcpozAQ1O2TymcLquSv/EZ5Zc7ZuHfbCP53Hkm3FNoYMM/ThADrhrlC
 NUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H9Z4l3hppp6TCIa45Hxja3dsjinLCm6mBL8W41Pph0k=;
 b=ZMfMl9hBAliY9kv5AFRcBWAddg3q9wVZ/MI+Z9VFGouKeTNbhFvK4NDmALtbDIBr0R
 AChaCU9kQHqKm4BzsebGOZ5axtpXyQN3ivKorEoizF745pIbuveJ46a2waACUY5ArFsp
 SsmTvuj8QNkbyPz/lGEHjfyuI4fZ2E/UYSD6oyDp26G+Hm/uYZEJDJ9+8kMXMTVTdvvu
 RFDrvN3iKQQkLwjHeLXjoRcG3BSaRbUJbgTXFfRcrVID2dtjru2risyAjQgOyuO5aUoP
 eKSG6Ge8httrqyiaNqMHFYl7mNwLdAiGJi2i9cpLPkCX+cqvngvxXXSw/DvJjcxWEhsq
 dnXA==
X-Gm-Message-State: AGi0PuaPOAlt4HQv1uMt25Fel50KAchdsQD/7T6B1o9x54fWGzSqKc7A
 o6+pMaI3uUSp7YghTsBVIqCZO925Yor4qywWOWPJst2x
X-Google-Smtp-Source: APiQypI9PGqy9QkvtyKHNgt3xATf8GtqzRkowASz8B+RqstF66+T930LfeEf8r5btaykxEzUjQ6154Qbj9zh3YQYj1Y=
X-Received: by 2002:a19:cb41:: with SMTP id b62mr5448214lfg.21.1587025439678; 
 Thu, 16 Apr 2020 01:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <1585818532-23051-1-git-send-email-clabbe@baylibre.com>
In-Reply-To: <1585818532-23051-1-git-send-email-clabbe@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 10:23:48 +0200
Message-ID: <CACRpkdb_JztWo9XhWZw9einj2D1fgBiB+up3ZUrCOf5S-dT3VQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: sunxi: handle probe defferal
To: Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_012401_536633_93A95A7E 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 11:09 AM Corentin Labbe <clabbe@baylibre.com> wrote:

> When checking the logs on my sun8i-a33-olinuxino I saw:
> sun8i-a23-r-pinctrl 1f02c00.pinctrl: Reset controller missing
> but this driver was working after.
> This message is just here because the reset controller was still not probed.
> So don't say anything if the return code say to wait.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied with Maxime's ACK!

Thanks,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
