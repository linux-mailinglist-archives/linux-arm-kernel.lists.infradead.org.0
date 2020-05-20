Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD311DB23F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2fFVj25RQUH6nRGIK6vch0CTtFoNiE/rpqVx5So6Yk=; b=WTJ/ClMVy0MMzm
	xNDR8nGW/qiil6LAPEMnK0lgrZsiLqZLKE4eTSWSohQgflRBzUBqOcHbPQiEXD2nyKheqQ/rExfRf
	znAe3o6GPJrwu3w00vd1fQy4EYxh2ksO5YGpcWHQWayBKHyyP73HIhA0TM8ulUosE//X7vSjGfeAZ
	DdK5rG07qvUdCFDk3SHGRpSlu3e7O/ehD6IG6c2CvvU/c/ceui5tJHhrMDYbVj6s2txpzhWr+Pgk3
	CNH59FphmbqrYkCHUxkbj+E3esQVOAUZdbtC4/qIhuE1TAfJk9F4EAriXiHcv2d0sn8Qlqv0VXV24
	fsJK8cAt8+0O97FhOXaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNE8-0000hV-48; Wed, 20 May 2020 11:49:36 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNE0-0000go-19
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:49:29 +0000
IronPort-SDR: 6GzeaO4lcU1G//+9QBdtbtQVQLnI69bwtXV5rdcujcwvGvJaxyFTOlhzGJ3HDiYoRuAm/BLEr1
 b5gOkGZLYabg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 04:49:27 -0700
IronPort-SDR: a/+Fpg54o+8PTDC2WA+m5PdUJa0V8mJpZ3R5KEtl27Vp1YaBQPYo9Gd+f4hN621W9nP6OxLRAh
 AaEUA68Jxk4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="253582839"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 20 May 2020 04:49:23 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jbNDx-007pYn-Jd; Wed, 20 May 2020 14:49:25 +0300
Date: Wed, 20 May 2020 14:49:25 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Avi Fishman <avifishman70@gmail.com>
Subject: Re: [PATCH v11 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200520114925.GQ1634618@smile.fi.intel.com>
References: <20200520095113.185414-1-tali.perry1@gmail.com>
 <20200520095113.185414-3-tali.perry1@gmail.com>
 <20200520102452.GP1634618@smile.fi.intel.com>
 <CAKKbWA5L_n7iC6-d22Am62SOoDBwNWO87+sXtRbwxwuVdjmRYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKKbWA5L_n7iC6-d22Am62SOoDBwNWO87+sXtRbwxwuVdjmRYA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044928_112857_B9B66267 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomer Maimon <tmaimon77@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, wsa@the-dreams.de,
 Brendan Higgins <brendanhiggins@google.com>, ofery@google.com,
 Tali Perry <tali.perry1@gmail.com>, kfting@nuvoton.com,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 02:37:13PM +0300, Avi Fishman wrote:
> On Wed, May 20, 2020 at 1:24 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Wed, May 20, 2020 at 12:51:12PM +0300, Tali Perry wrote:
> > > Add Nuvoton NPCM BMC I2C controller driver.
> >
> > ...
> >
> > > +#ifdef CONFIG_DEBUG_FS
> >
> > Why?!
> 
> It is made to save code size if CONFIG_DEBUG_FS is not defined?

Nope (in cases I have commented on). Try again.

> We see a lot of kernel code that is doing it.

Cargo cult, okay. So, somebody should try to understand what they are doing.

> So could you elaborate what is the problem?

Problem 1: ugly code.
Problem 2: some of the code is not guarded (seems never been tested with disabled debugfs).
Problem 3: it's not needed.

> > > +#include <linux/debugfs.h>
> > > +#endif

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
