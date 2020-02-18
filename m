Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8983A1629E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 16:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30hmvORTlq+mFDhx+ZfflwRo9eIOXbuhQnur7DNbE6U=; b=Rfb8FCMJ1bfRP9
	CKs2iVynjJn2pqN6Ez8mOkT4uZEzXBXmLKY/uy+t7fsWxUIc5LWz+VYiPh8QDlb81M9YNGcpHcdp4
	8UZ+HywUc8BcOMxEEKCyKqsDA8yZB7mXNwPwVsvSYMYEVjyqRTJlEa69ZgU3CDbQhmmceKSbVgI2x
	9b+DkyefZMwhEvm6froteNoMnvbc9f9mfF/dXWQV+JuWp0WVHrZpc/D1RM3QK62tuB8h5j6fEzciJ
	2s+tzyKDiXY5Z/UFZfTr3/W+S7hRe1PFo7wSyojkZX9c0zcA47V9U1DDKaxopQFnkchMZ3C+uYMFe
	oROgR57YgnsKfEDuTayA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45CI-0003L2-1r; Tue, 18 Feb 2020 15:54:06 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45C8-0002iy-Ue; Tue, 18 Feb 2020 15:53:58 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 07:51:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="382490238"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga004.jf.intel.com with ESMTP; 18 Feb 2020 07:51:46 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j45A4-0035xT-CI; Tue, 18 Feb 2020 17:51:48 +0200
Date: Tue, 18 Feb 2020 17:51:48 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH V3 2/2] drivers: input: keyboard: add mtk keypad driver
Message-ID: <20200218155148.GJ10400@smile.fi.intel.com>
References: <20200114122738.103344-1-fengping.yu@mediatek.com>
 <20200114122738.103344-3-fengping.yu@mediatek.com>
 <CAOwMV_w=Ad8gt1rftFw_EbtaZ2uCz=oWpm_P5YMHLNpok7Q09Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOwMV_w=Ad8gt1rftFw_EbtaZ2uCz=oWpm_P5YMHLNpok7Q09Q@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_075357_035154_D4141CAD 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "fengping.yu" <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:14:24PM +0100, Fabien Parent wrote:
> On Tue, Jan 14, 2020 at 1:39 PM fengping.yu <fengping.yu@mediatek.com> wrote:

...

> > +#define KP_STA                         0x0000
> > +#define KP_MEM1                                0x0004
> > +#define KP_MEM2                                0x0008
> > +#define KP_MEM3                                0x000c
> > +#define KP_MEM4                                0x0010
> > +#define KP_MEM5                                0x0014
> > +#define KP_DEBOUNCE                    0x0018
> > +#define KP_SEL                         0x0020
> > +#define KP_EN                          0x0024

...

> > +#define KPD_NUM_MEMS   5
> > +#define KPD_MEM5_BITS  8
> > +#define KPD_NUM_KEYS   72      /* 4 * 16 + KPD_MEM5_BITS */

> > +       kpd_get_keymap_state(keypad->base, new_state);
> 
> kpd_get_keymap_state(keypad->base + KP_MEM1, new_state);

Why?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
