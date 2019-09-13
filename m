Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D9B22E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 17:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ez/eq+eJhn9eyQIXvsZwRI5E8Z6ZaSsbwS7J/2DRrDM=; b=CCHsZ8z5/ISYY8
	AgSgJUgsYrFPxDMdBZHixHcl0x46/B5epFPoImXb5FFHBfm7rv+I118/n5tijazClu4OIXJLdbd1C
	zXtmOfIUcBYjM1c9zHkDVktzzOkGYVSKm+Nvr8oWZy0dIxVkOq9ju12BjVMsEbAdZeeKICRJXD1I1
	HJPjSKGyhWtfGfQxwx6yr+3HFveS3CDdF8YQVh6MoeAyBfNq20OrXZpfA4iJjbjRDlUo1GzTSZIMK
	opufLPoA2G5V4BHESayt/H/0e3u9ZEePo5tvIqBBvOoCUWBxzrztPOEw1PnPGcH7Jj7jP+Wb9ESEr
	EFHW8+Z81rgfpx9/FZrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8n7E-0006Rr-Pd; Fri, 13 Sep 2019 15:04:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8n4h-0006KN-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 15:01:30 +0000
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 931FB9ACE
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 15:01:26 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id z8so3865441wrs.14
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 08:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zuzwEhDdM8nFD/eqeUMdkZbahAvWuck1YuH/cdNiv9o=;
 b=IkuGJqnq/A5TmXl/T0DZWtFXlT1rrvYfdFsxksuwASKEc3xZ2LXRxfkv8qj+YTQ5I6
 mOoVSfZ0mT6LcoO0uYKUFueM13ikNYeIQr4vcY8gv5vyLwS/yfhVNLL7Vto/iam7YPkM
 VchZuRpnjGV5r7zjymPd62yHyDUdzb5ozisiCoH/1IZ1PxTCIHfWImLO91/e+t9eBzZb
 yQPQbJI07K+BW4AvCsgROXxW8euRyym/tmNxyDGb8jpTjbd7I/VHrGeaIMuQ7C+jL/Yc
 yAG2Iaha0Z+IQxrt/fAQzYFGc5GL77pOVtdnhSsIxm5rdOmIfmtVxWPGV2zkYSS+x1N1
 zLpg==
X-Gm-Message-State: APjAAAXwKqC6dpvlMP1CgXTOSFmRETtX+SGUAQ1BK/C7rFPb+HD18hTZ
 BZ+46wcU6iKSWkCRKMEKvSvU3nJCRReb58Aw52O4JxRncoyS66JTyca+DMzqwP5TBVe6y7O5MVt
 PJ8pk/4ldV4mV+RJpxl8EBrNILC4e1Ot00qI=
X-Received: by 2002:a1c:c013:: with SMTP id q19mr3447802wmf.87.1568386884927; 
 Fri, 13 Sep 2019 08:01:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVmkhicWbX9sM2V6LPnr+xLUUrZU9HvAJMzAOfyJJVoRtNarvooFR4sjG8yibYs2ccdb68wg==
X-Received: by 2002:a1c:c013:: with SMTP id q19mr3447762wmf.87.1568386884662; 
 Fri, 13 Sep 2019 08:01:24 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c5d2:4bb2:a923:3a9a?
 ([2001:b07:6468:f312:c5d2:4bb2:a923:3a9a])
 by smtp.gmail.com with ESMTPSA id y15sm1949532wmj.32.2019.09.13.08.01.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 08:01:24 -0700 (PDT)
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
 <20190913044614.GA120223@kroah.com>
 <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
 <20190913130226.GB403359@kroah.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <6a0ec3a2-2a52-f67a-6140-e0a60874538a@redhat.com>
Date: Fri, 13 Sep 2019 17:01:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913130226.GB403359@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_080127_681998_C3281ACB 
X-CRM114-Status: GOOD (  15.53  )
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

On 13/09/19 15:02, Greg Kroah-Hartman wrote:
> Look at linux-next, we "should" have fixed up hcd_buffer_alloc() now to
> not need this type of thing.  If we got it wrong, please let us know and
> then yes, a fix like this would be most appreciated :)

I still see

	/* some USB hosts just use PIO */
	if (!hcd_uses_dma(hcd)) {
		*dma = ~(dma_addr_t) 0;
		return kmalloc(size, mem_flags);
	}

in linux-next's hcd_buffer_alloc and also in usb.git's usb-next branch.
 I also see the same

	if (remap_pfn_range(vma, vma->vm_start,
			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
			size, vma->vm_page_prot) < 0) {
		...
	}

in usbdev_mmap.  Of course it's possible that I'm looking at the wrong
branch, or just being dense.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
