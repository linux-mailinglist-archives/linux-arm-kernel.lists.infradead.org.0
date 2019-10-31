Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B2DEB257
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJeB30zEaLYXCZP/pRirVXPB9IVa2EKjemLFef47uKw=; b=olmkNChIhb/2LJ9A7WjULQvk1
	5l3j+4P6hrHmQT2U93X0iooqNOjXriCu/kRCQY9WzUkwfiygKnT73IGotHyIU8iqihVusFioffGnX
	xKHLyWOyPmxjGK2upfqjnSei/aIbmLav/xo+fupQ3s9XxqH1PoEtKC2WCRVb9rNPzmTI0idvLPXbL
	JDU9hknKfDmgcOdPeGyqIRvHdOUtCuvPJhVOjV+FE9KKr4M4KZCQJrfLMDCrSiRylHDSanXRk9nSu
	U+pioFsakeYM+h8/q8lPNmvNbxNzl/bp1OvTjh8Vs06a2gr/CAPEAiJRGsryEYuCSd80xHOHvVVaf
	OikZ/fOZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBGj-0008G3-Sj; Thu, 31 Oct 2019 14:17:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBGT-000855-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:17:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8D1F360931; Thu, 31 Oct 2019 14:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572531444;
 bh=HXC8+viMGhThZbeYm9oP+pwlgdCRQlhDZ1MyTj/DxW8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FZRWQGkLGPdum23ncaSGTOawLN0vg/F1e8Gdw6C+VYg+JDWJLx9RrGthwQZKrenkd
 SDsgYsHz6aVhWbxEPk8/CF+JXDtmQV5bJgh6bBeMrK46t60NIgGGApFhAdSWGc1c3b
 GVeGq7A/WTHgkdNrGoCF/Im9MFdpWLEnsUHkrczA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D7DFC60AD7;
 Thu, 31 Oct 2019 14:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572531440;
 bh=HXC8+viMGhThZbeYm9oP+pwlgdCRQlhDZ1MyTj/DxW8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=aY/1cPISfdI6fUglVleYhnEX6K5M9+aJKAWCkhd1/bduQSxy1mOEfTyznqbaCNXon
 fIkBjlJbtUCBvjfS7HlQqRnpImuaMumddmcnfI1wsPLs2K5ERjgVnC+3PiPnaejNRl
 hUgJf246hqRvwXu2vgryq2RGdYcDESaDxatS1Rw4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D7DFC60AD7
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor errata 1009
 for Kryo
To: Will Deacon <will@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20191029232738.1483923-1-bjorn.andersson@linaro.org>
 <20191031132914.GD27196@willie-the-truck>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <24673fd9-3c1c-04f6-eb2e-525f8546ebf3@codeaurora.org>
Date: Thu, 31 Oct 2019 08:17:18 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191031132914.GD27196@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_071729_881472_5993FCD6 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/31/2019 6:29 AM, Will Deacon wrote:
> [+Jeffrey]
> 
> On Tue, Oct 29, 2019 at 04:27:38PM -0700, Bjorn Andersson wrote:
>> The Kryo cores share errata 1009 with Falkor, so add their model
>> definitions and enable it for them as well.
>>
>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> ---
>>
>> Changes since v1:
>> - Use is_kryo_midr(), rather than listing each individual model.
> 
> Cheers, I've queued this up as a fix.
> 
> I also updated the E1009 entry in silicon-errata.rst but, in doing so, I
> noticed that E1041 is listed there which apparently also affects
> Kry^H^H^HHydra [1].
> 
> At which point, maybe we should rename both Kryo and Falkor in the tree
> so that we consistently refer to Hydra as the underlying micro-architecture.
> Obviously not something for 5.4, but it would sure help me to understand
> what's doing on here.
> 
> Thoughts?

Unfortunately, Falkor is also an underlying micro-architecture, it just 
happens to be strongly related to Hydra so a fair amount of the errata 
affect both.

I don't want to be difficult.  For ultimate "correctness", Falkor and 
Hydra should probably be separate, however the Falkor architecture is 
not widespread and unlikely to have much churn going forward.  So I 
think if it makes life easier for you, all the Falkor stuff can probably 
be scrubbed and just merged into Hydra.

> 
> Will
> 
> [1] https://lore.kernel.org/kvmarm/20171115010505.GO11955@codeaurora.org/
> 


-- 
Jeffrey Hugo
Qualcomm Technologies, Inc. is a member of the
Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
