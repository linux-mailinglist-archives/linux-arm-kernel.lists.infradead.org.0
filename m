Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD968118D7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMklLhFCaK0259xxGysWN2vwVeauLLbhLB8I9yBh+cg=; b=My15/peZN5tkpA
	F3rcvspjZhbdMYHCiOXvhzdh4VIgpaeIXvaNZsjNA0v4qBPkX3B87UvdDRyzKBgYN5/nt/LVrJb/0
	MRCud0vXlvxKR2odYSYuJYonsaXJz4t3VZXlVXoBAyHRG3GWE76qNtEkMxnkeZmyGz/bLMtLr/D31
	2zVwZbEOsU51yxR21hh9HBYtclDFScNFw64ALZcWKITcvlo3UVjUJxg3UzogOrnWDWZa6NRP8YpZk
	kobdqD3STi6ObojJRgXBgDfFZY5uZdpkVTyAYdGQGXEJV+zgsKBpd/BTq4B84yiVUD4PkeevK5qI9
	9oosqcWgwJhq7smrYgjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiJ8-0005B1-Ba; Tue, 10 Dec 2019 16:24:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiIz-0005AZ-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:24:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DB381FB;
 Tue, 10 Dec 2019 08:24:06 -0800 (PST)
Received: from [10.37.12.119] (unknown [10.37.12.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A85C3F67D;
 Tue, 10 Dec 2019 08:24:04 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Jerome Forissier <jerome@forissier.org>, Will Deacon <will@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
 <20191205085709.GB8606@willie-the-truck>
 <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
 <20191206160955.GA27982@willie-the-truck>
 <740865eb-a993-d1dd-ad2e-84529e2012ee@forissier.org>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <3523c365-62a0-1504-9b99-d5d030e000fd@arm.com>
Date: Tue, 10 Dec 2019 16:26:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <740865eb-a993-d1dd-ad2e-84529e2012ee@forissier.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_082409_965295_B3E5CA16 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On 12/10/19 4:20 PM, Jerome Forissier wrote:
> Now if you check the SHA1 hashes of arch/arm64/kernel/vdso/vdso.o in
> various scenarios:
> 
> - v5.4, no ccache:
> b82810f6e9495eb8e787e82b4080654ce4afc30a
> - v5.4, with ccache, built from a clean cache:
> b82810f6e9495eb8e787e82b4080654ce4afc30a
> - v5.1, no ccache:
> 8c09a2f25969e2bf74799d6b3fb52d0fbc3d58a8
> - v5.4, with ccache, after building v5.1 (step 3 above):
> 8c09a2f25969e2bf74799d6b3fb52d0fbc3d58a8

This clearly explains the issue and why you were suspecting the vdso library.
Happy that you figured it out.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
