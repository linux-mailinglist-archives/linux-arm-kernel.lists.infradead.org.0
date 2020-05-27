Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434131E4A6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59I3p7bz5+tHhR+jVzax/QE9l19mfxA7wxVABtNVV/0=; b=pne5D/GRiS4JjL
	FZXWc1SE7YdrwtAJl6ppec6yxD8a2u1kpdfWOlGQjHFY13WYM3CL2y9lXwBE94m8pvlNPAud8FQfa
	l9Ucg5S3lJvneEc9m/AHQbi8RPA799hc6nu1AZum1OE3bZF+50Uj2jIEAtMPxliAdSaIaVxZ2iUnA
	LTOjhYBAGZf9Cyr9+uDNo1YJE6m+eYlie/ONB6vcQRP2bcNxLAWedluJ0+bboWmPA/lwRszUFaPjk
	DIz3JRFC89e+SweSI+wwRQvQJI7VQglsZecMVqow+zEngzbINg92KQwypGXAbHjxhXqrW776PlgL9
	jJNCt+RX6Gtd1edQLY5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz4x-0000XW-Ql; Wed, 27 May 2020 16:38:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyde-0007z3-ON
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590595841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gpS5WDJIgyjBNnbz57joD1fkY56BnMjV/cB+edX+sFA=;
 b=eQs+PA1sqjIJqZrzF7zY/oP0eQTeCVfvHSdKoK3R+2x6cWZ5h2ln/xw4mfT+3HIfTHbG55
 cBibQpxczWkQN4QjWBWx9roUCc1L5Ur7tWYoo0YkfVl5PHqUbBNTS2ilNyXSSb/lHNOtYf
 03I4mCKwss19oj1Ix5Jz3OBlabqTYE0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-2gSHZvOGPXCykF4Buh0ybQ-1; Wed, 27 May 2020 12:10:39 -0400
X-MC-Unique: 2gSHZvOGPXCykF4Buh0ybQ-1
Received: by mail-wm1-f71.google.com with SMTP id q7so542695wmj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gpS5WDJIgyjBNnbz57joD1fkY56BnMjV/cB+edX+sFA=;
 b=G00wm5tKbQolotTwINAzaLB4Hb1svZKuhxwEt8qpklKOXlAuHPhq22ZFIYquaLVksl
 tO/f1CPR98ne3Q9RZJHCYJAwEFvOoJYKVeiOpZGMbQOnuEk2MOAa9w6oGPI6DdYH9+EW
 Oz9C7Zl9rf57ocwpEh6F+4tPJJLSUmuR/oB6or0dZ/HE4ykm/JST5iu4WQ6q+pHArkCo
 f0nJU85RTFxwlbLg3UP0qfPNn5NIq0IiZwy01PSXTmwSdBMBmLEMPHY3dw8LpDe+dsxK
 gvbc/04JA6vfF+ybq/tMMfzTbdfcyN3P/4Q8ATMo1CGdwquXHouIxcgFADFVC1mqrycZ
 N0iw==
X-Gm-Message-State: AOAM530n/Iwa9fXVwGA/nrJqvXEhHVS5j3wlZTD4IEPVednyqKp70BWp
 H9gTK+jwcS0yY3qldiovs4E3kyRqeJw0sfdjHhwbCgF2LF8236bHXI1t4nq2vZwGsM4D8M+qYTg
 9tE4Du4SaOkvHUyMm0xpfYpSU3eUV1a63KNY=
X-Received: by 2002:a7b:cf06:: with SMTP id l6mr4939090wmg.63.1590595838098;
 Wed, 27 May 2020 09:10:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwv2WOvp+dGE5Bd+63NHTAUmNpXjYKI6PXzKuriRFk4SIKF8scu4bdTkpQ8+eWY4jLf6e98w==
X-Received: by 2002:a7b:cf06:: with SMTP id l6mr4939064wmg.63.1590595837858;
 Wed, 27 May 2020 09:10:37 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id a10sm3149808wmf.46.2020.05.27.09.10.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 09:10:37 -0700 (PDT)
Subject: Re: [PATCH RFCv2 0/9] kvm/arm64: Support Async Page Fault
To: Marc Zyngier <maz@kernel.org>, Gavin Shan <gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200526130927.GH1363@C02TD0UTHF1T.local>
 <987785b2-2533-c3d8-8f6a-4193aa82d502@redhat.com>
 <ae0f32fa338969d25dc3da56292e35ed@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <eb2a2291-85b0-a39a-96d1-58e4652771ba@redhat.com>
Date: Wed, 27 May 2020 18:10:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <ae0f32fa338969d25dc3da56292e35ed@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_091042_887597_46439EFB 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/20 09:48, Marc Zyngier wrote:
> 
> My own question is whether this even makes any sense 10 years later.
> The HW has massively changed, and this adds a whole lot of complexity
> to both the hypervisor and the guest.

It still makes sense, but indeed it's for different reasons.  One
example is host page cache sharing, where (parts of) the host page cache
are visible to the guest.  In this context, async page faults are used
for any kind of host page faults, not just paging out memory due to
overcommit.

But I agree that it is very very important to design the exception model
first, as we're witnessing in x86 land the problems with a poor design.
 Nothing major, but just pain all around.

Paolo

> It also plays very ugly games
> with the exception model, which doesn't give me the warm fuzzy feeling
> that it's going to be great.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
