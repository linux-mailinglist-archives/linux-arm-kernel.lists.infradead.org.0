Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DF21D09A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZoMr60ypIQfemeSeKGjf3tYrG+qSJBukz64ySctag8=; b=ttAWMtfl9q4qjw
	TUQxPE0QbT4DwkvUhkZYqMLmOlnsTAX9wQsbf680x3PPc1jMNKZnJm5UJQ4I5yJFusg4I4QITlDRS
	xEoCGZCt9qJ1TKaTWlKUoQd79e8/yVPbwoPllZotF+RDlGovxV4RvT6rCkoiUWRhI+kIEX5y/jFKd
	mSU8+6Ru2WhXks+GnN3MJFpTVNmon3kThfhmcLNZoDrzPEYhNWjn25lGQcz7vI1uHFGv8oQBjjHA5
	RLY7NngCWBpiQpyE9Bi86uTeVeXCV180uTXwT0Nf3VHF7THkZPslmdajutgPb1+ytmFqrWjb+cXa1
	bx36gmR9zgTLbSpkAb5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlZF-0004ZJ-75; Wed, 13 May 2020 07:12:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlZ4-0004XB-GS
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:12:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id o14so15468068ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 00:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flowbird.group; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IRFk30OEdsBaX3lNynkWDdT0LAUKPWkllb6vWrvUfFU=;
 b=K5pzuy/Q0DbKRQJhtwBbIhHrErl3UFCylyh40MxEmVKtgp7yEA96J6jzDlnp1Z9lX3
 L0095lu9fUxrCVlwBbN8u7k/YjU5gQNhOooEFNtUQuKet6vVAPI48KqdvwDDSoWxkmNw
 +PylWBmbq3ADzq9SmaUFmuSSxZT6qEFLq+V/2QzC90vcKfu7ZAw7q1+eCKk985st/+rD
 L0WnmVbg1Zay9q2IAo3SswAhLrVPrbQyjbJyS5GnZ/rQoLHTPXPjoZLTn/MHOb9BorNj
 TxoihN27LfVVuTTxxgi5ohtgAfasA7G6w5fuCLWotsAmKVh4quhdqPwl8wkOmMx30QtM
 4TuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IRFk30OEdsBaX3lNynkWDdT0LAUKPWkllb6vWrvUfFU=;
 b=MTYMeltu3Jyyzi036BSDp6FPA/lK6Mn5OuxDc9v3mBDIGBKq7SxQYGbsTlFFncQbZv
 vgKDeWDqS0Z8Nn2U/WxtLOY78ElSWepA57OU6UMHkFuUtfOMAwo9Kcn14mnxfP8J1a8W
 c9B/SBK/O4Ks+lsjIHsc+U41hIdbaQRwiiia2TKDs0v48ewt5ySGL1aQXAfdn4RElzEc
 zZpcItmhUvVTVoHTordc0caKmcDdDGKfJlXaN0mhLrbFw3EVTJaDQ1AAOh0wuV9TEH2a
 Ue+v2Z4dayBfFfuNySPozSPviE9ydm8RKo8HzuQOg3n1uxYPQg5WQJ1BAU1tkcBWt+Qe
 SLYw==
X-Gm-Message-State: AOAM5337NnaufE7b7n6VaTwHqj2c/WmEJF+5lhcVf7gG+Ov/L8RPdJr/
 XE1YJDgabQy+THsLwr3Td4iz32UlJTdHAOsNnUFCeQ==
X-Google-Smtp-Source: ABdhPJxOVv0j3JItO5IlLO900Ue/XycQksnMkwQAPd8Io9f7MPELoXRwn0ku6xHMSL2Omjmun1aVBi7/j3xnmT3aaQ4=
X-Received: by 2002:a2e:8e98:: with SMTP id z24mr16710225ljk.134.1589353944120; 
 Wed, 13 May 2020 00:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-4-git-send-email-yibin.gong@nxp.com>
 <20200513060525.GJ5877@pengutronix.de>
In-Reply-To: <20200513060525.GJ5877@pengutronix.de>
From: "Fuzzey, Martin" <martin.fuzzey@flowbird.group>
Date: Wed, 13 May 2020 09:12:13 +0200
Message-ID: <CANh8QzxJg05nXasHfN2kC-G7TOKZ8trJkOP_v0KXvcy6S4df4Q@mail.gmail.com>
Subject: Re: [PATCH v7 RESEND 03/13] Revert "dmaengine: imx-sdma: fix context
 cache"
To: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_001226_543525_0BC5969C 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 Shawn Guo <shawnguo@kernel.org>, Will Deacon <will.deacon@arm.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, vkoul@kernel.org, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 at 08:07, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, May 12, 2020 at 01:32:26AM +0800, Robin Gong wrote:
> > This reverts commit d288bddd8374e0a043ac9dde64a1ae6a09411d74, since
> > 'context_loaded' finally removed.
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > ---
>
> I think this can safely be folded into the next patch which makes it
> more clear what is happening.
>

Agreed,
not only that but having 2 separate patches also means that the bug
that was fixed by the commit being reverted could reappear during
bisection.

More generally I think reverts should be reserved for commits that
later turn out to be wrong or unneeded (ie should never really have
been applied).
If they were OK at the time but later become unnecessary due to other
code changes I think all the related modifications should be done in a
single normal non revert patch.

Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
