Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEECD093B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BzGETNwJxhHiaLvWRyAECRknYxwwFK4/JykqNVrIrk=; b=rxKmrEJi7TnFQx
	k9FmhILmqCzcVFJVpvEHHdGOGUw+QA3sEhnlTYZKdpm6OphbRVHlHknP7GqTYtkMc3Bn6JOZwXzkn
	rMsFKwNaDukYEQkpdsejglM2jU6Zihx+DKHpZzjuBAcHECRF02Fz2v4axa3pYDVW4+p/t+fdObXhJ
	N/Kx2+fm3H6dj2ADq9nSlsK5kyL1iIWGePhxWbRhLtdlOpvnFNyhgsKMWNpW8UWnycotoexCnFy9g
	Lg1ZSIYcRTetW0E+wLi8epAjNqM2oBehhMMKTI787m5fAnMZAfESfqy5zgyTr64zAU/fRZIKL62u+
	GfRtMqKu5Jem4krpQiPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI71i-0000FT-B8; Wed, 09 Oct 2019 08:08:54 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xs-0004EQ-Hb
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:58 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id AAB4F220CF;
 Wed,  9 Oct 2019 04:04:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 09 Oct 2019 04:04:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=hQ193SL2uijxMsSZZN+E7UbjF6F
 qcanbIfpsn0ebGWk=; b=reEgUqkjVszHJSqYZVXaDviBOS/Ex3LRnfmaWJAASa8
 ypReR8lktEClOuhJR1ocG1V4ZZ6Al2tFdetTQzTDFVMIaXmMjsvD4Cx2ye4OaGGf
 DONdOOMYDenqA27KzTOxsopJ+BouSBOHg5JugvmwNfsMNiS2/0PSAJoVz0g40K+P
 hY7xl7Fd5GF/SNbBSyeDxNElCooUaYN4mviMNUvFnfyPCsNEYJrsOE9I1rApidFK
 8F0DlgwwZnJb1xSRrm48AH0LlbYxL63Sg1iQOltoTdhBeb2W1svO2yjxYbeqL1Ap
 CbuTMqGNLys5IEILpEysd0QTwqFA5N6LrXsV4CEwIfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=hQ193S
 L2uijxMsSZZN+E7UbjF6FqcanbIfpsn0ebGWk=; b=Tn6f6UDUEcdux6cDwIfvvo
 ecmpqJ0Ry3UQ5Ez5FCpqvGqNj5lgl4wQ4++ghvad5F/0hM9+DtOiK9S2ylzGw9Fq
 0nDHboysLF7RgLaKBXiHwyJkAIg+78xgCLA4povEW+z8n4fNVriXwJouMsx4hF2P
 ywd038mK7s6Kv75UldGI73v7JAePv4IHmlKTy6dp9LqNTjSUtMYf4sQXfzjUKjmR
 QqoCEeQsG7xAe/OzmAM5ZlLcQg3NdOxWvgiAJCIs7ozZFvsrSr64DiuyZKdfqDr6
 hk6xRWXf81KJparCSLaZr7uZOTbmDIhREYQ29Ret2Xn1UokKsFTbopNbATVfnilQ
 ==
X-ME-Sender: <xms:o5SdXZzGgYdhioi2E_ntiRl1VvsDqC8iXRY2HOZytOHEUW9AFPwTCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedtgdduvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
 ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
 dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
 vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:o5SdXditpksltbspx072ppxr-YFVc6OXhUTj4ZZ3_UWDypA_xq1bGw>
 <xmx:o5SdXeUB80ow9YeOWivLJVXiqDexBR7DyiUDH8C5G9vfPSbvx0Jqzg>
 <xmx:o5SdXf2VRqGvQjdkf-rW7JHc0fyrQXPLYhxFh23BxMPkU48kErOGDw>
 <xmx:o5SdXQ71JEy00ZlmMp5fk8TNGHSoQ321qdu4uuZHrS6Dr93frR2mRw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2B0F7D60057;
 Wed,  9 Oct 2019 04:04:51 -0400 (EDT)
Date: Wed, 9 Oct 2019 10:04:22 +0200
From: Greg KH <greg@kroah.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH for-stable-v4.19 00/16] arm64 spec mitigation backports
Message-ID: <20191009080422.GA3881278@kroah.com>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010457_027161_3AEA8ED4 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:39:14PM +0200, Ard Biesheuvel wrote:
> This is a backport to v4.19 of the arm64 patches that exists in mainline
> to support CPUs that implement the SSBS capability, which gives the OS
> and user space control over whether Speculative Store Bypass is
> permitted in certain contexts. This gives a substantial performance
> boost on hardware that implements it.
> 
> At the same time, this series backports arm64 support for reporting
> of vulnerabilities via syfs. This is covered by the same series since
> it produces a much cleaner backport, where none of the patches required
> any changes beyond some manual mangling of the context to make them apply.
> 
> Build tested using a fair number of randconfig builds. Boot tested
> under KVM and on ThunderX2.

All now queued up, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
