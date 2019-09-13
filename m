Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3203DB18FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OLRdLO43ihasWqUfFIROL8YXcp/0ZSKnadpwO4sDF4=; b=VbtPmnj05kQOzs
	ikSbV4sSiXLTSy2tHw3VvH9SHZsaYPwEnBgElVzH4Rkdmi32qrW5/G3OdXQoiDDvZLuye1w01VYPn
	+ga9MYK2u8lGySTIWz7up6UR6G0Fn1zw0b2yzaynfPioL25TxOAf/cprwP/+Pbx8hZrpoxD7Tu41v
	s0BDRf0i3ApxUsZuOx8q17Y/R6NCinCYaePThjdpWIgt+0sa6O1aZDEQAxdruRNEqRJ2DqraXMFMq
	ueT7lJboMUqQVh6Ak7EtQdZ8bcEceRIh80eF3ZIGzqSrwRmhjlrEMQ36xpS/UX0fy20ys8cTkGMWW
	E1nYCtddp1wlHajEEt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8g6u-0001eH-EG; Fri, 13 Sep 2019 07:35:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8g6F-0001bB-83
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 07:34:37 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8175D2CD7E5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:34:34 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id d10so992223wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 00:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0wZRdSHIeheVxa4DE7SyQMfDWHvTTN3LMA+T1b8qSjs=;
 b=W4mrPYmZUgQgiowcPIWMa3psjr4xQZytytnlntcLDdoSOQS3NyR0yUDRg7YofPpQ9a
 hfwJtm60dNjqH71sVzic98W0A09YLRBSTI5TrLQFUJupjgeY/hVE2xUs9U2uKa66ZTMZ
 BGkAT0G55X83byO5/WrpKY5mAZNArmfh8FunPDgSLQ7Cy6+uPTxnh9lStyElaRMbX6xF
 j9HURVWhroX8Ohby/7/hrkn1YWtyj+mBKU2+b5y+yTCemYYOt7OluBGojfCoQcSLqqnN
 QKBBMqNURXwZixr2XWwWCjKxLKJ01r94UZCF2R++/Q3m4ZdYaEo2pu/XzWzG56N/RvYJ
 p/Pg==
X-Gm-Message-State: APjAAAXAtapr6q995DsWeBmPxYAD8cRy+t5XomyUjF0lrOqD0pNIBjvU
 NsILGwxYLUvO01LvjLV3F1wNUli6gpmMjyZ0g/cIms0eOGcJEeOsICEAtGAstkbRXyFvHWivsQx
 Oq6WXDd0zmC/kpDIF4KK5EjAeW/oF5kYiRSI=
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr6515892wrs.229.1568360072890; 
 Fri, 13 Sep 2019 00:34:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXYHxfnOF9dKY5KYFw0qMwImUhJMX0+wKShi7tbwxtPLXAruWfIDZ1aSZJYxfR9HQPil13Fg==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr6515852wrs.229.1568360072601; 
 Fri, 13 Sep 2019 00:34:32 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3166:d768:e1a7:aab8?
 ([2001:b07:6468:f312:3166:d768:e1a7:aab8])
 by smtp.gmail.com with ESMTPSA id l1sm33488980wrb.1.2019.09.13.00.34.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 00:34:32 -0700 (PDT)
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
 <20190913044614.GA120223@kroah.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
Date: Fri, 13 Sep 2019 09:34:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913044614.GA120223@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_003435_327219_E24E55D1 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 kvm@vger.kernel.org, narmstrong@baylibre.com, catalin.marinas@arm.com,
 will.deacon@arm.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 rkrcmar@redhat.com, mingo@redhat.com, Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/19 06:46, Greg Kroah-Hartman wrote:
> USB drivers expect kmalloc to return DMA-able memory.  I don't know
> about specific alignment issues, that should only an issue for the host
> controller being used here, which you do not say in the above list.

I have no idea, this is just the analysis of a syzkaller report.  From 
the backtrace, it's one that ends up calling kmalloc; all of them should
have the same issue with KASAN.

The specific alignment requirement for this bug comes from this call in
usbdev_mmap:

	if (remap_pfn_range(vma, vma->vm_start,
			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
			size, vma->vm_page_prot) < 0) {

> We have had some reports that usbdev_mmap() does not do the "correct
> thing" for all host controllers, but a lot of the DMA work that is in
> linux-next for 5.4-rc1 should have helped resolve those issues.  What
> tree are you seeing these bug reports happening from?

It's in master, but the relevant code is the same in linux-next; in fact
in this case there is no DMA involved at all.  hcd_buffer_alloc hits
the case "some USB hosts just use PIO".

On those host controllers, it should be reproducible with just this:

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7fcb9f782931..cc0460730bce 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -905,9 +905,12 @@ EXPORT_SYMBOL_GPL(__usb_get_extra_descriptor);
 void *usb_alloc_coherent(struct usb_device *dev, size_t size, gfp_t mem_flags,
 			 dma_addr_t *dma)
 {
+	void *buf;
 	if (!dev || !dev->bus)
 		return NULL;
-	return hcd_buffer_alloc(dev->bus, size, mem_flags, dma);
+	buf = hcd_buffer_alloc(dev->bus, size, mem_flags, dma);
+	WARN_ON_ONCE(virt_to_phys(buf) & ~PAGE_MASK);
+	return buf;
 }
 EXPORT_SYMBOL_GPL(usb_alloc_coherent);
 

and CONFIG_KASAN=y or possibly just CONFIG_DEBUG_SLAB=y.  mmap-ing /dev/usb
should warn if my analysis is correct.

If you think the above patch makes sense, I can test it and submit it formally.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
