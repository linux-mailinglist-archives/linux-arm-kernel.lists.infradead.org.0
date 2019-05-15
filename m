Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAA31FC5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 23:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w4JBwE6jxjpoZeFR2zDIMDGYnw8iK+4mM+8l2LN9kI=; b=uEyslO8oXF9kF/
	zU5ZmVjzRgUPEi8dA2bunNgLSiGoLTG325QDiafk7Bommf+2xe0Z5vVslz6DxBS4G8xSBD2rBb01R
	JjWOcL+3iWvKwWsRmR6cCMJta1/QybGWyFZfs7J1ykzrRW3MZCPoSpor3tc9HsLkQHglmULPmq41U
	bWlX4WLemuDICw5xKjrXbYy0WgnLKxWKvMb4zLXorU65jXLcZQpgZCmJJ7uPUHtiKKcnxstlssErR
	HSx44/T/YAQDTlsdhHIqrtEz1h/P4Pra8CJQvg7wiT1T+K7GpYmRRh1rloxWrpWbI0ViTQCPyCDlO
	wR1o4KhyrNqEPhXT1nFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR1fO-0001J8-Eg; Wed, 15 May 2019 21:42:26 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR1fG-0001IX-Us
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 21:42:20 +0000
Received: by mail-wm1-f68.google.com with SMTP id 7so1431874wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 14:42:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cK3Y9KxZ958VjTN9/j0HmLvhqtWrqpj1Eiv0iIXluz8=;
 b=FtFSOLJsMrNva17boE95BsU2uzEHcZcJ6WbvxoA5udVBSr0I91D8G/RBReSLH7O2nX
 jp0XLj+Mpb2cAw8YXY2/tr9RXKjKksmEALvMzQpE8VgTbOd+vyx2Zj2adkQlGc5Gdx9o
 4WDwKjJHszIRQdUOIZ5ugw+pRKFJVqFLfJwgFY3GnGEno7vzN5aGSIl6DKXhUbbDMZk5
 6xZnk74jdhItejSdb4YNmkEJm9vMsyjdVq4vCzuLwfDIQky1R0pZNPAZd84r1HnU0EP2
 jf3Yg+x+63xrQCjL2HijIwXBxIXGpB3noaMQ/BsuO1h9wRI5LEMslvYvYW/Q3fwB7QAD
 jZXg==
X-Gm-Message-State: APjAAAWRkAHpYKZd2Yo1HMJd2TBhmKHOhGjjjwESYx2U3Ui4fLfWtcJa
 bHIcbg3Mzo3smRgpyF/59HmuTFeBUXMgyA==
X-Google-Smtp-Source: APXvYqxmP3hKGokzzdV6R/wU044EEKCdMwU8XI2vejExX4Tlo4rebHLW3WTheFhtyMVcTqUqCtPCxA==
X-Received: by 2002:a05:600c:492:: with SMTP id
 d18mr10215934wme.59.1557956537037; 
 Wed, 15 May 2019 14:42:17 -0700 (PDT)
Received: from [172.10.18.228] (24-113-124-115.wavecable.com. [24.113.124.115])
 by smtp.gmail.com with ESMTPSA id y7sm7019701wrg.45.2019.05.15.14.42.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 14:42:16 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm updates for 5.2
To: Marc Zyngier <marc.zyngier@arm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <8bd20863-f03c-9621-d3ae-10c4da28764d@redhat.com>
Date: Wed, 15 May 2019 23:42:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_144218_994352_51BB3FE0 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/19 14:43, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-for-v5.2

Pulled, thnaks.  Note that capabilities had to be renumbered to avoid
conflicts.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
