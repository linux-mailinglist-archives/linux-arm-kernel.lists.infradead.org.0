Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ECE2E2C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 19:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RWAHpVTY5AEbQi3RGf6ezmM4Ix536shgDSdH0FvAd8=; b=gw2/tcyzXENrJF
	Fx3dy4Ni+RQxo5l1ZmA0A952wo6eQROD9lVMRJA6SaMHuT4c0ek+2GlqNYzDbgIZ/xSwSQN9DP4sR
	GMA5es4qogkXQoj8YpcaW2JG83u2lwG89/mmEOfvODrLVGhhDvTGS7XBSRi5KqIZeL3RBKz9dtozu
	COZyQgd+nsWlkgFffBCKftPS4ggrbdZCKpG5otRfAXGocDEw2HZXLZHqU9n+mC6FQ5PuwnwPtJC9F
	igDhpk8TF7kqJM1OpaZnQslC+iGeNcadTqw/0u2pNjuK/xTV/umyvnPTQ73c7m65O4mTFIei6sLhE
	xQAcbbqSYSFK+o8KAFyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1z6-0001ir-VW; Wed, 29 May 2019 17:03:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1z0-0001il-CS
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 17:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1mK5Smhvmft4JcvDPEMxWC67pAyc4oQ9bkdnZBw20t4=; b=WefAf3Cmu+ntxwjXzgTrWTw1+
 DmS8xvC5x60ErHEUn5jj0rUuKGmjSb+fnt78VxRlXy4oW5Zizoqr3FlZfCaLD62UnLvAgmdwAa9ax
 kYZPrL7zJPXASqXg2SqsyR57N0EMomCKw6pNZrFgfh7Wlpp5FUO6gFAlfAQhA6bNKhRRzExM0Q5Iy
 CL63Z3VvG2zYe/yslLDz5myjb5n3+MM4yaqaOIKc8jzf+4GK0RDrzsNKGoW115UCEflKh61Wh5IjV
 NvveowY9GQgLkh7sga4Ls0FEUDiUQmxhUVtUWQHfX0gkTQ/ruySWz+rQv7b32qb1Bkxa+u6Ws5Qvf
 y+zEiljIg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1yt-0008A1-17; Wed, 29 May 2019 17:03:15 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C4080201B8CFF; Wed, 29 May 2019 19:03:13 +0200 (CEST)
Date: Wed, 29 May 2019 19:03:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529170313.GE2623@hirez.programming.kicks-ass.net>
References: <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
 <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
 <20190529162435.GM31777@lakrids.cambridge.arm.com>
 <20190529163854.GN31777@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529163854.GN31777@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 eranian@google.com, linux-kernel@vger.kernel.org, acme@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 05:38:54PM +0100, Mark Rutland wrote:
> Sorry for the noise.

n/p, confusion happens :-)

> Generally speaking though, if we ever task task_pt_regs() of an idle
> task we'll get junk, and user_mode() could be true.

Agreed, but we're not doing that.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
