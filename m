Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BE1CBB29
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAW2sZMOlSrNMJfex/ztTUldpJEHkwOhBjuqE66K/zY=; b=k3DMSt5mcK/1mJ
	BYTIlUJ+/gLbTpWJTEwOYLlYWB2b6tWPtXIndAIYhhJGF7DtSqWSdo2uOukmwN2QTuWCoyt3BSh6t
	2xj5HM7ugOYGvXGu41+Fx89dRJyDqKRIwUhqkm78a4OyQPZycUtrJP3tNu9N68kUP+1bSLdITC+C6
	7aGhEfwwaTrW3H3t+JqqijW1mlqU2OkpFNSf1vRmsEOwGtGiN3J1gKA5JuZCs9M2lk9+o+1cZcYn/
	gvQa6Dqv8shpaSiKGdvVXbzxSTnDkHVQ1PnR3nhuM/oHe3HBwTg/FPgsiwDxgP9gUuJZFUO6RUTLi
	6WCSWxLHl9KDr23dGANQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNFS-0001PD-GB; Fri, 04 Oct 2019 13:03:54 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNFJ-0001Oe-0p
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:03:46 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id ED6FD20505;
 Fri,  4 Oct 2019 15:03:38 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id DA3791FF45;
 Fri,  4 Oct 2019 15:03:38 +0200 (CEST)
Subject: Re: [PATCH 2/8] arm64: remove __exception annotations
To: James Morse <james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-3-james.morse@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <c8518ce0-e1dd-f485-c05b-1ab0216639aa@free.fr>
Date: Fri, 4 Oct 2019 15:03:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003171642.135652-3-james.morse@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Oct  4 15:03:38 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_060345_210835_27406527 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 19:16, James Morse wrote:

> Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
> stack frame") arm64 has has not used the __exception annotation to dump

s/has has not/has not/  ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
