Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17598FDA2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RbgGQWnY8fn8gvQh5RW/ia+vFxMmoxsmoonEF0npRTM=; b=UizbnjWjbl+Zx9WJ+TDtTerwK
	QTnwKJN15yq0LK0XtDtG5RUY8uTSRO33XlT+phLo6zaRjGIP/mW9iuU1dVBeMgy42GL/Wrr/oqaV4
	tC2i4sBnYorI7OL6BykXO4CPVAY0o27/Q08A8bSDBV/Zsc0DLKctJoc0wDcmDhT65/0TjGWfEgEsW
	7eja4RV5ppbTof9t99rwO2kOGzHZw5eZ0Ldxb7mBulXGZDw1ne7n5oI84+APdq4NKQ/+gyOwVYld4
	GA+aYIiwv4a/M4nX5K+EjSqbEXjhN8jjnLd2zfmfsqsXAyyqSuP+fCre2+nY+MAdyNywkGeNYmLZA
	YeLnnWvvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYNa-0000EL-TP; Fri, 15 Nov 2019 09:59:02 +0000
Received: from gecko.sbs.de ([194.138.37.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYNP-000083-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:58:53 +0000
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
 by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id xAF9wYvb017753
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 10:58:34 +0100
Received: from [139.22.40.153] ([139.22.40.153])
 by mail1.sbs.de (8.15.2/8.15.2) with ESMTP id xAF9wWAJ021696;
 Fri, 15 Nov 2019 10:58:32 +0100
Subject: Re: [PATCH 2/2] arm64: export __hyp_stub_vectors
To: Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>
References: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
 <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
From: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <3aeabfb9-0680-08f6-49bc-38930c7a23df@siemens.com>
Date: Fri, 15 Nov 2019 10:58:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_015852_222731_177D54E1 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [194.138.37.40 listed in list.dnswl.org]
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
Cc: Alice Guo <alice.guo@nxp.com>,
 "ralf.ramsauer@oth-regensburg.de" <ralf.ramsauer@oth-regensburg.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.11.19 10:45, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> External hypervisors, like Jailhouse, need this address when they are
> deactivated, in order to restore original state.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   arch/arm64/include/asm/virt.h | 2 ++
>   arch/arm64/kernel/hyp-stub.S  | 1 +
>   2 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/virt.h b/arch/arm64/include/asm/virt.h
> index 0958ed6191aa..b1b48353e3b3 100644
> --- a/arch/arm64/include/asm/virt.h
> +++ b/arch/arm64/include/asm/virt.h
> @@ -62,6 +62,8 @@
>    */
>   extern u32 __boot_cpu_mode[2];
>   
> +extern char __hyp_stub_vectors[];
> +
>   void __hyp_set_vectors(phys_addr_t phys_vector_base);
>   void __hyp_reset_vectors(void);
>   
> diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
> index f17af9a39562..22b728fb14bd 100644
> --- a/arch/arm64/kernel/hyp-stub.S
> +++ b/arch/arm64/kernel/hyp-stub.S
> @@ -38,6 +38,7 @@ ENTRY(__hyp_stub_vectors)
>   	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
>   	ventry	el1_error_invalid		// Error 32-bit EL1
>   ENDPROC(__hyp_stub_vectors)
> +EXPORT_SYMBOL(__hyp_stub_vectors);
>   
>   	.align 11
>   
> 

While I would not dislike to have patch-free access in Jailhouse, I'm 
not sure if an out-of-tree use case justifies this an export.

Also, this lacks the arm equivalent to be complete.

Jan

-- 
Siemens AG, Corporate Technology, CT RDA IOT SES-DE
Corporate Competence Center Embedded Linux

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
