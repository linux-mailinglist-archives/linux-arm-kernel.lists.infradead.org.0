Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D421608A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w20Kl3/97mqcicLjkuZEXUj/dlKE99HlpaAMDGL58TY=; b=CMe3HFT0IcmxiU
	te9RNGcWrLmTq7RP3UQunzdI57tmAeQ6X+BTcShfAJ14czCGQcZu0W9ZosFnOscAELv1I7NoPY+oK
	la3SMIfMvmwHJ0BvAnjh1gIcIYewAVQMMJlt+AnUQ4L5JKKrNQvr0qwRYKxn/B7UBqh0cNW3IQj19
	p/D9FIqZxvB4lY5lqkz8WE40NyQiyB4Fmm7AftiB3cWhkNDJ2su1PtX8s5o5gp3MraHJg6ObMIbUy
	Baoy9y9MjjdeD5butjh7LGXbF39/iSRZlgDce9A9383gQeo02WokMW5sf7FUjCh2HqSzxarJuvRLs
	BMRPytTYdmi9cLu0LRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Wyg-0005Vm-EI; Mon, 17 Feb 2020 03:21:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3WyS-0005UK-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:21:33 +0000
Received: by mail-io1-xd41.google.com with SMTP id c16so16864942ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+kmg82PrP5LICQsxhHiVbN5R5NBrtOLNvQPwne/NGOA=;
 b=t5eF1GPF6GoODdlqsDLhBm9YZ93XeswOThOt26rhz68lYQtokb/vXMws9molPaNGgn
 YCzOzoa4OJo6ampwllRBwhc5V2yPxbfiAVCz+I1MVhcXgH0sClaKrchJASLbszzXDUc5
 PcKhaD5sp2Sny4fXmTCuj6e69ZrN5k6XoHp1YwNl2Xe3sHsf1drXgW6CMzXCk6358oVS
 f5+s2M0Hr2BmZ3zq8SGg3NkgrcKyQNCwtu34tk6FDP+xLSk5ABatZ9hwybmW6g0VRCur
 0g3whXZ0pdOD5SUi4ogFS8o8RGJpUzUaOmyI1a4Pj/3IQUZLw9vKtn8equ5zxAKJwZA6
 EfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+kmg82PrP5LICQsxhHiVbN5R5NBrtOLNvQPwne/NGOA=;
 b=Agj6N3GLCDHndLewHCGliudXuno6bw2zczSq5j0T+04y/x3uBZg4PVCwlbu/YHtbLZ
 x/+GjCj7JufIeOTn4PZyNATiJdYstOvZ93Vh7iIOAZiX5FNg/56cst3eEJTsCmIULbMH
 XwdbEShw9Qt/Z5r0m5rhsThzhkeFTn5gYp+FUAHYHUuMU3onBSKiqvS77ar0BTH7gYeU
 lkGcwPOxeAw3/kGdngmDBDr5XPxi+TRWW0wwRKBf9JA0Mgkv9tywbnwK5R2cM21wK0Xt
 TW+YqSMtxJZzfFm/I0lheCbVrTHxpbmtzp6P5lR0E8i9DAu3wKK6HDq0ypQb41cDZdMc
 BUlg==
X-Gm-Message-State: APjAAAUB90HDgoMEKQBK/O0QNbdPHS016NE78tuqL18SjxywXfID3RZV
 Am7lUPHRIXOTB+xkQ6wIzhv1f015dO5YHGnljGYCNA==
X-Google-Smtp-Source: APXvYqyaPVYhmq/h7UBs6n0tcjgftHnCsB9jpo4a+DwPuDtd3EIywxxxx8zFkzSw8qKGVwWf4dYIvkD+9m0g64cglr8=
X-Received: by 2002:a05:6638:538:: with SMTP id
 j24mr10587053jar.12.1581909688631; 
 Sun, 16 Feb 2020 19:21:28 -0800 (PST)
MIME-Version: 1.0
References: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581664042.20487.4.camel@mtksdaap41>
 <CA+Px+wW0BWz0-8L_UXJ-OYbwG6W9vmCWRr7kevpk0yokp+NKKg@mail.gmail.com>
 <1581669243.29925.13.camel@mtksdaap41>
 <CA+Px+wUacX+HbgLTSjAuq0feoeYNb5pp=1w8C4_zm=0jGVcHUw@mail.gmail.com>
In-Reply-To: <CA+Px+wUacX+HbgLTSjAuq0feoeYNb5pp=1w8C4_zm=0jGVcHUw@mail.gmail.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 17 Feb 2020 11:21:17 +0800
Message-ID: <CA+Px+wXQGh3rX54TE8Ks8tfFhHPQXUV2PhK2qzME_LFQ+USUQg@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192132_350980_AD892D9B 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, p.zabel@pengutronix.de,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 7:59 AM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Fri, Feb 14, 2020 at 4:34 PM CK Hu <ck.hu@mediatek.com> wrote:
> > It looks like that even though sound driver is removed, hdmi driver
> > would still callback to sound core. This is so weird. After sound driver
> > is removed, hdmi driver would callback with codec_dev which is invalid.
> > I think this may cause some problem.
>
> Will do some tests and get back to you.

Please see https://patchwork.kernel.org/cover/11385055/ for the
proposed solution.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
