Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D69F9F7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 01:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZMcURlX8k3r57cCRiRp6ORFJvyP+gjc7/5nPFTYnMg=; b=r4B8kOdcrmguXj
	ZvmGOVqXQ5IxVZri+RRX6jbQYUCIoeJX9u/FvMaU77I+wtnRea/8GDKyXrvr0bDrxE+Jo0BtEofXL
	2YYGsHaFqpM2tVkFcGIEgYXVoNyafVG9aGV+sCd5GbWBaimfwD2RxzF0ErALbMTtTEDUnTmDGDPHp
	3kcb2Mo/QY7VFHz8IClMqYHfyqCQf8g/XxHtcLQsRgtHffLVwSkvjbyTfvrFsY8Tl2aljbduAtGHm
	2TyHELp0tJK7pw9KG7q2Le+N0x5r4dyOh7V+O6pJtEfdiBofWUC0Bz2xQ+Gaik7Bfd7A2bhMmV9kv
	gmTDjR95rHbeGtuOgN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUgnY-0003vC-Qj; Wed, 13 Nov 2019 00:46:16 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUgnP-0003uk-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 00:46:08 +0000
Received: by mail-vk1-xa41.google.com with SMTP id k24so158607vko.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 16:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t+hVtjPqxsrSnn17bHB9qrQWeIT/PrqO1rTw4krXmCU=;
 b=TiPN95bkizQ4voYbuODqSf9et1LPRMWqgdL5r1Yn3pOdgL46Onb4KQqOi0v50YMBhn
 K8h0ocFtT/pSwPev59WWCHMjXQh6a6LTViN4tNmygkH4uX0fSTXGvu7xEVfGtruUAEM5
 wv1Sch77i3POzdILwDoQydigQjYYwba2tuZr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+hVtjPqxsrSnn17bHB9qrQWeIT/PrqO1rTw4krXmCU=;
 b=k/2OvmT6PUKDfHHYsKI6Tx6QbEOE7iE11CPPYvKyekbSF2trod6IH5BIS5oC4ohi7P
 IbuMPRdzTC0VzctDwvY/UpJJh5lHhc8+9RC5HJ/GnayOY9/4TiKM0AKeRuW0SCJSJNdl
 KDEL1JnzX6BOd8gNPLw3/zJle30g+C3Pg4KVtD//pqthOEK9YWd43tyTsztjQNOtmG7v
 8xg/SCNEGEdT7HMP8n6pBdRITUGxZBvTi9gGZPq8R7iqfZni7DsDkT7gU8cfsecs8jLZ
 V09Q7F3z6xMr2yolDBt5P91f4nyPOmoN3Boq6gsbwFLolfNer1xBBj2kYG4ewUtXHs9e
 OBTw==
X-Gm-Message-State: APjAAAW0zwLj6n+vzcnsKoxuZSwq/qv2uaGPizOKWp7s1IdZODiL61Sv
 Yg131RjAYr1AYJlbJh7uxTGmnKWyb76WSX/zEcUdfxev
X-Google-Smtp-Source: APXvYqyD/YFJfofIxaZ9C+Thi8Xw8Bo6/1Jh5ZypX0pE48SaKQ9yBWXZi8hLvz9YCbAUiXB5OTBKyk9j9njE7OAilXc=
X-Received: by 2002:a0c:a541:: with SMTP id y59mr432426qvy.107.1573605602886; 
 Tue, 12 Nov 2019 16:40:02 -0800 (PST)
MIME-Version: 1.0
References: <CACPK8Xe8XiJ+oEp3_AXO5Mox-mXWVrOJKQLJMKJxg1WdYCTzMw@mail.gmail.com>
 <20191108183124.r2wdql4rmdbzx2up@localhost>
In-Reply-To: <20191108183124.r2wdql4rmdbzx2up@localhost>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 13 Nov 2019 00:39:51 +0000
Message-ID: <CACPK8XfVOGyr+ntuAhK7dOA=02PBKJYTSkv4HvoJWdppMeJNWg@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.5
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_164607_413873_8F3F997F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, soc@kernel.org, arm <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Olof,

On Fri, 8 Nov 2019 at 18:32, Olof Johansson <olof@lixom.net> wrote:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
> >     tags/aspeed-5.5-devicetree
>
> This is a weird format. Mind changing your script to not put the '\' at EOL?
> It's messing up the parsing scripts, and git doesn't use it.

I think I added that at your request. I'm happy to do whatever works for you.

> > ----------------------------------------------------------------
>
> ... also, there's no shortlog and no diffstat on the pull request. We usually
> want to see those.

In the past git request-pull created those. It seems to have stopped,
as I got similar feedback on other pull requests.

I guess we need to add that manually now.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
