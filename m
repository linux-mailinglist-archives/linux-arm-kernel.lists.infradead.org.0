Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55481CF2ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZgCN9dBqYdHfaMswrytz962L+1dzlhT7pKlKSYLnNY=; b=WMTYAWURVs8Ta+
	caAzaITlBoC73hkNQxIxe74kr764H+4MRlnLmM8yR8ANHgvv/UkZ3nW4fbrXMoU39VtxHhwOqsLwt
	WdekMvaWRe5nyF6B2nquw+Vk2WZXeJPpWoX7Lv7JHce0jzD9mvfGMDT3SRsW2AombzYjg56ACe3cz
	ARbPLpgbMWQbtoL8Z1aKOlGNgR3EENWzxPaVHtOvSG2D9z5vEG39jLHVlfDG+ybqNXr2cT1WK5z8R
	fr8vOgGnt378EQaKYImeF2bfveLTari5iORvFZP1WSep5z1zBWLVAgqpUTWGI+nm1AHH74aekEUBw
	IdwvAAYMvrgYexOeZfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSZ1-0001h4-E2; Tue, 12 May 2020 10:55:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSYg-0001fd-Ux
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589280884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=8Swr6lAWJuBwkhTSwxG5oKfD+9xsdjpvfC0o4qM8T20=;
 b=VExLKq/5RXkR2DNEZnyrRhBwND9n/urVD3Lor8lZqADRd7GcubA73SF5VLsU2ynH3TV8I0
 h2gpmBlq4Ow0rrFIF5wu26EX1eMHruuu4ceqJQS7h8ILyx4CKt90lUsI8dLD962ezFZZMJ
 WF6SSuZEa02ZdkQKK18dy128bfp3Gkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-P-Wt45A8OViuQ75FcWVLCw-1; Tue, 12 May 2020 06:54:42 -0400
X-MC-Unique: P-Wt45A8OViuQ75FcWVLCw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 864AC801E63;
 Tue, 12 May 2020 10:54:41 +0000 (UTC)
Received: from [10.36.113.77] (ovpn-113-77.ams2.redhat.com [10.36.113.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40E09196AE;
 Tue, 12 May 2020 10:54:34 +0000 (UTC)
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
To: Baoquan He <bhe@redhat.com>, "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
 <20200511112755.GB4922@MiWiFi-R3L-srv>
 <04c8edd0-5c67-3ba7-5f87-c16a47b2af5c@redhat.com>
 <20200512103402.GK5029@MiWiFi-R3L-srv>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <265d463c-1b2f-ca97-391d-8d1f9d60f16a@redhat.com>
Date: Tue, 12 May 2020 12:54:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512103402.GK5029@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_035447_104906_254DA8AA 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kexec@lists.infradead.org, Dave Young <dyoung@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> kexec_load():
>>
>> 1. kexec-tools could have placed kexec images on memory that will be
>> removed.
>>
>> 2. the memory map of the guest is stale (esp., might still contain
>> hotunplugged memory). /sys/firmware/memmap and /proc/iomem will be
>> updated, so kexec-tools can fix this up.
> 
> With my understanding, this is a corner case. Before James's last
> patchset, I even hadn't realized this is a problem. Because we usually
> load kexec image, next trigger a kexec rebooting. Wondering if James
> just found out a potential issue, or he really met this problem. Surely,

Should be as easy as hotplugging a dimm, loading "kexec -c", unplugging
the dimm, triggering "kexec -e" if I am not wrong.

> we should fix it when have identified it, even though it's a corner
> case.
> 
> And we suggested adding service of loading kexec to fix this. We
> suggest this because kdump also need to recollect the memory regions
> so that it can pass them into 2nd kernel and dump the newly added
> memory region, or not dump the already removed memory region. 
> Kdump kernel won't get problem during boot or running caused by the
> hot added/removed memory as kexec kernel does, however, on failing to
> achieve expected result, kdump and kexec have the same problem. I don't
> see why kdump can be reloaded by memory adding/removing uevent triggering,
> but kexec can't. If have to unload kexec image, does kdump image need
> be unloaded?

I think that approach is racy and might easily trigger a crash when
"kexec -e" is called at the wrong time during memory unplug. See below
why kdump is different. Triggering unloading in the kernel does not
conflict with that approach and even seems to fit into the picture, no?

1. Memory gets hot(un)plugged
2. The kernel unloads the kexec image while processing the hot(un)plug
   to make sure nothing will go wrong.
3. User space gets notified and triggers reloading of kexec.

That sounds like a sane approach to me, no? If there is no 3., nothing
will break. If there is a "kexec -e" before 3 finished, nothing will
break. As we discussed, we might be able to special-case
kexec_file_load() and not unload, but simply fixup.

Note that kdump is slightly different. In case memory gets hotplugged
and kdump is not reloaded, that memory will simply not get dumped. In
case memory gets hotunplugged and kdump is not reloaded, that memory
will be skipped by makedumpfile (realizes memory is gone when parsing
the sparse sections, trying to find the memmap). In contrast to kexec,
there is no kernel crash.

> 
> Here my main concern is if it will complicate kexec code. While
> reloading it via systemd service won't. No matther if it's making kexec
> disable memory hotplug, or making memory hotplug disabling kexec, it
> seems to couple kexec with other feature/subcomponent. Anyway, we have
> added a kexec loading service, any memory adding/removing uevent will
> trigger the reloading. This patch won't impact anything, even though
> it doesn't make sense to us, so have no objection to this.

I don't consider unloading in the kernel a lot of complexity. And it
seems to be the right thing to do to avoid crashes, especially if user
space will not reload itself.

> 
> Another thing is below patch. Another case of complicating kexec because
> of specific use case, please feel free to help review and add comment.
> I am wondering if we can make it in user space too. E.g for oracle DB,
> we limit the memory allocation within the movable nodes for memory
> hotplugging, we can also add memmap= or mem= to kexec-ed kernel to protect
> those memory regions inside the nodes, then restore the data from the nodes.
> Not sure if VM data can be put in MOVABLE zone only.
> 
> [RFC 00/43] PKRAM: Preserved-over-Kexec RAM

I've seen that patch set and it is on my todo list, not sure when I'll
have time to look into it. From a quick glimpse, I had the feeling that
it was not dealing with memory hot(un)plug, most probably because
concurrent memory hot(un)plug is not the target use case.

-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
