Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9D2456CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOVzP3iLu3QLj5SqGW1ke3cYnCqm0s7aUU6YCFDAKdM=; b=XVxMt4isAc34e9
	cXzEsYJMIX6GyjEpJ7p43domvvRQ55pSUXLthNlQQrwnvMde/4ci/RCWoc3w6X+wsfBQY/vxGvHFB
	VNQILHneB3MX0KTAcjg37rc8uL9Fcrl9NfwgJrxBBMIYIIS0OP6Li3g11JiTdRW4xuT2q0/L4WSmr
	Jpm3bgvCXtOUHBLxrT0nJcLsaVwMhq93sHvEMG5ZVv9RWzqvZMqS80j+sH6wrfDhOEgoaWgug60wO
	EETtwKBpTYCuzUI0hRBW/eWJ3+SbnPaA+d8vTEcoPhy49SX3qM9lD9kQ1L186ZEMqJXQt3k9FuM/c
	T1U5KdAOwcMwxhkQF6ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgyf-00023x-Cb; Fri, 14 Jun 2019 07:50:25 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgyH-0001eZ-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:50:03 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9112068B02; Fri, 14 Jun 2019 09:49:28 +0200 (CEST)
Date: Fri, 14 Jun 2019 09:49:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: remove asm-generic/ptrace.h v2
Message-ID: <20190614074928.GA9631@lst.de>
References: <20190520060018.25569-1-hch@lst.de> <20190604070205.GA15438@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604070205.GA15438@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_005001_571143_8178D425 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:02:05AM +0200, Christoph Hellwig wrote:
> Is anyone going to pick this series up?

ping?  Arnd, this might be asm-generic tree material?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
