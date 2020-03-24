Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DE2190B5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bpTKLhXzCmDgBsQOe7NiUZTB2HVBegtlB5BXs+vA/Xo=; b=MuOWU1LNCuFAFmJRyaNhHOE1c
	CRtRP2cTm8G+OhImNv0HWnA/9wp/nFvRHuQRsLzJOLIvk2U/jdIqLsghfbvTJldWW4B6aP8R5iKTg
	hQ5p3gkdcxcsNSFWy9CUaSoPygLgwLf1N3VexPDlzrhXHTh8/59dOJfzQnhFscZiQxTVyZJNS0qPk
	8EYfJptdon/uwZoL7k/xV4VMviYUFQ5s3yw8bPmd/3JjzgHTHB9qkCDEBTZznj7uUq4fZK11uSQF9
	R6Y0pv9MhCL8353GmmfTsQAUxcB4vQ9Ewh5WkpyTQdC+4V7fnMJNzXknLcQMOn7bi7Uzhwe6UK475
	qGLyf9QNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGh5R-0000BT-1l; Tue, 24 Mar 2020 10:47:09 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGh5I-0000B2-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:47:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02OAki5v093112;
 Tue, 24 Mar 2020 05:46:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585046804;
 bh=D2ALQtCg+SKfnDlQYR3fcQQukI+ow4R5PvsOSa39z0E=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=hpmbjgLoY8bMHGPi0LXG8dO1pAFHKJNRRZRsF7GbOz9a3z0PC2n89l54fhH5+khmt
 /1K+exq0Q1+0+RHl71GDR5UEuspxqWF8P60yNonQL1UtXxVZXpbMcQjYI6kO/JeT9A
 aA5F0oKzFbQKPy6zVZt126tBepHUgU5JDKgynSio=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02OAkiEp100135
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 24 Mar 2020 05:46:44 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 05:46:44 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 05:46:44 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02OAkfLj024660;
 Tue, 24 Mar 2020 05:46:42 -0500
Subject: Re: [PATCH] kthread: Mark timer used by delayed kthread works as IRQ
 safe
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Tejun Heo <tj@kernel.org>, Petr Mladek <pmladek@suse.com>
References: <20200217120709.1974-1-pmladek@suse.com>
 <20200219152248.GC698990@mtj.thefacebook.com>
 <6a4c07df-8971-8637-5251-ce177c3a08ce@ti.com>
Message-ID: <99c75f39-1f27-ad3c-1605-397b69760d07@ti.com>
Date: Tue, 24 Mar 2020 12:46:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <6a4c07df-8971-8637-5251-ce177c3a08ce@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_034700_866930_15837DF8 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rt-users@vger.kernel.org, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

On 16/03/2020 14:23, Grygorii Strashko wrote:
> Hi Petr,
> 
> On 19/02/2020 17:22, Tejun Heo wrote:
>> On Mon, Feb 17, 2020 at 01:07:09PM +0100, Petr Mladek wrote:
>>> The timer used by delayed kthread works are IRQ safe because the used
>>> kthread_delayed_work_timer_fn() is IRQ safe.
>>>
>>> It is properly marked when initialized by KTHREAD_DELAYED_WORK_INIT().
>>> But TIMER_IRQSAFE flag is missing when initialized by
>>> kthread_init_delayed_work().
>>>
>>> The missing flag might trigger invalid warning from del_timer_sync()
>>> when kthread_mod_delayed_work() is called with interrupts disabled.
>>>
>>> Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>> Signed-off-by: Petr Mladek <pmladek@suse.com>
>>> Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>
>> Acked-by: Tejun Heo <tj@kernel.org>
> 
> I'm worry shouldn't this patch have "fixes" tag?
> 

Sorry, the I'm disturbing you, but I have dependency from this path [1].
I can see it in -next: commit d7c8c7de96de ("kthread: mark timer used by
delayed kthread works as IRQ safe"), but it does not present in net-next.

Any way this can be resolved?

[1] https://patchwork.ozlabs.org/cover/1259207/
-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
