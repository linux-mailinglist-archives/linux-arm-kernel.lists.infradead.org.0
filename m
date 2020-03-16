Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4883186ACC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PtdB6Dt9KyrGY9rfstMvG0nJU+1n4pFar2EreW5wxbk=; b=bjQDX7qWqCiQMmIdTHUBxd7FK
	Et9Peyaeunod+d0TAYg8U8dfNXMOfyH5ioAGNBpU9J4IJC+a6QnCKYMPPfRAw2Un0XWzvikJYjLl1
	OTXlVFN/SvBm9r26p587e275iuRk5DkX311PG7qJfURbnEZH8RdOzs7lZG1es1KtO8OaOfuQza/N4
	TPUP8YwNKQvyGazo7yZvZcEITjji5KZtrJaA6qCr/OyXHapacK5lofKQkd+ZtgyVrXxhK5nkMYBZl
	zsMUDCrAAmqGrvnBq1DUlE+DVLFbiEnpshx2va/E2stk6LiJF45ImKmfNJ2A0fESlg1yesu1tFM7p
	Y9sJ2e+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDomh-00026B-Ic; Mon, 16 Mar 2020 12:23:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDomZ-00025f-Hq
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:23:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02GCNWG8055256;
 Mon, 16 Mar 2020 07:23:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584361412;
 bh=/axxTSN4rOjW8bh6Kbh93WtVu/tmmhKSGynWOWCPzuY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vSg0a1+QKByxeZQ7KBTjfgkxDI9IEY9zlUWk/fQEdnbGDiw7iS+KNJxMY7pblqv91
 xcRc9iE/EmWBlfMtFx29z1Q7oLaJDwW3ojWz/gBihLpbblaWUvjPcymhZ6fkd6lTnK
 L6gF9F4A/jU3aB+ibd8fH0XVfsLOOvs8npPetIlU=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02GCNWpJ082049;
 Mon, 16 Mar 2020 07:23:32 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Mar 2020 07:23:32 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Mar 2020 07:23:32 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02GCNS4R121266;
 Mon, 16 Mar 2020 07:23:29 -0500
Subject: Re: [PATCH] kthread: Mark timer used by delayed kthread works as IRQ
 safe
To: Tejun Heo <tj@kernel.org>, Petr Mladek <pmladek@suse.com>
References: <20200217120709.1974-1-pmladek@suse.com>
 <20200219152248.GC698990@mtj.thefacebook.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <6a4c07df-8971-8637-5251-ce177c3a08ce@ti.com>
Date: Mon, 16 Mar 2020 14:23:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200219152248.GC698990@mtj.thefacebook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_052347_652884_2371AD5B 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Petr,

On 19/02/2020 17:22, Tejun Heo wrote:
> On Mon, Feb 17, 2020 at 01:07:09PM +0100, Petr Mladek wrote:
>> The timer used by delayed kthread works are IRQ safe because the used
>> kthread_delayed_work_timer_fn() is IRQ safe.
>>
>> It is properly marked when initialized by KTHREAD_DELAYED_WORK_INIT().
>> But TIMER_IRQSAFE flag is missing when initialized by
>> kthread_init_delayed_work().
>>
>> The missing flag might trigger invalid warning from del_timer_sync()
>> when kthread_mod_delayed_work() is called with interrupts disabled.
>>
>> Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> Signed-off-by: Petr Mladek <pmladek@suse.com>
>> Tested-by: Grygorii Strashko <grygorii.strashko@ti.com>
> 
> Acked-by: Tejun Heo <tj@kernel.org>

I'm worry shouldn't this patch have "fixes" tag?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
