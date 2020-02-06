Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EDE153C3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 01:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmKL/u7kLyQtSS53WGpa0fZ0QdGfTQQqm5eb3bktyp4=; b=gpk3JMZanxfVD5
	kDeby/DnExU6pedK3YDcoCACHn4JQtScPM5IBJcHbqPue2jxDvXwNyTnT7Wi5VacTc5Oz9omS8Chy
	eL87oDjqHUoozbXrJLypGISect5kSSKiWx4M8uqBqHkUXcinZRSIGN4/j85mGseym41xDO+G4cvvN
	KviEukqwTP58tpLmWw7mSmc+5CuM2twHDb9AHh6VhyNubKjP6WmhSmxGa/K29GwL2Sd1gQQPirmmY
	VJNVJhpf9erkXjwgqnkhbTdIAvFUlMGKAj7ZFjsXPclx21yCamhGCOKcvPhv/turth4uAf8fdA9S9
	kS+bl7ZVKRqQqg1V2pyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izUkb-0000X1-JN; Thu, 06 Feb 2020 00:10:33 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izUkU-0000WO-Ev
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 00:10:27 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 6D6175C406B;
 Thu,  6 Feb 2020 01:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1580947822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=18oLXlafeIKEhZ+0cWGBZ+Cl0L84U2vqE062kcOq5w4=;
 b=Dt1LR+DIWVzNUXR6Q4UeVY1xExAPyRwNMVsY65WEKxArSBkobJKSkPREkzavr61ClTQydT
 RDe7/mMJUoWpgR9w43RlX3KZcC/En2vHX6HtHHIheOe5FfVFLzGPEsZuzGGu5i/JbUHZF5
 qTFANSa0c2PDvF+XpZQx4fD7Q9H2FXc=
MIME-Version: 1.0
Date: Thu, 06 Feb 2020 01:10:22 +0100
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] arm: make kexec depend on MMU
In-Reply-To: <20200205235327.GV25745@shell.armlinux.org.uk>
References: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
 <20200205235327.GV25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <1c36a14d742d4a0736de00d2c74d7137@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_161026_649467_43DD7A83 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Hocko <mhocko@suse.com>, arnd@arndb.de, linus.walleij@linaro.org,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 benjamin.gaignard@linaro.org, mchehab+samsung@kernel.org,
 armlinux@m.disordat.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-06 00:53, Russell King - ARM Linux admin wrote:
> Does patch 8951/1, which has been merged into mainline, not fix this?

Yes, that should take care of it. 

I discussed end of last year with Michal about this, and back then that
patch wasn't around. Should have checked master before re-sending this
patch. Sorry for the noise.

--
Stefan


> On Wed, Feb 05, 2020 at 11:43:44PM +0100, Stefan Agner wrote:
>> From: Michal Hocko <mhocko@suse.com>
>>
>> arm nommu config with KEXEC enabled doesn't compile
>> arch/arm/kernel/setup.c: In function 'reserve_crashkernel':
>> arch/arm/kernel/setup.c:1005:25: error: 'SECTION_SIZE' undeclared (first
>> use in this function)
>>              crash_size, SECTION_SIZE);
>>
>> since 61603016e212 ("ARM: kexec: fix crashkernel= handling") which is
>> over one year without anybody noticing. I have only noticed beause of
>> my testing nommu config which somehow gained CONFIG_KEXEC without
>> an intention. This suggests that nobody is actually using KEXEC
>> on nommu ARM configs. It is even a question whether kexec works with
>> nommu.
>>
>> Make KEXEC depend on MMU to make this clear. If somebody wants to enable
>> there will be probably more things to take care.
>>
>> Signed-off-by: Michal Hocko <mhocko@suse.com>
>> Reviewed-by: Stefan Agner <stefan@agner.ch>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>> ---
>>  arch/arm/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index 96dab76da3b3..59ce8943151f 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -1906,6 +1906,7 @@ config KEXEC
>>  	bool "Kexec system call (EXPERIMENTAL)"
>>  	depends on (!SMP || PM_SLEEP_SMP)
>>  	depends on !CPU_V7M
>> +	depends on MMU
>>  	select KEXEC_CORE
>>  	help
>>  	  kexec is a system call that implements the ability to shutdown your
>> --
>> 2.25.0
>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
