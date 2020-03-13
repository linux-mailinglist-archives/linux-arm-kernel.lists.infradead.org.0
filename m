Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217F01846C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6984Mtc3RsxBGZUK4tlX1N9yOABtXwz2EzatbgdL2Vs=; b=ELw/MG9I12152y
	jZ1xS2EdDfCe8n/pU3abE825CbMLPfwiKsoSE2yob5Uf2aqXOk/vh/sDjCLG0s4c9lGfjpMJQzkGx
	4Ccs0S/SPiNzlYbGneuynDu1dTcHfNy5EgsVda29P79k1aPDC6S6ay5/VlXCDYst0FJsdqu3xzD+7
	veZ0NoNhSSf6Bw9Od0eOIJt43wdkLkfOF7yn22jrIQHisHLOJVEsHltvRk6Iacj0X/+CjjenIy/WN
	kTlZF3yjGlNWkbN4XiAHOkGeWcK078dnZXXASP6fWdElfueT52Vfc7YjNumkzU+nZN2InyR5tv8wo
	zYApbHavlPvVtDimTXlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjLA-0002KR-Pz; Fri, 13 Mar 2020 12:23:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjKy-0002JU-W9
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:22:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 229FA30E;
 Fri, 13 Mar 2020 05:22:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D4143F534;
 Fri, 13 Mar 2020 05:22:47 -0700 (PDT)
Date: Fri, 13 Mar 2020 12:22:45 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Xiao Yang <yangx.jy@cn.fujitsu.com>
Subject: Re: Current status about arm64 livepatch support
Message-ID: <20200313122244.GI42546@lakrids.cambridge.arm.com>
References: <5E5F5647.3040705@cn.fujitsu.com> <5E6AEF8B.4090905@cn.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5E6AEF8B.4090905@cn.fujitsu.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_052249_074323_32F0A240 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Torsten Duwe <duwe@suse.de>, Mark Brown <broonie@kernel.org>,
 Torsten Duwe <duwe@lst.de>, Julien Thierry <jthierry@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 10:27:23AM +0800, Xiao Yang wrote:
> Hi,
> 
> Ping.
> 
> Best Regards,
> Xiao Yang
> 
> On 2020/3/4 15:18, Xiao Yang wrote:
> > Hi Torsten,
> > 
> > Sorry to bother you.
> > 
> > I focus on arm64 livepatch support recently and saw that you have tried
> > to implement it by:
> > -------------------------------------------------------------------------------
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609126.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609124.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609125.html
> > -------------------------------------------------------------------------------
> > 
> > This patch set seems to be blocked because of some issues, but your
> > another patch set inlcuding the first one "arm64: implement ftrace with
> > regs" has been merged into upstream kernel:
> > -------------------------------------------------------------------------------
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631104.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631107.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631105.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631106.html
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631114.html
> > --------------------------------------------------------------------------------
> > 
> > Could you tell me current status about arm64 livepatch support?
> > For example:
> > 1) Are you(or someone) still working on arm64 livepatch support?
> > 2) Are there some unresolved problems about arm64 livepatch support?
> >     What are they?
> > 3) Will you send a newer version for arm64 livepatch support recently?

1) I beleive a few people are working on portions of this.

2) I believe that some work is necessary.

   Julien Thierry has done some work on objtool, which is necessary to
   check ensure that sequences (including assembly functions) manipulate
   the stack, and calls/returns as we expect. Mark Brown has been
   converting our assembly to use modern annotations which objtool
   consumes when checking this.

   There might be additional assembly work necessary for this, depending
   on any deecisions we make for objtool.

   For reliable stack tracing we may need to rework some assemvly and/or
   rework the stack tracing code. That will likely depend on the objtool
   bits.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
