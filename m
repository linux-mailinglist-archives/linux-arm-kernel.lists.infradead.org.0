Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E492ADB395
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9o4Ib7ogmO2e8EKtNonnUPxRt0zJ3D3sCU7cduSIng=; b=RCWvomW0ojiwa4
	yHtCL4I9cCEwXzAITuooPpV7KmZmVsyR6cZrFVooIMRdx6w9C4ZV7A+4XHS+xscIiFqdQLheAPPzI
	j1UUc1R7TR+up+iBm1HbNioneOjutQaR1DSvdma2m6+ayWUap83zOvO+OpGSKM4LM/S+El8IzwCUX
	NmIqdR99k9Bvjl3iVm1q/ulPC3xRtB+7IzjsxxxYp1QWbgqe1LFt36YhpZSUReBMUKNr+2fIrGv/I
	How0B9Y01iplq+7hJeifbebLFSVjqogWrcMTxptYTrsb1Pv/1yYSep5ZjzMS7tj/zpsHO16BUE49y
	qrVrgZkarsydBIlh4t1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9mb-000266-3G; Thu, 17 Oct 2019 17:41:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9mN-00025N-FP; Thu, 17 Oct 2019 17:41:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8A3BBB175;
 Thu, 17 Oct 2019 17:41:37 +0000 (UTC)
Date: Thu, 17 Oct 2019 19:41:33 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191017174133.e4uhsp77zod5vbef@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
 <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
 <6f445327-a2bc-fa75-a70a-c117f2205ecd@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f445327-a2bc-fa75-a70a-c117f2205ecd@gmx.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104139_661355_A1920C82 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 netdev@vger.kernel.org, UNGLinuxDriver@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Thu, Oct 17, 2019 at 07:05:32PM +0200, Stefan Wahren wrote:
> Am 17.10.19 um 08:52 schrieb Daniel Wagner:
> > On Wed, Oct 16, 2019 at 05:51:07PM +0200, Andrew Lunn wrote:
> >> Please could you give this a go. It is totally untested, not even
> >> compile tested...
> > Sure. The system boots but ther is one splat:
> >
> this is a known issues since 4.20 [1], [2]. So not related to the crash.

Oh, I see.

> Unfortunately, you didn't wrote which kernel version works for you
> (except of this splat). Only 5.3 or 5.4-rc3 too?

With v5.2.20 I was able to boot the system. But after this discussion
I would say that was just luck. The race seems to exist for longer and
only with my 'special' config I am able to reproduce it.

> [1] - https://marc.info/?l=linux-netdev&m=154604180927252&w=2
> [2] - https://patchwork.kernel.org/patch/10888797/

Indeed, the irq domain code looks suspicious and Marc pointed out that
is dead wrong. Could we just go with [2] and fix this up?

Thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
