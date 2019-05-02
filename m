Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24291232E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Gu8lIP9N7SvKYrn9mb2DzbT6T7hGLIfzqOE9/Rtk8A=; b=lSL2mkXJfdWUva
	jMoCwbAupkxTI184oOelxo5bnpYmz8Y0MoBohjygury6uRA7PdRXOp2oSTt7VINCloqhLE2aqLLGF
	SaaZBYmD9q0nzr2LdL8NGc+3vk6QFRJtt4lc8E1PPQ2cvKsjClFazNYUjI0Rd8nApqjM4/zV+ydv0
	5Xg0xPVwEjGGjuOEYfPkVqospq8App7jvFRnnis0J+qk3T9HbacGFdc8+mS6Rv7s60Mlsbjm23pnI
	smEX2ZIuDsBI7K3SaobDsKEeYhn62/d6BfwRk46MbaoxaNuw0U7MNX1YCtPtfUQEV1Jru6Y9sOHw0
	4RL0ydohM+HblqHl9pIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIG3-00040T-I0; Thu, 02 May 2019 20:24:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIFs-0003zL-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:24:37 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E724C2087F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 20:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556828672;
 bh=fPysuS9QGjjgbk9tLRamHIsNsWi799oVziR6RsQ3XTc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=B5FzbdvYNHyOzaACD9WnyFZMcLJAtiwUAT7VXwkycVlj1ywQdTL8YZQmE38MoGiZS
 eJl9nziJNk5N7ip2vO/yzjxNUdRPQz4y0Mii5QzP4X0RhwXQVDrY9oxBMciQcU9kKp
 w/z33u8QovQFpjrHmcUgbqjbLfH4vs1hkIiA4Cz4=
Received: by mail-qt1-f171.google.com with SMTP id c13so4211420qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:24:31 -0700 (PDT)
X-Gm-Message-State: APjAAAUS2u9u/ZkBtQXeFaPAU5Q/UuT/RdDeEc2wWQDdZ5tHZc2sdp5O
 lYLBZ4Wg+/Doh0rdmArfKKILnVYBL7TT4wiI4g==
X-Google-Smtp-Source: APXvYqx6C25RjdbTQS+SWLt4/8jx2DcPpy0kcWoZHeaatbwZmHH6mbkpB3Fk9JShMpb/mxi8G6d9PZk2zE2bZTukxKg=
X-Received: by 2002:a0c:9066:: with SMTP id o93mr4888171qvo.246.1556828671176; 
 Thu, 02 May 2019 13:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <20190430223629.GA22317@bogus>
 <1fd44623-4a59-f014-1ae9-a7cc605ad30f@partner.samsung.com>
In-Reply-To: <1fd44623-4a59-f014-1ae9-a7cc605ad30f@partner.samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 2 May 2019 15:24:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJcm9Z6vYFHGyAZ+h3-kmSv6e=3NtO-fjJn3-QT0JoX+w@mail.gmail.com>
Message-ID: <CAL_JsqJcm9Z6vYFHGyAZ+h3-kmSv6e=3NtO-fjJn3-QT0JoX+w@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132432_487192_AFC593BB 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 3:52 AM Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Hi Rob,
>
> On 5/1/19 12:36 AM, Rob Herring wrote:
> > On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
> >> Extend the documenation by events description with new 'event-data-type'
> >> field. Add example how the event might be defined in DT.
> >
> > Why do we need event types in DT? We don't do this for other h/w such as
> > ARM PMU.
> In ARM PMU all the events are hard-coded into the driver code i.e. in v7
> arch/arm/kernel/perf_event_v7.c
> and are seen from perf. They are different type and for different
> purpose. The Ecynos PPMU events are not seen in perf, they are
> for internal monitoring and must not be reset by other actors like perf.
> They are used by the 'bus drivers' to made some heuristics and tune the
> internal settings, like frequency.
>
> Chanwoo has written PPMU driver which relies on DT definition.
> The DT events are used by other DT devices by phandle.

How is that done? I don't see anything in the binding for that.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
