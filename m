Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E4B18D69E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RamF8yOD2AE+Rk8qOBY2a7eCBErX8xqKQLwvf5NwU/w=; b=oz26wc450lytkLKM6U/8cyAT4
	TNEzBUphmeyNK7D6WS0fsYNIlHcn3EVCeMEZ5/QOFWvyANR4bntHH/el8LHAUGMjIyYqbVx14v3ai
	xGoe5L0+qYtya1QJm3ZCBb+2n2wI38efPiKYKqVxmDthprt8wPpB5PwGalJZZ98eus3BlgICTzNfL
	aT0Limy6Tr3msBPwUT0uVyOTeDFjgg/Bv1KKmlCMRO4Dad2J3vEQxFf+pCOr4k+5uG6Mimc0m/sa2
	A2+iJVmDkRNI0WHfHeU33N8Hwy/ue1dkdHhuibi31784tGdvN0Ir5xZfGoNcbR7z9DvParhcca62O
	9m8mrD7Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFM83-0001Zj-PF; Fri, 20 Mar 2020 18:12:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFM7w-0001Z9-Jk
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:12:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 982741FB;
 Fri, 20 Mar 2020 11:12:11 -0700 (PDT)
Received: from [10.37.12.158] (unknown [10.37.12.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72FA53F305;
 Fri, 20 Mar 2020 11:12:10 -0700 (PDT)
Subject: Re: [PATCH 4/6] arm64/cpufeature: Define an explicit ftr_id_isar0[]
 for ID_ISAR0 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-5-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <54de9128-c947-4f68-7646-4261adde7f36@arm.com>
Date: Fri, 20 Mar 2020 18:16:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1580215149-21492-5-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_111212_692538_E808110E 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
> ID_ISAR0[31..28] bits are RES0 in ARMv8, Reserved/UNK in ARMv7. Currently
> these bits get exposed through generic_id_ftr32[] which is not desirable.
> Hence define an explicit ftr_id_isar0[] array for ID_ISAR0 register where
> those bits can be hidden.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
