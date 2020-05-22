Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A1E1DE7C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 15:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcvqpdY0t4SgFcGpHo+qzMHTrCLjUewfaZY5N5FUY0s=; b=u5VA1oQr434l5w
	jTqi+mmnHyJfilXKAmfGbfT3nSUK7x4BZmxncZmjSTOtR7uwQJTM3AXJAfGDc4IIUhQxURPwBFJVO
	tFUbcClaTQyIcNZYHv+8lD09ms3dLV9H1MNsDbMLBW6Qa8tny9TYU9xsR8hlzl5NVyyVfhnv8kBRX
	ssTFlRJnkiACegciTFljFx7H4hG4+VME/WpeOMglTcnPugZt1EFmSL4VtfIQ76d3eu9UxnD/hP8uM
	OjM1O1aHdwQkJ2AUnxwvOgnsIIr97z2scJtP0nPKI4zQ8puCHOM4493YUmNoWDi5+zMCBnLWUxvph
	wEwxdDc2597Im5zw0kAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7TQ-0003Zl-M5; Fri, 22 May 2020 13:12:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7TG-0003Yd-IH
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 13:12:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86F36D6E;
 Fri, 22 May 2020 06:12:16 -0700 (PDT)
Received: from bogus (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C23A03F68F;
 Fri, 22 May 2020 06:12:12 -0700 (PDT)
Date: Fri, 22 May 2020 14:12:06 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Message-ID: <20200522131206.GA15171@bogus>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-4-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522083724.38182-4-jianyong.wu@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_061218_646187_0652BC82 
X-CRM114-Status: GOOD (  14.03  )
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
Cc: Mark.Rutland@arm.com, kvm@vger.kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, justin.he@arm.com, Wei.Chen@arm.com,
 maz@kernel.org, steven.price@arm.com, Kaly.Xin@arm.com, suzuki.poulose@arm.com,
 richardcochran@gmail.com, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, nd@arm.com, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, Sudeep Holla <sudeep.holla@arm.com>,
 pbonzini@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 04:37:16PM +0800, Jianyong Wu wrote:
> Export arm_smccc_1_1_get_conduit then modules can use smccc helper which
> adopts it.
>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  drivers/firmware/psci/psci.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2937d44b5df4..fd3c88f21b6a 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -64,6 +64,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
>
>  	return psci_ops.conduit;
>  }
> +EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);
>

I have moved this into drivers/firmware/smccc/smccc.c [1]
Please update this accordingly.

Also this series is floating on the list for a while now, it is time to
drop "RFC" unless anyone has strong objection to the idea here.

--
Regards,
Sudeep

[1] https://git.kernel.org/arm64/c/f2ae97062a48

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
