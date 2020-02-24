Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6991516A381
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJ3nrOB+F+8m/RoQhla60Asqa/VX/SjGDCLJYYtBwlY=; b=AWTgkELEdM1Q4K
	xb5pAXTstsiJFQu+Y5tgnjzgPLJyLzhnScdrPw8SfxHk/2QutojVvlB4x+88bCGBDG0v5FL7qlsZ0
	+yuhi0lldjEoun1YQb7lJKamavM0Fm0UvoYEAYOSWTr8uY3bi8SMihOKMmuz8KbTMt5n9alCRPQOx
	BwMoXnsmrmyMPcHGgqZyPq3YUv9J7QEDmaikRuSPx7G+A1Y6CDE1zp9G/KtRT/f2qJKxTBIwUhGHp
	oYVUIA8OZj+wvkQQJ2z8Dhx6FwvskQMjATnO6Cz8Wxk+sVH2Yjcv0O4Z/d0v0b5XGrpZPI0ZPWfcg
	cWgQQqeye6SY3V98DsTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Ael-0001Rb-9B; Mon, 24 Feb 2020 10:08:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Aeb-0001Qi-1z
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:07:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70FB930E;
 Mon, 24 Feb 2020 02:07:54 -0800 (PST)
Received: from [192.168.1.161] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8F7C3F703;
 Mon, 24 Feb 2020 02:07:53 -0800 (PST)
Subject: Re: [PATCH 5/5] arm64/vdso: Restrict splitting VVAR VMA
To: Andrei Vagin <avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
 <20200204175913.74901-6-avagin@gmail.com>
 <df8fa53c-5c21-b620-0254-ffefdd3a8834@arm.com>
 <20200223233013.GB349924@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <248ddd41-d3b3-05f2-4e49-177236726209@arm.com>
Date: Mon, 24 Feb 2020 10:08:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200223233013.GB349924@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_020757_143080_78929F90 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 2/23/20 11:30 PM, Andrei Vagin wrote:
[...]

> 
> Hmmm. I have read the code of special_mapping_mremap() and I don't see where
> it restricts splitting the vvar mapping.
> 
> Here is the code what I see in the source:
> 
> static int special_mapping_mremap(struct vm_area_struct *new_vma)
> {
>         struct vm_special_mapping *sm = new_vma->vm_private_data;
> 
>         if (WARN_ON_ONCE(current->mm != new_vma->vm_mm))
>                 return -EFAULT;
> 
>         if (sm->mremap)
>                 return sm->mremap(sm, new_vma);
> 
>         return 0;
> }
> 
> And I have checked that without this patch, I can remap only one page of
> the vvar mapping.
>

I checked it a second time and I agree. The check on new_size is required in
this case.

> Thanks,
> Andrei
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
