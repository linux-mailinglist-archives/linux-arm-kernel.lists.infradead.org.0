Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4AC992F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g355ORY2A/mvprmdnHz3XhYxzhEc1Ame9xp5YiB59ic=; b=K/72cf52fNmXUq
	dageltMysGLrpIseB1yWLSZ+leR8YT51+3A4hp88kNGtL1J87yie5LF3nf4hzm9IMf8mCN0u7o/Ng
	Bk8MJA225IHXl467sQl0DEDSxpMr4L1XWkrcBDk6R8DEo52czP3a/aBelIkWxQAmvO7Ep8P3NsgIh
	Ew9a3XFSvJexKf8sU+DFBSeFeWE0cUVFoG4tVyPcqYRvhjT9OBYFtNrZH25RDmiBiI1I+BSbbpjlE
	ThsE2EOQ++rGZ5MykwIPZEA8LHCF71RNCYQ6O6lrvumH4OIxKes65C+lsNuuoFoTW9ZPIwvTXqIjm
	gSMrkC/qICcUzK4DApkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lyR-0001ZM-Bg; Thu, 22 Aug 2019 12:13:51 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lyD-0001Yf-9y
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:13:38 +0000
Received: by mail-ua1-x942.google.com with SMTP id j21so1913062uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mvo3obOpukOfhgTtLVmsxidJD3UDOJN2LjSEIs/pCEY=;
 b=yezPFauYmhYaA1IvJm9bJpL2dY24hl2CuZ23kSamOTyei7zmkpM9OwfeezL77smNmy
 brPejKcqSkGbdeG0TZhPjVTnbbSR+wUP/ef7qlhKjm1WrevaaTKdM1H5BJlulQSNFFBu
 ffPG25/rp7o/Np+uiVJ5mzu29geogy+OlShFowhzezrqK6jSKy2/ttts946z7KwBEK5H
 wnQkO/mNQJxlV1Z14pPtRBkgMBP1xn5E1R8TR3s9I8XCM+WYiRCE1b8xj+vvhDBM350a
 eawe58pkj08f/lPQkGSdVpLTGANBXb3hC9izuEQG64fH8ePiwIAUom1q0sA5Yp1ctCCV
 rMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mvo3obOpukOfhgTtLVmsxidJD3UDOJN2LjSEIs/pCEY=;
 b=YfIVZBzvCta3QXLkAXz6XYqlGo2Ka268sZGoxnj6fK6FW7O82Zfql7I/a5Q6+y0kJt
 5uYvHBojFp1sgxPQfjZBH7o6KLYORTRml9X6j+J7+gEyI8XBpat+wNyEcHYtuhzceiJG
 TyuujGmk2tgHZPGeAEeJClTXIAzZ1FG7r32IhjVqWT/myCx+C7HrScTGL7VnG6Z1vA15
 KTdRKYYUNfzgMrDsbllZ5t8QGRl8ESNIbUloZ5v3Kvgr4lSw4ZUXtR8elnbd2lMgkgjp
 QGmp+IaB07BNQ5BOuRa+ZjGk2Y/5OdvjCX1E/R7rYrvrKkIBonc/RCPHtAND/+3XKiL5
 Eelw==
X-Gm-Message-State: APjAAAU2dg7XNZKhzur40KBivCRe4aPOGNQ35WdUzqAww3Rwd/xrH44F
 1cnv6/khi4vfVPo+HQJjIi6e8AnDAU8+2dLRHKnlaA==
X-Google-Smtp-Source: APXvYqw7ToGHxamlJhqcq3M4yWdo5/jCqSU8fUkV8Z6lMD/B9TiMtkFuCTmQqe2Zj1ICY4zk9zXEx7jisLrgFwz9Yzs=
X-Received: by 2002:ab0:1562:: with SMTP id p31mr5468313uae.15.1566476015930; 
 Thu, 22 Aug 2019 05:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <CAPDyKFrUr8_VP1JLRk48zR8_p1Y62wKLBnS0iTgdhUSArwD49Q@mail.gmail.com>
 <20190809080842.zl4ytbjyt54bj6ta@M43218.corp.atmel.com>
In-Reply-To: <20190809080842.zl4ytbjyt54bj6ta@M43218.corp.atmel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 14:12:59 +0200
Message-ID: <CAPDyKFp_UdPqnOtqsOZcNxt+fTayMYm89_YLNH8J5-=VRcWTJA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
To: Eugen.Hristev@microchip.com, 
 Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051337_356607_25B0E929 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 9 Aug 2019 at 10:09, Ludovic Desroches
<ludovic.desroches@microchip.com> wrote:
>
> On Thu, Aug 08, 2019 at 05:23:00PM +0200, Ulf Hansson wrote:
> > On Thu, 8 Aug 2019 at 10:35, <Eugen.Hristev@microchip.com> wrote:
> > >
> > > From: Eugen Hristev <eugen.hristev@microchip.com>
> > >
> > > HS200 is not implemented in the driver, but the controller claims it
> > > through caps.
> > > Remove it via quirk.
> > > Without this quirk, the mmc core will try to enable hs200, which will fail,
> > > and the eMMC initialization will fail.
> > >
> > > Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >
> > Should this be applied as a fix and possibly tagged for stable?
> >
> > In such case, do you have a specific commit that it fixes?
>
> I think so, I would say:
> Fixes: bb5f8ea4d514 ("mmc: sdhci-of-at91: introduce driver for the Atmel SDMMC")
> Cc: stable@vger.kernel.org #v4.4 and later
>
> It doesn't apply on 4.4 but resolution is trivial.
>
> Regards
>
> Ludovic
>

[...]

Applied for fixes, by adding the above tags, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
