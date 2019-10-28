Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932CFE7C8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MVe0hxo7CVNNGVJJXKZZytlspS2j/Qg1dNUSDUOm1ls=; b=tZ3Cdy7zBYYIRI4oKCjCEuFl+
	Sbw7zW69bJhb5/TqR1nJW4fKmg9sdqYT0Cbo6uagxor13+TlbTFgNYwjZKieH82Ad48M7qNx3U10t
	KaXDUdd+PcThijJcxZWVDSgV1j4F+qsk7NIJgDTx61J5UHAoIKKcx6HMovforQjxAUfUZngx8tAnw
	9B8K4JtCrvMgxGyPeOQ4JzZRpJvFF9/Ka4pzKEShgFf1kr//yHzid/R1bJ31VZ9YcTTanJljqwgNr
	lmP4h5EbjwR4U6Tb0urTaDWfdOqItgX4XhlSanAn2oJV+RRbQRO3VbP+8ohq8gczr0DnEU4DtLd4N
	ZJq/h2RrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDrt-0007Vt-5e; Mon, 28 Oct 2019 22:52:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDrh-0007V2-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:51:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C8621F1;
 Mon, 28 Oct 2019 15:51:56 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 324343F6C4;
 Mon, 28 Oct 2019 15:51:55 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: fix "hang" when games exit
To: Rob Clark <robdclark@chromium.org>, Will Deacon <will@kernel.org>
References: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
 <20191007204906.19571-1-robdclark@gmail.com>
 <20191028222042.GB8532@willie-the-truck>
 <CAJs_Fx7zRWsTPiAg0PFt+8nJPpHpzSkxW6XMMJwozVO6vyB78A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e3fc88d9-4934-0227-d9c7-b1cb37a8811e@arm.com>
Date: Mon, 28 Oct 2019 22:51:53 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAJs_Fx7zRWsTPiAg0PFt+8nJPpHpzSkxW6XMMJwozVO6vyB78A@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_155157_642851_38BEF8C3 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Joerg Roedel <joro@8bytes.org>, open list <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Rob Clark <robdclark@gmail.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-28 10:38 pm, Rob Clark wrote:
> On Mon, Oct 28, 2019 at 3:20 PM Will Deacon <will@kernel.org> wrote:
>>
>> Hi Rob,
>>
>> On Mon, Oct 07, 2019 at 01:49:06PM -0700, Rob Clark wrote:
>>> From: Rob Clark <robdclark@chromium.org>
>>>
>>> When games, browser, or anything using a lot of GPU buffers exits, there
>>> can be many hundreds or thousands of buffers to unmap and free.  If the
>>> GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
>>> for each buffer, resulting 5-10 seconds worth of reprogramming the
>>> context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
>>> To the user it would appear that the system just locked up.
>>>
>>> A simple solution is to use pm_runtime_put_autosuspend() instead, so we
>>> don't immediately suspend the SMMU device.
>>
>> Please can you reword the subject to be a bit more useful? The commit
>> message is great, but the subject is a bit like "fix bug in code" to me.
> 
> yeah, not the best $subject, but I wasn't quite sure how to fit
> something better in a reasonable # of chars.. maybe something like:
> "iommu/arm-smmu: optimize unmap but avoiding toggling runpm state"?

FWIW, I'd be inclined to frame it as something like "avoid pathological 
RPM behaviour for unmaps".

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
