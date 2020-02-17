Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEEC160953
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JF/m6YTV1evu3quP3ze6jgTAa1ARYIMljcqpcOE5liU=; b=BPODWWv25fXL6T
	6AkyCwwnNhffz9M25DgWe1Gs+hMEP6LdKUbw87Q22wasbLqjeiCWs7yvgqst7iLq0cW7pRez6ce+H
	tjnPLXUd4e3oIFCifKOVUcHICLZ3e+xMIq2GSnS1vlAjBu8XBXCks6HYoZUGuLz8p2WZyIiMHtUnT
	Sc4+EX7mpVD0zAmSHrQnt6wznUwTkw4O1neJeA/HRu271sbhFSdewY93kSFd0HuwBIfVtKIpEVdSu
	ZzABaEZgIWzSz25kXyljoXWExa3zGKKWevwkEWGKXc1HOc5W2jvqTznb3d50L0Yiwre3l6HHjscDc
	t2+iMLQVmXK6FlB8TRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XVZ-0007XR-3v; Mon, 17 Feb 2020 03:55:45 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XVK-0007V1-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:55:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id z16so16905996iod.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MDRwOw0qxHT8lr0hMdZ3Qai+ub8w2eSiYOEUSVqxsao=;
 b=gxFKXkh2sDRFMwdMCiVPpZM94a7Wqh//+i/PPGKzGqg109MExjedklZrYzYfEB1dOn
 1RSy4HwVcYyZEyQT2/50sKFaxsQXYw/KUtPQSDP0SgMbgkHZYACNmTy3pk+RfjP8wJ8H
 vIQbzTSkumfZSiOX1QkrO62yBG89y3JCzRkpualHWXG0WOZs2WCVsNdPN/uMBuN1PInl
 oqcehkB6H/Yc1VLJ3pAYtnF9A9V2mJze/G9H/eo22rOrbk+WDlH62AIzov8o++KQFpd7
 KP75BTi8ZU1s49FOmVefZoWDFS4sgNo3WYKRPRPKOjsYYbG/apbzhJqjc7u5AOkSY0o2
 u4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MDRwOw0qxHT8lr0hMdZ3Qai+ub8w2eSiYOEUSVqxsao=;
 b=p9txdVyDGjZhY+wK5QlnJVbjD3PRvDLQ06PgkyaxqYRxA7HwiaoJJaNayubAM5am1L
 ZfzfrXFiMRoUgQd4PNGckIfAxjIp3BVWsaGP+scCOhQyzBwO3D+NVZrrQdJFl6fexmio
 5jqDe11+1YrPfK5eosiYIGT3G0lz6gsYEct4uqg07004JUjH/TlbdkxmQAJHtHxTFajE
 erhwXvzMZCmiUqAU3IZP8sfP9IDnbEnlRErXiqoQJykfadvnBhDux2v0TLLpUdPV+QuY
 i3OAqCYNER19tDIAWu3vjba+R77+2PUHdgqVXVHnkpcO1eVuMees6tru3gm5QQqcPY/+
 4sQA==
X-Gm-Message-State: APjAAAWRrAIDlQJ6l616j9e5UebsGoRnhSh6Ao09vbKWSOTvziJBdXWb
 NkdGOkDhFMBUqfkeYW1gZs4FkZIyfL25RnKfUyIQ7A==
X-Google-Smtp-Source: APXvYqzvM4FCMTrCi0v8wV4k9sbQWYIUffnsL+Kp3MW2/ZQ6XXOz2og41iziG0mONHGsGItgPmiMVNuzIdWL8NvO3J8=
X-Received: by 2002:a02:2101:: with SMTP id e1mr11084540jaa.29.1581911728799; 
 Sun, 16 Feb 2020 19:55:28 -0800 (PST)
MIME-Version: 1.0
References: <20200217031653.52345-1-tzungbi@google.com>
 <20200217105513.2.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581911058.12629.1.camel@mtksdaap41>
In-Reply-To: <1581911058.12629.1.camel@mtksdaap41>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 17 Feb 2020 11:55:17 +0800
Message-ID: <CA+Px+wWRn1-t2fd+bD-PGRVjyLaAHqm1wF3W3T_GMUh0GXkA_A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/mediatek: fix race condition for HDMI jack
 status reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195530_991836_338256D8 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

On Mon, Feb 17, 2020 at 11:44 AM CK Hu <ck.hu@mediatek.com> wrote:
> On Mon, 2020-02-17 at 11:16 +0800, Tzung-Bi Shih wrote:
> > Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")
>
> This patch looks good to me, but please merge this patch with the patch
> it fix.

5d3c64477392 ("drm/mediatek: support HDMI jack status reporting") has
applied to ASoC for-next branch.  This is a fixup patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
