Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088863026F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 20:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0uKHmbbSNAQ5YZnI0diEPgjBb0nQe0PqmBViIcLbWY=; b=YdB7VRNrClUn4y
	vMJQqF2n+YXB11bGUyWyHSYf29XKARMrmCegA3/nBhjsScus3gFyGSgvJ2OquDZ7SHRtyFmNPX3JS
	eYFz+CsEKybUyKkKuQFN6E2K3S/FWXVMYuNiynSNvxWwaC/RU0OFzcUFpDmrEjKPhf3n2bXsHTsqp
	iiUr6SNYvyxB4FvATynBqCBZ01owYJ7IkzvQT87V/eTMlWtw7NwAxi1fwmXZYuXQRRLQRKWIkoLUK
	KWK4DTb6FJRZa69qzegeHO1cjOSlwCUaCWRhHzKD4Xs4e/+QWeIhNT0qfpFR/pWX0UXmupMwWXqCQ
	I07GITZKrcEWRzWOaKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQDV-0005a0-Ki; Thu, 30 May 2019 18:55:57 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQDO-0005Ze-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 18:55:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D87A914D9DD5B;
 Thu, 30 May 2019 11:55:49 -0700 (PDT)
Date: Thu, 30 May 2019 11:55:49 -0700 (PDT)
Message-Id: <20190530.115549.1509561180724590494.davem@davemloft.net>
To: mst@redhat.com
Subject: Re: [PATCH net-next 0/6] vhost: accelerate metadata access
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190530141243-mutt-send-email-mst@kernel.org>
References: <20190524081218.2502-1-jasowang@redhat.com>
 <20190530.110730.2064393163616673523.davem@davemloft.net>
 <20190530141243-mutt-send-email-mst@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 30 May 2019 11:55:50 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_115550_692329_B7D22C23 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: hch@infradead.org, linux-parisc@vger.kernel.org, kvm@vger.kernel.org,
 netdev@vger.kernel.org, jasowang@redhat.com, linux-kernel@vger.kernel.org,
 peterx@redhat.com, virtualization@lists.linux-foundation.org,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, linux-arm-kernel@lists.infradead.org,
 christophe.de.dinechin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Michael S. Tsirkin" <mst@redhat.com>
Date: Thu, 30 May 2019 14:13:28 -0400

> On Thu, May 30, 2019 at 11:07:30AM -0700, David Miller wrote:
>> From: Jason Wang <jasowang@redhat.com>
>> Date: Fri, 24 May 2019 04:12:12 -0400
>> 
>> > This series tries to access virtqueue metadata through kernel virtual
>> > address instead of copy_user() friends since they had too much
>> > overheads like checks, spec barriers or even hardware feature
>> > toggling like SMAP. This is done through setup kernel address through
>> > direct mapping and co-opreate VM management with MMU notifiers.
>> > 
>> > Test shows about 23% improvement on TX PPS. TCP_STREAM doesn't see
>> > obvious improvement.
>> 
>> I'm still waiting for some review from mst.
>> 
>> If I don't see any review soon I will just wipe these changes from
>> patchwork as it serves no purpose to just let them rot there.
>> 
>> Thank you.
> 
> I thought we agreed I'm merging this through my tree, not net-next.
> So you can safely wipe it.

Aha, I didn't catch that, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
