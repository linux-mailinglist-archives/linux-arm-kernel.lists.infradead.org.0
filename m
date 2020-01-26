Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273A149AE3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 14:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aM5dA09GJ3U5VB9qctVg9GIsMNDNKIqdvqZz10dUJQM=; b=byiP66K4Z1qZz7Z35BIOYisF2
	pViB8VJQo7RjRVx4bbdqcE7HDfA/ZHrIojTLwnW61K5UgQOKLRStZBEx/brNUc95NkIrOG7X9nIXd
	xalPAcNE5Rid/ceSIbN3cBICqjX+FEURBocWVI1iX0GdbPCGws/TV1XV/BDPGFcmeJbygOYofoWTC
	hXgwKlBmPDOwHPo2DakhMwqn5ptz+xaDt7wm1lTl48qv5GpHLaImiGeddVh5XaJ1La9mz2Cynnn8W
	w2lPaQKmIJE2pFiAEsoYf59Pjc6oEVGsP8DdYJeOD2Gujt8bD2ifbN62+TpWjkYPikU0dhCkywVQE
	X5F8wLwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iviLJ-00054X-5C; Sun, 26 Jan 2020 13:52:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviL6-000549-UD
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 13:52:38 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85E522071A;
 Sun, 26 Jan 2020 13:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580046754;
 bh=+7LKB1xL8oCsZCEnDQxyC4XBT9XlYBFD/1pH5kvY/2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1OyoJ/48HDBvyH8HqK3G5yNufElw7F1LISzDUCUPJZoRf/OyRtVexeMJla7Pta6EU
 TeIgsn4q7dodhiL9elZqfEKIl4+ZaZiFYjCzxayZnk0qOdj2IeUr2kFmmu5ybj2NjT
 lXPrP/nvVa/LlYSeN6rVrfozD9op6BHubKMnJvA0=
Date: Sun, 26 Jan 2020 08:52:33 -0500
From: Sasha Levin <sashal@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: Request to backport "Documentation: Document arm64 kpti control"
Message-ID: <20200126135233.GB11467@sasha-vm>
References: <520fee3a-4d14-9a78-e542-cce98acae9f6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <520fee3a-4d14-9a78-e542-cce98acae9f6@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_055236_998640_0E0AA37C 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 08:03:25PM -0800, Florian Fainelli wrote:
>Hi Greg, Sasha,
>
>Could you backport upstream commit
>de19055564c8f8f9d366f8db3395836da0b2176c ("Documentation: Document arm64
>kpti control") to the stable 4.9, 4.14 and 4.19 kernels since they all
>support the command line parameter.

Hey Florian,

We don't normally take documentation patches into stable trees.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
