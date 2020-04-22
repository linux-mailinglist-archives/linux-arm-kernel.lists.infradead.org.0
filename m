Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A240C1B500C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 00:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7XvWVHo1SUjR8+FA//TKZJl28agdF5kRoSrm3u8A78=; b=YkSjmsPLa71zyd
	tuP4nwlmJ2avzkYKy0htyNMD7fpVoSS0NbsEjudSAtoKkSrq2/ZIX9nIionfd4/aDPpRfheLjT/2D
	kXFCiCSWMR64QDrAnl4EHGoqk1dP98XrshQCpfpLOJABcMHW0zeqTQzRmp+fR+H276TSkpeSrk8+G
	F0ZG0RRZrf/gj6dJLktpi2bpfsEz91WP04ewwhUXq5UPNibo/0huZ4xbMSN3+9KCBeKGCRxxsdTbE
	U9XPz1JNQYDPCqku9XEl85qXDkAOpXv9TDWILrC5UgVwcSYRXGf44c530496xXLqy460JUAs97nvW
	YqfCmAJmeBc0t9nJE54g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRNlV-00033j-KU; Wed, 22 Apr 2020 22:22:45 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRNlL-00031D-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 22:22:37 +0000
Received: by mail-il1-x12b.google.com with SMTP id w6so3653693ilg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 15:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R3pDdZfZ5bLsmtiaX3ho/Prc/GJlaWQtQCc0O+mFKI8=;
 b=FVPlhcN8SpwQ9kar8lLIzkCNOqERTFjDWWPdzkyz6Ph3snI/Dgm1QayGxRrtup/FYZ
 uvwjCAr4kTdVchuqSfKk4YE3zvMCIsjIsWXQYY8daJl3AlcUqfwO/f3EHzOMIUvrUVzn
 EQo3LNEU3QcAEw1oa9YnwK4Jg5j6Pzo+MbrrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R3pDdZfZ5bLsmtiaX3ho/Prc/GJlaWQtQCc0O+mFKI8=;
 b=YN1N9EvEsW9Lv0f7vyYT75wPazUxewkFYKPg6G1VXsMmqr2n9tjZ0DqAOX2rCG+NbF
 6JYGQhM5LMYaEM3U4G0HEQU8Z1z+3GbIgccDNnXSt+OZv+P7WlWZCaQzMsb+SuFY8M05
 yaJiKMXmHO30E78CTqaK/k+71nfDs+MTBWKItLZNe9il6p3ZPsVSoYcz8w6bft7lVsqO
 vpRRyEFIh5pmrMQLUv28i8xHpRa9c2ci6gwKl5NmMh07+mysNKQFErwhAap/y3fRx5oV
 enj5ba/tan0Gj+dCuFM+sV34zyfM93yKjF92xYody4WPs0TqWKcQHxMnm8gBebOjNZGw
 UbFQ==
X-Gm-Message-State: AGi0PuYWYA+U16bE+aomdNsnpM74Xla7UpMgsDdfwRfU2MVKfLrVanhN
 FNdhZVOkaaHVKTl5jF6ybMFntJrzk1OhusCWBlg4Hg==
X-Google-Smtp-Source: APiQypKiuVyAXmTGcV8md8ByrtcR6N+7n1XLevZ5e2D1tSsN5M7OMFaWAdj4CGmVqHj4ltYZYw7z3KpjuiJzCLrizYg=
X-Received: by 2002:a92:c6c8:: with SMTP id v8mr586970ilm.129.1587594151810;
 Wed, 22 Apr 2020 15:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200421110520.197930-1-evanbenn@chromium.org>
 <20200421210403.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW9MtDLSL_up9W0TO1PcjyA_9cUtNo3No7XXusiwqKBLDw@mail.gmail.com>
 <CAKz_xw3-tvYoCDs07xEUBBMf024aezGMoZ35LsTN+_dXT9nC2Q@mail.gmail.com>
 <bbd8f97b-8479-c38e-011f-b52e2cf34403@amlogic.com>
In-Reply-To: <bbd8f97b-8479-c38e-011f-b52e2cf34403@amlogic.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 22 Apr 2020 15:22:20 -0700
Message-ID: <CAODwPW-PGzCzW9dP4UXiR5joKRLOKJVBzXwPS7n_Ne-QedfsCA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Xingyu Chen <xingyu.chen@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_152235_883276_0080C38D 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Yes I think you are correct. I got some reviews about the compatible name,
> > but I think I misinterpreted those, and arm,smc-wdt would work. I did wonder
> > if Xingyu from amlogic needed to modify the driver more, EG with different
> > SMCWD_enum values for the amlogic chip, he could then just add an
> > amlogic compatible
> > and keep our devices running with the other compatible. Although of
> > course it would be nicer if
> > the amlogic firmware could copy the values here.
> Using DTS property(arm,smc-id) or vendor's compatible to specify the
> Function ID is available for the meson-A1.The generic "arm, smc-wdt"
> looks nicer for MTK and Amlogic sec wdt, but the driver may not cover
> the other vendor's platform-specific differences in the future, so the
> platform-specific compatible string may be introduced eventually.

I think having a shared driver is only really useful if firmware
sticks to the same API anyway. Once we start implementing special
cases where every vendor uses a different SMC API, we might as well
make that totally different drivers then. For now it sounds like we
can fit existing MediaTek Chromebooks and Meson into the same API, so
let's do that (with a single arm,smc-wdt compatible string) and then
hopefully future vendors will see this interface and design their
firmware APIs to match it from the get go.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
