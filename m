Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E3C9A08C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRS2NyaZw7V+EpzMcuwqKXO8PUeFUgj6qbReFACg9YE=; b=J8pnKrZNQ6p9Wf
	eQWqMp8UFHOtmvaa7VM7zB1gabUh3zf5TnKFYBne2hbKylsmI9jFpQUAbxdCwEWMIMkpcYZlBEBMB
	68Lh3prCbF4AhSOeusvbwlEg6rh/idNz7sfTNXci33KxjQjx8tniorgDj4ubmWtYqCedZKj67qBVb
	rHGV3syfCCWDOmg8KIPOZat34/orBRxqxzrJF+W5FWl8Ep9PYQKZJxTSWuitTm+QVSswqHarf2yj6
	o7DaeSEgaPY82/HnQ9wEoFIEGq9cYBSB4HkAJQ+0viMdAeIVdXSY5fRPHGTKWyleokhGAMSweAZSS
	rtCBRSTVYxamQsIFEyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tDH-0005qe-SQ; Thu, 22 Aug 2019 19:57:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tD4-0005iW-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:57:27 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE167A2BDB4;
 Thu, 22 Aug 2019 19:57:25 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CD5C060925;
 Thu, 22 Aug 2019 19:57:24 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:57:22 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC v4 01/18] objtool: Add abstraction for computation of
 symbols offsets
Message-ID: <20190822195722.gx36v32x2zfythwy@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-2-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816122403.14994-2-raphael.gault@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Thu, 22 Aug 2019 19:57:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_125726_301913_C2D76795 
X-CRM114-Status: GOOD (  14.64  )
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

On Fri, Aug 16, 2019 at 01:23:46PM +0100, Raphael Gault wrote:
> @@ -672,14 +672,19 @@ static int add_call_destinations(struct objtool_file *file)
>  			}
>  
>  		} else if (rela->sym->type == STT_SECTION) {
> +			/*
> +			 * the original x86_64 code adds 4 to the rela->addend
> +			 * which is not needed on arm64 architecture.
> +			 */
> +			dest_off = arch_dest_rela_offset(rela->addend);

I agree with Julien that this comment isn't needed.  The "arch_" prefix
already implies there are arch-specific differences.

Also, this patch should replace all the other "addend + 4" usages:

$ git grep "addend + 4" tools/objtool
tools/objtool/arch/x86/decode.c:        return addend + 4;
tools/objtool/check.c:                  dest_off = rela->addend + 4;
tools/objtool/check.c:                  dest_off = rela->sym->sym.st_value + rela->addend + 4;

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
