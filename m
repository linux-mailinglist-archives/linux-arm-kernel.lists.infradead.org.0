Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5097FB0850
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 07:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyMN4f4hT6BYDZuesgnYyhX6lh01e37oo62A4oXw98Q=; b=INShvS6qPT5MTX
	LTLT10do8TQ2fjrHziSl1zkjiqXvaSagzqvB9AeogFjBDhGd3IbXaVNWoRLiNoxG3A72QxsFtWiwP
	ie6D1T6aYBWSV8uW7K2+KcAm2cISS8XnJJLI3i7qLSdvOnB0Yq8YsyVqdHBK56X7iyQ2OuHZEBDBi
	6kYjCA5UDI3tkjTkPvKq5kSVMeYOJbFltFLMrm5K4m5VwZg3xEgF0N3MV7spRJe1MX3qX8BArAESP
	b7YITx9gOkLSL6XMjJ0n3Ym9vDy9DYAecfvNxabxV2nAQF6aCFrSrffWKxHuJihSz64kjmBVWOkv+
	Te3NjkYyva/7j2PwtA2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Hn8-0003DP-OM; Thu, 12 Sep 2019 05:37:14 +0000
Received: from mail01.preh.com ([80.149.130.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Hmz-0003Cy-7B
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 05:37:06 +0000
From: Hubert Ralf <Ralf.Hubert@preh.de>
To: "james.morse@arm.com" <james.morse@arm.com>
Subject: Re: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Topic: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Index: AQHVZ7YAP7sn04V7oEKvWrPakQZn36cmiUYAgADd1IA=
Date: Thu, 12 Sep 2019 05:36:53 +0000
Message-ID: <92d07b70571fd76a7502faa6d199d4d11c498b20.camel@preh.de>
References: <20190910085822.27072-1-ralf.hubert@preh.de>
 <93e5d420-91b7-0e42-7d3f-776323abe450@arm.com>
In-Reply-To: <93e5d420-91b7-0e42-7d3f-776323abe450@arm.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 6A6D6DF8643980ACFDBA9BA559625D0B9F46C165C34F77B8171E1543024AE4182000:8
x-exclaimer-md-config: 142fe46c-4d13-4ac1-9970-1f36f118897a
Content-ID: <94F99584725C474C91DEEB88B03B6693@preh.de>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=preh.de; s=key1;
 c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:references:content-type:mime-version;
 bh=zy5nLI13VDOJdJBgYEzoE4IyqVrqIjItCwDt2Yato3c=;
 b=cC5SH+DcToqKaOfCd1wX0588v/qVFd+SFB5t97IuNhHfSVdDCWXUbczBc+uUrrl0y8qB4GdMqN5i
 n8xpLQiktKE+uQC6kuA2FYfFcyPB0Lh+IGGytfIeZlSk0DbpS/lvpI+2SfWzg/+nyUA6XurCEc5q
 69HOp2PjTEgOmxEy0/ofU+eekxooB+Bvq64+c64JdXkk/sX5z7JnNt98aUJmu+X3ZHbDrULgJ6lz
 pewkx3Lc9P2jClO6IeLljNboEC/I0fhjFNfeiJz+R9LCyEsiubZMRx3qqX23m0GMDL6Rb+KjPRbj
 6/ii35TjqJkPPqmAV1TKFHfqXzLIgGEbo4580g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_223705_605667_88B8345A 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.149.130.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,
On 09/11/2019, 17:22 +0100 James Morse wrote:
> Hi Hubert,
> 
> (Subject-Nit: The prefix for this part of the kernel is 'arm64: mm:'. 
> git log --oneline $file will usually give you enough examples you can 
> spot the pattern.)
Thanks for the hint.
> 
> On 9/10/19 9:59 AM, Hubert Ralf wrote:
> > On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
> > all pages in the memory starting at the lowest address until the highest
> > address is reached. On arm64 this ends up in searching a memmory region
> > containing for each single page between lowest and highest available
> > physicall address.
> > Having a sparse memory system there may be some big holes in the
> > memory map. For each page in this holes a lookup is done, which is
> > implemented as a binary search on the available memory blocks.
> > 
> > Adding a memmap_init for aarch64 to do the init only for the available
> > memory areas reduces the time needed for initialising memory on startup.
> > On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
> > execution time is reduced from 378ms to 84ms.
> 
> Hmm, there is nothing arm64 specific about this SPARSEMEM behaviour.
> Is there any reason this can't be done in core code, where it would 
> benefit other architectures too?
I'll try to move this to the core code.
> 
> (You'd need it to depend on !ARCH_DISCARD_MEMBLOCK as it looks like 
> memory-hotplug uses this late).
> 
> 
> Thanks,
> 
> James
Thanks,
Ralf
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
