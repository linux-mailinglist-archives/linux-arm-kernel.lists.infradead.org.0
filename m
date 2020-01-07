Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D96A1320D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB12Jc+NvWDbcFnjFrHfGF8ZKytttbh6RiowdZ96ISI=; b=CMHqUBTMcYkPWK
	6HxEUTed4VqbFyCVNU/+Gxi9dQdPo23Rto+xrEv2Xdu90qpezNh67jG+sA/sNBHTxfN+to3qf9yR+
	ve3khXKqv0GQao+3kzkrDv0JRMp788IkOQg8igahLAxAAUQr+lfzC4fjJYT6/WLnqq2/QeAKjV7U0
	RppFKkH9fjDbjybI5MrqigFuze53jVUNZgBTblmhFdgihYr3T7JvcFBsCLQgdlVoegOJLiPHnxd0o
	ZH0qa841qer9xFb0YVDEi1XGc62sH1ufboBYjQqERUCVtddRnDohqXiw0aZx14Hh/Tu2s2AJlbQqx
	hLkQCEQIbmCaTpS9ZAww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojnl-0008Lg-7K; Tue, 07 Jan 2020 08:01:21 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojne-0008Ks-As
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:01:15 +0000
Received: by mail-ed1-f66.google.com with SMTP id v28so49554193edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:01:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=17ic3/G09jy7yYXFGdQ26exOrAH82ahIbhZQJdHdte4=;
 b=RJFozlJSC+117P6Jst3wvNnJllkae5xTIywwG7A6CNg7QHwTUYxx6EIKl4jDXi7mIt
 KnQA1AW3n8JVTboU35ebIIX6dO1DKM6qyqjzbeJQ766T5VIostfGrdfDIhdXglNqZ/5m
 g/nC57/MDl8zYdYGKyOQhBTfXtl06sYKZPR7brBxpTz68WDxx+JlUATpGEz+tD+z1yre
 3ny2vTBIzW8/6dPWeHCaLF6AA5I/QCrIS406pbtDyGR270rT/4tiQU/z5BG91owD4q51
 x7/Np5ylDFFta4AyzsRj2TkX/nxRT4ql6qfrji+EZY2qYEPEwUtsNTClMC1oCh4igFLD
 Gwzw==
X-Gm-Message-State: APjAAAWDHMGo3w+TrgPpVfJRjV9oZQEgnyUFhPZZK494nj0pkSc+P8rn
 J/hAyP8lS4Z2YDAwnWzht1i+HTIxcuw=
X-Google-Smtp-Source: APXvYqx8ZaDiW/KRLY2tsrM7NNxTGR5H8lswl0zV6QP2zLpnyAeP3EDeS+amcymhZSpcoCezfqLnpQ==
X-Received: by 2002:a05:6402:1a36:: with SMTP id
 be22mr111262824edb.202.1578384070399; 
 Tue, 07 Jan 2020 00:01:10 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id f13sm7375271edq.26.2020.01.07.00.01.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 00:01:10 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id b19so17800032wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:01:09 -0800 (PST)
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr41183295wmg.66.1578384069457; 
 Tue, 07 Jan 2020 00:01:09 -0800 (PST)
MIME-Version: 1.0
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
 <20200106174639.20862-2-tiny.windzz@gmail.com>
 <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
In-Reply-To: <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 7 Jan 2020 16:00:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v64nLnHbpUyadD9H4ZyMX82v1nMr88dM=UrLhrRnBK7f-g@mail.gmail.com>
Message-ID: <CAGb2v64nLnHbpUyadD9H4ZyMX82v1nMr88dM=UrLhrRnBK7f-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and
 thermal zones
To: Maxime Ripard <mripard@kernel.org>, Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_000114_374580_D1D8AE0C 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 devicetree <devicetree@vger.kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 3:58 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Jan 06, 2020 at 05:46:39PM +0000, Yangtao Li wrote:
> > There are two sensors, sensor0 for CPU, sensor1 for GPU.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > Tested-on: sun8i-r40-bananapi-m2-ultra
>
> As far as I know, tested-on is not documented anywhere (and isn't
> really used either). I've removed it and applied, thanks!

I normally add it as a comment following the Tested-by. Makes it
easier to track who tested what when patches touch multiple
boards.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
