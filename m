Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFEDB2764
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 23:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO2eGGEKe8e3KoidW36s1Qslza/bkf4irqpjkLqDmxI=; b=bFmmBOiTiXD2JY
	Uj/W79cWx5l6R8EaQzkKkgOw55FEYURRPPr3R04jZ9uXyQJBXJ1ktZn1e5OccPgaMEgjlub/wMjtL
	BlCnSwoGhENFerIK5Il2We+PPmtHcgH81RuUl1e+GJAO1sdU2pgLwgoGj82TP0VPEHCRXoq4dVypT
	jM0PQOE5uzYEiVfFHpSxIdhwxdOvixTPZ/POQlg2PGO+ktOyXC1z2NHDXrWzl81e2CwgvlWChxnR0
	oDz6inqQVmARVOvfBS5YrGxfcnMRNTX3tq7+JihizDCjF680f/yVBrmoxGbLSChMbdE4+Wf3Xaeml
	X0uT0W98JqSgHzyr6o6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8tHp-0000ZM-G2; Fri, 13 Sep 2019 21:39:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8tHb-0000XL-Ep
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 21:39:13 +0000
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E4CE3811DC
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 21:39:08 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id j3so14121358wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 14:39:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H/HgiF+ormPJec9ucKfvq3B1GbgLkHD6NvKq1m15REE=;
 b=BT+IWWbcHFF8XaMXR6TR/nuCfYRBAh8AleQIZvfh3washnJJuyQU/I69Sq0kGIHw39
 nN6819UFFnu1Xe1PQwdeAP816ngSJ8hSHItcS1fkSWWFPo1OJyeMYPOHQr/dsZkM78nd
 axfIHBHqTXw8N6L32I4iCxlHmQIqwUiaT2Y1/OZmX7EJDckNY7Bxy+9I2kCVpM0/mxD2
 IO4wCfolP3pyvoEvOFjhO/kc11GFTC089SKYmokcNb7JLMDe638uHcJmdOxwrrLSuR4+
 03N27gJJG/X2CGg56QrzMZpe6PdLSGI94ZDx3NI7GDs1rwxD3JS1WK7aVAcoiP+MJ4lt
 nLfg==
X-Gm-Message-State: APjAAAWSwY7SoCFym2OC0OP06aovF6AWNI+og35Mi1HCSGsqjPkj5ac/
 vnEP/GNzKMjO9i7YEulP4PNJuJVRUNIxzd1kxqrwC9N0r8XMrimkNXUAgM6A9FQGtaOBoK+BerX
 Zb0TH3abD3Ev1rAfn+TAbHGevcLbB6sa+k3I=
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr5188558wme.51.1568410747391; 
 Fri, 13 Sep 2019 14:39:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8xng5YAyNbwPHIzedIu8ZCTqFN32yL3gtxtyPP/chrRkzUD4Hr9V7c5rHI5vdwgEV7dIuVQ==
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr5188535wme.51.1568410747142; 
 Fri, 13 Sep 2019 14:39:07 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3166:d768:e1a7:aab8?
 ([2001:b07:6468:f312:3166:d768:e1a7:aab8])
 by smtp.gmail.com with ESMTPSA id n2sm2788701wmc.1.2019.09.13.14.39.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 14:39:06 -0700 (PDT)
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
To: Robin Murphy <robin.murphy@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <000000000000a9d4f705924cff7a@google.com>
 <87lfutei1j.fsf@vitty.brq.redhat.com>
 <5218e70e-8a80-7c5f-277b-01d9ab70692a@redhat.com>
 <20190913044614.GA120223@kroah.com>
 <db02a285-ad1d-6094-6359-ba80e6d3f2e0@redhat.com>
 <20190913130226.GB403359@kroah.com>
 <6a0ec3a2-2a52-f67a-6140-e0a60874538a@redhat.com>
 <462660f4-1537-cece-b55f-0ceba0269eb8@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <a85cee75-99f9-7de3-6e5c-86f9bb41bca5@redhat.com>
Date: Fri, 13 Sep 2019 23:39:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <462660f4-1537-cece-b55f-0ceba0269eb8@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_143911_543610_1C668DC9 
X-CRM114-Status: GOOD (  15.43  )
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
Cc: mark.rutland@arm.com, wanpengli@tencent.com, kvm@vger.kernel.org,
 narmstrong@baylibre.com, catalin.marinas@arm.com, will.deacon@arm.com,
 rkrcmar@redhat.com, hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org,
 x86@kernel.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, Dmitry Vyukov <dvyukov@google.com>, jmattson@google.com,
 USB list <linux-usb@vger.kernel.org>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, carlo@caione.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/19 17:32, Robin Murphy wrote:
> Oh, that bit of usbdev_mmap() is already known to be pretty much totally
> bogus for various reasons - there have been a few threads about it, of
> which I think [1] is both the most recent and the most informative.
> There was another patch[2], but that might have stalled (and might need
> reworking with additional hcd_uses_dma() checks anyway).

Neither is enough, see my reply to Alan.  Memory from kmalloc just
*cannot* be passed down to remap_pfn_range, dma_mmap_coherent or
anything like that.  It's a simple alignment issue.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
