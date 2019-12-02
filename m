Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB7910F284
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 22:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD0q2+oVgQrqVc+ddj3MUE/U3ABJU/khWYPh/jwHkFc=; b=E8QdaT/zFaQHlH
	2zvB3XErcxJrmX20MBhyBI8pGUo4FGdTMu0x5KglkLvLK1fYwMiBIr5zArjtCCZUCUCnRGjLUO4oO
	8aI3qAxqfvvCvNneUtURDBo8F/UhMzz2g3/Zu1QkAZ1zPT9LJhdW62ZaptLCVpngnAktyRJiBT3l2
	mocSANKgHCOC2aWebh/qEarzLFnuKvtXfD++OgvZu6xNYdBfef2o0E7LjuPzAssm04IeiDA78ottu
	KvJgOmMyJzDZg3dQwAzEhBJ6n33ItCikCL/mP08DPNQvZlO311GJJIGNQz9+Ews4ZjZsUpbMMN6NQ
	4KaZSw5KjnZQIrsAa50A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibti2-0003Z5-I9; Mon, 02 Dec 2019 21:58:22 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibthu-0003Y5-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 21:58:15 +0000
Received: by mail-qt1-x841.google.com with SMTP id i17so1489046qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 13:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VVaXi6VJTkbrgkla/zwTZyQ8K5/Xxz313P0oOuR5JLg=;
 b=XWw2EpfR9RQ5mqYx+5gAbzvTMmVCWjIReY5TUkcIZu0YmHa4ZB0fXyRpQt2prd/Jt9
 zB2H7XHyKxEelGbm1Zqadp6pIw230RhAiwSmkhq9kTLZZ1T1oTCTXScsMfTiO9GzVYgi
 Yhq8U0O6rEwP0mAEFu8/zQqPp/Jyi3YRBrHvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VVaXi6VJTkbrgkla/zwTZyQ8K5/Xxz313P0oOuR5JLg=;
 b=cCMcgkLbtzfnJGOIaooOVzDVxBX41szl8/atgEc/6kSPpfsEV+vz8Soi5q4Y4k8UOv
 c9J96zZn7SsXqOgstTRr3meb7KjgFmNh8pMauBw7lbBS/9bbhT2PL2s26XFYh6YVAczT
 vdIaR1CKoapKBiHNPaD/+tsY71OA2liCkDQ4961vBq9NUZaYIyKKRPdW6dicSMx42pOp
 b/k96t3jVkoOP67l6gp4A4CjUsRBInLmNizMlv+CTmeIn5GtLb4tQRLJdsD0nTs+PAdk
 gwY1nsItsf2z5oovcqAdhNHRImpga5UypSwZmHCJN8M+mZSt4+7Id9ZteckNe8eax5he
 z5Ww==
X-Gm-Message-State: APjAAAWWDg1wpwAJ9ejdSbj5UtI0ZFVvwpTdbfKgEuljbfIM1E+Yh858
 12C3QPj4fkBHYSOoHhOI7Y4DK6cJuWSQbCNmBzM=
X-Google-Smtp-Source: APXvYqwn8km6OVIYCMYJKryuP0QuX/13ylrQEYjCB7m9ABt4yTHTTD4AFAZOfzcAiG0hyJq8vCjs4fCaeUqpwTnDWRE=
X-Received: by 2002:ac8:4244:: with SMTP id r4mr1769497qtm.169.1575323891858; 
 Mon, 02 Dec 2019 13:58:11 -0800 (PST)
MIME-Version: 1.0
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
 <20191118104646.3838-4-i.mikhaylov@yadro.com>
 <CAPDyKFrshWd1P9dZGTSuU=5P0L6LSPz=v2nn+0SWi3ZZazKrRw@mail.gmail.com>
In-Reply-To: <CAPDyKFrshWd1P9dZGTSuU=5P0L6LSPz=v2nn+0SWi3ZZazKrRw@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 2 Dec 2019 21:57:59 +0000
Message-ID: <CACPK8XeOgNviNY6gBw74Kvmf=a6d8t4PRbZk1YevxUG035QxUQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] mmc: sdhci-of-aspeed: add inversion signal presence
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_135814_506614_136A77F6 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Ivan Mikhaylov <i.mikhaylov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 12:59, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 18 Nov 2019 at 11:47, Ivan Mikhaylov <i.mikhaylov@yadro.com> wrote:
> >
> > Add read_l callback in sdhci_ops with flipping of SDHCI_CARD_PRESENT
> > bit in case of inverted card detection signal.
> >
> > Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
>
> Applied for next, thanks!
>
> For clarity, I am leaving patch 1 for arm-soc.

Thanks. I'd already sent the aspeed pull request for 5.5, so I'll send
the device tree patch next merge window.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
