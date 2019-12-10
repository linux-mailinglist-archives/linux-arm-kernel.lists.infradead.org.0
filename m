Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD90F1188AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pE0FbEvxLjEQxmuhnxXQwaWHxnwp8HUcRJLEtOHMkyI=; b=e/Jtk8yteUp72Y
	UJUsy1RHzK1QVNWv7Vqt8G2niI0SqbPFWChRW0NKT0DUn7TpN66ImCmaZkKJBH3ZrQNqTi17AtwO6
	IQCUXBgCWik2B14d4MRvEdY/JbtyFEGFDZkPr7BlFPOEjuMMXDjeu7wS/dCeMPj1kjekyloWxwhlw
	dUJGH3A2YMctTPolcaO+4lcvSrT6myOF8fskZLOtTBwi3+tu8EEdgXD6vaSG2USvF+49Cv6Y6T4WV
	hHXs9Z5x0QpaJ4MxJycQX2n/oID0/UVtVRDlnHxJuaREJB8nzBUMakqIaaP8kd5XzkESb+rcVt7ZH
	pb5TWFDrGEkpPPanJ+LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieerU-0002M5-5Y; Tue, 10 Dec 2019 12:43:32 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieerL-0002LP-6A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 12:43:24 +0000
Received: by mail-vk1-xa42.google.com with SMTP id p191so5543443vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rmEiSSp96CqMy1Ppsk8W6nnDKAAqnPQ9Fp0EYBdV+7E=;
 b=SjVyZzwl1gFe4ZV18t5rV4aLho7lO9k6u7FJV6ZAqeuFB7bj2OpZ7m0NdHHPB5P/9J
 F1GRcZF8vBqkPBqBMbXJp1yuJ+IAcubDftWI51y+mNDpGrT6YxHSHu3zzeoVuKOXTUL6
 ofai+5OMyCUrw7aMsKCreGKjupSo3Hr8MQseWJ2xCsncPzWOMFL/Zih9GO6A6c/ZjqzK
 JyQZpoeWVRpPl0H1oX5XjRDyHL02eQQ9+RL/TZcZdazLKImnbYsdmtz0DQPBGEJMtLj3
 8uxieE2T+RpsIhE9/Ytd6ACKGxx+oh90ka0loPrxuxNct8VjQ+3Ll7M3kAKlYy5U84kC
 DmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rmEiSSp96CqMy1Ppsk8W6nnDKAAqnPQ9Fp0EYBdV+7E=;
 b=hT7WofbbKxoLPCDgKkn/2SGinr9L7iVG67mPRCdl3JFrX5qVZosodNqfIF6IYfkcGG
 NsN1YgRXemb2n0Ay/seHf2mk04EcejkKsUWcHvctdLfMwG8xdaEjZdjJKzl0iUchn2a3
 t3djNBtng3rSYiQFrtKC6kvdlNPFhFN8ApHyiWARCHFSZC5/qZMYZB7KbHbSSWtH4cX6
 mndlzMoy7nSP9CyjhAagZu11WY5qRPMo/dX7ABdKbjWul2eWp1+fS64efq3RUvUq1kB/
 OqtcUm1U04MhG/DNd5p/MUkOwq4cITHuZRI95Gm3PJaxRpme99DCk3DZP4Wf2n6uxfKy
 OLYQ==
X-Gm-Message-State: APjAAAUC5Iq2Kfb9HqLfo89HCu4ohHdSJ8oYdhUtzTM39zeHah51smuP
 bBkLmFfgvi1xvlNjpE2a/0g16NpSRo011ywcmOuBLQ==
X-Google-Smtp-Source: APXvYqwYeuWm53/m5Bq2qBEuOXIjm6v1jerpImsqqYFfOVtKgHeSeKsZzlwtHErJOzdB13a85RtG6b5LG2BU3bpzpc4=
X-Received: by 2002:a1f:4541:: with SMTP id s62mr8918335vka.59.1575981801902; 
 Tue, 10 Dec 2019 04:43:21 -0800 (PST)
MIME-Version: 1.0
References: <20191204071958.18553-1-chaotian.jing@mediatek.com>
 <CAPDyKFo9Z2yj7zC5VOS-iX_LyavPp1A4n73eAp7VD-Q+dpoqpw@mail.gmail.com>
 <1575979419.7714.1.camel@mhfsdcap03>
In-Reply-To: <1575979419.7714.1.camel@mhfsdcap03>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 13:42:45 +0100
Message-ID: <CAPDyKFpCjzpxOLi+bfawgHJNXve16tkJmg-Z0Jqjf3zJ5UxV_g@mail.gmail.com>
Subject: Re: [PATCH] mmc: mediatek: fix CMD_TA to 2 for MT8173 HS200/HS400 mode
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_044323_241692_34D558CB 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 hsinyi@google.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 at 13:03, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> On Tue, 2019-12-10 at 10:51 +0100, Ulf Hansson wrote:
> > On Wed, 4 Dec 2019 at 08:20, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
> > >
> > > there is a chance that always get response CRC error after HS200 tuning,
> > > the reason is that need set CMD_TA to 2. this modification is only for
> > > MT8173.
> > >
> > > Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> >
> > I have applied this for fixes, however it seems like this should also
> > be tagged for stable, right?
> > Yes! should be tagged for stable.
> > Is there a specific commit this fixes or should we just find the
> > version it applies to?
> >
>  this patch should be a fix to commit:
> 1ede5cb88a29bba1aad1b68965c5fc8e00b20ed9

Perfect, I add that!

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
