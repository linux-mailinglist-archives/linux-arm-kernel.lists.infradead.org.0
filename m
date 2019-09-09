Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FEBADCF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIKK716UAZbnjqTgAOLxchNQh1HF3A2TawWeT8dudao=; b=NIDt95LOZNQDxv
	iOD0yR93vacrT7NX07a9gP92mgCJbheV5O/WsC/XGadN3S0cFkCFOpfR4KHEbXwyZyjabRiqnuCHe
	UJJWRdYIaPTnFrRx4Vrw5qDEShWvyZI7X7UNuAmTin2gfDSkRaINercDh1kDN5jSjRfmSQ1hZ4B5M
	MjhjbwjHSkrroF9+s+zTQndvvQc6iGT46sB5xjRZkL5eT5CtO0WhXnFcaewKF/e8hXzEBLex8/anR
	O3wjj0el9aGB3gA1l+wMsBbDKy5njW5+wTosEg42QzoFY9oKhOwKRMXPnX0F9DLdXzykPUxwUk554
	A1r0bHGTxMhRjvK3dmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7MOA-0006rl-Go; Mon, 09 Sep 2019 16:19:38 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7MO0-0006qg-GG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 16:19:29 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7338D80BF;
 Mon,  9 Sep 2019 16:19:55 +0000 (UTC)
Date: Mon, 9 Sep 2019 09:19:21 -0700
From: Tony Lindgren <tony@atomide.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH] bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle()
Message-ID: <20190909161921.GN52127@atomide.com>
References: <20190906200154.6510-1-tony@atomide.com>
 <40e5c2a1-3682-584a-4eb9-4d96901bbfda@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40e5c2a1-3682-584a-4eb9-4d96901bbfda@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_091928_577891_C2C79120 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Keerthy <j-keerthy@ti.com> [190909 01:57]:
> I believe still the previous fix [1] for nfs boot is still not on
> linux-next. Are you planning on more testing or it will be queued as fixes?

I pushed out the pending fixes on Saturday so they should be in
the next version of Linux next.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
