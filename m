Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26421E2129
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geVtwRPN/GCyJUOYhiCrP6isHWZhUJNWLuN+2hZu7jE=; b=p0MvAnfeb5LNHi
	C6/9RzYD3qf3V9jQotiEKQhWs/X0K87DUj4hCKs7ZzmqqJ+qPHBE1PZZyOohW1CQjYqWy4qHFqFJL
	wgvtZhRxVgAeaYi+hnkXUNOed4OJpH7fPMxN/eZiZbS8YTfP6rwEd/QF2qM2ULrV4kS41rd0im+IS
	42eeCYZZ5AuD2jjIBBkil0QX3lQtPDgUj0XGut0VO2HVbMuqo5UiQT79YMjlgb/YzoNMTwQSdvQsf
	YCh0OjOOuza6SgC5Wa7+O7wdaJxnGru3lJkoeYqAvy/3gufhdK2cUb0Ek1KYIP43G7ylRXKCxUqJD
	KwMvqTL348tcmCoF7uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdY2e-0000kM-ID; Tue, 26 May 2020 11:46:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdY2U-0000jj-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dxo7p/GPn1Y54UFA5tirQOD60zgRrsj0y8qHprGhGnA=; b=u/rIaYAMQiH5TxrOjEB1XXGdo
 2MB8V4EIIzu5oa//eeTZnHQ//K17bzY52AKf6kYnADA1QXtBXznUy8aplP0Mz/fnvSuJKQH3rClNE
 /zmdep+Cthsh+J8/EePnFIUnBjpyuC1pfk1QywDhZqzalDQmYFig9adSRvlJ5oKbpePVL4MK9BIKl
 V1PRWCw9QYWD1fov8T4ZLTPTi4U2Dy8RPkMTJtpsBdBtQDyVxWBH5sV2DPy/4/27Sm36kNxPJMUjg
 qS9Xla45ZvmJGNmHSz1HvB9PVWNuiqQS/mTWSGUG1a9mB0uBGn6ZROFgey+opBHDPQ/LQvFjHhDye
 0UbUl31Kw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37198)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdY2N-0007hr-20; Tue, 26 May 2020 12:46:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdY2L-0005Ll-Vn; Tue, 26 May 2020 12:46:26 +0100
Date: Tue, 26 May 2020 12:46:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200526114625.GX1551@shell.armlinux.org.uk>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200526111804.GW1551@shell.armlinux.org.uk>
 <20200526114216.GI13212@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526114216.GI13212@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_044634_759712_7BCF6F41 
X-CRM114-Status: GOOD (  13.86  )
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

On Tue, May 26, 2020 at 02:42:16PM +0300, Mike Rapoport wrote:
> On Tue, May 26, 2020 at 12:18:04PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> > > (resendig for the correct address and with mailing list cc'ed, sorry for
> > > the noise)
> > 
> > There are two patches in the patch system, submitted within minutes
> > of each other, with the same summary "Allow either FLATMEM or
> > SPARSEMEM on the multiplatform build" but the patch and commit messages
> > are different.  I guess the summary for one of the patches is wrong?
> 
> Oops, my mistake.
> 
> The patch 8979/1 should have "ARM: Remove redundant
> ARCH_SPARSEMEM_DEFAULT setting" in its subject.

Thanks; updated the database with that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
