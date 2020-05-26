Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546FA1E20C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVpipR/w7uhs7M1IYwsvN5e6SX0iVnik8iRpnFhPmgo=; b=FWFcnwV82h8Y/2
	UwCkNrm8p47TlAeFsdxMYiqsTbkTFMKbyJSh1HsKzMybRvaCzpNARXSb1thAN+X3omQSEDy/NuGaq
	3s9/ThnAAgrHnix9kZHNpIdsLkHTkH/DA4qYW4nssyaNIjVbz6j3DfIkGELjH3l7lCAeaf6j+3fyu
	bTLbZX1f5YbjqUplRK/E84tduQOsyVOgWw7x0mY2zkGn2uesWNC7gvGHwoyF8GS0UqjY054Of5bVs
	knE+R28dEkNFBOQ5G20gi5W4jgV1IVcJF/xgp31YMKpG51M2+N8CGMUOxwnOdBzeSs5kLf4UO8Ut3
	A4Up/pjfZGQ+DOuSRU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXbO-00075Y-3y; Tue, 26 May 2020 11:18:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXbC-000753-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6lrYl9/AU8kf7BRAZiJ/WNqQg6FKld5XALj2ECqgZuw=; b=rED9Tc5F37lwlh299LaxhwxP2
 gYlULzxMgyNUKMLcKieq642d/0UJYHt0TDwOoOzC8bHgaSBbUACgTqS3xKFSQqo56krETi0ecku7m
 rMWXbiaXAAaKWLYgWp88x9YrPcnRS3/AJEkaZIsxWnmo/P3zRaIW9z8shm+2CEvWa3EhC4+ZJ3h4F
 /T875qRa0uHpQM60MkHtZNSpsT6jjl2f3Eyq1s5g6trDMglKrmlWZy8vI8gaRlGWHToXSBbyHjqRf
 Bl5Yr/yHN75kUzxOPltfQfNqWV43WpoQ5Ln/yUVyRgNLyJUlIZoZ136vQcrM0WeXaBMV5t29em6zh
 84V0aL79g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:34742)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdXax-0007ec-OX; Tue, 26 May 2020 12:18:07 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdXau-0005KU-Ur; Tue, 26 May 2020 12:18:04 +0100
Date: Tue, 26 May 2020 12:18:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200526111804.GW1551@shell.armlinux.org.uk>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521081825.1348844-1-rppt@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_041822_505055_F0B45D02 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Doug Berger <opendmb@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> (resendig for the correct address and with mailing list cc'ed, sorry for
> the noise)

There are two patches in the patch system, submitted within minutes
of each other, with the same summary "Allow either FLATMEM or
SPARSEMEM on the multiplatform build" but the patch and commit messages
are different.  I guess the summary for one of the patches is wrong?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
