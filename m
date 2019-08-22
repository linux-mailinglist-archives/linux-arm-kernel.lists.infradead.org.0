Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6D8992F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTQyP2DXs0SzpqG6JQzfFq+JIRlbVFrK7ngoF6QUn44=; b=BIrjypEHhcXvSq
	B7gFUlJhjtFUB1UOkcjFAd6dgHpPEtJiMfMIHj6X3kts+sa4kTy83ginpT2+QA5HTkdLbORpWU+VM
	IYaIxJrblCU+9AglL6WKKGqUcEavUkEMXK/ilWSah+2NhkGxbLHZeN4pn/Orf0rAdd0Jb0MLzJr31
	t0VwbgspacVh5tZzA7t75RMSelcQGP/tFUw/IukvmeTrQZ3PPIFjjK29XxROHzzJMF5wpNxOaTZDe
	OfneGjvIwlaKPyvf6MAO4MvPdQ2w/IZg8CFg0yuroak78V1Wu/OWwdITJvbQCUXmrUP1+9UJ5oqr/
	VFtAElbvGx7GyQENhOZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lz6-00023g-3l; Thu, 22 Aug 2019 12:14:32 +0000
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lya-0001pw-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:14:03 +0000
Received: by mail-ua1-x92a.google.com with SMTP id g11so1917346uak.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DoBmeUN23M8f6sfbc9hjllfgwqRgBk2+sJFpDr9LHV0=;
 b=fBVXvdd5bwH+sPQ0EwczYi7R6UmwhFeLh0tBrRFjzXX7IFfV2KnWfv8vwWiNuIBB8H
 NGGZv62Zk/qT4ZXkyI0BBvAYEl+xvjQK7SG7Tsj0MijJuSmyal+GioBCqP3LfHzD4+oY
 H4u7Wfgxm/ojS3Txbnuys36cWl+exdG4o4s0mesYIrVTF2ehlmDXzZqXpQFcEd+LatFA
 1zFeZZ+yHi8H7Dy4+/zq0XzTxf0XkUSK77ho1+CZNnHkMvgw6bTJmR1mvUE0A01KmHn2
 MdqHGzSDf7tD3eCbDAEt80tOupjxhBET+sk/uQ0Xjzk1P95B6OphlIfJrhjJs6r2lq83
 HQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DoBmeUN23M8f6sfbc9hjllfgwqRgBk2+sJFpDr9LHV0=;
 b=KjlvChVMKdN0ac51zJ+M1DeZ/ij7j60wD9euUMrDnVlR0KygWSJF8qg1KnDPu6a10p
 +q+MUwpkB7Nmo9QQWwIbKyRQBfPqo8rwbBp+bpD5kx1O4P5UPDpYw1tCp9F+LbiwKbqK
 iRnJ99MjvBv2nf98Oui/3/Y35iiq7LJiLF43FCVHSDdXtlMSRL4AJyMoiWldvPKcYwqD
 N/44YwcRkYMVYhHbC/4Q375GzNyKaQ0Wh5XwD5/iRAb+H6RPeiWSG5xQg3mUv2/aONz3
 BSaI7keeTjw+8ytKNIIiRVP09/lH9IF8fs7roHQzciOnexokxDG9lyKGBuTJqHjbfG9c
 U9Nw==
X-Gm-Message-State: APjAAAU5Rr+ZrWHhIiVOv2V1l6rFdxrq8xMefbmf0slUJQ5PmRe+Z7IY
 aPYT7Re0U+NqXCOIIPILaMoki2sv8Ax6FvZ5NSm6DQ==
X-Google-Smtp-Source: APXvYqzXVsDy0ze4FRIDwywvutY/B4QAw3R64INVMx+0auCjLO0cktw5lNHc/YQDg6mDs7Vet6xKvfAPTB3hUQaHhXY=
X-Received: by 2002:ab0:210f:: with SMTP id d15mr5424470ual.129.1566476038016; 
 Thu, 22 Aug 2019 05:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190822064741.11196-1-chaotian.jing@mediatek.com>
In-Reply-To: <20190822064741.11196-1-chaotian.jing@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 14:13:21 +0200
Message-ID: <CAPDyKFqEqF_ZHerbkTqqcVBceQvMr_A+-MkbzQJBByhCv9B0fg@mail.gmail.com>
Subject: Re: fix controller busy issue and add 24bits segment support
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051400_401028_4ADCF4C3 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92a listed in]
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 at 08:47, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> the below 2 patches fix controller busy issue when plug out SD card
> and add 24bits segment size support.
>
> Chaotian Jing (2):
>   mmc: mediatek: fix controller busy when plug out SD
>   mmc: mediatek: support 24bits segment size
>
>  drivers/mmc/host/mtk-sd.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
