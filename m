Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F9C1E79BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2YzuCQT3aqrhsdBQPnfWfT7yvlgDa90DzUYnG3ZyU8=; b=rVSRZLzxWiYMIR
	WfquI4y+0C6vnXIPUJNnffURBpXcgtYKTNJvnDwPl9m9SwIrNUF2v3LSQjP0+bIARXtKD35e/CT3b
	Lk/kzSx0jF+qYcpxUcS8eU9Xl8d/XoeW5PyAEY6xi/zPuYQuTTJntlyG+8YeY8jDJ4Up6V3R9GNOy
	sbYExyzfP5T1YYY/DsqTTBZUxpBl1GI5dYbzgw/nm0vlDBy3U41TAlc+LOGNwb5S5IRPml+v7g/g7
	EZ7h8ZGZstcI9YiMpXnMINyV7IqipK1C5oKYIc1nQQtV1vwj96wQjhmabsPQ4VIErWtovgbYvRZ5g
	sHUsYDbXbV923CvK1uCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebcu-0007bm-4u; Fri, 29 May 2020 09:48:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebcj-0007aZ-Im
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 09:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590745699;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f6w/D95eveaUv1V0PC/H4Q2Slese/OFGRios5LqI3Lo=;
 b=Xp+FpzNSig6u6XpQeRDVCu08pG9SZU1pkJBd1viCvCmkXu0jmPnJcVNPkybA+vaeoeRWjH
 Ky3xEa33kvBO+9ZCGKIGTreFRWvirjEuBUhsGa3ddFMS2aTX7oDMAq1qZh23zjgEKQ+gSn
 lDsN6OevHGTbIs7EhPRSnkIMk7yQ1Mo=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-w_lf6hCCN26caztFvByrNw-1; Fri, 29 May 2020 05:48:17 -0400
X-MC-Unique: w_lf6hCCN26caztFvByrNw-1
Received: by mail-wm1-f71.google.com with SMTP id t9so578536wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 02:48:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f6w/D95eveaUv1V0PC/H4Q2Slese/OFGRios5LqI3Lo=;
 b=A76kl2FmSMrHx8ZqJb1oivJl1pscJ1QwSRHVlp2KPaJ0AnShfKRGh1Tllt/18s5xvx
 TrJpFt72iD6wXZdTavrPuZ0tRoYM7AhaAU+E3K9J1RnqIXhXQVJz/UnAKOhMUAmamMSL
 O+HUmZp6m23HRieSRqSdavwVoZUIcB/75BF9PVizTzSb+VicjSmN8WocvTovv7vOC3xJ
 S8kH1X0k1YRJFPdzSFubT8WjbELW+CxskCBWG5TSCR7ZUbZ1nWZosckje4Zt4hH1XCNi
 TLZgo1O4yF1e+agN8adjzlX04+ig1hNzKLVksKjVUr8fYJ0rZZ5G9iYxUbJW78cQHaUo
 CFRQ==
X-Gm-Message-State: AOAM532LeuLOBX/BYUjuMJOX1tgSpMhXrZpdC+trvV/JpeUogLbOPHUx
 gTzruda+8Tugr9B2Gb0nyhs5MUzWk3Vfp2qXwQW3jJRV26XTD9bpLAb8tZYzWVf3TGQtJIboaP1
 XKnTR4F/kHdTf2YcG7GloLa50Uso1wa2XqbQ=
X-Received: by 2002:a05:6000:124e:: with SMTP id
 j14mr7990038wrx.154.1590745695770; 
 Fri, 29 May 2020 02:48:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwY5u800IehczM/cQdM/5qPUlY08WZ5sRKP7f3fL0jBY9tgOmWNoklBLDcXU/RONPfyNhc2eg==
X-Received: by 2002:a05:6000:124e:: with SMTP id
 j14mr7990004wrx.154.1590745695574; 
 Fri, 29 May 2020 02:48:15 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:b096:1b7:7695:e4f7?
 ([2001:b07:6468:f312:b096:1b7:7695:e4f7])
 by smtp.gmail.com with ESMTPSA id k26sm10567358wmi.27.2020.05.29.02.48.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 02:48:15 -0700 (PDT)
Subject: Re: [PATCH v4 6/7] KVM: MIPS: clean up redundant 'kvm_run' parameters
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
 Huacai Chen <chenhuacai@gmail.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-7-tianjia.zhang@linux.alibaba.com>
 <CAAhV-H7kpKUfQoWid6GSNL5+4hTTroGyL83EaW6yZwS2+Ti9kA@mail.gmail.com>
 <37246a25-c4dc-7757-3f5c-d46870a4f186@linux.alibaba.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <30c2ac06-1a7e-2f85-fbe1-e9dc25bf2ae2@redhat.com>
Date: Fri, 29 May 2020 11:48:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <37246a25-c4dc-7757-3f5c-d46870a4f186@linux.alibaba.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_024821_711629_298F8319 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, heiko.carstens@de.ibm.com,
 Peter Xu <peterx@redhat.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 paulus@ozlabs.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com,
 Marc Zyngier <maz@kernel.org>, joro@8bytes.org, x86@kernel.org,
 borntraeger@de.ibm.com, mingo@redhat.com, julien.thierry.kdev@gmail.com,
 thuth@redhat.com, gor@linux.ibm.com, suzuki.poulose@arm.com,
 kvm-ppc@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jmattson@google.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 LKML <linux-kernel@vger.kernel.org>, james.morse@arm.com, mpe@ellerman.id.au,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/20 08:24, Tianjia Zhang wrote:
>>>
>>>
> 
> Hi Huacai,
> 
> These two patches(6/7 and 7/7) should be merged into the tree of the
> mips architecture separately. At present, there seems to be no good way
> to merge the whole architecture patchs.
> 
> For this series of patches, some architectures have been merged, some
> need to update the patch.

Hi Tianjia, I will take care of this during the merge window.

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
