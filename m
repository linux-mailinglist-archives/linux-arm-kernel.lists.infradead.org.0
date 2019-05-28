Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15DF2BDED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2Ttk9KMQqC9VfYQp9360SnJiK6ire68pslAc2MGqLA=; b=lbpoMeblnmO7l7
	Cl01zNN/Rnq6YjOx7ESbv99gi9f/Cd3Mx3pErLRcWfQAIAF9TykzjUFoFuJqFz1LtS1sgR4ebBS0r
	J8ZJlgndBHT/AJ6Wgg2FMzyasHxoBRkbSp7cnqAEkYOOQy/f9GU+qMw7nQOTZ2p6/iZHo0hFuMv9M
	vxu1jjW4k4B5vTQhamh/g4gQ/ggl1R2oemqPfI0Tp/hry2v1MaoJFaPG9i+0WTElsgymf12rlUqsD
	ufyIPghF2bzycZ7RzFo0xzBBUsu8litamBWdVtqNg0z407ZQkCz74xibJw20UPhnalnTuBPMrg6Og
	mE+EfUS2xWWtYgSRe/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT5J-00087u-O0; Tue, 28 May 2019 03:47:33 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT5C-00087Y-Ug
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:47:28 +0000
Received: by mail-ed1-f66.google.com with SMTP id s19so1395249edq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nf6vYvvBYbn2d1YrRuYhMm050xJbRKaDPXv2H4eHIRY=;
 b=aoYHZws/9ns2jEumKxJwUq9W2WR3uYJEDGkClzB2uQgrMGDqNv5MnA4ylWPyC24Nmo
 YyPnpwDAS2UHD1jBLpe/U5sxHebe0qDWHLUMFNCfnR0GRE70tSmLemw/xmGQfOcG1Qaa
 hcBRXwDJUhTXCYRQdio4XrKqtyxEgyRfDcG4VGHiKMs4SycNL/U52o5d5uuEVn5HnpNz
 0KTCykO8cSstGfbPU8cHjNXWKigfwNh8e0bitoIdG/7o3zTdXXbHARaPmmkARShvJ7cm
 b8AZuJfpbprbiv8nF1HDlczIIbUBS0AN6xn3+4sX0d4R2CS1BRVoJzSrBERAoT+DH9Vl
 nSgQ==
X-Gm-Message-State: APjAAAXNMDpNFgRljVCvYO6AQXib/YreNycM6PiyfphxquNdaq2Ah64C
 rT1IqBOd7XrFCetBdKqhm9SFjOcpe/s=
X-Google-Smtp-Source: APXvYqw1tEpnMVgRHF+Z/FCOfoyOzOy6FA5bR3qSMZwykAKzjDUQLDoBc3C39iIqUgWMI/eu9WDpiQ==
X-Received: by 2002:a17:906:1dc7:: with SMTP id
 v7mr1393947ejh.63.1559015245156; 
 Mon, 27 May 2019 20:47:25 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id q24sm2031691ejr.35.2019.05.27.20.47.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:47:24 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id b18so18495936wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:47:24 -0700 (PDT)
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr23575243wre.9.1559015244132; 
 Mon, 27 May 2019 20:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <632517d48479da8da8f665ed511c24757b6d488e.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <632517d48479da8da8f665ed511c24757b6d488e.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:47:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v65UQtnN-dopOc8AcECFkCVHtaxtjgFiQ0+1OA_VUjKTuA@mail.gmail.com>
Message-ID: <CAGb2v65UQtnN-dopOc8AcECFkCVHtaxtjgFiQ0+1OA_VUjKTuA@mail.gmail.com>
Subject: Re: [PATCH 09/10] ARM: dts: sun8i: v3s: Fix the RTC node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204726_983577_86BCF689 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> For some reason, while the v3s has a dedicated compatible in the RTC
> binding, the one actually used was the A31's. However, it turns out that
> the controller is pretty different (which justified the compatible).
>
> Let's use the proper compatible, and use the proper binding description as
> well.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

You may want to split out the clock-accuracy bits, since they are unrelated.

Otherwise, for both resulting patches,

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
