Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B149C3D32D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7o4UoTi+2u9JR/ProAuaO7nFg01ptWAPSAEMWTXG5XE=; b=c0f56dSKBKTAdy
	U1+2Moc5+fxUzuo9EV2SVbTqWkXTbsuYZdAeWrKk8wjPUj9Q27IJEChan6sLbyQKgl7UjzuiTVp9n
	PfxoQ5W79FUNeVDf1X39uafdYOHdM2a72YzKVOnUUIkVW6WI/O+tAJBfwn+OExR1jAFNnBNKKB9KP
	apwN+E+5CMc4HbSs72x4uwYEUs1PJfCARZ+8OnZrfjlw645A5ctqcoouFmaNAzH4/GTh72o9QKNGD
	614W29yaDf0d77aT5Hppcf78BeoctoY3scfQfIq0eBgFVhBcFlGxtscT9G5MuU0FZy/v9XcLQUyp4
	zEMSkoUhCNfSy5mza4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hak9W-00005l-Oe; Tue, 11 Jun 2019 17:01:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hak9L-0008WM-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:01:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EE85337;
 Tue, 11 Jun 2019 10:01:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20C3D3F73C;
 Tue, 11 Jun 2019 10:01:29 -0700 (PDT)
Date: Tue, 11 Jun 2019 18:01:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH 1/7] perf: arm64: Compile tests unconditionally
Message-ID: <20190611170126.GH29008@lakrids.cambridge.arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-2-raphael.gault@arm.com>
 <20190611140907.GF29008@lakrids.cambridge.arm.com>
 <20190611142356.GA28689@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611142356.GA28689@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100131_492726_84E36BB5 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:23:56AM -0300, Arnaldo Carvalho de Melo wrote:
> Em Tue, Jun 11, 2019 at 03:09:07PM +0100, Mark Rutland escreveu:
> > On Tue, Jun 11, 2019 at 01:53:09PM +0100, Raphael Gault wrote:
> > > In order to subsequently add more tests for the arm64 architecture
> > > we compile the tests target for arm64 systematically.
> > 
> > Given prior questions regarding this commit, it's probably worth
> > spelling things out more explicitly, e.g.
> > 
> >   Currently we only build the arm64/tests directory if
> >   CONFIG_DWARF_UNWIND is selected, which is fine as the only test we
> >   have is arm64/tests/dwarf-unwind.o.
> > 
> >   So that we can add more tests to the test directory, let's
> >   unconditionally build the directory, but conditionally build
> >   dwarf-unwind.o depending on CONFIG_DWARF_UNWIND.
> > 
> >   There should be no functional change as a result of this patch.
> > 
> > > 
> > > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > 
> > Either way, the patch looks good to me:
> > 
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> I'll update the comment, collect your Acked-by and apply the patch.

That's great, thanks!

As a heads-up, there are still open ABI discussions to be had on the
rest of the series, so while review would be appreciated, it would be
best to hold off applying the remaining userspace bits for now.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
