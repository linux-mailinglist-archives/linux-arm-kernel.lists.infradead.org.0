Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFE714935F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 05:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyDhT1bNDKcnW/GJCS7vt+L3wOAuhNrTAzkH4C5vh7I=; b=ulN+NkUvom4iKU
	9VPUsPOt8/mOhpvjqQ+duLFgH9HE/UBa++qIb3F9N6xS83ifmbfw7VEe2LFGVo7bFNeMKN68dic+3
	OLoEbDnnO7zzyvg8jcxOXr7KU8bPKu3UslZmBgXh30RyB7tK6bjpH5CEfkGkRlOdLimE8UsUjBMaQ
	LxzJm+DQO94TeW0j1slFnf4dk/3uxy9jm9yA2HhmsMw0Zy/7F4jylom+0dNmDITYoarOM0f5ucjgW
	FF2E8ncTqrQxwe6LctxMONIO6OW5BNP+3YieGIw0lLVOnuCrtfyALhjrqgPrHMay9qoV0cfMc+W6G
	rI+gnjcOqxqwvkTcFj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivDX5-0007k0-6e; Sat, 25 Jan 2020 04:58:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivDWv-0007jC-Sr
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 04:58:47 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32D382075E;
 Sat, 25 Jan 2020 04:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579928325;
 bh=se8AI+drmz8YaJ/8zhHySxcdJx3cDLiDs/OjJa17Oco=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=kWYruwuKFzmpVprbEiv42WnO1l8hPIhsYJNU87fNFTiwlnIhfPi7wZUzk+7FyHg0t
 vre9xtm/9e6IgK94Oz2vMRqqCgXVwRQ4V4L2CGyHGqPTraGzKuAiCjU3yHAP7L0KoH
 hFfWTERFAbBf41FQBHKC55IS0rkQ66hdbmergH+g=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 04EDD352018E; Fri, 24 Jan 2020 20:58:45 -0800 (PST)
Date: Fri, 24 Jan 2020 20:58:45 -0800
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
Message-ID: <20200125045844.GC2935@paulmck-ThinkPad-P72>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
 <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
 <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_205845_959477_4B51D425 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: paulmck@kernel.org
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, bp@alien8.de,
 hpa@zytor.com, Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 09:17:05PM -0500, Waiman Long wrote:
> On 1/24/20 8:59 PM, Waiman Long wrote:
> >> You called it!  I will play with QEMU's -numa argument to see if I can get
> >> CNA to run for me.  Please accept my apologies for the false alarm.
> >>
> >> 							Thanx, Paul
> >>
> > CNA is not currently supported in a VM guest simply because the numa
> > information is not reliable. You will have to run it on baremetal to
> > test it. Sorry for that.
> 
> Correction. There is a command line option to force CNA lock to be used
> in a VM. Use the "numa_spinlock=on" boot command line parameter.

As I understand it, I need to use a series of -numa arguments to qemu
combined with the numa_spinlock=on (or =1) on the kernel command line.
If the kernel thinks that there is only one NUMA node, it appears to
avoid doing CNA.

Correct?

							Thanx, Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
