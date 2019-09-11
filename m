Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99D2B00E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JAJHZTSt7JPa35ybIGKWWmc0BuQHaemWk2uLPN9Pdn8=; b=owAbChwf0wlvUdEFpaNrLqfIQ
	7SE9msTLxlEsJ5qGlNme4Td54PK0i38njrE1RWtsJ96wlvgM30kmmAhP7plmCn+xs+L3ZQzM0jdKn
	mTUUzWmnek157EwU08PRoPETuTFdqJ/apJKQDCys89oLsCmE7FKgq9foVkgOQnRs/9Zgo306A2ifI
	pLS7tYIn9bPOUOKCh8AxPRm8qiR049Ik3dmnTbBpiemQLBj29yXnDRRESdaPBLAb+A5s2sbNeNePG
	BpaZgzBQ3pIV7BWDMvjrn70I+wtcR5tTzGLTTBz3OYSNTZnQIEzAJX8GWiSarEfTnYZCePsMdtR7m
	JoQMd3Wpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i858n-0002oX-C1; Wed, 11 Sep 2019 16:06:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i858a-0002na-Bc
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:06:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E265728;
 Wed, 11 Sep 2019 09:06:28 -0700 (PDT)
Received: from [10.37.13.2] (unknown [10.37.13.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2251F3F67D;
 Wed, 11 Sep 2019 09:06:27 -0700 (PDT)
Subject: Re: offline CPUs shown in sysfs core_siblings mask
To: Brice Goglin <Brice.Goglin@inria.fr>
References: <c1596783-cd14-8247-3c42-faa052c5c066@inria.fr>
From: James Morse <james.morse@arm.com>
Message-ID: <4568af7d-724e-5ee7-3ba1-87a5db662447@arm.com>
Date: Wed, 11 Sep 2019 17:06:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c1596783-cd14-8247-3c42-faa052c5c066@inria.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_090632_437992_573B2E7C 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jeremy Linton <Jeremy.Linton@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Brice,

(CC: +Jeremy)

On 9/11/19 2:23 PM, Brice Goglin wrote:
> We have a report from a user of hwloc/lstopo on ThunderX2 that complains
> that offline CPUs are shown in sysfs cpu core_siblings files.

Hmmm, this doesn't happen on my TX2, running mainline:
root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,ffffffff
root@eglon:/sys/devices/system/cpu# echo 0 > cpu0/online
root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,fffffffe
root@eglon:/sys/devices/system/cpu# echo 1 > cpu0/online
root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,ffffffff


> Only 8 online logicial CPUs, but 56 are shown in these masks. This is on
> RHEL7 with a kernel 4.14.0-115.2.2.el7a.aarch64 but I couldn't find any
> significant change in Linux git.

Could you try a recent mainline kernel?

Does your system have an ACPI PPTT table? (I assume its ACPI)

Prior to the ACPI PPTT table handling, it wasn't possible for an arm64 
ACPI system to know about packages and threads.


> I guess thread_siblings has the same behavior but I couldn't test it.

(this would depend on the firmware table too)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
