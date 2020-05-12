Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6B1CF2D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ad47zMzS0qlsYF45zxX42OBVRIVGauc1yoWlEsUgDbA=; b=V4WRartJX8RvO2
	5+pc765TPJ3YDmrMkTWkoegWpTNaIxQzhJeDZYLClgMma4DsKYSbGRVsS59zabBA+LM24GqoTwu2H
	K65E2ziiHO2qRwDmP6NCW2POtQPGx7Ia4KaQsqj5bxAPQyo7vk1Gx8atj9qe0AgEMyo5xC5ru4kOx
	Pyfu4H+2HsNQ9UPEHmf2G8tQrzZBJ29MDWaLQ+XroQ99YeIeO8xg5Jr0toqo9xYmcUTSM8ac50pF+
	rq7wEIs4WgA/HKhmg3Nga0SiU0RmYdIc98UNK0t8QcfI2Gf99mjlnbTM6dWGGwdmeHSSTDeH9wMm1
	zMQ2DFVnKg3/IHxrqqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSSK-0006JO-7C; Tue, 12 May 2020 10:48:12 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSSA-0006Gt-5R
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:48:03 +0000
Received: by mail-pl1-x62b.google.com with SMTP id t7so5220460plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 03:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wx1X8iNuCSGQdwmyumR8C36ztcjWhzzV8K++lJgo8hU=;
 b=QjPE4jm33jKmxgwOIt7p/necO5ARxg92dLx8nJOnQpNPFKRSk8OdjS7NAn9aZFWqbC
 uHjMJ1DfN38KlTHpwW67PTGOAsI/2yWrcyKZVrFRU3GUwc7RC2VrWDyMW5IxdG639yM8
 5Xi40NvaGfGzcMUJ2OHrtQDiz/6HxF74UYCI0HHqcmNX9Yn9tsZCIlvCb3HStJJd3Pq/
 ahPOjflzkgs/gcEGXqyK9ccqgee2PtyQYDMLTqyFb9csmo/zOYOdtqxx0weUXYeu/9XN
 n4Jxnj0yspqBXPX8ygoZwPaKZTwjX5wmtDpkzmULGr5ZrVw8SgJTJ4RfmA3UvcjUAVxl
 13Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wx1X8iNuCSGQdwmyumR8C36ztcjWhzzV8K++lJgo8hU=;
 b=JfaDjYuf5LHvWgIoP+vKhT+nflt72q3tkOCaHz8AsNsL2Z8wiwebRpFFQkTjoY1HQi
 M04o52y2F1U/jbLmNMjxqhvvsYZcTt2YGkzVu8frkMwHHAABd2xXIcQkrRXanCaDcpb8
 ELgfHzmfeKie29JGsWEUnu5Qp5iNM/1fBF4kE9l9WxAgB4JLkUhKRYHS0xBZzgYRM9xh
 WUasFnrtj6nvV4YD8eyJZxZ+j1d9eDflawqZWkJFNkPbE7g6mOkK5TcbnBCEvZc97JFE
 hNHuzEzMCfe/6Bp0u0nJ+PUxYYgNOIYaWzG1ksSGgtITejIHQ9YObrqaNwL7gkddwrKw
 wh5g==
X-Gm-Message-State: AGi0PuZ2d+xqCqvgIJj3tcbBAe1H1V02vmJqlAJpZgZlqdcwqeLfXCrc
 aJRkHzmTg1pGeDGZ2gM2dbM=
X-Google-Smtp-Source: APiQypJ8n7vl3UmuVLMMPmxQfPkg634RcA7SzDDIjIaR/NI/XMDi54GNxiWnAUW7l0Tigt8jHQPcrw==
X-Received: by 2002:a17:90a:266c:: with SMTP id
 l99mr25541280pje.186.1589280481202; 
 Tue, 12 May 2020 03:48:01 -0700 (PDT)
Received: from localhost ([183.82.181.65])
 by smtp.gmail.com with ESMTPSA id a196sm11832283pfd.184.2020.05.12.03.48.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 May 2020 03:48:00 -0700 (PDT)
Date: Tue, 12 May 2020 16:17:58 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200512104758.GA12980@afzalpc>
References: <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_034802_240598_CEBB90C1 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 11, 2020 at 05:29:29PM +0200, Arnd Bergmann wrote:

> What do you currently do with the module address space?

In the current setup, module address space was untouched, i.e. virtual
address difference b/n text & module space is far greater than 32MB, at
least > (2+768+16)MB and modules can't be loaded unless ARM_MODULE_PLTS
is enabled (this was checked now)

> easiest way is to just always put modules into vmalloc space, as we already
> do with CONFIG_ARM_MODULE_PLTS when the special area gets full,
> but that could be optimized once the rest works.

Okay

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
