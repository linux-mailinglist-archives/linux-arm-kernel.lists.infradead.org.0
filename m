Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D325718F826
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNadFuss5EUmmsKvCoTDlEjJ/9kNaeRUnvJ/qHS9VBo=; b=gD1J0Y5Nf5Uv6N
	19y8Zxnyiqg5AZwZBczYDLxmrEOfUilD6dhYTHG/HgFLQNuigl1odla1YYDSrNmD4lKf181gV0sHA
	Q78NSR/oA87zM+al0ho+mlM1c26vlT4HpHodwdiXz6cQxOzbBG8+ZU3T+LASJDWPQXruhqpo9MRiM
	yxZ4O1yMEzWk95IMhANV91vb+Rx31sY2jjsRCU/dcmTWkAkxlEiJ9XqCGsq/rssA0/WeErWbo8jMH
	L1CgzYl2xu+CuXqXWbcRHXKr57Sewz8yWdHs7kZtcJvI78iXuMmwp5QVcXO/bOztdNp15mkSH+qgW
	LVn08B4rkioqCROcPP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOe0-0004Iy-Bp; Mon, 23 Mar 2020 15:05:36 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOcI-0003lU-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 15:03:52 +0000
IronPort-SDR: qhpG3lkJ5q+bnQlyX199KE08I20jqMTbZROUKKUfY4rj2X3QV5X04I9Gc9D+z/oxLpwn3ncAgr
 KuiKRXUAOy5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 08:03:48 -0700
IronPort-SDR: mHHNLNQ0A/+Zr0fMQurJa2EsXFsMlu2fBmkH6MHRuzF9OYszpfxRoiO3+8ENpbBRzAf6jj7yIa
 qbicpWu0OHiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="264800941"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 23 Mar 2020 08:03:44 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jGOcD-00CGr2-UD; Mon, 23 Mar 2020 17:03:45 +0200
Date: Mon, 23 Mar 2020 17:03:45 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v9 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200323150345.GP1922688@smile.fi.intel.com>
References: <20200323134437.259210-1-tali.perry1@gmail.com>
 <20200323134437.259210-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323134437.259210-2-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080350_593775_BDB98385 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, yuenn@google.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 wsa@the-dreams.de, brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 kfting@nuvoton.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 03:44:35PM +0200, Tali Perry wrote:
> Added device tree binding documentation for Nuvoton BMC
> NPCM I2C controller.
> 
> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/i2c/i2c-npcm7xx.txt   | 29 +++++++++++++++++++

Wouldn't be better to have it in YAML from the day 1?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
