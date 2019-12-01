Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E44F10E27B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 17:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iueNCuBU659N7CVeVarVt8/VzfwlrXJvoFEpWWYLUtk=; b=GMv3phyEkO3FySJq9LDg+GSra
	VFznWyhN6+dvt8N0mUxH3cd+HDkjqk4/Vr9jePh/IxLpqD2Md+R8xqgu439n8UFeUdhBZhEyjfnB8
	7+OTMAsKUzpyxjqsA9qAY5PM19gLNVFtsTo+OQ3ywjNjVXTc2ru0M7IHTtaHuWpkQfegVZg2LX2vg
	N3uQaa/J4ZEIxSj21lF3+Q+hjSFW9Ty0Vasrx5fVMb6bAvaL2rCt+Q7CXNt3l4OWJGrorL9c4zQv+
	cFI2ucNeMgeMyJ+rT5pXVoVrC8q5JnuAYkfMXxa2zZxkcpINjzA8MM6DUrGQcpiLMqw+YpAnQQcks
	2UeRaijNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibRo4-0007MH-2U; Sun, 01 Dec 2019 16:10:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibRnx-0007Le-M9
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 16:10:39 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7172A20748;
 Sun,  1 Dec 2019 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575216636;
 bh=PIU0gAvAb/QWpkQDN6LuCKXuN8ggEJbi00MqgS1d1rk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=LStGGO3Bn5iRhOvss1QFFXvjhAfoOmrJMzZm1wop7NFIKGOSDfpaaEIBb0wtVnunz
 lcq1VMGCc9awJ9EP9VTCCMWg2YMkMLk8TuPbG+sMKCtRQhoanbfeGb7tU4K56taoS/
 zsiYMFnTAlobLfu7PZEnng+hNHAhRz8UWdJ61pc8=
Subject: Re: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Message-ID: <7beef282-1dd8-7c7a-4f6d-d0605d11eab5@kernel.org>
Date: Sun, 1 Dec 2019 10:10:30 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_081037_767148_2A80C9DB 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/28/19 8:55 AM, Rasmus Villemoes wrote:
> There have been several attempts in the past few years to allow
> building the QUICC engine drivers for platforms other than PPC32. This
> is yet another attempt.
> 
> v5 can be found here:https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/

If it helps:

Entire series:
Acked-by: Timur Tabi <timur@kernel.org>

I've worked on all code covered by this patchset except for the hdlc 
driver.  I don't know if my ACKs are acceptable to everyone, but you 
have them regardless.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
