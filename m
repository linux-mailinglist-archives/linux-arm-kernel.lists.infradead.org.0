Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D847149310
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 04:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCiRQIUuel6Ow7jNnDFwQbunTf2yIy29FFLStezw5OI=; b=Mbcg07AAquYMSL
	jSTajEF5a/szuhdpTEOHiqcxq1SUHReD32XgCmJUh9SqN39oZXWtGDAUbp8/wXRKRGMKFbDMhvIai
	8KYHXJ+Bj4tO1iQGU5ch5g889G4/MqkGycHiF64n0swQkcILUGoTiV3my9pYsGAXwLRIdfPsdD7+4
	JDlRzXY+FIDenWSye8OHAKRWFmhAxnYBvNzn8+YSvaHofB1WNTBsHHFjOD8OooJqxk6I2DomadQFJ
	bjuk9kPkOwhBtbAYwjLG5cbOEVj+6TucWsdTI9Ta2bo7DO9gjbsc6Uw0u+pcfJL6rlAbZZqKMZ5oB
	cZYqQwQuIpX9PHe2k5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivBlq-0001MV-35; Sat, 25 Jan 2020 03:06:02 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivBlh-0001LT-BR
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 03:05:55 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so4752338edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 19:05:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TTa+L2/mCEHdcfSemar+ubHNRvfrI19X4+IUtB5uVqs=;
 b=n5CXO2umB1RZ0abfo2xroj79hQ2EBXvgOP2Uj7J6dQU0xvfk6Lu6iSt3a925N7SVfm
 zXow9b8vAMpimHUoPfnqibcRygcUk0VbKOQkZ8utsGG7+r4WSxXdtP7HeSny6VlFHzAy
 SzhycSSuN7oNzm41V5Fkn337vIqwsBTF3HC2lduyyF/EDuXTsJW5EZk/MEJYcmE4CMa/
 hjxIT0GXupPmErjzvNW4euonPkjgU6LA3xDu9aI0suzfsm8+LTY38IOB7eynwg+u6KgL
 VI/hQqAU74muuBOsn+vPcfq/vQOPF69zrWyeZcyvixEJBzfcWKt1kcC1yTcfnpHUPwRz
 64sg==
X-Gm-Message-State: APjAAAVlaHJxFqogu0NLQONcAx4hqcnKo+YNkgW/G5A6r2aaiR9HWCmJ
 cVBmRV6v636oxmKGz8rKNUa0d0RsVfU=
X-Google-Smtp-Source: APXvYqzBSwNVQSD/bMC3WRJJRO6p/MzI0REJTjImQIjY66Dv/3IAEjPKLmQFs9QF4c7bk3uRiwvaXQ==
X-Received: by 2002:a50:a6d9:: with SMTP id f25mr4999915edc.280.1579921550577; 
 Fri, 24 Jan 2020 19:05:50 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id bo15sm86700edb.86.2020.01.24.19.05.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jan 2020 19:05:50 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id q6so4413599wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 19:05:49 -0800 (PST)
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr7944610wrr.104.1579921549086; 
 Fri, 24 Jan 2020 19:05:49 -0800 (PST)
MIME-Version: 1.0
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
 <20200124232014.574989-2-jernej.skrabec@siol.net>
In-Reply-To: <20200124232014.574989-2-jernej.skrabec@siol.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 25 Jan 2020 11:05:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v6680yWT8KtjK0uKM00+6ed4NoPpsMaDyfYERwOXgb8Vbg@mail.gmail.com>
Message-ID: <CAGb2v6680yWT8KtjK0uKM00+6ed4NoPpsMaDyfYERwOXgb8Vbg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/8] clk: sunxi-ng: sun8i-de2: Swap A64 and
 H6 definitions
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_190553_394477_E49FDF7D 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 7:20 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> For some reason, A64 and H6 have swapped clocks and resets definitions.
> H6 doesn't have rotation unit while A64 has. Swap around to correct the
> issue.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Could you add Fixes tags for this one?

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
