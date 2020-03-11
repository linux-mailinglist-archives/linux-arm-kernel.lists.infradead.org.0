Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED2E1817EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rr6r5sv5k1uTV0RBnaQDn2PMyWbOWzBMKKmeZnDLpCQ=; b=tFKUUHvl8a5aCs
	iT0asG/WjWaa/STO724Ty1+fzhObCibh1SoaeBHaNAeBzhDP2ZRfB5vYCi6KdsROBDbLx2MCa8I6G
	uV3E3puif1ivkgONCfD7+FWIc07xtQejIXKnm+z62YJVjiHZGwNaJawQ3JpWnfgNvLezD2t5aKmh8
	EuHvvL6Y8lXoWg+XH7USC6xUvqitutCKi8MVmJDTi3XP5jsofquSmHUmYDS0SqkFf/FcRz2/rgdqP
	rM+lrSUFnUDGFRPglbXTNIlqjRD4adG2geDOdIuBKGYBSvNGAAMW8fmlZgOU3T0ddaT4oVipqLKDC
	Eh/OMunhKUcMJafOT0Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0PZ-0006PX-DC; Wed, 11 Mar 2020 12:24:33 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0PR-0006Ov-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:24:27 +0000
Received: from ip5f5bf7ec.dynamic.kabel-deutschland.de ([95.91.247.236]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jC0PJ-0001lN-7Q; Wed, 11 Mar 2020 12:24:17 +0000
Date: Wed, 11 Mar 2020 13:24:16 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH] pid: fix uninitialized var warnings
Message-ID: <20200311122416.p4bz5twufd3kdzqs@wittgenstein>
References: <20200311122049.11589-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311122049.11589-1-walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052426_049200_8BDEEEF7 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, Oleg Nesterov <oleg@redhat.com>,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 08:20:49PM +0800, Walter Wu wrote:
> Compiling with gcc-9.2.1 points out below warnings. Fix it.
> 
> kernel/pid.c: In function 'alloc_pid':
> kernel/pid.c:180:10: warning: 'retval' may be used uninitialized
> in this function [-Wmaybe-uninitialized]
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Christian Brauner <christian@brauner.io>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>

Thanks. A correct fix for this is already in my tree:
https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/commit/?h=fixes&id=10dab84caf400f2f5f8b010ebb0c7c4272ec5093
(Background is 
 https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/commit/?h=fixes&id=b26ebfe12f34f372cf041c6f801fa49c3fb382c5
 )

 Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
