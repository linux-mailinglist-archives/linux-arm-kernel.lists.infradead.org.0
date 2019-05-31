Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E0630AB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1Fm9UH1W0Ay24M8KN+weRvEIrseQ4o08w2JIbInENs=; b=NzSEjKILSrTTBz
	AkRlwe2//srPkyJ5OAIFFjP8ZCxzVna+gTQoPIEqy/rlwLN/F3m2IlXdEM0KWvLKtT1DCOE+fWjVP
	fRLaQ4VsI1AWMu7oiOzkEFrfDBXbGi+IeN8EUwbmCWhDH//Il39TiqG6ziZg2/otSiZZtJ2Ehdi38
	pcV/q5shqwqw7DofTlQiN++OCoCwPSKmz+QgLtaCo/4Xh4HIUldNEYBf1AKEWkpTzBgwgq+6ZLvx3
	cndVpWt+b8eC6pE8dz/uR7KcclqysMP7+9TI10vL3TBp/EnUE+wod8a7m7q6zR70LGZjV63EcvgXW
	yi1CKOZQcKuNWVABzUGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdJi-0002jv-SI; Fri, 31 May 2019 08:55:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdJb-0002Vm-6U
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:55:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB4D0341;
 Fri, 31 May 2019 01:55:06 -0700 (PDT)
Received: from [10.162.42.223] (p8cg001049571a15.blr.arm.com [10.162.42.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 18C9D3F59C; Fri, 31 May 2019 01:55:03 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64/mm: Drop vm_fault_t argument from
 __do_page_fault()
To: Christoph Hellwig <hch@infradead.org>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
 <20190530063459.GA2181@infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <985b0d8f-2141-019b-8555-272eafc58ea3@arm.com>
Date: Fri, 31 May 2019 14:25:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190530063459.GA2181@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_015507_251699_E8964F5A 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/30/2019 12:04 PM, Christoph Hellwig wrote:
> On Wed, May 29, 2019 at 06:04:45PM +0530, Anshuman Khandual wrote:
>> __do_page_fault() is over complicated with multiple goto statements. This
>> cleans up code flow and while there drops the vm_fault_t argument.
> 
> There is no argument dropped anywhere, just a local variable.
> 

You are right. Will fix both subject line and the commit message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
