Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDB9114BD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 06:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv+gnW3Y5VehkvIO1X+TgqmOEjvxZfGmjHux8/sf69c=; b=SgYM8zhNOgSWoW
	cwKpOW7uiE7xY/+SXxXIm8F9ea7VaQi+Xfg9WnOJGIs4pd1AxtPTL+iR7p1Wbpha5eRS/GKq5LkB9
	VBa/TnfltzEV4LylYOkx5VUruyNuy3V+muh62KgDafwGaPJ4Kwg7V0U82W+ZM3hxoE7fPxBFDR3Gq
	33+JnCBcB+Em8J5SEQ/hXQ+dwdtXpZHRSVvY1+G/hlZ+a5yOmg4BtbskQp4FNXxfEPntfwL1rl31H
	p/GAiVwAfDPki2TBH3a/EUtwz1+KGIOORJjDjg/eTznSKgL9durs5T8uQj812BelfWm2n2GHfy0db
	3L9uo5UP1IgkpxBOrz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id5lF-0004Hw-Vn; Fri, 06 Dec 2019 05:02:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id5l6-0004HX-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 05:02:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so2697278pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 21:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U4Lcf6OzjK9nHXk3oZTWYhDlkvR9rdJR4Wl3wSLyGro=;
 b=qj/d8D9KI6xRGYKEQ+Vq0h9kmJIL1AKFwocLZa2hfCKDv8jrieiUvCEROLIM+d5Juq
 J5qwPq6ztIP/hCk6mbgE7qgJ3vOVr1tjgR2DI6JOezi5sOAdUM91PBJiPfiYtc0DzZwe
 9Rhu8iN9XmZURwZgZDLhqr0HZqaYy2B+GVLykfJFCY/SKtrA2sXv4Gw7TQHcHOYQTcJc
 P76BW+P856GdQQmfNZZobPLuR54fSkrR5FOtpfVuww/p4+NbaqClak4xN3btVL+gFpi3
 G7dj2RNCKh9l8jREiLmefxL8zZwA/U11RbJpVIse87u1XdBH7s6Uil8lLHumoTA7Fv6Z
 sQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U4Lcf6OzjK9nHXk3oZTWYhDlkvR9rdJR4Wl3wSLyGro=;
 b=E0TKHYuX8luJNY4OWcVUPOOlVZKD8tZQ8o9AFK8wB++H4yAjzLGUmjm24tsDq19+Xj
 t+I6IZYsnEIUvWXiNbP4AMjhqlzWfJfEl/v+S52OCJGv1eMDAW6iYnN+6ykp39ARdThI
 HS6LRm6kNuL0wNonI7ppPYp12wAW3sdO33fzlpc7njZCh0RkqYRbqPc7CfRWFEziqhBb
 yvGoaWnzsJSzgRxJVeCil/eRB0tuImQzGsDDUCEo0UxuMlue0mvxdjIcOkvDivtxScH8
 G7pmhM7Su7lclpARXv203g4EPURs6Gy7eQnV6V5w/iQFd/3BGRL/cj3sJwnH0k7cBZiO
 N3Kw==
X-Gm-Message-State: APjAAAVZD+2Ei9oh0intgd33CC359PG/ZtdyODdZxfS326YSsZUPiyIz
 a3bvq5MFj0y4RmGoq8YOOsV8Ow==
X-Google-Smtp-Source: APXvYqyGIC+8KPPt0G9cZQQRc1DGQeGGAWvehzmEKSWMFhU3kqQXiyPa1VFb9dKGGld5b5TznRyh7A==
X-Received: by 2002:a63:ec0a:: with SMTP id j10mr1487160pgh.178.1575608546072; 
 Thu, 05 Dec 2019 21:02:26 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q6sm14341478pfl.140.2019.12.05.21.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 21:02:25 -0800 (PST)
Date: Thu, 5 Dec 2019 21:02:22 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Message-ID: <20191206050222.GC289401@yoga>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <20191106220406.4aoq5suvwww6c3ov@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106220406.4aoq5suvwww6c3ov@localhost>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_210228_380594_81222AE5 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 06 Nov 14:04 PST 2019, Olof Johansson wrote:

> On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > 
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > 
> > are available in the git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> > 
> > for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> > 
> >   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> > 
> > ----------------------------------------------------------------
> > Qualcomm ARM64 Based defconfig Updates for v5.5
> > 
> > * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> > * Enable SN65DSI86 display bridge
> > * Enable QCA Bluetooth over Uart
> > * Enable various Qualcomm remoteproc dependencies
> > 
> > ----------------------------------------------------------------
> > Bjorn Andersson (6):
> >       arm64: defconfig: Enable Qualcomm remoteproc dependencies
> >       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
> >       arm64: defconfig: Enable Qualcomm socinfo driver
> >       arm64: defconfig: Enable Qualcomm CPUfreq HW driver
> 
> 
> Hi, this turns on the driver as =y, when the option is tristate. Other
> cpufreq drivers are also modules. Is this driver truly needed to be
> a built-in for a generic defconfig?
> 

I see Linus merged the arm defconfig PR today, but afaict the patches
from this branch is missing. Please advice on how you would like us to
proceed.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
