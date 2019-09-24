Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AAFBD4E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 00:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vCxl7fsp84e5NknbzXBDDiItu1QeNpRugbFxGYae9S0=; b=CvispbOC6jAm/cVxUn4DROjQE
	4o5Cjse6wdsh7NwMhOszKmGN4FQmC1GjEyWNVvS/7U4DXUGR81QC90yClX4DILKOgL0jFc021GT4W
	uLZJlWWnnIEyy4AwcFp1lQDjX13J1ij16cnMZVOJNQlITp9uRyoAaw/5TfsZaR+jOQ/Le11rt5SiA
	gSuqkGTvaipgEK9Gw8rcsAHtbXWW3q+QNXpVJzrHmNwRxye+WuktdSd1FE+Izwei+Ntj01lHN7o89
	Ece+gkXcwW1Z/6XiTIKF+WlCGI+1dMfMd+27l0m3q4XMUQoWqfB8xl42Y5+dFbR+AQTyqIBhpij1w
	xLG/Kf7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCtEm-0003YH-8H; Tue, 24 Sep 2019 22:24:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCtE5-0003We-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 22:24:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5so2165523wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 15:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xfRFVkwkZkzLU7wLRDGsHMd8P8PHN/2mWFJxcO4s7yQ=;
 b=bC4zjM/qQley88yoN1EN4Khq52YC1EVZnPVnorS8QVonyQije6SNxXsss+W1BCmGm9
 QW8mDw4yWhAVxFZkbCH+fGd1m2Sv8k5TBQC277KT/58VgiPO3scryeuWGQ7YPbkQ4lFk
 1PlP+6vLAbi2aDsCK51nH+idhJcdxrYGYdjIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xfRFVkwkZkzLU7wLRDGsHMd8P8PHN/2mWFJxcO4s7yQ=;
 b=AWpsc0XQgeAPRQNXu7KexqXHttTkkOofjElSDsdGHXPyQU8MmDpzqz856IYVM3VBZL
 67K/QwJbiQfOsH8IRecCXHak0ceAF0sewfZj566KRJyby3iZSW4zvjooqp7ar84HfxPq
 K5p5gH9Ho7E09tN/8795Ug0c5VGkyZz+jYTaeKiNzXMTkpYBz6O8Ylm6vj5afZCuKVSg
 F1NX1zXaalvHRN2LDyJaqUX+oaMI1tLCDUgCTPcuw0IrUXMBeGBU06T/+g7lbc1JsDwd
 o4+4n/5wnos5VDhHL/F6+YXb9oysQ8TlhLgXX6K+JWZdT1SKkdJUpkh7ZhUc5aCRtXAo
 RckQ==
X-Gm-Message-State: APjAAAVj1JRE5rCpjgOSj/mX4l1cBKyHP6MmQCWpYkX1400MnXuq267G
 COO1SwAdQ9MZIONUeGXnHxy8/Q==
X-Google-Smtp-Source: APXvYqygBR89fKBdCAQmPjpAqiV1ouU4IH0prxfGmTO/KT1bW4/bbP1SDFUrQEK1nfCjt9ckb/vW8g==
X-Received: by 2002:a1c:7509:: with SMTP id o9mr2944752wmc.21.1569363843889;
 Tue, 24 Sep 2019 15:24:03 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id 94sm1749646wrk.92.2019.09.24.15.23.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 15:24:02 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
 <20190831094940.GA1138@kunai>
 <540c4e2d-0dd5-5260-30b2-e1589b279d71@broadcom.com>
 <20190904213745.GG23608@ninjato>
 <5ab79d0e-eb54-8fe1-1ca3-e763a17c6426@broadcom.com>
 <20190924185757.GA1538@kunai>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <e00520d8-5367-83a5-9c17-d2d8b0c983c3@broadcom.com>
Date: Tue, 24 Sep 2019 15:23:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190924185757.GA1538@kunai>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_152405_961246_C1AA472E 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/24/19 11:57 AM, Wolfram Sang wrote:
> 
>> In my opinion, it's probably better to continue to support master_xfer in
>> our driver (with obvious limitations), in order to allow i2ctransfer (or any
>> apps that use I2C RDWR) to continue to work.
>>
>> What do you think?
> 
> Yes, don't break it for users. We should have paid more attention to it
> in the beginning. But, while not ideal, it is not such a big deal to
> keep it like this.
> 
> Thanks for your investigations!
> 

Thanks, Wolfram.

Let's please continue with the review process on the current patch then?

Note the patch was already internally reviewed by me.

Please help to review it and let us know if there's any change that 
needs to be made?

Regards,

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
