Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A250F160CC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbXS0txv/oOkfhzyPd/3aq/IwYSI47zKYJcwDEuxfYA=; b=Cs4tazxpUxNeuv
	WuSjrOPImEk+rvIo8E72v+SXvi3UQyHS/Dnq8X0ag93ZTIIFTMc9QV+v22XFkUei2o9dbdSw/Y+uc
	6+bU7o/ZOfv9DTVmX4Kw0MfS3tvx9TTQLiQnqf++tDe1Y5lkKYi4Vl4cMAnenrZfIr4LambkRvh/h
	cwtbUCvHzzAr/fAQ+0bi6VfhTHXvCi6Z12QG1HgIS0hxQzUJZFBHXjx9cqukzwO9bK6g8fC07wHnq
	oitH1v07pXDX3VJvLxyFqdtmHjsx9IdsT56e3wl/vJEPew8zLbjVtonWzair9CzltUN5XNF3GZIFH
	dMWQf+Cf6k0lm5S4J+3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bdX-0006yK-Vl; Mon, 17 Feb 2020 08:20:15 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bdF-0006xZ-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:19:58 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so19675937edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:19:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ATnQLLigNnNp+3vrMMUywd96YC/sdkp/YQzir+b0HgQ=;
 b=af5sFsVB0ITvDo9Z2RYhTjtZAWUAPtnOwthRq6JmoigSPkXgeS+jxAWaI9LZHNvTLR
 buQMXH54EON/eUP8uHHJu4SB7rddp2QrCnob/A+L7fYPA4ZW3w0o5q0BjneiQTLS4hgT
 9qd/uvCy1YSZ4A8TBzc2609mwXooEn+yV1RPDGesjFWl4lKT0L4llzgzk7Q3HjeOzlS3
 L/ftOe1Ov0cySaqdeX39DZVpzzwQ9eHB57hQ0Cfag/9mx1OurO9z4jILhl7z6cuOSHTE
 kpKq50ZzJg3sgrKzoyGea18Eg5sbj2UQyM+6umNkFG4VHuRioOWNvOWH79N7nndU7EcR
 h8WQ==
X-Gm-Message-State: APjAAAUovoIOBACkUgNp+WJW8OykQkF0SACtIq2/ebntda7J+5nQEi7X
 vYLnpDdDjZLvrYplGXjd+ZKlzu/Tnj4=
X-Google-Smtp-Source: APXvYqxHmv+F2addvpHySJnb9+83h3Mz4z6l5ZVVsFtNTgcLLXCQpM2I5j9s/EKqfCiCQxrF+56YZA==
X-Received: by 2002:a17:906:4e18:: with SMTP id
 z24mr13849501eju.214.1581927595245; 
 Mon, 17 Feb 2020 00:19:55 -0800 (PST)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id s11sm864040ejx.90.2020.02.17.00.19.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 00:19:54 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id m10so6793251wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:19:54 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21454590wmd.77.1581927594021; 
 Mon, 17 Feb 2020 00:19:54 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-6-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-6-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 16:19:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v64p9QEhni1sAQWA9eOtGYDcc2_VnUd92sUxK7M_doHZJA@mail.gmail.com>
Message-ID: <CAGb2v64p9QEhni1sAQWA9eOtGYDcc2_VnUd92sUxK7M_doHZJA@mail.gmail.com>
Subject: Re: [RFC PATCH 05/34] ASoC: sun8i-codec: Remove incorrect
 SND_SOC_DAIFMT_DSP_B
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_001957_437541_20CDF7C7 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, stable@kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> DSP_A and DSP_B are not interchangeable. The timing used by the codec in
> DSP mode is consistent with DSP_A. This is verified with an EG25-G modem
> connected to AIF2, as well as by comparing with the BSP driver.
>
> Remove the DSP_B option, as it is not supported by the hardware.
>
> Cc: stable@kernel.org
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
