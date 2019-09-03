Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A60A6316
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8iWFV/SGul8bu5+y4LcYRB++iuMsOERgamkztJ9vdyY=; b=gm5wIo/CZKrcuOIfDJb8qrY+Q
	Mp1jbUATNBqsEkBHCvHQAq3pgM5fCc8xgM78TSeIg17QytD+eTYsiY16a1XE/w3PIIhs5VEZkclX6
	czX/vYsWhY5bbFUK98VHZzHRb2F9II+jrE+uJ1Uxmg7HigsG0j72VfitUomHBKJSfi9Oo0nXf6du1
	DzWy2KDvyM9AtrOCG76Iq3YrdlpYFybDUWt6RKdh1DlR/uEeTwo+3hRAKn9uw51GrkRBK2IHpITt8
	GGg7TsqY1A88n+JT2F3QNHDGzQQGv4MEX6p1xGStj17iesIXjXGibiefgWr89lNKen4MY1IX4gEe7
	2pZFV98oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53b9-0007t7-6H; Tue, 03 Sep 2019 07:51:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53av-0007sD-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:51:19 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CC5C7C056807
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 07:51:16 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id f5so1618933edr.19
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w8HIPoxJeKQ6uWeXwaqzJnrwZeqZuyXyHwG4+Nh5f8I=;
 b=f4llzWUAgWpBDUXR2IBzFw+QpUPArSQLZYRmrxgDZwlxz34eeeokoBL/mgtWboaz1U
 nKTb8uMEHoatssb2WtqpTH/+/9q06Iay/pKwSIO/NkKXJZit8C5bH5DRUzaHFXbjudNM
 Q0HyQqc0KlB4ponM4WRlAlkTqLeDnQBS1gOy+8SLvSyArD8LSM10HNaoORDt42saLEsK
 99/j6Vp3IbysxLAaE7W3Alra+bLv9L1psJmMefM4JumNnoiBZblae6v7wi1ck3QDbcFD
 +RiPW8xH6llbHhTMBRtGgR2ETiE2O+ZWXa8P6o6crB5kpB3E0zXxjtymR2TVNfMBvNGd
 otKQ==
X-Gm-Message-State: APjAAAWo6szoTKDg9b/kYT5iHw1uuOu2g9nQvEyON4uo68jKG0tsGUar
 sDPIitY79V/XIN5aavooMHWTpAJ0y7l7/GHXNUhdbITvQ9GkLGABIgwk5P8h+8W2R0wZkc1i0ze
 7hKux9eJthmVs7QFYGR/oULj7vytvwVUTmh4=
X-Received: by 2002:a17:906:d7a3:: with SMTP id
 pk3mr13383198ejb.97.1567497075044; 
 Tue, 03 Sep 2019 00:51:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcWpjWCgHm7od0lS3pQcg6L6ajmTNeMv46O7wYLrV4SdnJWrI2Vv4mBF3X9ZIiqJr2V6QZKg==
X-Received: by 2002:a17:906:d7a3:: with SMTP id
 pk3mr13383184ejb.97.1567497074920; 
 Tue, 03 Sep 2019 00:51:14 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id c1sm3244417edr.37.2019.09.03.00.51.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 00:51:14 -0700 (PDT)
Subject: Re: [PATCH 5/9] crypto: ccree - Rename arrays to avoid conflict with
 crypto/sha256.h
To: Gilad Ben-Yossef <gilad@benyossef.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
 <20190901203532.2615-6-hdegoede@redhat.com>
 <CAOtvUMdd+V5pesw+O-kk9_JB5YpxUM+hU+Uu=kiMvOL9d0AziQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0d55a6a7-9cca-38cb-97a2-558280fdc122@redhat.com>
Date: Tue, 3 Sep 2019 09:51:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOtvUMdd+V5pesw+O-kk9_JB5YpxUM+hU+Uu=kiMvOL9d0AziQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_005117_983234_4FD5D66A 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-efi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Atul Gupta <atul.gupta@chelsio.com>,
 linux-s390@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 03-09-19 09:45, Gilad Ben-Yossef wrote:
> On Sun, Sep 1, 2019 at 11:36 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Rename the algo_init arrays to cc_algo_init so that they do not conflict
>> with the functions declared in crypto/sha256.h.
>>
>> This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.
> 
> I'm fine with the renaming.
> 
> Signed-off-by: Gilad Ben-Yossef <gilad@benyossef.com>

Your Signed-off-by is only used when the patches passes through your hands,
since Herbert will likely apply this directly that is not the case.

You want either Acked-by or Reviewed-by to signal that you are ok with this patch.

Regards,

Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
