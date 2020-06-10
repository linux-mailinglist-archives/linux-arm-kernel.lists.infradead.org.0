Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD2F1F5013
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqsvBYSlec96t816c0/YKAVtZr+efrkuAAA7gvzJ3gM=; b=Q+zhgmCdqvJrjT
	2Y6loDEYPDXaWDIvWSbVfIm2Iu0cYJcxA1OwCsbjZWurpBBtSi5AgPS5jhkPgKQylhhj2/DJXk+OF
	gAFwg0pJq2vKNRJ6+Y5yOIf1UDRo0p/a/uVEfX1PwDn5h3DTH6Y/uEphY57Il5KeQ78sRO2428FtA
	2eHJLuyVoLVY6ZTCsmfZPJdarlnhn4cCbmiYDd+a8as4tn7r7VQ16Mwgo2h3P+JkfYTwMSZg7oiPN
	a9i4QJdh5QLT9uQRhIiKj9iTPdpYDa8AoOG0upiiQy7T/T0aR/HRee8UgEBPIMnPBhL92+1ywgvLS
	zUe/hFaNcreMq5hWtmzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivq6-0006dF-UV; Wed, 10 Jun 2020 08:12:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivoV-0004zy-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:10:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE6251F1;
 Wed, 10 Jun 2020 01:10:21 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAA883F6CF;
 Wed, 10 Jun 2020 01:10:18 -0700 (PDT)
Date: Wed, 10 Jun 2020 09:10:11 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 0/3] firmware: Add support for PSA FF-A interface
Message-ID: <20200610081011.GA2689@bogus>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200604133746.GA2951@willie-the-truck>
 <20200609174123.GA5732@bogus>
 <20200610075711.GC15939@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610075711.GC15939@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_011023_382984_5074DC79 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, qwandor@google.com,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ardb@kernel.org, tabba@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Wed, Jun 10, 2020 at 08:57:12AM +0100, Will Deacon wrote:
> Hi Sudeep,
>
> On Tue, Jun 09, 2020 at 06:41:23PM +0100, Sudeep Holla wrote:

[...]

> >
> > Agreed, I added for RxTx buffers and initially to build the parent/child
> > hierarchy for all users of the driver. Initially I was assuming only
> > in-kernel users and now I agree we should avoid any in kernel users if
> > possible.
> >
> > One thing to note FFA_PARTITION_INFO_GET relies on Rx buffers to send the
> > information to the caller. So we need to have established buffers before
> > that and one of the reason you don't find that in this RFC. I dropped that
> > too which I wanted initially.
>
> Ok, sounds like we should at least get to a position where we can enumerate
> things, though.
>

Yes.

[...]

> >
> > OK, IIUC that covers mostly KVM implementation. We still need a way to
> > share the RxTx buffer info to the partitions and DT/ACPI(?) is one
> > possible way. Based on you comment about not needing DT node, do you have
> > any other way to communicate the buffer info to the partitions ?
>
> This is only a concern if KVM chooses to provide the Rx/Tx buffer pair
> though, right? If we punt that down the road for the moment, then we can
> just rely on FFA_RXTX_MAP for now.
>

Ah OK, I was under the assumption that we didn't want to use FFA_RXTX_{,UN}MAP

[...]

> >
> > I am confused a bit. When you refer drivers above, are you referring to
> > drivers in host kernel(hypervisor) or in the partitions. I fail to
> > imagine need for the former.
>
> I'm referring to in-kernel users in the host kernel. For KVM-managed guests,
> we may not need these, although signalling things like system shutdown might
> be better off done without relying on userspace. But my point is really that
> separating the buffer management from the users means we can serialise
> consumers, whether they are in-kernel or out in userspace.
>

Understood.

> > > What do you think, and do you reckon you can spin a cut-down driver that
> > > implements the common part of the logic (since I know you've written much
> > > of this code already)?
> > >
> >
> > I am not sure if I am aligned with your thoughts on the buffer sharing
> > yet.
>
> Ok, please let me know if you have any more questions.
>

None ATM. As I mentioned I had ruled out RXTX_{,UN}MAP which was my
misunderstanding.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
