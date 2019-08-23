Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D589B518
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 19:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AttSqF24fq6UqRXhUfcByIFXuC7I60kEroMunyFbXOo=; b=aXicqs3zzWo/Ef
	JHML7rDT2slbn6nBltsqPbiuCZxwncwj/fi/e6ZbpsASbNix6WeyYHNm1YS+b2CMSnkuvjkvbNz37
	E9wx4pHzrzC11HSgha26JbhRhmKxlZ7ColLg8bG8tq8NWrkF3iFuUgm8bKG3uX90xjceqb9ivzYV9
	CS6+DaLFNBk34jQtjM66wFBdnT3uGFPj4nI6A0CNoubRAMc5bG2BqXEtc3EiR1gcGacnFrVFTOh1p
	6/uMLLZfQOuiclFcPVFAY31BpXNbQIAaTzovkqA2AMr7Yihw+283QhBAN3HuyK9UbPskRy8ci3xSR
	FY4weYYuLWaTxvcZSjxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1D2p-0006y2-Jg; Fri, 23 Aug 2019 17:08:11 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1D2i-0006wv-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 17:08:05 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F21C65AFD9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 17:08:01 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id c11so3147962wml.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 10:08:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L7CFzFZcBTFDB9gXZjKJlWNHgFbguv8P194zUY7iBjo=;
 b=JwyIE+xwJmBYN4tUFP6n91Rn34rci6XupoctzWRdupEMtxGUCF4shc0nrenSNHc92h
 C0Ka7suXbju358uwrXUPPfmaqjdiG4uSl3nhv7+BszV/TkEAxLe+MUqUTfus7CyuzYk0
 d6HtFKekNDCedsnrccsklLIYhNV6zMJqboGjNyLcaiLbg5tikd81x9pqYyhQQSoNcXRx
 0qJTHiMc4a7UQoVAIdHdQK60m+bNlu1Pn5m3SaPR8WF+6IPhLcbZHruTa88CUp3wT5rm
 yVsbj+MqGaIRej1zUrD9PtOI1stjrBQNuY+QjHbQfHip2s74YMunV2/TPHYMM5sWlX6T
 Xsfw==
X-Gm-Message-State: APjAAAV2xFYzh0AIhStf61ArrKje1IYrdTtmaRNf73DZI610GGWiT17E
 5ZwdUUJpKsFTLbblr6VgKj2ULvbTzOKgwv1Eowv11Ewc3jsLSCFnDPSAGDw70tb9odDZxS/saG+
 JHtHWBNCfBnFoZ3Ryj48ehqj7XXT3jZw66a0=
X-Received: by 2002:a1c:6145:: with SMTP id v66mr6820116wmb.42.1566580080618; 
 Fri, 23 Aug 2019 10:08:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2VfVqVmbNSKh60msz2D85O4kPeYbsxyx65VFv1ZLWWCCH6sSVLhBJZ0JI2ziJHjDOK7yijA==
X-Received: by 2002:a1c:6145:: with SMTP id v66mr6820078wmb.42.1566580080242; 
 Fri, 23 Aug 2019 10:08:00 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id n8sm3065205wrw.28.2019.08.23.10.07.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 10:07:59 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm updates for 5.3-rc6
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190823163516.179768-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <21ae69a2-2546-29d0-bff6-2ea825e3d968@redhat.com>
Date: Fri, 23 Aug 2019 19:07:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823163516.179768-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_100804_097243_38A99A20 
X-CRM114-Status: GOOD (  20.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, kvmarm@lists.cs.columbia.edu,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Dave Martin <dave.martin@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/08/19 18:35, Marc Zyngier wrote:
> Paolo, Radim,
> 
> One (hopefully last) set of fixes for KVM/arm for 5.3: an embarassing
> MMIO emulation regression, and a UBSAN splat. Oh well...
> 
> Please pull,

Please send this (and any other changes until the release) through the
ARM tree---same for s390 if need be.

This way Radim can concentrate on pending 5.4 patches while I am away.

Paolo

>        M.
> 
> The following changes since commit 16e604a437c89751dc626c9e90cf88ba93c5be64:
> 
>   KVM: arm/arm64: vgic: Reevaluate level sensitive interrupts on enable (2019-08-09 08:07:26 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.3-3
> 
> for you to fetch changes up to 2e16f3e926ed48373c98edea85c6ad0ef69425d1:
> 
>   KVM: arm/arm64: VGIC: Properly initialise private IRQ affinity (2019-08-23 17:23:01 +0100)
> 
> ----------------------------------------------------------------
> KVM/arm fixes for 5.3, take #3
> 
> - Don't overskip instructions on MMIO emulation
> - Fix UBSAN splat when initializing PPI priorities
> 
> ----------------------------------------------------------------
> Andre Przywara (1):
>       KVM: arm/arm64: VGIC: Properly initialise private IRQ affinity
> 
> Andrew Jones (1):
>       KVM: arm/arm64: Only skip MMIO insn once
> 
>  virt/kvm/arm/mmio.c           |  7 +++++++
>  virt/kvm/arm/vgic/vgic-init.c | 30 ++++++++++++++++++++----------
>  2 files changed, 27 insertions(+), 10 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
