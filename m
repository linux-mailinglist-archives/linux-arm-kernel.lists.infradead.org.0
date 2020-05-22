Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67461DE6F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/ao9eGmMI2tov09WjGGQWlcBAyXlxVi4kEo7d1bq60=; b=P1hV6hBG87hdVt
	/jR1p6FbJWp83bk/6ztUBXCsPd+W0oDIzTXv4xrkb/2PRamOppuk8JecQLWFg/qCj4ktFZr1xI8xk
	KzvrZE1gTbvx2SohSuFwWwD73ZP2P7qT1LozqwpZokSQPtVcbH32WtDyn9JbzXcGV586D92Prg1PF
	FmHxhGnuasgQAaMvCBI+YWD4cYkVR4cg7NOqLUV1LHV5+0IK+XJ3eYmEiqER47+r3Uba9UZI2AY50
	E8ef8AOoemU1faHSzUSQw6EzY1eH/K5O7vWGltFzmq3Xc/vdobJhS1WQC4iLCVNIFMIPA4MmwYaHx
	lBPeYfH9iV7dvP0pKBKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6rC-0001KB-Sf; Fri, 22 May 2020 12:32:58 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6r3-0001Jh-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:32:50 +0000
IronPort-SDR: xmM0PVvxiehbcCElUOlEayaglZQS3JM6gvXKeEGyumWNMNS+IlhhflpPz59ge/rJBcyDxaDmzC
 s3JMRAQWNDNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 05:32:49 -0700
IronPort-SDR: gdNOhWPiD26Qwsk/8U/6trhMNaOkd6iMPsw+64KEMYwuMKrff1ja/OqQ3CbSLJRswf4BsofcDC
 tkglDYyxrfwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,421,1583222400"; d="scan'208";a="309358979"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by FMSMGA003.fm.intel.com with ESMTP; 22 May 2020 05:32:46 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jc6r2-008EIs-Rz; Fri, 22 May 2020 15:32:48 +0300
Date: Fri, 22 May 2020 15:32:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v13 3/3] i2c: npcm7xx: Add support for slave mode for
 Nuvoton
Message-ID: <20200522123248.GC1634618@smile.fi.intel.com>
References: <20200522113312.181413-1-tali.perry1@gmail.com>
 <20200522113312.181413-4-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522113312.181413-4-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_053249_708526_F216A5E3 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, yuenn@google.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 wsa@the-dreams.de, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, kfting@nuvoton.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 02:33:12PM +0300, Tali Perry wrote:
> Add support for slave mode for Nuvoton
> NPCM BMC I2C controller driver.

I guess it will require v14, so, few nits below.

...

> +const int npcm_i2caddr[I2C_NUM_OWN_ADDR] = {
> +					    NPCM_I2CADDR1, NPCM_I2CADDR2,
> +					    NPCM_I2CADDR3, NPCM_I2CADDR4,
> +					    NPCM_I2CADDR5, NPCM_I2CADDR6,
> +					    NPCM_I2CADDR7, NPCM_I2CADDR8,
> +					    NPCM_I2CADDR9, NPCM_I2CADDR10,

One TAB is enough.

> +					   };

No need to indent at all.

...

> +	/* Set and enable the address */
> +	iowrite8(sa_reg, bus->reg + npcm_i2caddr[(int)addr_type]);

I'm wondering why you need a casting here.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
