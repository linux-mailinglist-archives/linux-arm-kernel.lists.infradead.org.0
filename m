Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC5142E35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrU/Pb8aK5Yv6C4Vv4CZF5lbregL0nZEhyLEb4HdYNU=; b=Djo/CCzPHbnWa8
	kyuc0nnvwMorO+XOVc2QQW02qJM6wBDp0qq/AtAq1opl6pPq0MOfk/3yBp5DMAZD2XHhCOcd2RcYp
	PffGCO3QMTr2lgEy1yMf4Mvj4E4cjxsBttgmzFO1gtgNtAwchP7Dvnw8NvRixxYQF+xm1WdeZZAzt
	8n43WXL4YCuaxE641UA+OPNAyJQ7AGAAwlUK01lexZxpXMAiMwLys7UppZalTX+XTbyNPvZIXpk22
	3khWv17oR143P6BSoR0IdV0evg4tZapPZ5/0IWtYg3fJMSwLueAkyS9GUBoc3DHPdKNpVvEse5nND
	T8MCe66FkG30+xTPFk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYUH-0007to-Qx; Mon, 20 Jan 2020 14:57:09 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYU6-0007t4-74; Mon, 20 Jan 2020 14:56:58 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CA6BF3010D2;
 Mon, 20 Jan 2020 15:55:17 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5856E28B86E61; Mon, 20 Jan 2020 15:56:56 +0100 (CET)
Date: Mon, 20 Jan 2020 15:56:56 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 12/57] objtool: check: Allow jumps from an alternative
 group to itself
Message-ID: <20200120145656.GC14897@hirez.programming.kicks-ass.net>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-13-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-13-jthierry@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:15PM +0000, Julien Thierry wrote:
> Alternatives can contain instructions that jump to another instruction
> in the same alternative group. This is actually a common pattern on
> arm64.

LL/SC I bet...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
