Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA71A9F81
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqryjNwd0jusnHNIj5Yt+8MR6nX3yY2LgxQ91LD9fRc=; b=IpKdT8h2JyYgg8
	G7UiyjE6PUXW1bRt3bDJk/m+ASsnS5ogWoDB/NXJFMRYqeoQCQwKmgxjNJZK0RJNypMqeia7+gvWu
	Gkl/pT9D0q2/DrvKeJ81/pjxSTA2Hoj0ix5xzDSgnGnBLNrXh95S2o1FRWbDCE9/6G+7+VFpmviCN
	Ckfp4ZjeykxcJzRNgP5kfbtKr1omHLTzdpwTWD7G3oOdamZ2hQLlw2ut9DlJcLLNngn5/n1BBVNHd
	ly3eURPMO6x+D5+GUXMgGQE5P6+18ahz0Iuh54qdDfBKmZ17r3jP9GTPhon6sTHwQvYZ8SMXeRSPo
	k1EcMVpYr8SIMFn6ydHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5otN-0007dF-3M; Thu, 05 Sep 2019 10:21:29 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ot7-0007cq-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:21:15 +0000
Received: by mail-qt1-f194.google.com with SMTP id c9so2100016qth.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W9ASHhPKpQsIU9mZBi7LyeVQlq2CQJ2Nfa0cGg2cxjU=;
 b=dYUTNGe168QTkil57CletXSS+yXg8+69MkHC9L1OlLKeU6azxUx7R992QoC4p0Hzxj
 OUtSFIgnvT2smHPy3MYxv1H4xruHdJUMJy6kLAW4iJzBME56UglVAtouVrXgyRLUA31n
 9g87ZqM4vulR3dU+iO1JZvGgvu0UAOfJytfgZ8TzCgW46i+fqhr1yD2gINIXfFCwHf5R
 WTbJIqHAMHnN/TCf2uVBHmAnli4/A2KT0/DXvV1/IyUofaGPbYMdU1l2v35xYAWgSM/B
 Pqn6d9VycFQtT877Kc+5MLQjdnopt6LG3WbScrRPxtwoLjNoL9vTVReJv6/GxcYE5HP9
 /3KQ==
X-Gm-Message-State: APjAAAUPvbl2d57TkUjEO2OJjoGS0ybuAXasJmgF/tCiIKVa11xsFwt8
 AXWl0LnvEGF+/KRfpax4NnKCAM1bQJv5+WW7DAA=
X-Google-Smtp-Source: APXvYqw66BDokdBxyKl2ZBebLXBdM0Uc+EDEJXEwWO/OOdpU9zSB4XfPNlLYUumfYtGYq8zDk75S62/byvrXBZWShig=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr2625217qtb.18.1567678872786; 
 Thu, 05 Sep 2019 03:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190830220743.439670-14-lkundrak@v3.sk>
 <201909021510.0g4L7Wva%lkp@intel.com>
In-Reply-To: <201909021510.0g4L7Wva%lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 12:20:56 +0200
Message-ID: <CAK8P3a1kpRcmTW0hH7-9vd4SiJjEuTMRPb6Kb06LSiRj0AGd8A@mail.gmail.com>
Subject: Re: [PATCH v3 13/16] ARM: mmp: move cputype.h to include/linux/soc/
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_032113_966346_07EB7785 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Lubomir Rintel <lkundrak@v3.sk>,
 "Cc : Rob Herring" <robh+dt@kernel.org>, kbuild-all@01.org,
 "To : Olof Johansson" <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 10:16 AM kbuild test robot <lkp@intel.com> wrote:

>
> vim +5 include/linux/soc/mmp/cputype.h
>
> 49cbe78637eb05 arch/arm/mach-mmp/include/mach/cputype.h Eric Miao 2009-01-20  4
> 49cbe78637eb05 arch/arm/mach-mmp/include/mach/cputype.h Eric Miao 2009-01-20 @5  #include <asm/cputype.h>
> 49cbe78637eb05 arch/arm/mach-mmp/include/mach/cputype.h Eric Miao 2009-01-20  6
>

You can probably do something like

#ifdef CONFIG_ARM
#include <asm/cputype.h>
#else
static inline read_cpuid_id(void) { return 0; }
#endif

Then again, ideally drivers don't even have to know about this,
but would distinguish between devices based on the
compatible string for the particular device.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
