Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E671541CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=674l3I0OX+anVnfH9T8X2UTFdnz1W8Yawwc3NI7OBwQ=; b=nr1BABZzrhrWPc
	BArP1nU3rdHuWp9VHWLbReqLCYUao5IR8xvwhXcUlsF1e/aOTxfR0f9vmy8zMCf6StwpOz6oqISUb
	sxyHzXIAV4+ii4zlJ4EZaPE4DG+GVXQ3w4H5KJwCCc8pJuJs0KkCEpL85+F1ncjafNWrAfaD3kjfP
	Et4WABPQo01SPM7+/eOxPSUJ5cV/AkpzT49zR7sPhdTSBhztahY0BliebYqcJULWmbuIn1UGjPXnP
	rU67936BnVCZ+6b+m55vFufSOivDCG8W52AYYhRGVkbeqlcNMtOtkxKNrbgER1OcVl0mpdq28qvyZ
	ilgdWziSO4oHQfvyCBYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeK9-0001kG-H6; Thu, 06 Feb 2020 10:23:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeK2-0001jN-UF
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 10:23:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44DD7206CC;
 Thu,  6 Feb 2020 10:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580984625;
 bh=fznLLoDfGfg3j/4UEm5cT+Z+SIUayCwPJ8HX78CG7PQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oHPX0Q/JFvQhIpKA+qOX3GhPwqPaAsgjwbCw2CGiV2FceU70zXoL6jfOQ6TilEhpn
 d3KqxNF80Sejdl4AKeBO7/cK0Kgfp4Hxttccet8xx9fmce0+DEnhfeDYtshBn45WKc
 xys0xmee8ckM9gJs/ensRBMhoF0viFouoAP+r2f8=
Date: Thu, 6 Feb 2020 10:23:40 +0000
From: Will Deacon <will@kernel.org>
To: Hoan Tran <Hoan@os.amperecomputing.com>
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Message-ID: <20200206102340.GA17074@willie-the-truck>
References: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_022346_998612_63FC5F6D 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, patches@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 11:55:14AM -0800, Hoan Tran wrote:
> Some NUMA nodes have memory ranges that span other nodes.
> Even though a pfn is valid and between a node's start and end pfns,
> it may not reside on that node.
> 
> This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
> this type of NUMA layout.
> 
> Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
> ---
>  arch/arm64/Kconfig | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e688dfa..939d28f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -959,6 +959,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
>  config HOLES_IN_ZONE
>  	def_bool y
>  
> +# Some NUMA nodes have memory ranges that span other nodes.
> +# Even though a pfn is valid and between a node's start and end pfns,
> +# it may not reside on that node.
> +config NODES_SPAN_OTHER_NODES
> +	def_bool y
> +	depends on ACPI_NUMA
> +

I thought we agreed to do this in the core code?

https://lore.kernel.org/lkml/1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
