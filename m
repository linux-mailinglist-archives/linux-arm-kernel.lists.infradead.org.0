Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0907F10B0D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuUHbVHuu61xGe1SzBAfJfvv3mtdYaAIK4STV8oQuS0=; b=TT2c9558dCTw5T
	Ho5WrUIDDA5z/blFOGXea8AobLQzQutRtjG34diOfjOC9NYd93V60a4bO8GVfLFhTyj9J0X6Jdbx8
	duIckST7Sqd+QBQz25oYNPhCybr535g/Apv3uOTtgHl0aLm3M6bT2Ieycg4WRvQgfvnQgCk6on0oE
	xsnpdH6cqTN6quUpi7M7iTxxRRT+LLV3NwG3uNxuin/O4Fei36GW+MdSQgsir/V74BXj+6usFd8fP
	GSa7lCoNXfUKNxSsYkGYKVEJHjSP0SAt1ryuQbO1TGtrrkifn2voCkmOUe64INFWaAOoFxT065Xd/
	2i5U3gGFgABa2NoeqnXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZxw3-0008RS-8M; Wed, 27 Nov 2019 14:04:51 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxvt-0008QG-4Q
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 14:04:42 +0000
Received: by mail-vs1-xe42.google.com with SMTP id y13so2836353vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 06:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eWbiZLcVg3yKNvRJyVTmALN9k4Y0EY2mN+Zq4Am42FA=;
 b=Whx3LXllG7YlyhUaQJAe8gvfoeT1Ts9ucAmMp8u4DxUGnAx17uJIlI7NsoWdZ6o3kC
 ty1o9Nyngd+Uxx0Nav4CBv4krtGqXUP/XV3H7l+arZw/jsjSMQ1PO6pNpUF7LWZ5NV7D
 PQc1IZjy8SsfZ/on1+IusKYYtvwJlOLj5H9BOkffHG8WwcgjJsMhLSVZKfYWeHfgQvBb
 RFdLXRLMg7VpQMrQkl3GM/q1SbGhYlQXF+mQfWITp4FthDyb6C7aVFs2qq1ppPWPvV+U
 fMSJeDVS8iYI3j7lyym7I8psi1ue2Bn2TJLYffubOq4HLvknuZHQhIt1TmN5sbOkEoV2
 iiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eWbiZLcVg3yKNvRJyVTmALN9k4Y0EY2mN+Zq4Am42FA=;
 b=ee6FTQwWXCIOv/lb5yt8rRqDaDmcX4tKuncsRu5OiXMwT9KhVREX/XbW49tfxyGR+g
 9ls4KGZ9ynX3r8LQ6zEtsdOjn3ynVrTNbD4D9LVKt8ulypp0/loaWCDavWrXimGGdhEH
 DmZXVIa+bNUeJ/zaxJvLrlqcAh4EMc9r6obYtpRWgzh8asCNZPFrJJhiX0NLPQHPmLWK
 z+p6+gjGsC6ysQYwYLB75IuajutvPjwIj7yTlKkXBAV3n0+bVkS6PWJtSguVnevHVAKH
 bgi1T3OFkK2jHDd9qAnLl9Ga5pUJaTpaRvakmc9c2eoFIOgQxEBdhjEZ9bVGxBK5ClLm
 qRfg==
X-Gm-Message-State: APjAAAX/E2F2U5Krbc4VYXqW6JZr6kkG0L9yqP/PNYK/A06rL3HQCqHu
 kPaAwe9lcQXba6BQaJMxQP9GQl+9CMM5VcKuZERVcw==
X-Google-Smtp-Source: APXvYqwUBezBPS64rvZqCVzQ2FSAeXsflVWheez4D1ylGu5BmqOHM8CYVLFVkptB+UD3PAK30c8wWkdBbouTu/YVdl0=
X-Received: by 2002:a67:de89:: with SMTP id r9mr15986369vsk.115.1574863477004; 
 Wed, 27 Nov 2019 06:04:37 -0800 (PST)
MIME-Version: 1.0
References: <20191126124738.77690-1-linus.walleij@linaro.org>
 <20191126124738.77690-4-linus.walleij@linaro.org>
 <20191126181418.GC12811@gerhold.net>
In-Reply-To: <20191126181418.GC12811@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Nov 2019 15:04:25 +0100
Message-ID: <CACRpkdZuivF4P45rO6OifE82i-z-pw1_sHM+Pg7DOGnnK4aweA@mail.gmail.com>
Subject: Re: [PATCH 4/4] ARM: dts: ux500: Fix up DSI controller nodes
To: Stephan Gerhold <stephan@gerhold.net>, Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_060441_202703_47C477AA 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 7:14 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> On Tue, Nov 26, 2019 at 01:47:38PM +0100, Linus Walleij wrote:
> > These nodes should be named dsi-controller@* so fix it up.
>
> The device tree specification suggests "dsi@*" as far as I can tell:
> https://github.com/devicetree-org/devicetree-specification/commit/424946c228baca7b49df2be8fdd8ccda18a8b8f6

I think we changed our mind, partly also because I am working
on a patch to do YAML validation of "spi-controller".

I guess the devicetree spec should be patched too then.

But I get a bit insecure so let's check with Rob.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
