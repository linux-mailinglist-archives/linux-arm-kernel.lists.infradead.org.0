Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429321B78F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pq2HJ/U1hghs49GqX6QsiU7Ny+/FlLmLYwLheDZvQ+0=; b=cR7THa7ShgXTC2
	TzMtE5Z1snwY0q9+uL5JlXGcCZlu/EJWhlZu6J2YNhAUFX9bg9k/uEOMN9r26/iwVgDERxo1MKJcU
	FU7vhsAMSG8Z/06a0tHKPsgGhMy51cr1ihCanrDs93zZjyCB+G7yNH3P/h4su4W4EhOJfSHMqCdMS
	OSwBylpBgPgX/ILbUW2Vv8287xEo+2bMmrDJBIdGfPpAO0sKTVca5MF0/LZQHw6j17iljDMW1sT/i
	A1Wj/DwVYgwV7MXCxMTWccLlZ0dpwQ+ZvPmGKCGW1BULiA1xN1E/uH/K+Go7aSbXyTeh/q0Qn/D2/
	sBTw5zRxUCv/ShR0I6xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzyX-0002iy-2A; Fri, 24 Apr 2020 15:10:45 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzyQ-0002g2-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:10:40 +0000
Received: (qmail 5128 invoked by uid 500); 24 Apr 2020 11:03:47 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 24 Apr 2020 11:03:47 -0400
Date: Fri, 24 Apr 2020 11:03:47 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH 2/3] usb/xhci-plat: Set PM runtime as active on resume
In-Reply-To: <20200424134800.4629-2-qais.yousef@arm.com>
Message-ID: <Pine.LNX.4.44L0.2004241102400.2596-100000@netrider.rowland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081038_722539_369F18DC 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020, Qais Yousef wrote:

> Follow suit of ohci-platform.c and perform pm_runtime_set_active() on
> resume.
> 
> ohci-platform.c had a warning reported due to the missing
> pm_runtime_set_active() [1].
> 
> [1] https://lore.kernel.org/lkml/20200323143857.db5zphxhq4hz3hmd@e107158-lin.cambridge.arm.com/
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Tony Prisk <linux@prisktech.co.nz>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: Mathias Nyman <mathias.nyman@intel.com>
> CC: Oliver Neukum <oneukum@suse.de>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-usb@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
> 
> xhci_resume() here could fail, I wasn't sure if we need to call
> pm_runtime_set_active() unconditionally. I assumed not.
> 
> There was another function xhci_plat_resume(), I think we just care about the
> PM runtime resume callback only.
> 
> Please have a closer look.

No, it's the other way around.  The function you want to change is the 
one used for system resume, not runtime resume.

Alan Stern


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
