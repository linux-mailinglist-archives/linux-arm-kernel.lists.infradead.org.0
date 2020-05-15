Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EBD1D4949
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fqG4aOsjPdCz6j2ZIHkz102m3nq7ALwNI4rGn/vU6M=; b=TjokhGRhO2SBMW
	JgpgIGQTDPTCIfU1Q5KCFZyOOk4DAhv5kOdsLwW0RFb8PJGc/S9ZnR501ValizxQ5lxgyk+4mnSnr
	YIgcEV1I0w1XfXCihVqU3Waecj1SGjk2gR8h4xoWzq9fTH2W43zBKJg0ABuIGicHZkZGcHBVB96Ro
	qV0UtV3d15aokGPlKFrbGN0pacSfOUwphzFXNxhOaTuE3Ou33XjEsB5agdyLjFxY+ezz8bO3C7806
	tPAfOZxTwTLrbUT/1+fARrO9uGH+KdIRTH/KNKMwayN4wf5NK2wnElnuA8u8pXPWuFI98Jqwp3xd+
	TLDcDikewc8P3ha5PBSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWUK-0007a2-5K; Fri, 15 May 2020 09:18:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWU2-0007ZF-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:18:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BE5B2F;
 Fri, 15 May 2020 02:18:20 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5222B3F71E;
 Fri, 15 May 2020 02:18:17 -0700 (PDT)
Date: Fri, 15 May 2020 10:16:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH v3 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200515091612.GA23671@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200515075032.5325-1-etienne.carriere@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515075032.5325-1-etienne.carriere@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021822_520349_21C02C9E 
X-CRM114-Status: GOOD (  16.00  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, arnd@arndb.de,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, steven.price@arm.com,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 09:50:32AM +0200, Etienne Carriere wrote:
> > From: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Hi,
> >
> > This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> > This doesn't add other changes added in SMCCC v1.2 yet. They will
> > follow these soon along with its first user SPCI/PSA-FF.
> >
> > This is tested using upstream TF-A + the patch[2] fixing the original
> > implementation there.
> >
> >
> > v1[0]->v2[1]:
> > - Incorporated comments from Steven Price in patch 5/5
> > - Fixed build for CONFIG_PSCI_FW=n on some arm32 platforms
> > - Added Steven Price's review tags
> >
> > v2[1]->v3:
> > - Incorporated additional comments from Steven Price in patch 5/5
> >  and added his review tags
> > - Refactored SMCCC code from PSCI and moved it under
> >  drivers/firmware/smccc/smccc.c
> > - Also moved soc_id.c under drivers/firmware/smccc
> >
> > Regards,
> > Sudeep
> 
> Hello Sudeep,
> 
> In case it helps. I have successfully tested the 7 patches series
> on some platforms, playing a bit with few configurations.
> Qemu emulator for arm64/cortex-a57 with TF-A (v2.x) as secure firmware.
> Qemu emulator for arm/cortex-a15. OP-TEE (v3.x) as secure firmware.
> A stm32mp15 device (arm/cortex-a7), tested both TF-A (v2.x) and
> OP-TEE (3.7.0, 3.9.0-rc) as runtime secure firmware.
> 
> Helper functions arm_smccc_1_1_get_conduit()/arm_smccc_1_1_invoke() 
> works as expected AFAICT. No regression seen with older secure
> firmwares.
> 
> For the patches 1 to 6, as I poorly tested [v3,7/7] soc ids,
> based on tag next-20200505 [1]:
> Tested-by: Etienne Carriere <etienne.carriere@st.com>
> Reviewed-by: Etienne Carriere <etienne.carriere@st.com>
> 
> For [v3,7/7] firmware: smccc: Add ARCH_SOC_ID support
> Acked-by: Etienne Carriere <etienne.carriere@st.com>
> 
> [1] 7def1ef0f72c ("Add linux-next specific files for 20200505")
> 

Thanks for review and testing Etienne. Much appreciated!

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
