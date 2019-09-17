Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50229B49AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SnpMxkwZxU1otYhe2/WCRHtkcov7xYfSwPAB2iIx1x0=; b=s7nEnwyyKo92jlhyrqB8yofz8
	jnPdLYQdTsqvC5zKwlZ4p6yKFgL+rvbAiVTbrMRZbld6mc/9qzDr3y4oPpUz/5+qkHYjM/1T95WYZ
	YbDXo2wQBQe45Cv4fXAIIFXCYMESKOFVoHlQhi/AK3KU4LYTnntDrMfBJIe4HnxNH+0zhzdKWkOc2
	kZSCLV+t6rjYguzCPLU0Q68kvNHdSNTDkvx2zSt4i8hTBaMquyCN6863NseeOW6MTZ4Es24HTPCOY
	CaWeZbzhHU7fbV8/y8h+5vdK3P2kGr3LEeXziOFVTqSv0w1BFpkfmABiWVq+tFVPiWQ7UknIQWn/0
	Mq39ZLgjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA91S-0000kk-IF; Tue, 17 Sep 2019 08:39:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA911-0000kC-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 08:39:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EDA828;
 Tue, 17 Sep 2019 01:39:12 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81C4F3F575;
 Tue, 17 Sep 2019 01:39:11 -0700 (PDT)
Subject: Re: [PATCH v2] coresight: etm4x: Add support for ThunderX2
To: mathieu.poirier@linaro.org, tanmay@marvell.com
References: <1568096664-13252-1-git-send-email-tanmay@marvell.com>
 <20190916195826.GA16787@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ee2391ee-ba51-38b6-59b0-c00e5ca8b9a3@arm.com>
Date: Tue, 17 Sep 2019 09:39:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190916195826.GA16787@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_013915_168334_C017CB43 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: tnowicki@marvell.com, jnair@marvell.com, gkulkarni@marvell.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tanmay,

On 16/09/2019 20:58, Mathieu Poirier wrote:
> On Tue, Sep 10, 2019 at 06:25:02AM +0000, Tanmay Vilas Kumar Jagdale wrote:
>> Add ETMv4 periperhal ID for Marvell's ThunderX2 chip.
>> This chip contains ETMv4.1 version.
>>
>> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> 
> mpoirier@xps15:~/work/coresight/kernel-maint$ ./scripts/checkpatch.pl 0001-coresight-etm4x-Add-support-for-ThunderX2.patch
> WARNING: Missing Signed-off-by: line by nominal patch author 'Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>'
> 

To translate that message a bit more, "Signed-off-by:" is kind of a legal
declaration. So, please use your full legal name.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
