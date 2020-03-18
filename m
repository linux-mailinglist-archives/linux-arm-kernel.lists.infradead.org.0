Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA5C189447
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 04:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6O726IJFmiN6VKZy0V7YJJuAV64kCu+QSN3q7LV0s8k=; b=eJzA9EJ2xzoqg0
	s7J1AXEIHhmTpUmTQVlLPtrBia44KqDFZYwcvR9qM/kFhOEySlTGXh6ns6AhvBSZPn8tghaMD5IXz
	dTQzzMtvRzUgvi/SfmJnpvx5gwiQ2PH3bFyB7py431OmkucGh+ivulR6hHlF24lu77FpVqOq9uH9c
	IdLk99QtGuTxUfHXLxg/+Hnus4kXjy9P83NYJmiQ2no9R9KIaVuYSDyFRPhgkw7y6oQ80OrK6wfYC
	5or+samVslvWM5ihfhjMS/i5pI+HnwQYCyq0rgjXN56LD+kP71mNbKQSb3sYG/FTTpqCPZktfg5Ic
	zzX6sGeEKsrqv2ldZ16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEP7v-0005AF-FY; Wed, 18 Mar 2020 03:12:15 +0000
Received: from mail3-166.sinamail.sina.com.cn ([202.108.3.166])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEP7m-00058f-5m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 03:12:08 +0000
Received: from unknown (HELO localhost.localdomain)([123.115.165.46])
 by sina.com with ESMTP
 id 5E71916D0002EAC0; Wed, 18 Mar 2020 11:11:43 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 93650654919637
From: Hillf Danton <hdanton@sina.com>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v6 03/10] arm64: hyperv: Add hypercall and register access
 functions
Date: Wed, 18 Mar 2020 11:11:30 +0800
Message-Id: <20200318031130.5476-1-hdanton@sina.com>
In-Reply-To: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_201206_397130_BB2864CD 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.108.3.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.166 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hdanton[at]sina.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-efi@vger.kernel.org, boqun.feng@gmail.com,
 arnd@arndb.de, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 jasowang@redhat.com, sunilmut@microsoft.com, linux-kernel@vger.kernel.org,
 marcelo.cerri@canonical.com, olaf@aepfle.de, maz@kernel.org, apw@canonical.com,
 vkuznets@redhat.com, kys@microsoft.com, will@kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat, 14 Mar 2020 08:35:12 -0700 Michael Kelley wrote:
> +/*
> + * Get the value of a single VP register.  One version
> + * returns just 64 bits and another returns the full 128 bits.
> + * The two versions are separate to avoid complicating the
> + * calling sequence for the more frequently used 64 bit version.
> + */
> +
> +/*
> + * Input and output memory allocation sizes are rounded up to a power
> + * of 2 so kmalloc() will guarantee alignment. In turn, the alignment
> + * ensures that the allocations don't cross a page boundary, which is

Better to specify kmalloc's current alignment and why it fails to ensure
(4 * sizeof(u64))-sized allocations wont cross page boundary.

> + * required by the hypercall interface.
> + */
> +#define INPUTSIZE (4 * sizeof(u64))
> +#define OUTPUTSIZE (2 * sizeof(u64))
> +
> +static void __hv_get_vpreg_128(u32 msr, struct hv_get_vp_register_output *res)
> +{
> +	union hv_hypercall_status		status;
> +	struct hv_get_vp_register_input		*input;
> +
> +	BUILD_BUG_ON(sizeof(*input) > INPUTSIZE);
> +
> +	input = kzalloc(INPUTSIZE, GFP_ATOMIC);
> +
> +	input->partitionid = HV_PARTITION_ID_SELF;
> +	input->vpindex = HV_VP_INDEX_SELF;
> +	input->inputvtl = 0;
> +	input->name0 = msr;
> +	input->name1 = 0;
> +
> +
> +	status.as_uint64 = hv_do_hypercall(
> +		HVCALL_GET_VP_REGISTERS | HV_HYPERCALL_REP_COUNT_1,
> +		input, res);
> +
> +	/*
> +	 * Something is fundamentally broken in the hypervisor if
> +	 * getting a VP register fails. There's really no way to
> +	 * continue as a guest VM, so panic.
> +	 */
> +	BUG_ON(status.status != HV_STATUS_SUCCESS);
> +
> +	kfree(input);
> +}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
