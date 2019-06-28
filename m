Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5819597F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLerBWhMzoLaDSop2QA/icU+He0hmGRRdjAtiJBt3mc=; b=MMNGNNMwcp66Ve
	GA0fSMqp1u6cW0RY8PC3+Br9zHiFetkQJ3u2hh/ncw3ZzY6Q2w7j0FoIwT9KM39qE3OlhotGCSSmy
	Bp3jQh/NwiomSHw+2q9eEh9X7GqRRyJ3DZll2JgroV5TnfDMHHb4FWhHXf9oWKC5d4LdwIAWthtpw
	KGgy2/zyo7vsR7XCJz2/lXdSpdI4mG3gVKJkruAzbJlN/PJdc8oD297zINPGwxa78TAw8RZzfDP1F
	iTxwBYh2efPlFFHG/FHbX0VQ3YHmrewYcTz2I6dgmi4XcdzlQ9yTg3RUrGuc8YyuJDSpy+UBFJZPL
	7tcX+rUAEx28EzJig6gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnZ8-0003Tf-2B; Fri, 28 Jun 2019 09:53:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnYu-0003TI-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:52:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79956208CB;
 Fri, 28 Jun 2019 09:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561715576;
 bh=Q51/eiDzEzpnoVj8ctpxa2Tb4BnIqmcroS/9YKQAmM0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hq+GGSFHJu+Su/Qp+Won4cfcJSWBlnH5u2+yXwLrlWgefD7I5ddjIRtd1Ido8Zd8C
 eqxUlwz4AASP7UYd8rThtRn2ldTpBqBRDKz1ePOsKAsVxNQAzRj7fRPFoNV3ol8czJ
 Um5PfXAeX1d5vDpn5HoJ0NOgQQfIbQmwIe8dr3DI=
Date: Fri, 28 Jun 2019 10:52:51 +0100
From: Will Deacon <will@kernel.org>
To: Pratyush Yadav <p-yadav1@ti.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Fix incorrect fields being passed to
 prefetch command
Message-ID: <20190628095250.bzq4aqyuczt47y4i@willie-the-truck>
References: <20190628090953.23606-1-p-yadav1@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628090953.23606-1-p-yadav1@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_025256_535330_2CB0658E 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, joro@8bytes.org, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, wmills@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 02:39:53PM +0530, Pratyush Yadav wrote:
> According to the SMMUv3 spec [0] section 4.2.1, command 0x1
> (CMD_PREFETCH_CONFIG) does not take address and size as parameters. It
> only takes  StreamID, SSec, SubstreamID, and SSV. Address and Size are
> parameters for command 0x2 (CMD_PREFETCH_ADDR).
> 
> Tested on kernel 4.19 on TI J721E SOC.
> 
> [0] https://static.docs.arm.com/ihi0070/a/IHI_0070A_SMMUv3.pdf
> 
> Signed-off-by: Pratyush Yadav <p-yadav1@ti.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 4d5a694f02c2..2d4dfd909436 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -413,6 +413,7 @@ struct arm_smmu_cmdq_ent {
>  	/* Command-specific fields */
>  	union {
>  		#define CMDQ_OP_PREFETCH_CFG	0x1
> +		#define CMDQ_OP_PREFETCH_ADDR	0x2
>  		struct {
>  			u32			sid;
>  			u8			size;
> @@ -805,10 +806,12 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>  	case CMDQ_OP_TLBI_EL2_ALL:
>  	case CMDQ_OP_TLBI_NSNH_ALL:
>  		break;
> -	case CMDQ_OP_PREFETCH_CFG:
> -		cmd[0] |= FIELD_PREP(CMDQ_PREFETCH_0_SID, ent->prefetch.sid);
> +	case CMDQ_OP_PREFETCH_ADDR:
>  		cmd[1] |= FIELD_PREP(CMDQ_PREFETCH_1_SIZE, ent->prefetch.size);
>  		cmd[1] |= ent->prefetch.addr & CMDQ_PREFETCH_1_ADDR_MASK;
> +		/* Fallthrough */
> +	case CMDQ_OP_PREFETCH_CFG:
> +		cmd[0] |= FIELD_PREP(CMDQ_PREFETCH_0_SID, ent->prefetch.sid);

Hmm, but there's no issue here because the onus is on the caller not to
initialise size and addr if they are using PREFETCH_CFG (and this is
currently the case). Are you seeing a problem in practice?

I'm happy to take a patch adding support for PREFETCH_ADDR, but we'd need
a caller first.

Also -- fancy sending me a board? ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
