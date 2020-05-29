Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9371E84C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhZXA6HP5bk6TaeB5B/FtlYGGwD2GXlQ1IWp5eT1aqM=; b=L/dazE/MbLIuh2
	VK42ElpSTOhO1vDYvw7ghzoL8XrwvbJsEUJ8URiGeK56YhIV7Ip3fNKVNb/qhabLtjuA8vCGvOxnP
	zDBHZMVybPgd6XRMhN//Y3cFPavjDZuM6byvFQIWP7kSjVFK7foy5HsmaE0QZEujt+YqqAcssBss5
	5hhjw26BCnG3hwQ/HZ0a6P07EjCdqPsbFrWlXDQdWD9e+waJMLBca49VKpB6PjIPkEAyjCYcl3/oG
	vH1XRPrdV8/Sv6nF5xNktlpC4gPkLkJ3fpvYVLfyUUylrzPTBJpV+oVB2T2xwSvpcJkX55SphLzdL
	QoWLZcBl4xbusNAWhBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeimM-0007oN-2s; Fri, 29 May 2020 17:26:46 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeim9-0007n0-85
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 17:26:34 +0000
Received: by mail-io1-xd44.google.com with SMTP id c8so165986iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 10:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z8OACykXjIzxNzzYJDcQomDu+bSaXx9nM76v7J1rnOc=;
 b=N4jmxuBRHu9i+7FFNASFaQjN4abnqiZo4PhPXmtm959rzOBOSm+7Huvel2yMZOGL6J
 L3YDrdL0zD8zpqbQ04ZWiR4x4O3kagbBm6APPFB13kSMk3H1QROQY+2vIF1ZldyGqRDF
 bAqJl18vR4TiVZQr/619DbLOoqewiS/BKYAMfJOp9Jj+S+C/J3VS8STRCBBSmsSkaksb
 ApY3WPl8R/Eic5rKAOi0eDW1pnrW2e+US63v/lpJ9u7BBUa2IFu/beqHQ72ET5FqhBIi
 lt/RcnyklXiCgf7y8HknKN3BSNFEwTssq3fjHwaUyqIQmXDKR6d1H5VWpqgkblSyq2n9
 SueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z8OACykXjIzxNzzYJDcQomDu+bSaXx9nM76v7J1rnOc=;
 b=cAtq5u2HAeLxtcCv2j4k6EVTmghyvikanPVUi9AzCRk2A0+7tKtxcp5MQCIE16ltRg
 U5PTQkMkDDxjfq1XMrDVxtjLY4nlKJWuBR6qMlzRDoWrzHCevt4YXbT+z7Pe3pc9mwgd
 pC13psm2o/gDkwPtXjRrGFOFY8SUCRG6uwqR1qMbTWLQlcoe+HNFopMiZq6W1MItFUl3
 6Af0sh+kmmibnaEtoXMpdD9aFbitU6wuJe4uYlCoL0yHTDa0MSuVfQeD3NXKPuhbD1em
 DAsgp250ua9eoQHfvk9yTpbSCDy7mEhDwlIJJFhePIovTWCGt23HD3ANmWHhPC91vfr8
 A8gQ==
X-Gm-Message-State: AOAM532bhGdS1jM9WV1gXT0pDQcX8WEs8Ho4BUTo1m1SojuJ6l+ZeS3k
 /DbgpWm0xGz1m9LBcfXr4iPnL1HdNW302t91229Sbg==
X-Google-Smtp-Source: ABdhPJwbz0o/jI3+dVTtyWVPjpigszAYMfgQJZaWm9/WbEOU+YXtNt0QJXWVbd3dmvHCuLQo0DqWifEdtyW1qHfQRg4=
X-Received: by 2002:a6b:38c4:: with SMTP id f187mr7311468ioa.205.1590773192031; 
 Fri, 29 May 2020 10:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
 <20200529110915.GH4610@sirena.org.uk>
 <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
 <20200529130539.GK4610@sirena.org.uk>
In-Reply-To: <20200529130539.GK4610@sirena.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Sat, 30 May 2020 01:26:20 +0800
Message-ID: <CA+Px+wVhXoU=BdBmMW0sdPtUrnQH+Kn6dkFdW-n67qEDGceCEQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102633_308025_9DD7A0C9 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 howie.huang@mediatek.com, Takashi Iwai <tiwai@suse.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 9:05 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 29, 2020 at 07:22:43PM +0800, Tzung-Bi Shih wrote:
> > On Fri, May 29, 2020 at 7:09 PM Mark Brown <broonie@kernel.org> wrote:
>
> > > What is DMIC one wire mode?  This doesn't sound like something I'd
> > > expect to vary at runtime.
>
> > It means: 1 PDM data wire carries 2 channel data (rising edge for left
> > and falling edge for right).
>
> I thought that was normal for DMICs - is this selecting between left and
> right or something?

Not sure what is the common name but use the same context here.

MT6358 accepts up to 2 PDM wires for 2 DMICs.
If one wire mode is on, MT6358 only accepts 1 PDM wire.
If one wire mode is off, MT6358 merges L/R from 2 PDM wires into 1
I2S-like to SoC.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
