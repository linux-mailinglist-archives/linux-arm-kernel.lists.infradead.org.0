Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4907A1C39B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OpknQ1ZU9fd6A5WCeRDRSZMXGHfIj2C2X8KFf0s4+w=; b=YjV3vLb6PKutMS
	MdDRJN/tGRgA/T+JSvCZQ7dJnj5umYJ68rCs9yypLRd2j9qREyLvH4DxHX7octga71SVap2K0dLQO
	vsxmudXCgfLcinKpBzLdWZknV5OQyXbzNEKZsG9eOUNJF9xwyX5mDbGJwtMMBoYtVazdOMlDTLutd
	CvkyvDRtzWITOvxqkWlB9NlU0a9Kdj6pXjRKPmCmDO8OSpEDJtD9Py51aF5nrQJD/3aLtmgn2C0Bd
	oFg2UNWRQohM2zm05yW+DgPSKbVG+/TtonPd9AfBOcB/I89s6PbUjDfOZjgc5yYEO8+qW3+gdo0do
	TNpIYdPr5OtQccroijmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaSK-0002h8-NX; Mon, 04 May 2020 12:44:20 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaSC-0002fI-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:44:13 +0000
IronPort-SDR: DHEthCLYP7+7XAC40BHsg9JlhP6ccB78ql3PwFG4dopfCasZW2k1Tpl4xj0oRGYASuv5ah23Vr
 nAvyITbLrgtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 05:44:10 -0700
IronPort-SDR: KhqKDB+iYXA1TW4urdP/SgxrIP6f3/fC+8/32rcZlxiVDgJWWofN7Aq/Rw3tQdAOwiriXUzUuY
 QeEBl1QfGwIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="434089333"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 04 May 2020 05:44:07 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jVaS9-004cHw-To; Mon, 04 May 2020 15:44:09 +0300
Date: Mon, 4 May 2020 15:44:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] i2c: drivers: Remove superfluous error message
Message-ID: <20200504124409.GG185537@smile.fi.intel.com>
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
 <20200504114408.9128-1-aishwaryarj100@gmail.com>
 <20200504124256.GF185537@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504124256.GF185537@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054412_093643_1A067841 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Thor Thayer <thor.thayer@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 03:42:56PM +0300, Andy Shevchenko wrote:
> On Mon, May 04, 2020 at 05:14:06PM +0530, Aishwarya Ramakrishnan wrote:
> > The function platform_get_irq can log an error by itself.
> > This omit a redundant message for exception handling in the
> > calling function.
> 
> FWIW,
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Wolfram, I didn't notice any updates in your public tree. Do you have plans to
push them this week?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
