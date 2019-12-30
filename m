Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B5112D32E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 19:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlzKjlSvLcmgdTTcazkL0mRNAANpAoF70f2pQT6IhhE=; b=AfTGk+S35u+nUJ
	bj7Frf02/S3ut1BnTOlf68+hQGnfZqfdaHE31pp9ndO44WYPnbTfvrAD/sMnllicZ5poBdg2+Jp28
	7OZaEiIGKN41bWgxPWXjF48NmK/pMv6skiN8vpZcoy4vYlmM7a69GVDVgtnJdz9heyz47BIQWUz7r
	XQigDFPQZfck9cXa9HwmGUMgGeQAE883Ywn/crlnIzniy+JCZ3uWFNoW50+sw2N6ouo0bUFcpHqVS
	Z+Qy/rXykwKSxhGErOPSksPHGt1MHZkbjEs0o84jIi1wpzKrIsZ98bajXfyKzrkmI3Ri98kqOFgO+
	qLqRthytHJPdHc4AOO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzUI-0002Wm-HO; Mon, 30 Dec 2019 18:09:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzTw-0002SF-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 18:09:34 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E26C720748
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 18:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577729372;
 bh=CIxky4h0LVYFSbOfjb+Wx3SNAnNGLt1D4UQk5UmNk1c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vlN+7jezkIv4FXDqX/nz1VaDVfc0s34AOc7VRoXixFBvyBf2NS7UAvciKl5f4JrS2
 COyw+4rmt4XdgJO7vLxLwTnzzegkh9+Of/s9YxdiQYIZmhvTVWwkokqMsc0fFhJJxn
 v3XwBo0Id+PIVVPcAWYLHjWEznXovcBggYYfbJzU=
Received: by mail-lj1-f181.google.com with SMTP id l2so34102428lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 10:09:31 -0800 (PST)
X-Gm-Message-State: APjAAAVtESCM8xeKmIOLHZ76AmU3oeTHccq4gScNmOg6cphM5TxOoFPi
 3QXGxhJMIUYU2xgNKHHb2Inshf08fb2hq2utMz4=
X-Google-Smtp-Source: APXvYqxAdJs6SJdFryPxW5wX+hRhHZJW2xGaMVjcJOAmu8Z8ylrrHPwlJUTmAdPyoyHqqnMnIhBmj+nLKuPGfSg7On4=
X-Received: by 2002:a2e:a361:: with SMTP id i1mr37666609ljn.29.1577729370158; 
 Mon, 30 Dec 2019 10:09:30 -0800 (PST)
MIME-Version: 1.0
References: <20191230084731.15776-1-yuehaibing@huawei.com>
 <CAGTfZH36sbTn++gKq+cQOXAutXQbyjbzZ_0VeU2Y037hWnROqA@mail.gmail.com>
In-Reply-To: <CAGTfZH36sbTn++gKq+cQOXAutXQbyjbzZ_0VeU2Y037hWnROqA@mail.gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Tue, 31 Dec 2019 03:08:53 +0900
X-Gmail-Original-Message-ID: <CAGTfZH34ufvwco8w6GN8E=KUuSeCfjFk4bR7PnotbLso0UNzoA@mail.gmail.com>
Message-ID: <CAGTfZH34ufvwco8w6GN8E=KUuSeCfjFk4bR7PnotbLso0UNzoA@mail.gmail.com>
Subject: Re: [PATCH -next] PM / devfreq: imx8m-ddrc: Fix inconsistent IS_ERR
 and PTR_ERR
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_100932_940743_7DD92607 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 2:35 AM Chanwoo Choi <chanwoo@kernel.org> wrote:
>
> On Mon, Dec 30, 2019 at 5:58 PM YueHaibing <yuehaibing@huawei.com> wrote:
> >
> > Fix inconsistent IS_ERR and PTR_ERR in imx8m_ddrc_probe().
> > Detected using Coccinelle.
> >
> > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > ---
> >  drivers/devfreq/imx8m-ddrc.c | 24 ++++++++++++++++++------
> >  1 file changed, 18 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
> > index 53df792..bc82d36 100644
> > --- a/drivers/devfreq/imx8m-ddrc.c
> > +++ b/drivers/devfreq/imx8m-ddrc.c
> > @@ -395,15 +395,27 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
> >         }
> >
> >         priv->dram_core = devm_clk_get(dev, "core");
> > +       if (IS_ERR(priv->dram_core)) {
> > +               ret = PTR_ERR(priv->dram_core);
> > +               dev_err(dev, "failed to fetch core clock: %d\n", ret);
>
> If there is no special reason, just use 'get' instead of ' fetch' word.
> s/fetch/get

Usually, use 'verb' included in function name to show the debug message.
But, Again thinking. the original comment used 'fetch' word. Please
ignore my comment

Applied it.

(snip)

Best Regards,
Chanwoo Choi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
