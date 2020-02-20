Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DDF165EAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VT2zPyszIqNmiAldJPXZOqAAREjLDfCMkHWNSTP5WVc=; b=QKqS/BRa92VI96
	t2HEi5O4daf9LZZzp6sIrNF73ErDFim4yL99LY1NdDqL3VL/tIx7NjK+1Vk2YTyy5sJfxQvaOJqWd
	0muukymYCi9+yTXJ9z7cPJNUTWu7mfqYxFKvue7/OPq9uf+fuKbI8AKG5JxDhiEevlwcyRtX5Yc1t
	wdSDcUrflihzZztW46mgbsr3CKy0HBMD4KmrgVY2Jr95Gsh8YXIEVOw/YogoVLhuuzgiEvA6ZkarF
	rJ+kXEg4kY63lTKYSivNYpPw6DAZtxRyG5MKAE2Do7QY+6hUdln5xld+sZl5Dz1gHEKjQYEwQWnzA
	Cja6Ezr+ph7KD+RBwDIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lok-0003NB-Gd; Thu, 20 Feb 2020 13:24:38 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4loa-0003Me-Vx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582205065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XvMmChK6SbgG0/2Lm5qNdD29/GRoTprQuuIJ6y74DbY=;
 b=ae8DHOc12LevlM0umvOdsklkh2Q7iclHfAyRhHOggb0iDZGck1c/WcK3K3dF0nJbNNTJ4f
 eMk/xoRkvb0j6CZ7Y+7q6t9HV8BZrqIAhyjvE8A6RPF/2OERb5cKX+azYUFoG0uvQbzxC0
 bvXPxKp39vqyMy+vEKMD/jqU9xlouq0=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-Der6r89iPDeC_Ouz3iEHWg-1; Thu, 20 Feb 2020 08:24:24 -0500
X-MC-Unique: Der6r89iPDeC_Ouz3iEHWg-1
Received: by mail-lf1-f72.google.com with SMTP id l2so1256716lfk.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 05:24:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XvMmChK6SbgG0/2Lm5qNdD29/GRoTprQuuIJ6y74DbY=;
 b=akFG9jJ0MruGqz7YyXPp93RXopAgUc87gCS0nR0PahYSDjyKoNFY54HRUGXhQnDxkR
 iLMmBtfaMkWBc/rUS78gSRJF+48juQgUQdBh4os7Kg1FV0mGOFvBOfX4UCdJ6l1rHfox
 n2WFMCQraBgj+M2TcSk0Opxop4dyjZed2AQ1h4ruieZPHL6HstvK/v+iG0UvVqel+8fD
 f3oAojsY2qvMZTADRur7Y1zkgK8FHlJPgXFmNrKVEk+Y1xF0Nkw4hM8Gy95cZWNjwhWB
 AtIKWXfb0VMkVPf02taV1yzwgWTTDKrBmHup4YrglGXw4JGE4LbNvPlFtrlqp7L/w8HA
 6AZg==
X-Gm-Message-State: APjAAAXSvc7ZLodYPLMR0odwH9wHXHyfAY/wzi4GkVDJiFqaiNLmpnc5
 g7pJxut9AyIjFvxNZ/cpGmCg/etQx956ClCDPcz8JHP+1bjALZ+bt5AcuOTqchEOkcuhEh6hLsQ
 hwD1s4JCASH6N3GluXFFvYHsXgOIS06nvBf4=
X-Received: by 2002:a05:6000:1012:: with SMTP id
 a18mr41811273wrx.113.1582204647570; 
 Thu, 20 Feb 2020 05:17:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqz+bMIwb/40ta9G1MJyGw7FTeqK0evbAksgNT4fuWxaQqt0K6KuCAj18GyDem3xjd7ozBfutw==
X-Received: by 2002:a05:6000:1012:: with SMTP id
 a18mr41811244wrx.113.1582204647347; 
 Thu, 20 Feb 2020 05:17:27 -0800 (PST)
Received: from [10.201.49.12] (nat-pool-mxp-u.redhat.com. [149.6.153.187])
 by smtp.gmail.com with ESMTPSA id x10sm4168085wrv.60.2020.02.20.05.17.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 05:17:26 -0800 (PST)
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Marc Zyngier <maz@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
References: <CGME20200210141344eucas1p25a6da0b0251931ef3659397a6f34c0c3@eucas1p2.samsung.com>
 <20200210141324.21090-1-maz@kernel.org>
 <621a0a92-6432-6c3e-cb69-0b601764fa69@samsung.com>
 <43446bd5e884ae92f243799cbe748871@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <250c6908-266f-0306-9d09-5ecf8dd6b736@redhat.com>
Date: Thu, 20 Feb 2020 14:17:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <43446bd5e884ae92f243799cbe748871@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_052429_104223_50856E8D 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/02/20 14:15, Marc Zyngier wrote:
>> That is a bit sad information. Mainline Exynos finally got everything
>> that was needed to run it on the quite popular Samsung Exynos5422-based
>> Odroid XU4/HC1/MC1 boards. According to the Odroid related forums it is
>> being used. We also use it internally at Samsung.
> 
> Something like "too little, too late" springs to mind, but let's be
> constructive. Is anyone using it in a production environment, where
> they rely on the latest mainline kernel having KVM support?

Depends if you consider "production environment" somebody playing at
home with a SBC.  But it's true that, these days, most of those that
support EL2 do support ARM64, even if they are used with a 32-bit userland.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
