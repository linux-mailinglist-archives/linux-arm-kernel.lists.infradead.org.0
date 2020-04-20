Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BE71B06DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4In03m7AMVBSwxSEfNCESj/YYG9kPH4MmuvJkkfOpM=; b=ccVMMf7MWjOPKj
	XJQIG5Ddvn/ww21j+2m0TtlNVOZN2MZkobHasAlLmloyoNsBI+SdsBg9tN4+oGJvsCKp0ceqaB5BM
	IAhlgiIeWBOYItenH0u6xzfZ8eq1sRBcyGslm5bAWeNcDRpYL0BNOBMpNsdKKMc23PhX3g96wZKf0
	kFsFMXleuYe6gvP9hQurCM+wmFg0wLmWQ71G8T51csGCqbW2vYwdMw6kAbV/McyfrrXRfupPN1n4w
	U9PaLwjXm70QSUNYt1Vkqfy92zuTcjVxWe/LNeoWVzr+J+PeCteia7HmKi1Myt1bB4EzPhL3RZ2E6
	vcjxYhsc/kFsJIIVblZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTyg-0005wd-4j; Mon, 20 Apr 2020 10:48:38 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTyX-0005mw-5c; Mon, 20 Apr 2020 10:48:30 +0000
IronPort-SDR: xvg4JcvPSNgzezY0YG+9seuLxV1clIlBXwwGmw58jxogUEilPH5RlvkK8Pmi/0SObpLMoqdes+
 j8+C/n3Yizew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 03:46:27 -0700
IronPort-SDR: gqUa2NhFFBxpA+ZVLvhBn8RJ1hvpe6GB49JVUbOyEeRIcPXjthoaV+XHMwtDv7/Aw2elwXYQsb
 57n4HI9A7boQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="456343723"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 20 Apr 2020 03:46:22 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jQTwW-0020d9-Vj; Mon, 20 Apr 2020 13:46:24 +0300
Date: Mon, 20 Apr 2020 13:46:24 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: sean.wang@mediatek.com
Subject: Re: [PATCH v2] tty: serial: don't do termios for BTIF
Message-ID: <20200420104624.GM185537@smile.fi.intel.com>
References: <8c47aea3aa3cce4d7484b840ddb117cd16bcf1cc.1587347988.git.sean.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c47aea3aa3cce4d7484b840ddb117cd16bcf1cc.1587347988.git.sean.wang@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_034829_263234_0B682BE9 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
Cc: heikki.krogerus@linux.intel.com, david@lechnology.com, arnd@arndb.de,
 linux-serial@vger.kernel.org, Steven Liu <steven.liu@mediatek.com>,
 gregkh@linuxfoundation.org, hpeter@gmail.com, linux-kernel@vger.kernel.org,
 tthayer@opensource.altera.com, Ryder Lee <ryder.lee@mediatek.com>,
 jan.kiszka@siemens.com, joel@jms.id.au, p.zabel@pengutronix.de,
 jslaby@suse.com, matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
 robert.jarzmik@free.fr, linux-arm-kernel@lists.infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:06:38AM +0800, sean.wang@mediatek.com wrote:
> From: Sean Wang <sean.wang@mediatek.com>
> 
> Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC with
> BT in order to be instead of the UART interface between BT module and Host
> CPU, and not exported to user space to access.
> 
> As the UART design, BTIF will be an APB slave and can transmit or receive
> data by MCU access, but doesn't provide termios function like baudrate and
> flow control setup.
> 
> Even LCR on offset 0xC that is just a FAKELCR
> a. If FAKELCR[7] is equaled to 1, RBR(0x00), THR(0x00), IER(0x04)
>    will not be readable/writable.
> 
> b. If FAKELCR is equaled to 0xBF, RBR(0x00), THR(0x00), IER(0x04),
>    IIR(0x08), and LSR(0x14) will not be readable/writable.
> 
> So adding a new capability 'UART_CAP_NMOD' for the unusual unsupported
> case.

...

> +#define UART_CAP_NMOD	(1 << 18)	/* UART doesn't do termios */

I would rather spell it as NTIO or NO_TIO (as TIO is a well established prefix
for termios IOCTLs).


-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
