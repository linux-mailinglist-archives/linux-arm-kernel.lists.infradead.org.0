Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4429DA2A80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD+jZHcbCYTwZUM26iWcs9OuT26haVyq1iXnsX5yAeA=; b=q/VJb4ViX3jsVi
	7Lem6ysSrrp/CDoKgawSlP2JAIkRiQw+bx94RH4BlT9aLmsf4K9FjlfrLIqCRy64RJoUTDpuWlTxD
	dYPTQgxCD/9JF7KmysCs23wBoPfoo/pDfZvMJlstSKVHEnhjq+sLHumllpanUq09GjbZkYqyWeesG
	VqetC+MpEKUmkCre8ZkgaCcQf72QAqqMrwD3wJ79SHyiYFHhh0UTBK8w47mU3XsN4+Z9G6J3/xPj0
	1+kZbvt9+Us7QmYIEbmsHGT9sGGsuuOp1s3OG2iwUawDP0VKiR/+G2bU1meUPqAriyJDUXKswednr
	HJMYIw8wR0sAZ6ntyMBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TSw-0001BD-DS; Thu, 29 Aug 2019 23:04:30 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TSj-00019X-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:04:18 +0000
Received: by mail-pf1-x42f.google.com with SMTP id g2so3164960pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 16:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=FG/ioGopL1SooQzlLZXuG7hdqG/bkCBcJofUFHkolmg=;
 b=h2CJ1+aIMh3unx0pf8iBb6SvhrJQVxa2DFreHB0teMQjrJqwTwiFwbR8I+r3I4VzV7
 mf0KYg3iY5D+E2SrONUnlbzAQKXcXo2/puy2wWh0Vc7M5QG+C73z4pECJ/c5I2vWByKk
 BnoVBTygCXl1jBBO5CXsBPQeQtRKvLgcZnnoxz+IP5O9P9hSW51IYPOIixi89dcEqTrW
 iJR7MR6tBH1ZOdDMl+JxuGlMkBxnVPlxpZbGp8UIemqy/4CqmzO0314XxNDV4lotbxsW
 SXkSDfLthe1nnJB4NX5ARX0d4nzecdgfrvmu4YD90y59Wu617qhKtqzlCKkVd2/xecdS
 BGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FG/ioGopL1SooQzlLZXuG7hdqG/bkCBcJofUFHkolmg=;
 b=Tt5rkv/3HuF2kzd8wNbKfJAYMK8Sv2Z2ZDuNFHET5n+whVbxG+ivx9jMFzc7GvX01U
 KSwpSMkr9QO6daMPb44my6hyk+1Dfc3rw3hBsCvWL+YW3NpJ+RnFiTshKPBlrh9Hcfv3
 AjCdUkeIJ9F1rkQ82uIch5tWADf92sZN8WGHzm6X7IlK4xICSDam9ErwGXKBTCXn2GBh
 aAtEwLVegOyk8A36SL7sgSbNgdVsiJEid8EuMPprwDKE7QSaBK6ZauWnD3lPeH317dxg
 NaPBhdwaAbW2HVgJo0NBSGqhJvlqy+MKSgt4NIlS2YC+FO+sdqfvixYHxvFMabwE4uEf
 r4Ug==
X-Gm-Message-State: APjAAAXwM2iqp3YNgBV+tYIehOP/MDhH4ydBP8wgUMDLTGbmODXE3x49
 KezJFT1Hb6G2U/yOkGjsV2QVLw==
X-Google-Smtp-Source: APXvYqx5LlLHmbmdfmqbBXXwfgn/o7hvFhyiIl4i9+q9RGmzrXl7DGO/xohGJpuHOjW/ZvmmiZelPg==
X-Received: by 2002:aa7:8219:: with SMTP id k25mr14687532pfi.72.1567119856246; 
 Thu, 29 Aug 2019 16:04:16 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id p10sm3363807pjr.14.2019.08.29.16.04.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 16:04:15 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.4 (round 2)
In-Reply-To: <7h4l1zrf84.fsf@baylibre.com>
References: <7h4l1zrf84.fsf@baylibre.com>
Date: Thu, 29 Aug 2019 16:04:15 -0700
Message-ID: <7ho907o9ow.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_160417_211212_1F284AF8 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Hello Arnd, Olof,
>
> Another (final) round of 64-bit DT updates for Amlogic SoCs for v5.4.
> Highlights are in the tag description, but of note is a tag pulled in
> from the clock tree due to a handful of new clocks used for DVFS and
> power domains.
>
> Please pull.

Actually, please ignore.  I messed up some dependencies between this an
the drivers PR.  Will respin/resend.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
