Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB0BB49E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vMNu0uqXCegQuJcja11fXvT9EVCXhNRj8eB+SuI65E=; b=pEIl6AXKiuvwcr
	hQPjTM8wBqLboCeOFXjZa5Zc9owgXzMhu+D32Zp1YyDgu9dWjKGJSB4z5TmGK9Z0NE/GskIqN7aQA
	TgHbULvHVRS/vQ90nXg47337yyiHWgEX5MMCwtRuMe9iSg7oPATuuTnlppy1+FTCZF9iMlmPIcFiB
	NO/hzWZ730RzkXRVzdNGM+AY76Uc2XV3Xmpq+jteHRiV0o3inie/IJ1fU5umF6ZQg/sXSnFGlFbyk
	rZuXo9wtMwdo5f1D4j/Hi0ugxUoVtfA04jGKi/akFwijUEcqKZhVhv5bYgZrsVxcu4uQpyvFN0Tqt
	cMW29cJ/40cs4ONew1Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNwG-0002Qf-Ps; Mon, 23 Sep 2019 12:59:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNvz-0002KV-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 12:59:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B0111AF4E;
 Mon, 23 Sep 2019 12:58:52 +0000 (UTC)
Date: Mon, 23 Sep 2019 14:58:51 +0200
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: printk() + memory offline deadlock (WAS Re: page_alloc.shuffle=1
 + CONFIG_PROVE_LOCKING=y = arm64 hang)
Message-ID: <20190923125851.cykw55jpqwlerjrz@pathway.suse.cz>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
 <1568817579.5576.172.camel@lca.pw>
 <20190918155059.GA158834@tigerII.localdomain>
 <1568823006.5576.178.camel@lca.pw>
 <20190923102100.GA1171@jagdpanzerIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923102100.GA1171@jagdpanzerIV>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_055919_507760_B3D88BDF 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: Theodore Ts'o <tytso@mit.edu>, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Qian Cai <cai@lca.pw>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 2019-09-23 19:21:00, Sergey Senozhatsky wrote:
> So we have
> 
> port->lock -> MM -> zone->lock
> 	// from pty_write()->__tty_buffer_request_room()->kmalloc()
> 
> vs
> 
> zone->lock -> printk() -> port->lock
> 	// from __offline_pages()->__offline_isolated_pages()->printk()

If I understand it correctly then this is the re-appearing problem.
The only systematic solution with the current approach is to
take port->lock in printk_safe/printk_deferred context.

But this is a massive change that almost nobody wants. Instead,
we want the changes that were discussed on Plumbers.

Now, the question is what to do with existing kernels. There were
several lockdep reports. And I am a bit lost. Did anyone seen
real deadlocks or just the lockdep reports?

To be clear. I would feel more comfortable when there are no
deadlocks. But I also do not want to invest too much time
into old kernels. All these problems were there for ages.
We could finally see them because lockdep was enabled in printk()
thanks to printk_safe. Well, it is getting worse over time with
the increasing complexity and number of debugging messages.

> A number of debugging options make the kernel less stable.
> Sad but true.

Yeah. The only good thing is that most debug options are not
enabled on production systems. It is not an excuse for ignoring
the problems. But it might be important for prioritizing.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
