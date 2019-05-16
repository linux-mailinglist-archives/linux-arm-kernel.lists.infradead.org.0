Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27753209A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVUelm31bfs6b52i3zJxCNkXWR4pjJ5NW9WKUaZ9BCw=; b=g1PhN+4qykGsGA
	Y8E1nvZPQpymxyDoeRJCVJEdZ6yL37tFShUAAiOG/MMNyjAzyqekvam6g1sRp+LeU5xdJHLD2EL8n
	R3s1T+dkOZSxS1I4Za6kX0BXiLwxqZs3ZYZwiYRZpEkn3qFYLoF92RTDGvdILFIOnjyCWd4IVKO2p
	5auRJ5xhh1fCcXXzZKcSMNuNpBYM9AQoCYgXaWaSheGP0qmh1NqHzuaut91N87fjZCZSDpEo+n1/k
	h0hj+NUwlIGpi5fBeOzXTgFwSAqTP1p3f7IKSkijvB9VJGTBRn3n5zE9GV6oPMURafbLb8I7S9S3b
	xof/kn0/Q8J+YIy9kzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHNy-00014O-P0; Thu, 16 May 2019 14:29:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHNq-00013h-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:29:24 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C85C30C0DCD;
 Thu, 16 May 2019 14:29:22 +0000 (UTC)
Received: from treble (ovpn-120-91.rdu2.redhat.com [10.10.120.91])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C32860BE0;
 Thu, 16 May 2019 14:29:20 +0000 (UTC)
Date: Thu, 16 May 2019 09:29:17 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC V2 00/16] objtool: Add support for Arm64
Message-ID: <20190516142917.nuhh6dmfiufxqzls@treble>
References: <20190516103655.5509-1-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516103655.5509-1-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 16 May 2019 14:29:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072922_912908_9CC98BBA 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:36:39AM +0100, Raphael Gault wrote:
> Noteworthy points:
> * I still haven't figured out how to detect switch-tables on arm64. I
> have a better understanding of them but still haven't implemented checks
> as it doesn't look trivial at all.

Switch tables were tricky to get right on x86.  If you share an example
(or even just a .o file) I can take a look.  Hopefully they're somewhat
similar to x86 switch tables.  Otherwise we may want to consider a
different approach (for example maybe a GCC plugin could help annotate
them).

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
