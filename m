Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F15F192EE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 18:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUQHOVpHp5LOOP8cksxSLeqiK2QD+7Ce9ApkSV+GvWk=; b=ZpGBByy0WJuxGw
	0kV+nIMsVfxrCezxY77hde4RUzjy66iJ1gOqSaIR3Qygpy3BBl8gOPZz99vXTxCt82zA6MeV6YBKJ
	mfyfHj7HrW+L/culdhP51a+JtMFBhDYqkBn4vY+fc6Kw//BERaFS/y5vrHKMeK7mqYwBJwoWhpCKX
	Oc4gIQXs4NCE2UImOan5NsNvYGxWQXgmnQfqqf1tsZn4BkNQbHbqtNJcX9fW9VnMPj1KKYqENu5cu
	0npYyenfyPwSAczbHdGj+8YBySP40bgcJCzskDGIU8EcRna1A9YqgGfA6AQDWG0qwpmfwZAQiagXe
	wuo2QmACxjNYAsU2Qtvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH9W5-0007WK-0v; Wed, 25 Mar 2020 17:08:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9Vn-0007Sz-5e
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 17:08:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1CD81FB;
 Wed, 25 Mar 2020 10:08:13 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CC683F52E;
 Wed, 25 Mar 2020 10:08:13 -0700 (PDT)
Subject: Re: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that
 holds the copy page routines
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200115143322.214247-1-james.morse@arm.com>
 <20200115143322.214247-4-james.morse@arm.com>
 <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
 <b983dfbf-49e2-d32c-e3a5-781df4f9ea4e@arm.com>
 <CA+CK2bD1fEY-NY8rCYi3Se9VTTzU5PVmDZyk2tWoSNP6rGZmJA@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <4b04e9d9-f2e4-2919-6501-a62b3b03dca2@arm.com>
Date: Wed, 25 Mar 2020 17:08:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bD1fEY-NY8rCYi3Se9VTTzU5PVmDZyk2tWoSNP6rGZmJA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_100815_274463_C8E253D3 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 3/25/20 1:29 PM, Pavel Tatashin wrote:
>> You keep coming back to this because you are trying to idmap all memory
>> on arm64. You do not need to do this.
> 
> No, this is not what I am trying to do. That approach was done in my
> first RFC, but I have since abandoned it,

Ah, okay. These all merge into one!


>> You only need one page idmaped so you can switch TTBR1_EL1, and turn the
>> MMU off.
>>
>>
>> You can do the copy of memory using a copy of the linear map in
>> TTBR1_EL1. For an example: hibernate does exactly this.
> 
> Yes, this is exactly what I am currently doing.

Great!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
