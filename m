Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ECD50185
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTpvWgUfrgXmLfd39xo+RKWJ9YqZELwsk5s5tQ11lJk=; b=dhg8vLUF8KV/oD
	nAfTudvJhKuZfU/rflB0VktffoeJWwaZ1FSNv9ZF638s9zn10fJ/fSzTw3ncV1MVZdbHnu2LZ4Tgz
	yEwtxlX/7IiNxhhXNeOPMp4hk/vODHZ5vC8hr0nJp/PhS+apvZZYPoJRtFX/r7jS8ZW+tWjYF81y8
	6j7mzon4b6z6+uygPetuoQcVghTse6qDUFM6mhH+0+7fUQrEsV39AenCEYc4cwrFg9zFljJjldLal
	N61rIupI5T4eNCoH06LT5PE2z+NAlxqTy1ZdB/6uLXiJcnCP8t+rkh/Oks6/iVjRz4FJ5+rXyxOyy
	zYJ/b1Ia5t/xsFelDEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHu6-0003l4-5P; Mon, 24 Jun 2019 05:52:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHtq-0003kP-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 05:52:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA957344;
 Sun, 23 Jun 2019 22:52:15 -0700 (PDT)
Received: from [10.162.41.123] (p8cg001049571a15.blr.arm.com [10.162.41.123])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BCCE93F718; Sun, 23 Jun 2019 22:54:01 -0700 (PDT)
Subject: Re: [PATCH 0/3] fix vmalloc_to_page for huge vmap mappings
To: Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org
References: <20190623094446.28722-1-npiggin@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f8139999-1624-617a-b7a5-df2846e6e25b@arm.com>
Date: Mon, 24 Jun 2019 11:22:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190623094446.28722-1-npiggin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_225218_417836_21968700 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Nicholas,

On 06/23/2019 03:14 PM, Nicholas Piggin wrote:
> This is a change broken out from the huge vmap vmalloc series as
> requested. There is a little bit of dependency juggling across

Thanks for splitting up the previous series and sending this one out.


> trees, but patches are pretty trivial. Ideally if Andrew accepts
> this patch and queues it up for next, then the arch patches would
> be merged through those trees then patch 3 gets sent by Andrew.

Fair enough.

> 
> I've tested this with other powerpc and vmalloc patches, with code
> that explicitly tests vmalloc_to_page on vmalloced memory and
> results look fine.

- Anshuman



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
