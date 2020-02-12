Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A139115A63D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQ6GqgubKo48obDyrYbg1rSxirVQukOMDD7uZvGf1P0=; b=WRWn+51rXhC394
	OneIGO2TXnoAIkLGAQpheoq+Lo5vsPqSanNLJvwsdbX4S2pIR+22fpbBvMsB1jC0xez6dn8TkYO7G
	ukLccw27+PlbIJeBkSzUD3EJozLs/ElOLMHOto8pBJGCjd5BGO2ruwrtwUu7jwjKhl5IsM/wL8ZIE
	kwOKIsixZphRlEBwdRv2DM9aqzJB3CPpZxkzLVHj53abAwQCeQYxZIHe2MMWf5qUT1sf/7m890NBC
	OZxLXV1+gRI0Yv5VyfcAUdHIEeVJbHd725JwcwRZfxRnd/Jdw+PWZTghIoWAUTrSLC9Ht7UdXbG4T
	dVxA8U4SfB45UfKGaexQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pCS-0005ZJ-Jk; Wed, 12 Feb 2020 10:24:56 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pCJ-0005YE-2s
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:24:48 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:24:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="237671207"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 12 Feb 2020 02:24:43 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j1pCG-000uto-8C; Wed, 12 Feb 2020 12:24:44 +0200
Date: Wed, 12 Feb 2020 12:24:44 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: Re:
Message-ID: <20200212102444.GR10400@smile.fi.intel.com>
References: <20200211223400.107604-1-rajatja@google.com>
 <b3397374-0cb8-cf6c-0555-34541a1c108c@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3397374-0cb8-cf6c-0555-34541a1c108c@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_022447_142529_520FF4EA 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Evan Green <evgreen@chromium.org>, rajatxjain@gmail.com,
 shobhit.srivastava@intel.com, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, evgreen@google.com,
 Daniel Mack <daniel@zonque.org>, Rajat Jain <rajatja@google.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org,
 porselvan.muthukrishnan@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 11:30:51AM +0200, Jarkko Nikula wrote:
> On 2/12/20 12:34 AM, Rajat Jain wrote:

> This patch subject is missing from mail subject.

> I'm thinking can this be done only once after resume and may other LPSS
> blocks need the same? I.e. should this be done in drivers/mfd/intel-lpss.c?

On resume we restore the previously saved context, can we be sure that values
we saved during suspend are correct?

If above won't show any issue, it might be best place to have this quirk
applied in intel_lpss_suspend() / intel_lpss_resume() callbacks as Jarkko
suggested.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
