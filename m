Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77761FCE04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56N/AgF+ezvppogtdt3nflmFm5g2+PgXy8qFPIaSBsw=; b=CYeWLIyg5+ZhVi45gwu8dE1Xv
	T7zeevjl5DR7BaEN9Ktxbdcqan0lEXNWi+NSfNvsQm59Oujz7yWT0iqKYLwyig5w0GyyyBpsh/JfF
	AIwFouKcfP4/t9mbMcj4BTNnkNrR0s+JUSR+jVltfD0HPMLYPXLYIx1Q8nGk4ejH0+5D/wa13EUxW
	VGWEjlEusBkz0OlSwB2FgoR5fiq5Bkaa6AjHz74NGPeVIgt00K2KUxEc7s3a7m1IBaywp/8p89MEU
	/6qRxTsF9DiYEFUOa/fI1d2pvcVVd1vGXbetJwDgMn6vTEbs2phM1Q4Z3KDVJ7aSXSdlOh1sMirEJ
	NC3iFBqFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXhm-0006Ud-LH; Wed, 17 Jun 2020 13:02:14 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXhV-0006U1-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:02:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592398926; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=7pm2IXfLAfRagZiGZKYZNX0/GVUo/BFDAtYVOQG7lYY=;
 b=AX4NFj3eDgUfCg9vWep1FcrlUwuLUVr+dpcx2C+UQGChANmAX3sp8qv/qBdbx+PCvU+2ogM5
 XsDKXRaBa8wjQLGIfaAfMZJXMUrh9J97x8zyFNpl+sLgmeMCj7xOSql0y/GftU27NDtkGZI5
 YmV63/LdNBfq4Xb5tkJRC1F3jh8=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 5eea14046bebe35debdf51c0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 17 Jun 2020 13:00:52
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 09EADC433C8; Wed, 17 Jun 2020 13:00:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.0.101] (unknown [124.123.165.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: neeraju)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94577C433C9;
 Wed, 17 Jun 2020 13:00:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 94577C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
Subject: Re: Query regarding ERRATUM_1418040
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>
References: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
 <062be27686369d28bd2054a54c307400@misterjones.org>
 <20200617112542.GB3503@willie-the-truck>
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Message-ID: <2ee8b224-250c-88cc-b1a1-3cc503a3a24f@codeaurora.org>
Date: Wed, 17 Jun 2020 18:30:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617112542.GB3503@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_060206_288454_F8E1D0E6 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Sorry for the wrong mail address.

On 6/17/2020 4:55 PM, Will Deacon wrote:
> On Wed, Jun 17, 2020 at 12:19:16PM +0100, Marc Zyngier wrote:
>> On 2020-06-17 09:55, Neeraj Upadhyay wrote:
>>> I have query regarding the errata 1418040 [1]. Here, on kernel exit to
>>> EL0 64 bit mode, will it always enable ARCH_TIMER_USR_VCT_ACCESS_EN;
>>> and override any other erratas, which might require EL0 direct vct
>>> access to be disabled for 64 bit also?
>>
>> So far, I am not aware of any erratum that would require traps of CNTVCT_EL0
>> to EL1 when running AArch64 userspace for CPUs that are affected by
>> ARM-1418040. If such an erratum exists, it would have to be handled
>> separately.
>>
>>> Also, this errata applies
>>> mitigation for all CPUs (on return to 32 bit EL0), even if, not all
>>> cpus are impacted by the errata?
>>
>> Indeed. There isn't much we can do to avoid it here, unless you want to read
>> some per-CPU variable that tells you whether the CPU is affected. This would
>> add to the cost of the mitigation , and isn't an appealing prospect.
> 
> Hmm, but in conjunction with the previous point, doesn't this mean if
> some CPUs are affected by an erratum which requires CNTVCT trapping for
> AArch64 and others are affected by 1418040, then the former won't actually
> be trapped?
> 
> Maybe we should preserve ARCH_TIMER_USR_VCT_ACCESS_EN for AArch64 tasks
> instead of setting it unconditionally?
> 
> Will
> 

What is the reason for errata being applied on every kernel exit to EL0
and not at process switch point?


Thanks
Neeraj

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member of the Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
