Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23AF104E9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pTRoo0BY41EuopoioXFqB9ISDi+TXRicytiLs+INYk=; b=IzxddgYuJNnOBj
	SnToDlP+eblPHaHbxc6pHqmaiLw6ctGGebXaKFiJQpUhN7FQRhfQK5G+bjvn9NQ6beUF24K0/Pqha
	tGBeMnjGB+M2Qm4YwFyvWNJGLuF1NauCER8hOPJW7EHDsz8K5CEzpaeqRdpWB4Ii43QkMI4q6WUBx
	gL1+LN/Oososlz82/D1/BiBYph7v9YtW03MXzrWs+lMYSN2kLMCo8zWp3ZRUWx+SBMgEkw9AA83os
	WHqcsBOpR3qxbPruyWGXPjG4Y/qe7UtrN3cI2lKjn7l0iBeqGfYIvtf2m+ZGOOBQWPSX8ly4GM8iT
	Y5/Sp3oN7bAz1lm2Ofng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiIx-0004R3-JE; Thu, 21 Nov 2019 08:59:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiIt-0004Qx-If
 for linux-arm-kernel@bombadil.infradead.org; Thu, 21 Nov 2019 08:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5vo5aImJRI04ytV5bzibQHrtCMLtHTe5h3BdE00xi7Q=; b=gBZfytvhDn5dTVDvdMnEQD1gM5
 2iIKBmTf5qaNDmoGVk9gtu/HVtaghT0q/2hv/0Bgztt8lqRDciImt2j8nJHCSvXfpNRzVF0SZqQv2
 IbO/2HOHiMoQLhKYqGaF70TLvrp1OKahocJEk7/jT0xDOfXucTj8pz+LSWBb2f+SvwuotXRGT7x6+
 ZOnQ9exxRKjxVzPw3S1XbM4OU7NFxBKeIVGWqRalqxSsb8/E7ajxpkR0WYPOxzuGJj/2pItu/4aWl
 gtVodDeqWCF0pbU5k2hjyubz+XAIBCaXy5OaTyMBJ7uf+HxmOCyNaJjof+D2cfAeHbgvaPtaL0gNc
 AeXr6unw==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiJQ-0001D3-Er
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574326712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=5vo5aImJRI04ytV5bzibQHrtCMLtHTe5h3BdE00xi7Q=;
 b=S29WqheUNpCtKWEpw5Cm3kVvauXFblm6NTfocfBS6kl6+8JtGxzF/igsWBaq67wVSP2i3h
 ih55dN1Im1ynHPzl71+1mApziQeSCjWUGYurxw3RtEUpUaLUl+zex17qMhkC4BntqwtGhN
 y/V2By+zaNJ4J1WH1095IuW/awTT274=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-Yvh_OSqLPsmosb6BGr_KKw-1; Thu, 21 Nov 2019 03:58:27 -0500
Received: by mail-wr1-f69.google.com with SMTP id c16so1742058wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 00:58:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sCmKx0alGdWS1edtMABKHywlxEIqQr0SHiAwqlNmhiI=;
 b=Ht8QsiWcLBZZ5kjYR2H5/LUSH/vLLtq/cizfggsF26DULFDgoznwb9FfijBzbD5lOg
 9jaamVfJ/C9YCno0tkdcvICkKfmdxTZN5joJxhu2qk3BD1RhcKa2LXB6oIHu2yPDnldS
 GzDszputiE8utx4nriD4sCd/jRGCKA/gLkxzxxpAjamQxaITQ1mRm7DCB5iZ5oeClNc/
 FZVFUBpUxLaGGgKWp6tH2gMhropYIw7EBhqp3eklDDmuhFTEGUAmuxRcKW5jeo/TgCaJ
 JcXokh8nbzPXPkssbEx5bmVx7izV2+/EyCjEjkq26ejYH18FZIq2Vp4gJt2qKmtiWaX2
 EICQ==
X-Gm-Message-State: APjAAAWbjh2JyDNvIdpPlVayiT8lOAonWYwJKE9uaPKwDaVpGHltjmKn
 jJhs9Z8IGFPGzspmEPlzI09b0qivBEe7ZTOMeGlFY4v2dVtQqTCP90qMaq903FsTReWGa0xszLh
 y5Dm3h8tJCobB8STbLlVwFTO1aV5aSJ53C4Y=
X-Received: by 2002:adf:f108:: with SMTP id r8mr301755wro.390.1574326706546;
 Thu, 21 Nov 2019 00:58:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqxzhpPUBrdJMs3GDqJXStN+Ui3qdExeHo3qQr+2CCFWqDTetXUpI0bjUjmWgLMo+sRzmAIhrw==
X-Received: by 2002:adf:f108:: with SMTP id r8mr301721wro.390.1574326706249;
 Thu, 21 Nov 2019 00:58:26 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:71a5:6e:f854:d744?
 ([2001:b07:6468:f312:71a5:6e:f854:d744])
 by smtp.gmail.com with ESMTPSA id r25sm2130012wmh.6.2019.11.21.00.58.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Nov 2019 00:58:25 -0800 (PST)
Subject: Re: [GIT PULL] KVM/arm updates for 5.5
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20191120164236.29359-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <3cde0da8-62a5-d1a5-b6b9-58baf890707a@redhat.com>
Date: Thu, 21 Nov 2019 09:58:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191120164236.29359-1-maz@kernel.org>
Content-Language: en-US
X-MC-Unique: Yvh_OSqLPsmosb6BGr_KKw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_085940_601494_B2831E71 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/11/19 17:42, Marc Zyngier wrote:
> Paolo, Radim,
> 
> Here's the bulk of KVM/arm updates for 5.5. On the menu, two new features:
> - Stolen time is finally exposed to guests. Yay!
> - We can report (and potentially emulate) instructions that KVM cannot
>   handle in kernel space to userspace. Yay again!
> 
> Apart from that, a fairly mundane bag of perf optimization, cleanup and
> bug fixes.
> 
> Note that this series is based on a shared branch with the arm64 tree,
> avoiding a potential delicate merge.
> 
> Please pull,

Pulled, thanks.  Note that the new capabilities had a conflict and were
bumped by one.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
