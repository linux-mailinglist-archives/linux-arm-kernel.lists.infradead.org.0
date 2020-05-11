Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B251CD84B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IgVvPVPdngD8e/fdKA1KXSuOI1KtiUniOxcPJYOF8Q=; b=HFYJ2iBjP5Onpm
	pBg8pEWjCDuF5u3+x2e7lS4J8aaqn158gU+l+Jdv+WE1Ueg+NnVtoxDRZ08gZCymxoI3TteLoFDFM
	JDEz/Lui0LsxX+1UXNVbItvANaS6KngK0LmtZ+wxP+NAgC+hOsDSZO8QZZRs4PHVB2wJqPsp44dyt
	Oc73A2H+UzPkUv5eab1qahlrQCbrpwrzF/0BktvXg/7fJkX5ZWzvgrmXP4b5yLhn73m3acxtkDL5w
	E07PhBdatjNABNrcr4yZ9fNULDxs9OHcfDgZL8H1NNYGMWvFQHKszWxu7OpZYNxCGy99gb4Q66Txy
	U/0U14a9Tfo2mtQR0U2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6ba-0008Tu-48; Mon, 11 May 2020 11:28:18 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6bR-0008SP-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589196487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=s7GIl9tuMpK1VOwRBY9ihebUTptjwd7riGoyjLY7P6Q=;
 b=bBzvX/oPYT1oCLX14LlAvVS81ECQ4JdLUpLRIZg6t/bLywV3raC7c2mQmfRnW2n5aOhgPA
 waa781UPPdG2TwVQdMlrJOC+rlxyQmMDVNN78+hWBBRj874hlD5m//JVueLuQrbH3iZ/ap
 ymVzqlMYIcUFBGlS0P7xPUnH7qW1/d4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-CMeEOkNMNLSPh_fWphzpMw-1; Mon, 11 May 2020 07:28:05 -0400
X-MC-Unique: CMeEOkNMNLSPh_fWphzpMw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56C89107ACF5;
 Mon, 11 May 2020 11:28:04 +0000 (UTC)
Received: from localhost (ovpn-12-129.pek2.redhat.com [10.72.12.129])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EA737610AF;
 Mon, 11 May 2020 11:27:58 +0000 (UTC)
Date: Mon, 11 May 2020 19:27:55 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
Message-ID: <20200511112755.GB4922@MiWiFi-R3L-srv>
References: <20200501165701.24587-1-james.morse@arm.com>
 <40b07632-b044-d1cd-96a2-81eec3da93e7@redhat.com>
 <8736892l92.fsf@x220.int.ebiederm.org>
 <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
MIME-Version: 1.0
In-Reply-To: <a1c162fe-74de-c5ca-dadf-d451e970fdea@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042809_546805_8BAFAE06 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Dave Young <dyoung@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/20 at 10:19am, David Hildenbrand wrote:
> On 09.05.20 17:14, Eric W. Biederman wrote:
> >>> + * If the memory layout changes, any loaded kexec image should be evicted
> >>> + * as it may contain a copy of the (now stale) memory map. This also means
> >>> + * we don't need to check the memory is still present when re-assembling the
> >>> + * new kernel at machine_kexec() time.
> >>> + */
> >>
> >> Onlining/offlining is not a change of the memory map.
> > 
> > Phrasing it that way is non-sense.  What is important is memory
> > available in the system.  A memory map is just a reflection upon that,
> > a memory map is not the definition of truth.
> > 
> > So if this notifier reflects when memory is coming and going on the
> > system this is a reasonable approach.  
> > 
> > Do these notifiers might fire for special kinds of memory that should
> > only be used for very special purposes?
> > 
> > This change with the addition of some filters say to limit taking action
> > to MEM_ONLINE and MEM_OFFLINE looks reasonable to me.  Probably also
> > filtering out special kinds of memory that is not gernally useful.
> 
> There are cases, where this notifier will not get called (e.g., hotplug
> a DIMM and don't online it) or will get called, although nothing changed
> (offline+re-online to a different zone triggered by user space). AFAIK,
> nothing in kexec (*besides kdump) cares about online vs. offline memory.
> This is why this feels wrong.
> 
> add_memory()/try_remove_memory() is the place where:
> - Memblocks are created/deleted (if the memblock allocator is still
>   alive)
> - Memory resources are created/deleted (e.g., reflected in /proc/iomem)
> - Firmware memmap entries are created/deleted (/sys/firmware/memmap)
> 
> My idea would be to add something like
> kexec_map_add()/kexec_map_remove() where we have
> firmware_map_add_hotplug()/firmware_map_remove(). From there, we can
> unload the kexec image like done in this patch.

Hi David,

I may miss some details, do you know why we have to unload the kexec image
when add/remove memory?

If this is applied, even kexec_file_load is also affected. As we
discussed, kexec_file_load is not impacted by kinds of memory
adding/removing at all.

Besides, if unload image in casae memory added/removed, we will accept
that the later 'kexec -e' is actually rebooting?

Thanks
Baoquan

> 
> And these callbacks might come in handy for fixing up the kexec initial
> memmap in case of kexec_file_load(). AFAIKS on x86_64:
> - Hotplugging a DIMM will not add that memory to
>   e820_table_kexec
> - Hotunplugging a DIMM will not remove that memory from e820_table_kexec
> 
> Maybe we have similar things to handle on other architectures.
> 
> -- 
> Thanks,
> 
> David / dhildenb
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
