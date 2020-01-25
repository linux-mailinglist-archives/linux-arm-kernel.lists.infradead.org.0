Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F21149784
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 20:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDuACAx7jw7wcZ0X9DgAJBHsLF/pXyA/fafMmaccyyk=; b=TVB7c5zXuYkNy0
	vgmvycEXEIaexxS0Byw3rdLWtwh8eAYx7TXaod4ZeyPx5j5L4opXITcmaukPlOn5UFwQ3J5JBL6O9
	Mp/+S+RdBX/rno9ZrENvDRAvQWdum4HVV8NFYvOq9koT3JuKWV1WIy/S1/erunhVbMZXWsMv3/8hl
	8c0wSKdxdS9Ncortt/NkCis91nxrzVOxkkwUA/ADPY6or94VGuA3cHQj4g+dOyzoO163ETGlDfL83
	isyDkt1mvN4KIVor9y89H4gZAkCN+5OtHCy1v/kxVwmBf4LJb4vltzioVII6rT/e+UR0s5LXYgSSq
	BJ0fklz108fHrsiDyXeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivRJj-00043H-T1; Sat, 25 Jan 2020 19:42:03 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivRJb-00042G-F2
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 19:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579981310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AgpWBVZ2Zmngb4zlRI3WuIHZKM7LDWwyVepAeoXIIIw=;
 b=UobfgHjSGNTtIUqscxGN8TjnsxspaL94gUHshVjkPCwfPbOKBZ8SUam0fsMxfMVU8+HH6l
 /q+/USV+aO4eWam0aTX7ncXzbykl1eDUjuDvcVQBBoAC9rFSeqVLb0fMUw2owT9I7Q3QLv
 btWRP/moFjN6MisvnnUZ/RqQGiIIFCw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-9INydv1jPCy2zEZg_D8bFQ-1; Sat, 25 Jan 2020 14:41:45 -0500
X-MC-Unique: 9INydv1jPCy2zEZg_D8bFQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22CD91800D48;
 Sat, 25 Jan 2020 19:41:42 +0000 (UTC)
Received: from llong.remote.csb (ovpn-121-36.rdu2.redhat.com [10.10.121.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F9172718F;
 Sat, 25 Jan 2020 19:41:37 +0000 (UTC)
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: paulmck@kernel.org
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
 <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
 <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
 <20200125045844.GC2935@paulmck-ThinkPad-P72>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <967f99ee-b781-43f4-d8ba-af83786c429c@redhat.com>
Date: Sat, 25 Jan 2020 14:41:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200125045844.GC2935@paulmck-ThinkPad-P72>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_114155_580817_9C425B91 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, bp@alien8.de,
 hpa@zytor.com, Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/24/20 11:58 PM, Paul E. McKenney wrote:
> On Fri, Jan 24, 2020 at 09:17:05PM -0500, Waiman Long wrote:
>> On 1/24/20 8:59 PM, Waiman Long wrote:
>>>> You called it!  I will play with QEMU's -numa argument to see if I can get
>>>> CNA to run for me.  Please accept my apologies for the false alarm.
>>>>
>>>> 							Thanx, Paul
>>>>
>>> CNA is not currently supported in a VM guest simply because the numa
>>> information is not reliable. You will have to run it on baremetal to
>>> test it. Sorry for that.
>> Correction. There is a command line option to force CNA lock to be used
>> in a VM. Use the "numa_spinlock=on" boot command line parameter.
> As I understand it, I need to use a series of -numa arguments to qemu
> combined with the numa_spinlock=on (or =1) on the kernel command line.
> If the kernel thinks that there is only one NUMA node, it appears to
> avoid doing CNA.
>
> Correct?
>
> 							Thanx, Paul
>
In auto-detection mode (the default), CNA will only be turned on when
paravirt qspinlock is not enabled first and there are at least 2 numa
nodes. The "numa_spinlock=on" option will force it on even when both of
the above conditions are false.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
