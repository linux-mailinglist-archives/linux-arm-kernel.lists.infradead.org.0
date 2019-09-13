Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC47B23EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 18:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWohaXtOrW+ZLgqVfbfrvH6AR301h9sqUnN80DZzLcw=; b=Z/ba58ZQ1Zxb1s
	fPt0+KLEFjLd2R1L3KI8+abcq1KYKEJQAtxfQFP/5+7/8V/rNtjqE/2QjNkUb9RGDpcJWFgckaUI8
	KMqp4GEw3laI2qjdJ9XvDGx59JGr1msCP6ITMPNuD0CgYmhxy6xVWXV3V5P0kNouzCFkp8D8ScA7l
	9CKoqhDDcwF85vo/eQq/zFMqQEah9tU8ZIw7DLJCGg2sGts3LN75dn9W8sygiLjPNYZmZRZqsRMIl
	vE2NdVOZoibhETiQdcJnaxya/gLEg/88yVrcxr3B5ZXTI6NFm9e4r9aCHVebrieVcL2BAzuFKn4u4
	F6Cs/iQcGfdCjRzGevLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8oDf-00076B-6K; Fri, 13 Sep 2019 16:14:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8oDQ-000737-4W
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 16:14:34 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5769FC053FDF
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 16:14:30 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id z3so1456115wmk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 09:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7nSN9wvhoKYdWon6QDIGqpWH+96lV7NFl/5Fkxot28g=;
 b=lSTbP07aOlOojkV2StLXvqWA6hZiXO1oEMur1/J/luTPHDuoehrkLIZ82OlaaAaAFd
 ZXkSSxRNIz/J/FwrCZC/PhQs5hIbaGjrgu10bXa4/cHEcV4VAHsn5YEiKhxw5SwsIKBN
 VQBLikWZwWpfH7U3oWbootMIsIgblnj8Xsn6FIqvXBdnlfHpCsqmM82X1D+5KsNhZHOn
 WENE3Ly16DEl0DkH2EBeV405y3RDM2m38hVltYYdwIKnP7svSLZJTPB9l4Z0e1EgSYnB
 ajhKipl/2vPVl/VH4DcosTrI+A8TvTCbCOtPUabMIIystXDVg2eWkKFdE0cGo/O+nbef
 1SAQ==
X-Gm-Message-State: APjAAAVaCli4Vgi/YAov1gMwWVTm7Af+7hlwMEYGJS2YawU28UVNg/sm
 Tx5ciMS0bltXvw6ALvxeC/ZGvRVjG7juxsM2fFN5sYlOTgYP7gnzHj9oaFOuiic5qYKuJDoQSrZ
 s3Vw+yCv9TGHbJVJQ50SZXcC9wYudoXX9NCg=
X-Received: by 2002:adf:f607:: with SMTP id t7mr38318026wrp.60.1568391268767; 
 Fri, 13 Sep 2019 09:14:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQUnRDc3RyOrEaNGz0pukUMwipBT5o437e/Usb18JWbopoR0i0Q27Or8p94AssM2/2oIzM8A==
X-Received: by 2002:adf:f607:: with SMTP id t7mr38317997wrp.60.1568391268522; 
 Fri, 13 Sep 2019 09:14:28 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c5d2:4bb2:a923:3a9a?
 ([2001:b07:6468:f312:c5d2:4bb2:a923:3a9a])
 by smtp.gmail.com with ESMTPSA id v6sm4816939wma.24.2019.09.13.09.14.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 09:14:28 -0700 (PDT)
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
To: Alan Stern <stern@rowland.harvard.edu>
References: <Pine.LNX.4.44L0.1909131129390.1466-100000@iolanthe.rowland.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <1a8a6449-2740-b0a3-805a-47466e0d71c6@redhat.com>
Date: Fri, 13 Sep 2019 18:14:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.44L0.1909131129390.1466-100000@iolanthe.rowland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_091432_219389_C56BC216 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, x86@kernel.org, wanpengli@tencent.com,
 kvm@vger.kernel.org, rkrcmar@redhat.com, catalin.marinas@arm.com,
 will.deacon@arm.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 narmstrong@baylibre.com, mingo@redhat.com, Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/19 17:36, Alan Stern wrote:
> On Fri, 13 Sep 2019, Paolo Bonzini wrote:
> 
>> On 13/09/19 15:02, Greg Kroah-Hartman wrote:
>>> Look at linux-next, we "should" have fixed up hcd_buffer_alloc() now to
>>> not need this type of thing.  If we got it wrong, please let us know and
>>> then yes, a fix like this would be most appreciated :)
>>
>> I still see
>>
>> 	/* some USB hosts just use PIO */
>> 	if (!hcd_uses_dma(hcd)) {
>> 		*dma = ~(dma_addr_t) 0;
>> 		return kmalloc(size, mem_flags);
>> 	}
>>
>> in linux-next's hcd_buffer_alloc and also in usb.git's usb-next branch.
>>  I also see the same
>>
>> 	if (remap_pfn_range(vma, vma->vm_start,
>> 			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
>> 			size, vma->vm_page_prot) < 0) {
>> 		...
>> 	}
>>
>> in usbdev_mmap.  Of course it's possible that I'm looking at the wrong
>> branch, or just being dense.
> 
> Have you seen
> 
> 	https://marc.info/?l=linux-usb&m=156758511218419&w=2
> 
> ?  It certainly is relevant, although Greg hasn't replied to it.

It helps but it's not a full fix, since the address would fail
is_vmalloc_addr.  On top of that, hcd_buffer_alloc and hcd_buffer_free
need to switch from kmalloc to vmalloc.

> Also, just warning about a non-page-aligned allocation doesn't really 
> help.  It would be better to fix the misbehaving allocator.

Of course.  The above patch does not fix the issue, it should just allow
for an easier reproduction not involving KVM.  More long term, it points
out where the contracts mismatch (i.e. between hcd_buffer_alloc and
usb_alloc_coherent), and more selfishly whose bug it is when syzkaller
complains. :)

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
