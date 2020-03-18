Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8687018A8A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSexbQ4Kk8SNtofvBXqNOfqxoh0Ia1KuN6Jvzf6P3v8=; b=nTZquUBqJUkBT8
	qPE/L+phaJrtNnWsUB0P6vslNtPfcEGotd55pkZ/IdBFx8LREr0ZWGby4uPjrJvy6/CQ6+XSR0iH7
	HsSMAj4BO9BXv8qbCB7z2srJh0C3okrZGtVt8DRllHsONfbG8ascUxhhysby5u0NV9RiNRIOCANRf
	1bZdVy3lOm/1j7c7EOYr3EzaJm2qmMicfhGcU6Iqs1f7oX0sy9pMtEpkp3+gZFFDjRdORPAIRR4FF
	dIUHQij4nLX004qpnQOJ4xOShYBFMDaHc7u5xJxC6VUikT9fu1FTVeFtspET1IrxtIFzAheRpQbau
	1l1ZzGceuW/AYv+blx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhZD-0003hh-2K; Wed, 18 Mar 2020 22:53:39 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhZ4-0003hF-Ny
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584572009;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tG/mtmmtMGVD9urUDKpfLF4t0kTuO98Ej4s1XZSXB6g=;
 b=WdXVePXU/ORYd1wLhxE/7sN1e344S3gK0+DZMATYkyoFgLvK18cx3cmTDflv//DQ8uqphW
 fxbfuTQ0AqjE1MQwwqbifBYIBg76mNzzqYf2Nonlyu8n0GYk2NO+yN01IQIGyNy0iiqh+8
 OHHnMcfH1dTPon6SH9i8XCGrIaSWNIs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-NxKYafz7PvqdP93x3I3KNA-1; Wed, 18 Mar 2020 18:53:23 -0400
X-MC-Unique: NxKYafz7PvqdP93x3I3KNA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8539D800D4E;
 Wed, 18 Mar 2020 22:53:21 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE49F60BF1;
 Wed, 18 Mar 2020 22:53:18 +0000 (UTC)
Subject: Re: [PATCH v4 4/5] arm64: Remove CPU operations dereferencing array
From: Gavin Shan <gshan@redhat.com>
To: Mark Rutland <mark.rutland@arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-5-gshan@redhat.com>
 <20200317105626.GF8831@lakrids.cambridge.arm.com>
 <a92d9a3a-7bc3-81f0-f4a3-9e1da3623e16@redhat.com>
Message-ID: <ec463176-d62d-9f59-130c-4d6beb6e1270@redhat.com>
Date: Thu, 19 Mar 2020 09:53:15 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <a92d9a3a-7bc3-81f0-f4a3-9e1da3623e16@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_155330_873532_D98720A8 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/18/20 2:53 PM, Gavin Shan wrote:
> On 3/17/20 9:56 PM, Mark Rutland wrote:
>> On Wed, Feb 26, 2020 at 11:23:55AM +1100, Gavin Shan wrote:
>>> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
>>> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
>>> much memory has been used for this. Also, all CPUs must use same CPU
>>> operations and we shouldn't bring up the broken CPU, as Lorenzo Pierali=
si
>>> pointed out.
>>
>> I suspect there might be some pre PSCIv0.2 platforms where the boot CPU
>> doesn't have PSCI, but others do. On those platforms, this could be
>> because CPU0 cannot be hotplugged out, and we must avoid doing so.
>>
>> Can you check the in-kernel DTs to see if any of those exist?
>>
>> Other than that, I agree that mandating uniformity is the best approach
>> here.
>>
> =

> Thanks for the comments, Mark. There are platforms where the CPU#0 and ot=
her
> CPUs have different "enable-method" specified. More specificly, CPU#0 doe=
sn't
> have "enable-method" while other CPUs have "psci" specified:
> =

>  =A0=A0 lg/lg1312.dtsi
>  =A0=A0 lg/lg1313.dtsi
>  =A0=A0 mediatek/mt2712e.dtsi
> =

> In order to support two enable methods, I think we have two options here:
> (1) Revert the code to what we had in v2. Two bits consumed by one CPU,
> which is taken as index to a CPU operation array. The code can be found in
> link [1] (2) Two CPU operation pointers are maintained. One is used to tr=
ack
> the CPU#0's operations and other one is for other cpus.
> =

> [1] https://patchwork.kernel.org/patch/11363745/
> =

> Please let me know which one is better.
> =


Mark, I plan to post a new revision to have option#2 after thinking
about it: we will have two pointers to track the operations for boot cpu
and the secondary CPUs separately. the consumed memory isn't scaled up to
the configured CPU number. So I think it's better than option#1, which
uses two-bits as index to CPU operation array.

Thanks,
Gavin

>>> =A0 int __init init_cpu_ops(int cpu)
>>> =A0 {
>>> -=A0=A0=A0 const char *enable_method =3D cpu_read_enable_method(cpu);
>>> -
>>> -=A0=A0=A0 if (!enable_method)
>>> -=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>>> +=A0=A0=A0 const struct cpu_operations *ops =3D get_cpu_method(cpu);
>>> -=A0=A0=A0 cpu_ops[cpu] =3D cpu_get_ops(enable_method);
>>> -=A0=A0=A0 if (!cpu_ops[cpu]) {
>>> -=A0=A0=A0=A0=A0=A0=A0 pr_warn("Unsupported enable-method: %s\n", enabl=
e_method);
>>> +=A0=A0=A0 if (!ops)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EOPNOTSUPP;
>>> +
>>> +=A0=A0=A0 /* Update global CPU operations if it's not initialized yet =
*/
>>> +=A0=A0=A0 if (!cpu_ops) {
>>> +=A0=A0=A0=A0=A0=A0=A0 cpu_ops =3D ops;
>>> +=A0=A0=A0=A0=A0=A0=A0 return 0;
>>> +=A0=A0=A0 }
>>
>> As above, I don't think this is quite right. If we're going to mandate
>> uniformity, we should init the ops from the boot CPU, and then verify
>> that every other CPU matches that. The initialization of the global ops
>> should not be conditional.> =

> I think you're correct because CPU#0's "enable-method" can be unspecified.
> In this case, the CPU#0's operations will be set to same one as other CPU=
s,
> which isn't correct. I will see how to handle this comments when the above
> comments is resolved. This might become invalid after the above comments =
get
> resolved.
> =

> Thanks,
> Gavin
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
