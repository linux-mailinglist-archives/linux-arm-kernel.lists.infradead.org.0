Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6E21D7D25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu3YTQxbZ/rXOVQJAb8qQ0dH5LWVifAlOBNWW2vYaac=; b=QZQqMtBG4vXjg7
	mui1N7a8Zg4KnHL/ps6FQ32VOJmbXnh4h52sJtfM75m73SOZDpjn6le8RZwO/sfG1lIDMuYcnfEG2
	oEK05FKwz1tF1E1rLMzmvradRdIm8366RXaJ9mmAR/WOj24aN1+0gwjaXvQFQxK1OcCkMapM9mEqo
	INTgI0CDoycJ6+pMhmpWcLV+XDjo1CJss6XhdJMI4LfIU4L/J5Jv7ei5973g0dU4DiKxNCkdOM8q6
	VT1f0srxPjAg9EHc0FOWRz5/ya9YNQJrhlkhFvYGnjPG7LKaTg9FwIzoFnzPrSNki67wBpZI3h9OD
	Y9n890KL4geEs0TJ3+Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahw2-0007GV-6V; Mon, 18 May 2020 15:44:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahvs-0007Fg-IM
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61E0C101E;
 Mon, 18 May 2020 08:43:59 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CDB43F52E;
 Mon, 18 May 2020 08:43:58 -0700 (PDT)
Date: Mon, 18 May 2020 16:43:55 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] usb/ohci-platform: Fix a warning when hibernating
Message-ID: <20200518154355.qzur4fy6wowjarwp@e107158-lin.cambridge.arm.com>
References: <20200424134800.4629-1-qais.yousef@arm.com>
 <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
 <20200518145748.puvxkcmyrxc7eqt7@e107158-lin.cambridge.arm.com>
 <20200518151940.GC15479@rowland.harvard.edu>
 <20200518153312.GA1963214@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518153312.GA1963214@kroah.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_084400_643656_BA01D1BB 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 Alan Stern <stern@rowland.harvard.edu>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/18/20 17:33, Greg Kroah-Hartman wrote:
> On Mon, May 18, 2020 at 11:19:40AM -0400, Alan Stern wrote:
> > On Mon, May 18, 2020 at 03:57:49PM +0100, Qais Yousef wrote:
> > > > For both this patch and the 3/3 patch (ehci-platform):
> > > > 
> > > > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> > > 
> > > Thanks Alan. Did this make it through to any tree? I don't see it on next, nor
> > > on Linus. But it could be queued somewhere else.
> > > 
> > > I have sent v2 to patch 2 (xhci) as a reply, so hopefully it wasn't missed.
> > > I can resend the whole series if necessary.
> > 
> > Greg, what happened to this series?  Did it just fall through the 
> > cracks?
> 
> No idea, it's not in my to-review queue, so maybe it got merged
> somewhere?  If not, can someone resend it please?

Sure, I'll get it out ASAP.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
