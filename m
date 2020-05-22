Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6BF1DE4A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0xhxb3ocIOe6egVNPl3VqZSTI4G8yjqkIg5JAUfG8+M=; b=Q9opZPhHwJIyBQCt/vGrzN3Ew
	y32ZnwArtvPGUJVj6skByKPGXoc3i9QTSpoZyyr1jKLJWeJsbVehIkZnthJt+mR019a483S+OjX40
	P1Fg0WUfvdqEEcjKIqav19P+h/EthYoYUV2JqwO1vI5vJCsso7za50CH5m3Us3MPwNcOtJMDndBeV
	CfDoz3MtcPPpw2Tu6C75MD1Hc261bT3/Vhq2zEYtXBgzu72Nkhp23HXfI4xszZVUPZ5L2rn7FVNIB
	gM4q3rnJLCd4MrhN6fJ2N1u+J7P1qyf2woNZKjMmjjbsGk/mxcXo4Jv/lMtE61fxjrG86DtDktwVi
	xZXSpG+fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc57H-0008Dw-QA; Fri, 22 May 2020 10:41:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc574-0008D6-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:41:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 289E7D6E;
 Fri, 22 May 2020 03:41:12 -0700 (PDT)
Received: from [10.37.8.86] (unknown [10.37.8.86])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26D6E3F305;
 Fri, 22 May 2020 03:41:09 -0700 (PDT)
Subject: Re: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
To: will@kernel.org, tuanphan@os.amperecomputing.com
References: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200518172132.GA2601@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <5adeae2c-86be-6ee9-970b-aa891582c562@arm.com>
Date: Fri, 22 May 2020 11:45:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200518172132.GA2601@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_034114_100390_0F25E721 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, patches@amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will,

Thanks for the Cc.

On 05/18/2020 06:21 PM, Will Deacon wrote:
> On Mon, May 11, 2020 at 01:32:40PM -0700, Tuan Phan wrote:
>> Add ACPI node probing device support. Each DSU ACPI node
>> defines a "cpus" package with a per cpu MPIDR element.

I think there is a bit of confusion around the affinity listing.
I am getting this clarified with the architects.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
