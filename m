Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3089120222
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gofTArvhc/ycqmgns2Lj/YumNmGY3g9NJUgycvvSMUA=; b=Ykt3R6sTsr/yYD
	vl5N0Bwb1f53D9s/qnYe/LRX2h/aRBjDVew6/50RogztzIFuOn8tiFWFG8rxtqpwKjbl7HGnM+Wpb
	Ru1Zgg718+Y8YdJFFg4wpO9oleoPKl5rskRBB+T0PL06sgW/f5oytiZmXAk2zz2O7byBfu6tLw745
	laRvLS4oqsxu2jVpqIxC2HcRxi79feJKK5Tr7lXMgivIwk7MPhP74dbrNV02zxkZ2cFpmuZvhbFLw
	xj6TUYDqZ3gNPmLhjKMO4qrDwIIvgA3ncj4CQfmj5Ivp3zaZHfjN71E0kygxst7fza/woNEmTGFl+
	Tk2SyY6NVLKUZ3hoT8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignUl-0002pq-An; Mon, 16 Dec 2019 10:20:55 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignUb-0002pG-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:20:46 +0000
Received: by mail-ua1-x942.google.com with SMTP id o42so1868031uad.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 02:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MkbL1d/SzqUihRGV9EGxMppkoVLFMzfPIRPZl16fK20=;
 b=tHE/FqAndfXj+pF3rpKcyZB3P2mC/ivGu+RuNn7h6U8fH6CwMbbwsVUcsp/rTQHd7w
 SnHZW/qVxTnvRge2orkhtQ9Xsf73XYevjXfqvfdKDkG6TobwnqhLBRLLAqcTfYe0WEYP
 TemamdhsBonUMSlcJPhpPbtBP1PxXnbcO6gUB921WNamWplR0wZicOySkVBqhLyXZ1Yo
 5/Wicv3VUbruyGwEo/ySRP7hgpg/Rx9tzYgwHjF/x5Tt0Rb19SDBDqLbx7dadCPp/2w3
 55sfvzdVwUdtHbd82oEpCim18++9O0mztUBgkt/XgEzxg9/Ghg+3d2LhqjyhP+4MBMHG
 ziSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MkbL1d/SzqUihRGV9EGxMppkoVLFMzfPIRPZl16fK20=;
 b=OUtjcZP5zzNA6sRXKuaivEY2eIvsRgeNy8ILlvD8JlV2PZq80H9H1t6lYiJ4oxevxH
 vBHRd2SQri0GD2nuzh+4ay3X6l/zRhx6mVqaRIZqKjpCaYzU+H4/rX6q/x2QD/+tgfHX
 xSCPvgchjt1Y61RkTczMyZRF1+RskQJSB6Qo531x3HdHdOP23fIJyvxoSB9lcGm6gvH8
 FB5yoGPL+xr27qf/yvggXyXWa1gljRYb07qSgvhZ2Qs9AcBkzBG8mtMuko1eq56uOD5t
 5Km8OO+bFZICdC5oCbTq2iXQJC1+xht5n9kqAdIuNeLE3Om9huvN1OokHP/p/1IvatvY
 h3aw==
X-Gm-Message-State: APjAAAXIJjh2U2SsYozRUyfxlJdWQaE5nBjl6ZnBN7e14oE/DzF06Z7C
 o7gL7aDI3pX6se5kixGgs8vi/cdw5WA3EgXvuLTvrQ==
X-Google-Smtp-Source: APXvYqytRcaEhtLm4UxsiP0XcQ5WA/lllFA43ewjb5KkmW6LveWszgSmmf6NQVq50n36TRexdsgdRA2S2NxjbZ7+23A=
X-Received: by 2002:ab0:7219:: with SMTP id u25mr23212467uao.10.1576491644556; 
 Mon, 16 Dec 2019 02:20:44 -0800 (PST)
MIME-Version: 1.0
References: <20191215011045.15453-1-navid.emamdoost@gmail.com>
In-Reply-To: <20191215011045.15453-1-navid.emamdoost@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:20:33 +0100
Message-ID: <CACRpkdYZDj+rO0WL3wFtVM0Kosx5LWrKDLkUvmqV4EVXtSeO-w@mail.gmail.com>
Subject: Re: [PATCH] net: gemini: Fix memory leak in gmac_setup_txqs
To: Navid Emamdoost <navid.emamdoost@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_022045_683337_0DEC0C2B 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev <netdev@vger.kernel.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 emamd001@umn.edu, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 2:11 AM Navid Emamdoost
<navid.emamdoost@gmail.com> wrote:

> In the implementation of gmac_setup_txqs() the allocated desc_ring is
> leaked if TX queue base is not aligned. Release it via
> dma_free_coherent.
>
> Fixes: 4d5ae32f5e1e ("net: ethernet: Add a driver for Gemini gigabit ethernet")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Looks correct to me,
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
