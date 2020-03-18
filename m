Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7EC18949E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 04:54:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VM111ymK40NBJi1BaYP+pAf27s83tob8XJ9KyYOLZsA=; b=rdrBunMCQXVNGJ
	AMEeZ3Xml/hmleyH8gV2vb4roAyvhedpT30AXoM5HaW3MwLVaQjMuG2CG1wdpKxrbt4LsWm7kK2tc
	NeSHw5sSSnJW1W/fO6LhzL2RR4n7UqhFN2oE+7GTdPM8mNrAaoVEgknAaKf2rVl/W9eH9E/755aRl
	GgGwYuJG5QjlyWh6aNL3Ew2G/uR7Y/o3A0J7QJYk+iHFDv4yjI2snIJ8vnz5T+rSLGyuqfgzUANN7
	mHUUDR+x/9UI0o8jI1pY6Dkgwo3EnBle3Fwj5MmS27NfDsh+6XGfoK/m8XycNlpBnwT0xoiAFqvBv
	QNXOwRq3Ud5sRWkJcDJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEPmP-00037p-Qn; Wed, 18 Mar 2020 03:54:05 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEPmG-00037Q-88
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 03:53:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584503633;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XFRLi8k6DT8+GaKq0j0jFZrgfmxvwZPpVqbrQ69Kb0w=;
 b=gTdYv0Nx8X5nu+Pf9v5SrsnEJO+B1hnEs2EsKg4hFcEMSQGLPdBI2/aUbUpYBxdpGGVpz8
 RAh3ousBxqJa82tsj7/R9hvBMOJwih3alBv7RD8JIFHgcNmaC6txUECnTV0JrLJ0dY7Wn8
 eCIBL2C0O3AlFH3YDJpWGu/pLDHnki8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-RoyzcLrlPE-dhyDhP_6LwQ-1; Tue, 17 Mar 2020 23:53:49 -0400
X-MC-Unique: RoyzcLrlPE-dhyDhP_6LwQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C003D1857BE4;
 Wed, 18 Mar 2020 03:53:47 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EBA4810016EB;
 Wed, 18 Mar 2020 03:53:44 +0000 (UTC)
Subject: Re: [PATCH v4 4/5] arm64: Remove CPU operations dereferencing array
To: Mark Rutland <mark.rutland@arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-5-gshan@redhat.com>
 <20200317105626.GF8831@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <a92d9a3a-7bc3-81f0-f4a3-9e1da3623e16@redhat.com>
Date: Wed, 18 Mar 2020 14:53:42 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200317105626.GF8831@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_205356_372828_2C154C68 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/17/20 9:56 PM, Mark Rutland wrote:
> On Wed, Feb 26, 2020 at 11:23:55AM +1100, Gavin Shan wrote:
>> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
>> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
>> much memory has been used for this. Also, all CPUs must use same CPU
>> operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
>> pointed out.
> 
> I suspect there might be some pre PSCIv0.2 platforms where the boot CPU
> doesn't have PSCI, but others do. On those platforms, this could be
> because CPU0 cannot be hotplugged out, and we must avoid doing so.
> 
> Can you check the in-kernel DTs to see if any of those exist?
> 
> Other than that, I agree that mandating uniformity is the best approach
> here.
> 

Thanks for the comments, Mark. There are platforms where the CPU#0 and other
CPUs have different "enable-method" specified. More specificly, CPU#0 doesn't
have "enable-method" while other CPUs have "psci" specified:

    lg/lg1312.dtsi
    lg/lg1313.dtsi
    mediatek/mt2712e.dtsi

In order to support two enable methods, I think we have two options here:
(1) Revert the code to what we had in v2. Two bits consumed by one CPU,
which is taken as index to a CPU operation array. The code can be found in
link [1] (2) Two CPU operation pointers are maintained. One is used to track
the CPU#0's operations and other one is for other cpus.

[1] https://patchwork.kernel.org/patch/11363745/

Please let me know which one is better.

>>   int __init init_cpu_ops(int cpu)
>>   {
>> -	const char *enable_method = cpu_read_enable_method(cpu);
>> -
>> -	if (!enable_method)
>> -		return -ENODEV;
>> +	const struct cpu_operations *ops = get_cpu_method(cpu);
>>   
>> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
>> -	if (!cpu_ops[cpu]) {
>> -		pr_warn("Unsupported enable-method: %s\n", enable_method);
>> +	if (!ops)
>>   		return -EOPNOTSUPP;
>> +
>> +	/* Update global CPU operations if it's not initialized yet */
>> +	if (!cpu_ops) {
>> +		cpu_ops = ops;
>> +		return 0;
>> +	}
> 
> As above, I don't think this is quite right. If we're going to mandate
> uniformity, we should init the ops from the boot CPU, and then verify
> that every other CPU matches that. The initialization of the global ops
> should not be conditional.> 
I think you're correct because CPU#0's "enable-method" can be unspecified.
In this case, the CPU#0's operations will be set to same one as other CPUs,
which isn't correct. I will see how to handle this comments when the above
comments is resolved. This might become invalid after the above comments get
resolved.

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
