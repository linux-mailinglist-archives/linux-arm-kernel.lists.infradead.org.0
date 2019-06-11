Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F6B3D1F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fqP1oe0V/GQs+K/TDqm/dwUQHDhr3yYEZHV0JFZiYFc=; b=AUz0xBy8w2V/Y1GqUy4ct1CuU
	YMotG2hmza4cRDEK+25d9qDhFOlBDN1rS4QUSd2rqTyrtw61b0KlruIUGtdKZ7d7Cc1ayu8vG7Y6s
	uP3AclmfewPDx5dJ35pq5p27rp2Kyiioa89Q0UiaHArzvnNux5yfwDjX77tgPc9ZglsuB6y7MYX5W
	2OxQIVLtCXhxGJFGYzO7hN6u3bu4yQY04LOTgCAiySD2KhEgoT9VvmiFtycdaVGdyY/S3pRMXIQiK
	KDYhVT0WwGOnIb1CeeIsSuitKOvW3i+uIrTe3+kO9a5fwuQuicgOGYG44pk/bIMNR7VusD4XNb8Di
	IiYIA8DYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajOn-0008CS-7D; Tue, 11 Jun 2019 16:13:25 +0000
Received: from mail-qt1-f173.google.com ([209.85.160.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajOc-0008Bx-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:13:15 +0000
Received: by mail-qt1-f173.google.com with SMTP id x2so14324249qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:13:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NJDk1Q37w05I2y3JaQodc4xcmS+MNK+AHHU+/E49axw=;
 b=oR9Zi3hTKxeQ0tU7haiSW3AKAAT232xGADqrlAT/D7cBaUHQUOdwo8LGRW0ZyL0/73
 gRerg58eUXgT21QCB6W9zeZDHorLfMzfxtd3m6yL+1/dR8DRPGQtGN/nTP04PwVGyCsW
 FLMoydgRpvISxmPw2GHjFdZ0sKnw9W0gtCzPsOtBt9gFusEOjNwYOFZcmgFvWlkq1jWI
 E8zY3azKbMgWinKwnwC2F9O/INHJxp0c1ltqdmsKpkRrGqY119jh+mav4T55/6cutl2R
 LSKker4MVmYXDb0uUrh6R5xyfON6Y56PQGd6iLqe9FQ1rbD7MnslkkvNG1pleBQC8Xlv
 mrhg==
X-Gm-Message-State: APjAAAV7RKOkASXfaTTvl5bVgVnN0gStQ7R+LorvH69Jz+e9spSQuP9B
 Rkuxw4Rcheb51WTnjkDGlBEwnw==
X-Google-Smtp-Source: APXvYqxwVu1iRlu2c8pgibaj34iVBzF1HhpHiafjgVCgPdH8zA5QXtDcEQlppMJ2mi6AHqxbha2OQQ==
X-Received: by 2002:ac8:7a87:: with SMTP id x7mr55591921qtr.215.1560269592251; 
 Tue, 11 Jun 2019 09:13:12 -0700 (PDT)
Received: from ?IPv6:2601:543:8101:1d87::729? ([2601:543:8101:1d87::729])
 by smtp.gmail.com with ESMTPSA id v41sm8299001qta.78.2019.06.11.09.13.11
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 09:13:11 -0700 (PDT)
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
To: Will Deacon <will.deacon@arm.com>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
 <20190529112956.GE4485@fuggles.cambridge.arm.com>
 <20190611155025.GI4324@fuggles.cambridge.arm.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <f349b8ee-6df6-ee4e-615e-6b0a2e8eb3ec@redhat.com>
Date: Tue, 11 Jun 2019 12:13:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190611155025.GI4324@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091314_131650_BF8A6B57 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.173 listed in list.dnswl.org]
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Andrew.Murray@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/11/19 11:50 AM, Will Deacon wrote:
> Hi Laura,
> 
> On Wed, May 29, 2019 at 12:30:00PM +0100, Will Deacon wrote:
>> On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
>>> CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
>>> triggers a bug on the CONFIG_ATOMIC64_SELFTEST:
>>
>> At this point, I'd be inclined to raise something in the GCC bugzilla
>> with the result of --save-temps for the failing atomic64_test.c. Maybe
>> they will have a better opinion as to whether we're doing something wrong
>> here. Is that something you're willing to do, or shall I do it?
> 
> Did you file a GCC bugzilla entry for this, or shall I go ahead and make
> a new one (assuming I can remember my credentials for that thing)?
> 
> Will
> 

I didn't file one, if you already have the account I'm happy to let you
do that since I don't actually have one (maybe I should though at the
rate I seem to stumble across bugs...)

Thanks,
Laura

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
