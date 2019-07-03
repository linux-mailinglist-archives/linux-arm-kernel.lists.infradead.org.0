Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73D65E292
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCrazHHDTDHMFUvpplt68w2XQSAcACvaW+LOAoVfA5s=; b=GCiehiXmv5Y+Bg
	VSpS4GiDH0uA27Hpxbng/587EulzX+OzFGmXbNzQAEk9BLIp/83R+q0G0SY6dOImG7CDxPxev6kd5
	iYjDGuoNAodL0IDpAM+5uuHksuNCyfaUQTKXuNZmiHu8CSM4oXNx2bK6TwqOKgvRb/tK3jVTLYEz8
	2+MH2wOa+/qRvYRMVZLo7W22ZYU6z2z0koS0wpS6AQDUghSZyJVHY0cWwj9lzOYHYGAQHEp1U6FP/
	YFskaZsYxPaQnw+CepLCvdXLjgSPX+boY6LaXm93laOd70gqKJzykU+txwpp+TN6pyNyWjunchfA4
	xFxZVpEZ8WxYK2JyzB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hid7A-0004vO-3s; Wed, 03 Jul 2019 11:07:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hid6u-0004tx-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:07:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 882C7344;
 Wed,  3 Jul 2019 04:07:34 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D44E3F703;
 Wed,  3 Jul 2019 04:07:33 -0700 (PDT)
Date: Wed, 3 Jul 2019 12:07:31 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH kvmtool v4 0/8] arm64: Pointer Authentication and SVE
 support
Message-ID: <20190703110730.GS2790@e103592.cambridge.arm.com>
References: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
 <20190703093537.GC3122@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703093537.GC3122@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_040736_437015_239139FF 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 10:35:37AM +0100, Will Deacon wrote:
> On Fri, Jun 07, 2019 at 12:26:21PM +0100, Dave Martin wrote:
> > This series, based on kvmtool master [1], implements basic support for
> > pointer authentication and SVE for guests.  This superseded the
> > previous v3 series [2].
> 
> I'd prefer to use the release headers for 5.2, so I've taken the first three
> patches for now, but I'll wait for you to repost once 5.2 is out before I
> take the rest.

Ack 

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
