Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EAE1CC168
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 14:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8Q1zMfBSxFD25sTHi/uijPYPqV3/lgao7YAabsq5LI=; b=k4cWxVMfDU5Tci
	yhjahLPHbu6qHWe/u+DoLi/kWoqSj6Hg6QPnkNzf+Kp4aWqj2bKe/23mHzq+S8sTiHr9Gmv2GHhM3
	Fm35MDKiL7tvyx7LMUU8//YHPYE90x7UoscPjOw8oXNDTs3joX3R5WIIle90LxPQfPzNkwuf5JpPz
	hlM5mu7Y2TkupUAtJtbBoNbyxXaYcBB+wvWxG4dt/R0UFVlVv6Cdg6CFqeadmr73ezsVEXWj1iTzW
	+lT7gTfwi9KCSC9FFpr3asBS3sSMFjK34ZEQsPRrA6acM7qOsHxTdm7Y5cRDemj15vtgASLUSnjrW
	rJdgCot6bAqmaID/fRYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOuo-0003LF-21; Sat, 09 May 2020 12:49:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOuh-0003KJ-C6
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 12:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ofKctXoH+m0Fuga5hDoLoGrcO5F7LTTcAmCfOo9W42Y=; b=lNsNpV+RcKH1Qn1rBTs5f8+rU
 68IqQuKpdatZdVlW7YhUTxVgK9SqODJiqutdr1KWEd7G/5bE++/3GcQ6m7yILOVf863J4u/HMxwFo
 kARNkY1UmQrgupIXrLOPXJxTdoq4GzprmkKmwAUXQ9Td0VJoGtSERY6kJonpRIV/kOiD7rGFr3kQZ
 P1E1g9d+rRpY0IwzgHtJFr7QTZFUBA2dZOake/tEAUUZZqnCbEih5Yn0GZaCY3YhZAig5s1/qFF/T
 hVGG15CbxeenQIkNhnJ2QYReFGBKfbtcRJmVcc3MQbQBnkopfsd68tBV0TKqQ2QZK5MKayqas+HUn
 CTOloW3nQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38016)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXOuO-0003qz-Ck; Sat, 09 May 2020 13:48:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXOuJ-0002rh-R8; Sat, 09 May 2020 13:48:43 +0100
Date: Sat, 9 May 2020 13:48:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200509124843.GC1551@shell.armlinux.org.uk>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
 <20200509141644.29861e96@windsurf.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509141644.29861e96@windsurf.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_054907_416804_13407550 
X-CRM114-Status: GOOD (  14.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Matteo Croce <mcroce@redhat.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 02:16:44PM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> On Sat, 9 May 2020 12:45:18 +0100
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> > Looking at the timeline here, it looks like Matteo raised the issue
> > very quickly after the patch was sent on the 14th April, and despite
> > following up on it, despite me following up on it, bootlin have
> > remained quiet.
> 
> Unfortunately, we are no longer actively working on Marvell platform
> support at the moment. We might have a look on a best effort basis, but
> this is potentially a non-trivial issue, so I'm not sure when we will
> have the chance to investigate and fix this.

That may be the case, but that doesn't excuse the fact that we have a
regression and we need to do something.

Please can you suggest how we resolve this regression prior to
5.7-final?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
