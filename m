Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D14823CD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 18:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUcOUoOEpkibuiV/sL5T//IRfFkcXy9jWCwpzd7W8c4=; b=AvI2eYC5KOumnL
	+ULjZpk/RznRjWLIB0gdJlsDwTT30TzOnxhYz6Bc/e+wLyexavA+mH0IaVzh3+7Au2puqca5FCm9T
	Qru4GoO4sV0iP0Vlel7OODb8c12F5GB2ZD2WrwT9APcKRvCmVyMXrcMsjPt5/WzlalTWR3ImghUYv
	ia+WEmJlZZnvZIruJbOiTWuK9Mx5XUjB3Po4vFmBCe87swb0iStxXjoQVsVaRYBye6o7VvfYtcAIg
	bAWNzrhdhESK9uaQ7He0D0+qa1wHS7hnFn+KGTHlVNTd8sdKGydDHQjwfEh8STrAFPqlJlcVZFvab
	kZybFoiPCHa6mTtnA7jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkku-0000bx-0h; Mon, 20 May 2019 16:03:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkkm-0000bS-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 16:03:10 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4839930BDE44;
 Mon, 20 May 2019 16:03:08 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 7BEBC78386;
 Mon, 20 May 2019 16:03:05 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Mon, 20 May 2019 18:03:08 +0200 (CEST)
Date: Mon, 20 May 2019 18:03:04 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/5] asm-generic: remove ptrace.h
Message-ID: <20190520160304.GE771@redhat.com>
References: <20190520060018.25569-1-hch@lst.de>
 <20190520060018.25569-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520060018.25569-6-hch@lst.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 20 May 2019 16:03:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_090308_782699_50593E22 
X-CRM114-Status: GOOD (  13.22  )
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/20, Christoph Hellwig wrote:
>
> No one is using this header anymore.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  MAINTAINERS                    |  1 -
>  arch/mips/include/asm/ptrace.h |  5 ---
>  include/asm-generic/ptrace.h   | 74 ----------------------------------
>  3 files changed, 80 deletions(-)
>  delete mode 100644 include/asm-generic/ptrace.h

Acked-by: Oleg Nesterov <oleg@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
