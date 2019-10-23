Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D114CE1326
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 09:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qP2yD100tZX/d3vDigDPeAkqSm7G+f0W7J6k9isU1rM=; b=hmlWgcQ9S9YW/a7331qYUNAiJ
	DqRc9Wdk+QnPu0mkDwEivuOlMatUIymkUHaiXJ0bSB0pYcUOqNxDTYSpCdDXBZmgo/jzi5y/yOMZp
	HiTzK+nqmsMOaOfNnHXn2o+qUVxMqRcqzF8Zon24i5nUwnoW/wP5gxif0e7GgvW+VoN1WLGx2itLE
	7wqpbpJWAsPqszefrQr7q1sh2kMKc9AgMkO1MtjB6MF/fBsTGjmgU1kvjSNGIOoXjZgaydD5ITUec
	AAJx+A1XUQu7z5WJ/WxSW4PlOYjPy910gbmp6/SBpa0Am5lWY+adUy43xrFkuLb0vfhzIpWoDMrtj
	Bd0aRz6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNB70-0000g5-RT; Wed, 23 Oct 2019 07:31:18 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNB6r-0000fJ-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 07:31:11 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iNB6m-0005id-Qc; Wed, 23 Oct 2019 08:31:04 +0100
Subject: Re: [PATCH] xen: mm: include <xen/xen-ops.h> for missing declarations
To: Stefano Stabellini <sstabellini@kernel.org>
References: <20191022125006.3746-1-ben.dooks@codethink.co.uk>
 <alpine.DEB.2.21.1910221008370.30080@sstabellini-ThinkPad-T480s>
 <alpine.DEB.2.21.1910221009040.30080@sstabellini-ThinkPad-T480s>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <412520e1-689c-77e7-edcd-fb9199ac76d9@codethink.co.uk>
Date: Wed, 23 Oct 2019 08:31:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1910221009040.30080@sstabellini-ThinkPad-T480s>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_003110_165725_85913D19 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: linux-kernel@lists.codethink.co.uk, xen-devel@lists.xenproject.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/2019 18:09, Stefano Stabellini wrote:
> On Tue, 22 Oct 2019, Stefano Stabellini wrote:
>> On Tue, 22 Oct 2019, Ben Dooks (Codethink) wrote:
>>> Include <xen/xen-ops.h> for xen_{create,destroy}_contigous_region
>>> call declarations. Fixes the following sparse warnings:
>>>
>>> arch/arm/xen/mm.c:119:5: warning: symbol 'xen_create_contiguous_region' was not declared. Should it be static?
>>> arch/arm/xen/mm.c:131:6: warning: symbol 'xen_destroy_contiguous_region' was not declared. Should it be static?
>>>
>>> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
>>
>> Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
> 
> Do you want me to pick up these two patches and have them go upstream
> via the Xen tree, or are they part of a bigger rework?

I've been doing some testing with sparse and going fixing warnings as
I go along. Please take these via your tree.

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
