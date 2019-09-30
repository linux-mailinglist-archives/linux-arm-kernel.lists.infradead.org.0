Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDC6C1D19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ri6hyf2l+sGVhvIFLK9KuY8anqb0iKf81irELPduPB0=; b=PmtviYOrOFeM4sU/bN7ADPqthm
	ZCdDZeiCBQYYciL5rGOE/XmQ+n+a0zMVXww62v/2z1rXj4QiQ9a0cdlmS75sYDAw8ok6rtm97E10W
	32yKHM1Mnkl+sUxP/fkUT4zf/6k/3xYt6F0Lv9DNeL0Mqy26fUQrKflPrquvi9hDNLbpjLxSWr0FT
	2ekU7c+wdFG/gSW90BmbbjjFg6AXj6juu/IdgakhGlrFAmhBFpPjtFAlO88Y9kKrUWmPHR00JothF
	PR7uTBbaX2Pf16cHnvr8EQpW2nVPuBewEDxhRNJFBMTGQE+1i8gimNH8r1McyMgJYyidhrggpZNpo
	1s8LKztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqyX-0002TO-QP; Mon, 30 Sep 2019 08:24:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqwx-0001EG-No
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:22:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id m18so11661405wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ShSdTe5Qp8z7m+jUtvQKDuCvb0VtDo609FCfYvndEno=;
 b=exPnKZEYefJsNZMJjFnNmAXEv7dbG77oiHob/ywzmo4aeZfj7pFMylI2JIvFMtFjgz
 B0Ww5uxtxnbhyX3kcs03yySNcCTd2yQp9hgO5sZPs+M1dBZRpgnUz0HuKuoFHAyzNdAT
 Ay/W7zajAfCPVhaes66qjL57Qa8KBqYrGfmMm8viotFX+RiSbbh1Wh7h/S635yvrnk1X
 inAQ83q/tdXfSyKb8MedQCC2lK2kaCriTxVwcMqt/XG0ceO3g6NjOLaKS9Ao1MsGaQhv
 dwEwQHnevgCD3DOW4dRIx6XbE7NRex1y67oDlTVh4sDKiBaZJ6Mgm/WoPiNbYCId9AQs
 JXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ShSdTe5Qp8z7m+jUtvQKDuCvb0VtDo609FCfYvndEno=;
 b=PrWOdSDbLl3jkkpn68TufdkWHvoi5tdCJZV6rfrFC9cGBlQGJH51U85+u1j8ZSSYdl
 4zmXd4UdYwtOq4NsfRBy6FE644nveYNnCGphdMiPZxnHdqzNbnBG/BvEkCA7fLa7baOO
 3+TvO5UkQ9wjNQyqUXPRCZWzazv27Yjcs1uRblLJVZcf7IyjEZeagBf9GcYENxOOEE2l
 0HMHn8rcRAz4Rux34X9GBI9oWQCuNern9tllOV/DBy3IgbjPAhJ08IZQDLZtVobMut4h
 48JCHXYTzoOIk+3HHdJqkPa3fQCHRiqbACctzyHE9PSbgbQviFWB6e3T9jDopc2ozz9D
 O4kA==
X-Gm-Message-State: APjAAAU3NfOuh0m+vpbz9nioXNr8RoJNEi7W5Ob6XXDOv3WP9dw3wO7S
 06VINXat6oZuTx1xV2AHZAWs2g==
X-Google-Smtp-Source: APXvYqyIM0BrCVvOADyXCOsoNjMjmm0DeuCYw4kWcFR08dZvDMjsgIDwDmqsdt3YFbfjPrmhjktI9A==
X-Received: by 2002:a1c:cbcc:: with SMTP id b195mr17236045wmg.80.1569831749974; 
 Mon, 30 Sep 2019 01:22:29 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l11sm14198165wmh.34.2019.09.30.01.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 01:22:29 -0700 (PDT)
References: <20190925213528.21515-1-khilman@kernel.org>
 <20190925213528.21515-3-khilman@kernel.org>
 <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
 <7hwodulvu6.fsf@baylibre.com>
 <21eafa69-fe26-2df1-d187-cddfe5b37951@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 2/2] soc: amlogic: ee-pwrc: ensure driver state maches
 HW state
In-reply-to: <21eafa69-fe26-2df1-d187-cddfe5b37951@baylibre.com>
Date: Mon, 30 Sep 2019 10:22:28 +0200
Message-ID: <1jd0fi19dn.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_012231_806217_9AEC4C1C 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 27 Sep 2019 at 08:37, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 26/09/2019 21:08, Kevin Hilman wrote:
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>> 
>>> On 25/09/2019 23:35, Kevin Hilman wrote:
>>>> From: Kevin Hilman <khilman@baylibre.com>
>>>>
>>>> During init, ensure that the driver on/off state as well as clock and
>>>> reset state matches the hardware state.  Do this by always calling the
>>>> drivers 'on' function, and then callling the 'off' function if the
>>>> HW state was initially detected as off.
>> 
>> [...]
>> 
>>> I don't see what you are trying to solve except simplifying the code.
>> 
>> Simplifying the code is a worthwhile goal on its own, but that's not the
>> only thing I'm tring to accomplish.
>
> I still find it ugly to power_on a domain to power it off right afterwards.
> The issue is with the CCF enable handling which is not in sync with the
> HW, if you boot with an already enabled clock, it won't be marked enabled
> in CCF, and it's clearly bad when you want to have a fine-tuned gate state
> handling.
>

CCF should disable unused clock so, in theory, you should not have to
call enable() then disable() to get things in sync.

I suppose the clock in question has the flag CLK_IGNORE_UNUSED (one of
the gates) ?

If the CLK_INGORE_UNUSED is becoming a problem, it would be better to
fix the clock tree rather than adding quirks in consumers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
