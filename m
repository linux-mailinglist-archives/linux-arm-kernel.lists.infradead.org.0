Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CC57D364
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 04:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9G0h5vje0PBOw8gVwGlK44YNpX3kIYTR3wqJpPKsBQ=; b=Iz44ewEegL08BU
	Wcum9FBOFYXDf83QBmgqQQPck68cQH1PByfGlGm6vp3TYWmDujiGnxF0M5/a0Gp3O/MP6eXeyazYA
	NFDW1msMI9dGR++6Y7ogj9btbjZVJw0b4qo2GEn4Dj8wW/QesZnUagvfRlqqpEf8J3jWjrtaIm6F6
	+FT/lC1lE66yXcexbJMZwQExRsS2UmqoXl1W6VBvobnvnxNPC9fdikyYBqUM6IB9A3eKP0Lwl7iDc
	JYchVI2e0eIrzwrpnQ04GTuMRV2uU+q3DQa3cjzjsZm0PhHu5RfbI1IUZwsT5jy26ofT8sjnJsAsA
	1hc0zJjrt3tUy8Ocuq8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht13K-0002oP-4S; Thu, 01 Aug 2019 02:42:50 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht13D-0002o4-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 02:42:45 +0000
Received: by mail-ed1-f67.google.com with SMTP id v15so67663528eds.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 19:42:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pApfeIVgrNgOaVSt9IxPry3S4fEq1eYjlcB/Yg9CmRw=;
 b=G5bh64HQqfZXxWqgk14PbSRU350FwsGupV4akZzdtTrkuFabVeyJI1oqm02JVO2USx
 A+xLby8IyuX+FUYIt5PROrf13AZsfBBrOdktccT8ivFRTXOciWP88tRciJdFrpHkUbWj
 rDm1AGQvLU8Te7/y8uwbrJA2kuXwKaA16kroPghXL4QSz/sxcdkM3Xnxle154uv3sEeM
 MGke0TlvemAdCZaO6fca/eaDTy9PYhY6mSfXRARJgC2G0myv/chgdRiN1f6aSdKtF+tB
 1ncOWPHSsp86qSPK0pKFWUg5ztn6jXdd9+NmrDprbEaz3VWHnpTQgbJ3+8PXNDEDgz9W
 5yjw==
X-Gm-Message-State: APjAAAWtBKkQVlE8Qjt8BOsFG9u+j7oP9RnLQ4VezTmG/iv+FCLMsFI2
 PAkwKwOTniwJ8kMxNP3DV0aiJKvz7z0=
X-Google-Smtp-Source: APXvYqzImp4ovBqTXm7tIVhCtJ00RB7L1k14ynDueJRCKRjeN2HdsDtOQYRFtnk5qF+IaUjWDprANA==
X-Received: by 2002:a50:e69a:: with SMTP id z26mr110133426edm.41.1564627360126; 
 Wed, 31 Jul 2019 19:42:40 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id p3sm17533963eda.43.2019.07.31.19.42.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 19:42:39 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id u25so51330106wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 19:42:39 -0700 (PDT)
X-Received: by 2002:a05:600c:2297:: with SMTP id
 23mr60200661wmf.47.1564627359480; 
 Wed, 31 Jul 2019 19:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
In-Reply-To: <20190727210307.17607-1-sunil@medhas.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 1 Aug 2019 10:42:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
Message-ID: <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Sunil Mohan Adapa <sunil@medhas.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_194244_020560_0EE9790C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 5:03 AM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> A64-OLinuXino board has three variants that have eMMC support. Add support for
> eMMC on boards that have it.
>
> This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
> Basic benchmarks using Flexible IO Tester show reasonable performance from the
> eMMC.
>
> eMMC - Random Write: 23.1MiB/s
> eMMC - Sequential Write: 74.5MiB/s
> SD Card - Random Write: 1690KiB/s
> SD Card - Sequential Write: 11.0MiB/s
>
> v2: Fix descriptions for VCC and VCCQ.
>
> [sunil@medhas.org Fix descriptions for VCC and VCCQ]
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
>
> From: Martin Ayotte <martinayotte@gmail.com>
> Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398

Thanks. The patch looks good overall. The authorship is a little confusing
though. If it was initially done by Martin (CC-ed), then he should be the
author, and we should get his Signed-off-by if possible.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
