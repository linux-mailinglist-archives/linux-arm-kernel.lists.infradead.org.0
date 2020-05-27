Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C21D1E3E07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GT+ZzdGwdTg4CWyT+2YFqDsd2elMJOEJDZqknITr5Oo=; b=Cil7mkGCLYXM43
	1czj4bJ07T35t9t63pXRyrxqKbdFZavyB7N1Om8t9yo6zWA6g3Q3IJ25zD56YQ3KBFSr5mQO8EcTt
	LOzR6YgqqtKPJ8QVNSLaJc0lZq2Ir3Jghe2yNuTe1if8ZYltdgVjeoXlnecuLV4lFhVf1C6WXLf2O
	7P1EPRzw/cOA5Gkv6+sL9K4NfYbZ8ZpGZ0a23gORvwjEovZ7YtqCCZOE/s6uTo+YrAq1I3IBQM8EI
	FijcYu9096b9ZM6h2rXsW1kUCxLAyVTHcK50vVnghL6vkektTE25MPQGZSrQR43D+HpRNv0zlFcv9
	EaYR8N+GmauJM6xhZeOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsiE-0006UC-N2; Wed, 27 May 2020 09:51:02 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsi2-0006TY-JI; Wed, 27 May 2020 09:50:51 +0000
IronPort-SDR: 4b/+s7mf5eyEvzHwkVuxqX1X7+CfMrhI2yjLeKoDiYeReYqlLEb7UIUvPr8CtHcncv+DoMMQde
 zPhPK91TN2Ug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 02:50:49 -0700
IronPort-SDR: Mpk22qHSCUEF+iHYmSQxTF0lRMvAwMP0sBMWTJsi4ktcES1nUbOrrFCdkCTNyzUKPAqvhboKdU
 a8eQS2oJ67pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="375978934"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2020 02:50:47 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jdsi2-009By8-Ob; Wed, 27 May 2020 12:50:50 +0300
Date: Wed, 27 May 2020 12:50:50 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v9 2/3] drivers: input: keyboard: Add mtk keypad driver
Message-ID: <20200527095050.GJ1634618@smile.fi.intel.com>
References: <20200527083137.56566-1-fengping.yu@mediatek.com>
 <20200527083137.56566-3-fengping.yu@mediatek.com>
 <20200527090048.wawdb5qkkhroyjtf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527090048.wawdb5qkkhroyjtf@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_025050_673502_F3FC5853 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: linux-mediatek@lists.infradead.org, Fengping Yu <fengping.yu@mediatek.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:00:48AM +0200, Marco Felsch wrote:
> On 20-05-27 16:31, Fengping Yu wrote:

> > +	irqnr = platform_get_irq(pdev, 0);
> > +	if (irqnr < 0)
> > +		return -irqnr;
> 		       ^
> 		       irqnr is already negative
> 
> > +	ret = devm_request_threaded_irq(&pdev->dev, irqnr,
> > +					NULL, kpd_irq_handler, 0,
> > +					MTK_KPD_NAME, keypad);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
> > +						irqnr, ret);
> 
> Still not alligned.
> 
> > +		return ret;
> > +	}

And on top, can't we use irq instead of irqnr?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
