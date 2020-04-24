Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752361B7B99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR5nOCX86NLDZGzazZ7B5F+HxYEEPHLbvFtriiBLkhU=; b=dMyBL1K2xwSvQQ
	ZQpLjSQqiN/cyWb78J9WRTyVqSK//FasBh8GfzM7ne9l1eyQtDXfHqJYU4EN9gBeVG8qO4SbSDgL9
	VLS5agFC5H4vHIN+dnq8GSXyJmdrpXogotFIbxad2QXDaetX2uUAGUSpd3Owbl0btUOTjFQHtMaSa
	pcRNoZWDQbW5nKPqx+z5fpcJ5gPJMrF7cfEy8GBuX14bG4iTiRa7pT68dW5nhmVHZxj97hho9r1U+
	1iJ1kg1eQCphlHWt9t+Rtafx1K/aG9Fpl4AElovdYy0ga/Y3y1hGxetbevJMcu1mGtFxrCT25Epin
	eZI7Y+6eVo0Ike+aCGFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1CE-00085g-K6; Fri, 24 Apr 2020 16:28:58 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1C2-00084C-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:28:47 +0000
IronPort-SDR: YcYoGwPNyCBHpQUNsQIDAG5JSRFaSQQh3/czipKnMaHSQI3H7IbJYI3XelVWZjsgxjWpJpB5IB
 +2ZTw9mcm3EQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:28:45 -0700
IronPort-SDR: jeDDky+ZJjvBy2IfDqA0f79rtfkaJHYl2liJyWlpfY/OGX7D97oMfaTjX7fRZtxeSSaGiF5THd
 s8YRO/Ecc/Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="259867503"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 24 Apr 2020 09:28:41 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jS1Bz-002sAW-Pb; Fri, 24 Apr 2020 19:28:43 +0300
Date: Fri, 24 Apr 2020 19:28:43 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH 0/6] Introduce the for_each_set_clump macro
Message-ID: <20200424162843.GC185537@smile.fi.intel.com>
References: <20200424122407.GA5523@syed>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424122407.GA5523@syed>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_092846_900750_992AE637 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, amit.kucheria@verdurent.com, arnd@arndb.de,
 yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org, vilhelm.gray@gmail.com,
 michal.simek@xilinx.com, bgolaszewski@baylibre.com, rrichter@marvell.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 akpm@linux-foundation.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 05:54:07PM +0530, Syed Nayyar Waris wrote:
> This patchset introduces a new generic version of for_each_set_clump. 
> The previous version of for_each_set_clump8 used a fixed size 8-bit
> clump, but the new generic version can work with clump of any size but
> less than or equal to BITS_PER_LONG. The patchset utilizes the new macro 
> in several GPIO drivers.

You have broken thread. Please, use --thread when run `git format-patch ...`.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
