Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C123BC58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 21:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6pGG6AX661bJvUm02VJi8b4zcQWtcg7Wag7rRDfABk=; b=e4Ivb9MHHDnEtA
	kLU6Pp+GOJwqemKNti+CsrJ2NDy6eY8S715lhZW/JQUPD9MZj1LACB9pwH0DNOvj30riDLPRwqG+2
	MCJb5wJdrN4Z6XTOHQzXjJutzPPj+Z2559+SZWUfnFr7oroGbuMnNIMRVk/NDsm/uOKlyj2ZBG+P/
	vHHaJtKRUQOt+rQ0jibCjsFqm+jCZvyDYR48EIvBPa5LPW/rhHO4IsIKKBeDNRjG+8Bg5ppeWplJN
	0fb3VNhZ9QA7/aoV4l3Vzu/O/4WikAsH9z2Qmu/yV5Rw635FeEVvh4E+g2a3YkkfEjm0Wp0mkBIbE
	CoDdHn6V3tzERrbo2KAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPXR-0008P8-81; Mon, 10 Jun 2019 19:01:01 +0000
Received: from smtprelay0171.hostedemail.com ([216.40.44.171]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPWV-0006mQ-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 19:00:05 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id A2533181D33FB;
 Mon, 10 Jun 2019 18:59:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3867:3868:3870:3873:3874:4321:4641:5007:6119:7809:10004:10400:10848:11232:11658:11914:12043:12048:12555:12740:12760:12895:13019:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: beef60_1ba01763c0b04
X-Filterd-Recvd-Size: 1885
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Mon, 10 Jun 2019 18:59:49 +0000 (UTC)
Message-ID: <4491ae98b10f4519874141eb39cd2f0b5491b3a5.camel@perches.com>
Subject: Re: [PATCH V5 11/11] MAINTAINERS: add maintainer for SD-FEC
From: Joe Perches <joe@perches.com>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>, arnd@arndb.de, 
 gregkh@linuxfoundation.org, michal.simek@xilinx.com, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 mark.rutland@arm.com,  devicetree@vger.kernel.org
Date: Mon, 10 Jun 2019 11:59:48 -0700
In-Reply-To: <1560038656-380620-12-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
 <1560038656-380620-12-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_120004_147170_F7600C7B 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.171 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-06-09 at 01:04 +0100, Dragan Cvetic wrote:
> Add maintainer entry for Xilinx SD-FEC driver support.
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -17345,6 +17345,17 @@ S:	Supported
>  F:	Documentation/filesystems/xfs.txt
>  F:	fs/xfs/
>  
> +XILINX SD-FEC IP CORES
> +M:	Derek Kiernan <derek.kiernan@xilinx.com>
> +M:	Dragan Cvetic <dragan.cvetic@xilinx.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> +F:	Documentation/misc-devices/xilinx_sdfec.rst
> +F:	drivers/misc/xilinx_sdfec.c
> +F:	drivers/misc/Kconfig
> +F:	drivers/misc/Makefile

I suggest that you do not want to be nor are responsible
for the Kconfig and Makefile just because entries in
those files are associated to xilinx files.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
