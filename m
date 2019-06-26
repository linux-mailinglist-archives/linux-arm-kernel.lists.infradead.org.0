Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3F056EFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVDIdTUT0t7wSfzLuMXl0RJ9mc3UbrhgEdzRQzt07zE=; b=ixwkrJAKFq5kat
	pZjNFc+y3ZiyKVLFJv+cvrtH+8xByoAzcUosCWdnJD23M8I09I6fhNhdlv2Os/76QRMmAfSKXMUZ1
	z/ok1Q0NrQjHJ1BS663qWmRxdeKC/l3JqgESY2nzYzBAH05XbQ5XFrWD5hBsKMhk0XlKImkIKDNDA
	181vHwsM2H5ohROJIriYCEC8g+2vbepKSUSD7qwmHnuBf8Qu+yvp7lElf2WrVN+0EbTsi94LbT9NF
	Twl59YiHczpvClKhGyrTGknzAB572Xj3dgM3hmXJTifhjP5JEm+1qozfIljZTJfHbDYCQJgP2akBQ
	qTq11ocsZyCSaw79o2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAzx-0000mE-R4; Wed, 26 Jun 2019 16:42:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAzj-0000lb-Qn
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:42:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEB212B;
 Wed, 26 Jun 2019 09:42:02 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C75D3F706;
 Wed, 26 Jun 2019 09:42:02 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:42:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: [PATCH arm] Use common outgoing-CPU-notification code
Message-ID: <20190626164159.GI20635@lakrids.cambridge.arm.com>
References: <20190611192410.GA27930@linux.ibm.com>
 <20190617115809.GA3767@lakrids.cambridge.arm.com>
 <20190617130657.GL26519@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617130657.GL26519@linux.ibm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_094203_918172_348C8EBA 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: linux@arm.linux.org.uk, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:06:57AM -0700, Paul E. McKenney wrote:
> On Mon, Jun 17, 2019 at 12:58:19PM +0100, Mark Rutland wrote:
> > On Tue, Jun 11, 2019 at 12:24:10PM -0700, Paul E. McKenney wrote:
> > > This commit removes the open-coded CPU-offline notification with new
> > > common code.  In particular, this change avoids calling scheduler code
> > > using RCU from an offline CPU that RCU is ignoring.  This is a minimal
> > > change.  A more intrusive change might invoke the cpu_check_up_prepare()
> > > and cpu_set_state_online() functions at CPU-online time, which would
> > > allow onlining throw an error if the CPU did not go offline properly.
> > > 
> > > Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: Russell King <linux@arm.linux.org.uk>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> > 
> > FWIW:
> > 
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > On the assumption that Russell is ok with this, I think this should be
> > dropped into the ARM patch system [1].
> > 
> > Paul, are you familiar with that, or would you prefer that someone else
> > submits the patch there? I can do so if you'd like.
> 
> I never have used this system, so please do drop it in there!  Let me
> know when you have done so, and I will then drop it from -rcu.

After testing that multi_v7_defconfig built, I've just submitted this as
8872/1:

  https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8872/1

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
