Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63F4EC674
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmh9EZT6rHYGChGbdUSwIRqvUIcYt/ye5OGqlVaQQ0U=; b=hU3D3ljvOnp/wA
	LdekbruuRghswFq8jnT/HxBCAf40tNUWnAiFGpYSXMag+V4xVp3HvX2HSSJWm4ze2+R6NCaah2i/T
	QGV6FD8SgkGEAV03rjQ6iNNTpGQLCdmQpO/h6X+A+j30vMDsGKgOVeitK3dJvC/DaAERP0v/GDK/k
	+dE6LriAENPnYUm5a7VdaFl7z9yYlHLF0l/M/j43zp8aBxIooYzv61kedHR2KPTcDBno6wBfmQFbT
	EMWHyL8zHRWsMmOTn4I0zKK9gFKO+EPjOIh7lXGtdwKWnKRQm3V0yTgYF419dGbRqBY+JaaFdADiE
	Qys/7QW09RLMXa6Nm3JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZaT-0004XW-Hi; Fri, 01 Nov 2019 16:15:45 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZaN-0004Wy-29
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572624937; bh=DUJ21suT9UFTz9RcE01mK2DkoJaOFwuKLOjW5+4c7js=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=bHux83oE+gyWLkQFblsmIXq+x2TReluLU64ZFrLrHnGg8o6LECme6g+JEVaqzN/A6
 /zWD1G5F3nTrfQ6cle/Xsw7cg+fWXUc7kRyxMHNCOuZKz8EUB8DOFANuM7RTOfBVTQ
 q2weXI4DwqROBU0BZ/z8RgZtJecPLtByFvbWOWrY=
Date: Fri, 1 Nov 2019 17:15:37 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191101161537.xqywdnwlrxgjf7hf@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 linux-sunxi@googlegroups.com, Yangtao Li <tiny.windzz@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191031181359.282617-1-megous@megous.com>
 <20191101150701.fgke7hoad5zn3vn2@hendrix>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101150701.fgke7hoad5zn3vn2@hendrix>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_091539_270807_CFB46BD8 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 04:07:01PM +0100, Maxime Ripard wrote:
> On Thu, Oct 31, 2019 at 07:13:58PM +0100, Ondrej Jirman wrote:
> > I have failures to boot on Orange Pi 3, because this driver determined
> > that my SoC is from the normal bin, but my SoC only works reliably with
> > the OPP values for the slowest bin.
> >
> > Looking at BSP code, I found that efuse values have following meanings
> > on H6:
> >
> > - 0b000 invalid (interpreted in vendor's BSP as normal bin)
> > - 0b001 slowest bin
> > - 0b011 normal bin
> > - 0b111 fastest bin
> >
> > Let's play it safe and interpret 0 as the slowest bin, but fix detection
> > of other bins to match vendor code.
> >
> > Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>

Self-NACK :) Please don't merge.

Please see the other e-mail for why.

thank you and regards,
	o.

> Out of curiosity, which OPP table is being used? I guess it's one of
> the dozens of patches sitting there...
> 
> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
