Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19513F278B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 07:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8gaHu9A8/arYHY8Tk72QasmQlIbDG6tK9684RacS1o=; b=hgtGlTecROa6mq
	Z3sOnP0nQpa4Ku9I8P3s5IO23F5n4zDNFqD5enm+/PLQ6FBXK+m2+rTi6B7Aryk7tXWzvnNJ93Hcx
	GB03gJzwVLlKu29+Q6wOr7vmfwQZck686IQ/l/H/lRx8RlecfneAtmwVtUJ/iiLLcM/Etu+05YWR1
	sO99AETo69kzumFUemHxlPhp+sHVRfbe79uK2vIKIcTDn1LknAVN2XMezBOvMTA2FJAUp+aZS/gk6
	EkvWgLMqarPjwQuFVUwR4B2SEzx4rGK9QSAdI+LSE0JeGXg8PtbiGFfbhZ/iPxVpDPnqZuq8UxZBR
	GH/FL5X3p0NPQHqQX0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSb2z-0003HC-2w; Thu, 07 Nov 2019 06:13:33 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSb2o-0003G8-Cw
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 06:13:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id k14so919315eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 22:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b6XwzsC8T7k6SsHnaEqnkGYpU/j8kgJJS6Ga6U3GP2U=;
 b=VIWMNYO2uJZ/ucdnjhZQPeoGhFSDz7GxnECCBYJyaZJo/aA767Fx5wQZ4G/kd3863l
 WR+hwk509J/YPOvBRlwBfmWKJc4lub6uj+fHcMJDnxPfKLwVzsJP8m9F7TgmUe/ySThl
 zbAwfLtePYTJyT8qGRn6P+d2j3706q2iMY1q841WLX7iBaLfO1hd2p5HJoao2wa4QT0X
 mnASaMI2n5wraePRgoghikEcm95gEjyWQFfZjxHckPpJyD0HOlrKPZ9kSryeA/OA7uq1
 bvA/UwDlyJOredDzeHpZaB4mqzuryo+geg847EC/h+YGoK2FAL2fPej4N0lfUZPjkPIa
 2GRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b6XwzsC8T7k6SsHnaEqnkGYpU/j8kgJJS6Ga6U3GP2U=;
 b=snArdt3cEAbx7sVTMgXdiRjOM/e1nTJbY3CCzOYiWFalDI7TPEfkEhPXjJ0JC4PwzF
 RnZsop13EfP+nizLRqT4uK5i8pd5T2Y43Pa6SnKvZSWUnf86fzVr8PAwqjd8E2W9rzgA
 Ncla5MAWiyWKz8UFNMiHneR+q7JEIQUTDHhtmG/R1Ave2FMOiEcDzvvTBegL/6kYNUVb
 WmyA+ctEq3K32g5x7ZNwzFX11Qd392Ow/o4xRwV1MWuLKwC7uBBPgFOaf8KZzI9iO8DU
 slz+7N/377Rxw3M1JR6FdHbFOfNbNoHVGThxnb0NOoxcvrUVBZ8iD/JmjCdSl7dkzotq
 iqSg==
X-Gm-Message-State: APjAAAXFE8JvFBGQXp5g7cM4eAH0BpumRpdjhr/HS/Faxnc7YtJXJyGA
 Eu3RL4ODwiPOm/W4bNfFoB5ksbe+LMKZmbJX07QuVg==
X-Google-Smtp-Source: APXvYqxj/w79RiUGYwYctucmAuZQHkD9r7iRqtiJ1jcGgNDephBLrz0OaK8DOQ1VZYQaV1p3rxYY1qHMkE/UXCrdf8s=
X-Received: by 2002:a17:906:698b:: with SMTP id
 i11mr1353680ejr.97.1573107198964; 
 Wed, 06 Nov 2019 22:13:18 -0800 (PST)
MIME-Version: 1.0
References: <20190219012447.5900-1-sxauwsk@163.com>
 <CAKfKVtEwHcydp=+hNhG91h3qbMoYOPq7jEYjbuAVrWXT53DC3Q@mail.gmail.com>
 <2019110516474778997625@163.com>
In-Reply-To: <2019110516474778997625@163.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 7 Nov 2019 11:43:07 +0530
Message-ID: <CAKfKVtH8OvA9Hku8V2CxRkX8hiouLzsEJTTDQWgBtQF8PGXyBQ@mail.gmail.com>
Subject: Re: Re: [PATCH v2] i2c: cadence: try reset when master receive
 arbitration lost
To: "sxauwsk@163.com" <sxauwsk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_221322_438626_6746B10C 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shikai,

On Tue, Nov 5, 2019 at 2:18 PM sxauwsk@163.com <sxauwsk@163.com> wrote:
>
> >Hi Shikai,
> >
> >On Tue, Feb 19, 2019 at 8:19 AM Shikai Wang <sxauwsk@163.com> wrote:
> >>
> >> When the adapter receive arbitration lost error interrupts,
> >> cdns_i2c_master_xfer return to the caller directly instead of resetting
> >> the adapter which resulted in the adapter being out of control.
> >>
> >> So when driver detect err_status such as arbitration lost,
> >> then try to repair and fix it.
> >>
> >I am missing the issue that you are facing.
> >You are having a multimaster scenario and getting arbitration lost.
> >
> >the current code would attempt a retry did that lead to any issues?
> >
> >Can you explain the issue that you are facing?
>
> Of cource,  The following describe my situation.
>
> In my product,  Touchscreen connect to zynq-7000 XC7Z010 by i2c bus( Just connect only one i2c-device of touchscreen),
> when user tap Touchscreen, Touchscreen interrupt send to CPU and notifyed i2c-driver to obtain location data by i2c-bus,

So it is single master single slave.
>
> when Tap the screen frequently,  sometimes CPU get interrupt from touchscreen and try to obtain data,  then detect arbitration lost,
the arbitration lost is surprising in non-multimaster scenario.
Is there any other master in the configuration that we may not be triggering.
Or can  you probe the lines?

> Although i2c-driver try three times,  it's useless.

You get bus busy? what is the issue.
>
> Actually i2c clock-line and data-line keep high, that mean i2c bus free.
> Once this situation occur, i2c-control did't work anynay but cpu receive interrputs still.
>
> I am sorry that I have't found a good solution for this issuse;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
