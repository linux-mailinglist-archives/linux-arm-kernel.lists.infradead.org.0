Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06079A0B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xYq7IlF3dPN0VEcLVpQ4ad3HSUt2xnhN67xlO4xC9Q=; b=DGi3DEulupHUbP
	F+BqJJscG/0gPJyfEFbbbkjwz6G1CSmUrRL9aprEXIu4n9TJ7E95uCGK/CHkVaxe9X6iTM/luVWht
	iziyoRBgq4VL7T4rs/XSXvJbHKqo2d/1QKuBYt0Gl45wk1O6aK0Shm2YaBbP8vzhZfVpgCy9COPUO
	Lya/3HnKdqz+x3msghcQaS7mgGSABXAAmL5Md+uhxSIdhFoIIL317DlaL/hHKPl5+wnKIeTbGv425
	C3Z9myDZVZ+CYaZ9HvQTXXFZQutiyPZPisR55M4KwOWBhq1NdHn/O0qb+T02nptBgLASvXV9xdunB
	CJ1WhzJcezLBDgyFe7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tJn-0001kP-3A; Thu, 22 Aug 2019 20:04:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tJZ-0001j4-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:04:11 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 747B63082E25;
 Thu, 22 Aug 2019 20:04:09 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D3796012A;
 Thu, 22 Aug 2019 20:04:08 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:04:06 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 07/18] objtool: Introduce INSN_UNKNOWN type
Message-ID: <20190822200406.jc3yf77pomxxwep6@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-8-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-8-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 22 Aug 2019 20:04:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130409_850320_D90F8D80 
X-CRM114-Status: GOOD (  14.88  )
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:23:52PM +0100, Raphael Gault wrote:
> On arm64 some object files contain data stored in the .text section.
> This data is interpreted by objtool as instruction but can't be
> identified as a valid one. In order to keep analysing those files we
> introduce INSN_UNKNOWN type. The "unknown instruction" warning will thus
> only be raised if such instructions are uncountered while validating an
> execution branch.
> 
> This change doesn't impact the x86 decoding logic since 0 is still used
> as a way to specify an unknown type, raising the "unknown instruction"
> warning during the decoding phase still.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>

Is there a reason such data can't be moved to .rodata?  That would seem
like the proper fix.

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
