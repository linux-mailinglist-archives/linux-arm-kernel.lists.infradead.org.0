Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA6CC2AD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 01:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/xvkjfeYwni+2RTSawdC5BfkpEldfthlSYYeMEWx30=; b=qPlVZgFvch64gB
	dM3jbAeFSPc4nZ1bKhyF3TEyIBbekpgTupq45jiJkUOh7TjnAFwOZhH6bJWGxozR2ZWqklKHyygb+
	fkKxACKGeF666KhRY5hk85Gv92RVn86wBAy8P5hq1ILfmcccj1wNVbyantyQsNGxds2a7REc2Jrt3
	bx2hskA3MZt3qxJnikxrLpazphgnSFhZOFD/fxoDVQY/eu4uI3q+hXCk9pX93CkDQyErwUhQpNzk2
	Xz89J+vXa42NjfJiPfeHAwPTvqC9sYPGvHzwCxsNk12ehvkv6ueOmWzWtOrY/ggAA3XmeWrVFJDLd
	+Yz1gelNlT8mMm6KCMtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF54d-0004oL-Or; Mon, 30 Sep 2019 23:27:23 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF54U-0004nF-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 23:27:16 +0000
Received: by mail-qt1-x844.google.com with SMTP id r5so19322223qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 16:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pl9Uoj87Ji8fhmMmVA6l1LGr0jFQ4KuWKIrFbIh3wWY=;
 b=NAWE7s0qtdMAJiZamX3V6xokEA3BihpvGiwij4I9RhrSrs1/+NcFnC19kIYC2+VXm+
 mw4JB/DlOtISetTBRNDx9DFrMSVyR1OwEHYcnM7fyiodpHUy35LKFF+/IykPa/76nTNi
 oq4scSmcMmXkNJXm9at4/0G+We9rQDvDXAya0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pl9Uoj87Ji8fhmMmVA6l1LGr0jFQ4KuWKIrFbIh3wWY=;
 b=Cnhyfny/P+2arbLmfzaOntWq7AweiMMIbLp1hZCWYQT9gy+d1QoO+krXcDp2zp/nWM
 TK7LrVt25rRfiDmuQIxqhno0qNk2bRJsOV7KXX6mdwz6kwGv8Ej5x8aeW0icSzb0/eBl
 ZO2rw/JWRIcc62G8WClpoFKguMS7obmsZCJmQSAdUd2ilgM1pMlqX8rZDHsbzvkJ3LRT
 RXLjys5PpeaU5GlDTsY6fVMs7ZyMkePjTc3sUAFGSC42L5cNoCVF8i4msANz2UL3kDk8
 zoqKscIdg4c2qRIvhiwU9mwg0G9J1Wd5aA59JT7FySLxAQrnknuFJstgzdeCwp+nIdhJ
 fdSA==
X-Gm-Message-State: APjAAAVsDjBwgeihgYg399BKiHxABSRaJjFS0CiXExa5ac/LDPuahCLG
 VkYeESFtlcduRkeliPG9psqhOGvHaZ2ejolksARVQg==
X-Google-Smtp-Source: APXvYqzPlXIhfWnlF8sLl3jj8HRowIb8xLOPox6pz/DpeJE7rRAz9Qj8GEZSq7zX8V31/1SFTHD3X0AT7ZutVfrWEtc=
X-Received: by 2002:a05:6214:11b4:: with SMTP id
 u20mr20478355qvv.200.1569886032025; 
 Mon, 30 Sep 2019 16:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190930152846.5062-1-fparent@baylibre.com>
 <aa0487c21e1f9f04402f209358b18c75@kernel.wtf>
In-Reply-To: <aa0487c21e1f9f04402f209358b18c75@kernel.wtf>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 30 Sep 2019 16:26:46 -0700
Message-ID: <CAJMQK-g_PaNsfvX-H4_BA86aUOdyqpDt9oK86O7_mRWTjWSjHQ@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: i2c-mt65xx: fix NULL ptr dereference
To: Cengiz Can <cengiz@kernel.wtf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_162714_397081_7595A94C 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Qii Wang <qii.wang@mediatek.com>,
 Wolfram Sang <wsa@the-dreams.de>, lkml <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-i2c-owner@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 2:20 PM Cengiz Can <cengiz@kernel.wtf> wrote:
>
> On 2019-09-30 18:28, Fabien Parent wrote:
> > Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for
> > mt8183")
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
>
> Reviewed-by: Cengiz Can <cengiz@kernel.wtf>
Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
