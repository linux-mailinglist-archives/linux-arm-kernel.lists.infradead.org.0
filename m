Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63E185EF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37swqycbtqvsYAxcAdno7vvT+I6AjDyr6XttqiRhHPs=; b=JvLva3XUGN33bA
	+fuePaVQZgP4MQ8ouEh9Nda5IkrCBdXi0MzmZq5WwpoGq6QC/XSP42DFC0jgbTgoR6jlMVwoUyZ5p
	zy+1/FbwpUogOOmXaOW/Vm7OsN3RgljfsoYnS0HjPXTOzGGF2WkrmTNjUBPn+7HoOodI8AuMQ9+Z7
	C4daQgS7WoMNNU9E59pTZuuhQLUoh3lu6zCmPiMCNUXrzldie0ihGbXoGtU5Krl7PKFVoAUfcRh8Y
	4CfiO16YFcFyRU26+jGoAiux3xftkszyeYfQPslKLgQniY+lue8ij1oKgbcrMBbgSzRVaGYMZqaUd
	rNumwEdKStWJcmc6mxTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvf16-00031E-F5; Thu, 08 Aug 2019 09:47:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvf0p-00030T-DW
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:47:13 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hvf0l-0004Ss-Pv; Thu, 08 Aug 2019 11:47:07 +0200
Message-ID: <1565257627.3656.6.camel@pengutronix.de>
Subject: Re: [PATCH v2] firmware: arm_scmi: Use
 {get,put}_unaligned_le{32,64} accessors
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Date: Thu, 08 Aug 2019 11:47:07 +0200
In-Reply-To: <20190807173739.5939-1-sudeep.holla@arm.com>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
 <20190807173739.5939-1-sudeep.holla@arm.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_024711_470446_01798C70 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 18:37 +0100, Sudeep Holla wrote:
> Instead of type-casting the {tx,rx}.buf all over the place while
> accessing them to read/write __le{32,64} from/to the firmware, let's
> use the existing {get,put}_unaligned_le{32,64} accessors to hide all
> the type cast ugliness.
> 
> Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
