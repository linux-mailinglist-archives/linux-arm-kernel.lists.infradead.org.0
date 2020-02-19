Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5F6164045
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DvKC4NGHZQ0zIPu8e86XgodW1J4ce37T4rO+psrRjwM=; b=lul9aEvt56pjYVKYkf0UDaXs8
	6IgU57gQ3TPR9LDjJTajffq7XTwRAkzEZgsfFhkyERii3HqkuiwVIq58UfZymL5G7GrFR6zOojI4S
	K00V5t7Mgs5fCuRq5ejQ5RIUD0OSHQUXtRePJ64vXumIn6WTvkQv575ZPuUX/YoJ9SvxoeZC9F8U9
	w6ZQ58yarTWh2S3n82oLusLI01jhPglCliHg0LxtC49+/OA6iFJgsKDRCGmbjzp+a7/dQ8dz1ebLF
	0r6tpHtf1FricPYCufubk01Z7XaCOPP+MGkEeZ7a+usQxIxGmkI3TslrWMhcHSjEUsawWv5kRccX4
	RDRmgnFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LZq-0001vU-RW; Wed, 19 Feb 2020 09:23:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LZj-0001v6-2Y
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:23:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id x14so26241951ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VYACtOJzFbdHHzYAV0uoJeRPRBCCx7IkeDn63MpNOyk=;
 b=CCiBJDOQ5P0k1bJLD9sFKDMpZF6oQoNIKRBF2hY/zXle6ThFUJbx+Uw8FDu0XhSKfM
 OuqwMUedhFw6kO9+gKhw/6icCcP+A1cD3RRqIU+Ltyo+5MXfiNboB6NEenFFQkECXJSw
 HlqWyXSXGIYk7hjq0bEsC0KfXWoorwMeFCYx5lS9L+O2m1PrE/Mxpv9BiEvaaYuzmkCO
 7KkriufHpAT98/br77i3qzpcE9ZZG4qN3h5EIF9lJTl/9rGRYzUQHtq41R/8I0ruZ9VH
 WItNmhMtbZVQ9Byk+iw+zfqs7wj3lJgUVGnUyEJC4J7jpW874hnI2f7thaU/GlZFqFVm
 rVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VYACtOJzFbdHHzYAV0uoJeRPRBCCx7IkeDn63MpNOyk=;
 b=MaXycBsAOAwpbCNTyflk8CIwdVRYB4qrfCcdQCh2REd9V74VMPDou+0VwlKnWLg/OW
 0R2PDYOGbUPhaYjq0RaBmAWiIm1N8g9dj/vmOZ1wnS0g8lTkQk4eSWYB18oF8VSuIh5+
 WSsnZ5y8kcsTVCanQ6+wtlOOOcJeh556YSB6ZuaJtTppUoySpBpLN5ukHkeNH0tzMTfe
 mzM1ROMessEPHhtAivWcQw1+ZMR/kORL/hOX3YcX4QTdeYg5icQ38a6viRRE/J3sVTIp
 6nwoBmKF81jTLh1TY452WlCFXlG2rll8JDhjh801uZo0r2+y2dURFB29v+f3kyqErt2b
 UBqg==
X-Gm-Message-State: APjAAAU07UE/AlTsX1cwoL1j8zJlhqwYhpl5naBzZhznQZTehseTn01H
 0G3yOThH6kGqqmh5uUZ+m1uvmQ==
X-Google-Smtp-Source: APXvYqwYpw0gDCHzJar4JQhf+hD+uQHtynXxiIGrOaO+rkxoRcCGQ2R/zdsyaYtZedMgWq+L5SluAA==
X-Received: by 2002:a2e:b044:: with SMTP id d4mr14981358ljl.159.1582104201028; 
 Wed, 19 Feb 2020 01:23:21 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:26e:a51f:ed1d:2717:41f:4f76?
 ([2a00:1fa0:26e:a51f:ed1d:2717:41f:4f76])
 by smtp.gmail.com with ESMTPSA id q26sm843539lfp.85.2020.02.19.01.23.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 01:23:20 -0800 (PST)
Subject: Re: [PATCH v6 21/22] KVM: x86/mmu: Use ranged-based TLB flush for
 dirty log memslot flush
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
 <20200218210736.16432-22-sean.j.christopherson@intel.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <fdb72ab9-18d4-5719-2863-78cde4e97fae@cogentembedded.com>
Date: Wed, 19 Feb 2020 12:22:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200218210736.16432-22-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_012323_186257_FA7B4E42 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 19.02.2020 0:07, Sean Christopherson wrote:

> Use the with_address() variant to when performing a TLB flush for a
                                  ^^ is it really needed here?

> specific memslot via kvm_arch_flush_remote_tlbs_memslot(), i.e. when
> flushing after clearing dirty bits during KVM_{GET,CLEAR}_DIRTY_LOG.
> This aligns all dirty log memslot-specific TLB flushes to use the
> with_address() variant and paves the way for consolidating the relevant
> code.
> 
> Note, moving to the with_address() variant only affects functionality
> when running as a HyperV guest.
> 
> Cc: Vitaly Kuznetsov <vkuznets@redhat.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
