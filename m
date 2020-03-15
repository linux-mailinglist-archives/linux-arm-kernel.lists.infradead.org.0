Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D52185C54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 13:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAxI5JZ6al/sfa50RI4R+7meBMY7DyFdAC7cheeD5PY=; b=MMhGKZwj7iyglQ
	H2yNbJCk8aSuJZd1XMuLJyLp7uNML+YxabU9WvUiVF6UKpnS/RGUcUIistgpBzZEhxoTWR5SL2oEq
	rxBtNktUAYJdaEOLeHEVDa7nSR4zvael6fToz1qUaF7hhP7Qk9ZYK+6JHYZCa0+IUfcSptg0hl6qr
	ZK+DfSwEG4uy8e4vhChxCnJeOXRAJ6kd98EdWelidLKQi7o4DINgh3EF0MWHytFTwc5KU0rA1Jykj
	KMsgr0kD4iXKLlMBPWaaFtg9xik0Y1AJLcZng0rM3opoW4jJh08B+HV1+Artjcmc0rBlJTvpiLOj5
	iZFg2YcgI3Xk7tiMhPEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSHU-0000oO-IY; Sun, 15 Mar 2020 12:22:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSHI-0000mt-18
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 12:22:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id z12so5798397wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 05:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=vha27SiAYzAhcDNBs+Dl9n27oWyXGNvtt3qs0cPd6sQ=;
 b=vdx/AWpbJGf6eGvcUWhRBV5AGujIONlqn5ljlh0AgQ66Phu9FKyLyrmWy/dwSOhasL
 JiPWXsOZNSIAh8A1Wh1pWA7qgDOjt1EFP0EB/r+auvvRyG+xVTnXol7hnamr1lIZwvOe
 HaadraWXgolGcPtFXWLhEaD5NJbjlJh3oMnL9DOpFK2M2jU/D338nlC9jpdyrrfmIAxs
 S4EbWrB7Vlkjo1cKRTeq+NbcrV9RNCiXTyvKOFpxfuHfRf4f5FMYoFOJ6UA0BBdnFb/m
 hR82zI96c6qAGYF+9oq2mSz+7ZVkMPxoixusUO2LlJg3Ow3eKhlB5oIVPkHRHQcP5AYl
 BbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=vha27SiAYzAhcDNBs+Dl9n27oWyXGNvtt3qs0cPd6sQ=;
 b=ldzTZ5m8D+QBiyfHRem9gqWgD1cbxUW4lHqRI1mtRlFURNtBLalPiwKcEbwRkqg13S
 wQmYITsqCzmcA//WymgDPGUURok4tIIy1a+aDgmp6BX9NBUU0HIR3Yrf/XvoFOR/kSUq
 4FIvwk34u3VV37h96rL7Tc8Z2VKCTZA0eipNExUc6gL5uQzSZj3TUIXwtACEy9a5WU2Z
 j9zjQbASsdxDrbbA9da9M8NG8s9jSF8wm1s8JRLSe9mdKpEeJC8roYqDsbYLb8f311o0
 kz48lo+Ch7dQvVYjsg6J0MTgkjtqQgJqC+AU2Faozm2sB2XpGh9KUFCc3xmuC0GiU9NZ
 k/Yw==
X-Gm-Message-State: ANhLgQ1s4LdeqA35ekv7S7pKJ1V+MkQqnGDQZORjixDhBiWnM50BIF2E
 VU4OL2hOzf17rG5Ik4yQJ4xfuw==
X-Google-Smtp-Source: ADFU+vtQnU95n7qy8u75UCKhpXx1uwrD1M1UBVCsAjszEJYzX3P1D8bBHGSvVEKd+7LWflB5zO4tYg==
X-Received: by 2002:a1c:a950:: with SMTP id s77mr21714742wme.176.1584274917762; 
 Sun, 15 Mar 2020 05:21:57 -0700 (PDT)
Received: from Armstrongs-MacBook-Pro.local
 ([2a01:e35:2ec0:82b0:9df:5498:f5ea:8be8])
 by smtp.gmail.com with ESMTPSA id v26sm7733803wra.7.2020.03.15.05.21.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Mar 2020 05:21:57 -0700 (PDT)
Subject: Re: [PATCH] pwm: meson: Fix confusing indentation
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20200314113524.23031-1-krzk@kernel.org>
 <20200314214347.dun6ith5zamaa3m6@pengutronix.de>
From: Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <658d2096-8a2d-7cd0-b4fd-88f4516ac7a9@baylibre.com>
Date: Sun, 15 Mar 2020 13:21:40 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200314214347.dun6ith5zamaa3m6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_052200_211929_0EF2EF75 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le 14/03/2020 =E0 22:43, Uwe Kleine-K=F6nig a =E9crit :
> On Sat, Mar 14, 2020 at 12:35:24PM +0100, Krzysztof Kozlowski wrote:
>> Fix indentation of return block.  Smatch warning:
>>     drivers/pwm/pwm-meson.c:139 meson_pwm_request() warn: inconsistent i=
ndenting
>>
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> =

> This exists since commit 211ed630753d ("pwm: Add support for Meson PWM
> Controller") in 2016. Added Neil to Cc:.
> =

> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Thanks
> Uwe
> =


Missing

Fixes: 211ed630753d ("pwm: Add support for Meson PWM Controller")

With that

Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
