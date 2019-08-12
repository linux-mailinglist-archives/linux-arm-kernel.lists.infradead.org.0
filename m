Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280F189F6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=art0IXvXZtNEG5msKglXwzWxI7Lz1jw+hnYhAo5wpZk=; b=pyLL2VFDpApPrx
	yufZkwpGzJKPxtg7jjZTT0mWD1BI1MSjpB2mti0vyvujG9S8pD7VZwgn1uQabk0qDnoXn4CVzFiqQ
	f8iM2FiLINWaAvmy3dQV19FELkCI9TPpklZQwwsx53F+5t1dXOniWYzJuXyR68M1IdhX/jiZ9v+0S
	frv5xva/uPp4vBT3CneGv86j+ynQKXhgKsWjLeBOLgUEKGIbcwerp79mu+tmwcIszqoIcoTjSKmtD
	jTRxYhEDNdSP717BnanzkXh+jmjWpnMg7bgpumD4pmbLLsdpYQUuxbYh7PC8WcPDbjTGVyoza+tJO
	wnk7MCdTXXWCiYwiJ5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxABU-0003De-Ak; Mon, 12 Aug 2019 13:16:24 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxABH-0003D7-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:16:12 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D0620306028B;
 Mon, 12 Aug 2019 13:16:09 +0000 (UTC)
Received: from pauld.bos.csb (dhcp-17-51.bos.redhat.com [10.18.17.51])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6912F1000321;
 Mon, 12 Aug 2019 13:16:08 +0000 (UTC)
Date: Mon, 12 Aug 2019 09:16:06 -0400
From: Phil Auld <pauld@redhat.com>
To: Will Deacon <will@kernel.org>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#895
 (master - 2a3984b)
Message-ID: <20190812131606.GB11058@pauld.bos.csb>
References: <ClangBuiltLinux/continuous-integration+122566420+broken@travis-ci.com>
 <5d4d7164795c7_43f9afa8b58b0242711@29afa0b1-fa00-407e-a40e-a8edb471126a.mail>
 <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
 <20190812125414.3zeysojdycfuowyy@willie-the-truck>
 <20190812125542.eiv5cfjpfj3oke2p@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812125542.eiv5cfjpfj3oke2p@willie-the-truck>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 12 Aug 2019 13:16:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_061611_272534_E8C7562D 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will.deacon@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, dietmar.eggemann@arm.com,
 linux-next@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Mark Brown <mark.brown@linaro.org>, tglx@linutronix.de,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 01:55:43PM +0100 Will Deacon wrote:
> On Mon, Aug 12, 2019 at 01:54:14PM +0100, Will Deacon wrote:
> > Phil -- is there a fix queued for this somewhere?
> 
> Ha, tglx beat me by two minutes. This is now fixed in -tip.
> 
> Will

Yeah, it's now fixed. Sorry about that...


Cheers,
Phil
-- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
