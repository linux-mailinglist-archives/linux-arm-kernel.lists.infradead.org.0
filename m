Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFAA14153
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 19:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BV4H46mCFjWcuswvTmEEZyqZ0d0gOBHcVCFzDZ03wwM=; b=mTKS95Lkqsz0h8
	1bVPU6U0qJejLYKWXZk8NsPS3UBchgD3Z+rV+iwnr0NQ8fulF/MBEr55OIWBSNpc9WkLoFAj7ZsIm
	y4slJMG2GKS7nfk0zezHIVVKcML9LEISgp98I8hze3tHut33W4DbUS0yjbUSLHAmfyzkwRZySRA4Y
	4tjqQIRI3GnkR5ujoNfvRCCoKseOYD4MCrL9d0T+PgAPuf0zaUNtaILXARoFcpW91MsWEySFOQSbc
	5BYhKeOMszr4I4kPsxdCYM1hNlNE4XpvcXiNC3uzjiN4fG12sfIWI5QyaIz8ZYxcfr7lk7/lbTY2J
	2ZP1+BeV7y3bPvr+gURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNKhu-00018n-Kk; Sun, 05 May 2019 17:13:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNKhn-00018Q-OG; Sun, 05 May 2019 17:13:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id p6so5237341pgh.9;
 Sun, 05 May 2019 10:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YNmDD8vtagiaoWkJ+1sS8C3SA5OGR9JrtxNHXm1mx+4=;
 b=gYzemmNtZ0PrOWiemds+L3Xp4uIzswzDbUF6iqBhpBpHVg6le5s2tl6/VS1Kp5Eu2F
 jSNB+AjOWc5rK3yij0BOirJRW3+gBDjX2EvGS6mLRmEiyWISvvaltDmaa/+IBagRAEMv
 wEZPMbw8sWVsDqGHu+uGfbF8wUe30xOfjlQn7yys7FvfuqGdhlFcZC80SAAh+CHYyhSO
 zShtrg5CVrREyxDkN3XHk6KtuZAucAo0tqIdJFTzCOTPYYm8H70rvawRn5j5xuQEcoUk
 K7APZWBzyW9aaFQ/vREga4xgrL1XxZhiFRtd1JHqb+GHF5mEBOOHBzZuueeApZ+YlHPs
 hkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YNmDD8vtagiaoWkJ+1sS8C3SA5OGR9JrtxNHXm1mx+4=;
 b=ErMwymKLjhmfwuTqEmwsorz8yzM7e3RKgFo6ExUAE++mvqDBYTcCzimhR2gyQ0HDoZ
 N6WlcdzwGg3wvTp0UtRZQiBCu4GOqVCyMU+e6YAg2AWK/k/MzSqIC+O27wwadIiL2SjJ
 Jpru9Yx85ENWQ6HuVkqXAmiOyhXIseOtSVg/zdXXEvNKOGMlcZgdskMrOqS6OFbbGgs/
 pxhcGtk/L2iFgLt4pUP+xWN4fuK4XtdugktEaHZGv5rAyhsX2jstdknfxy5xErqYOwYg
 7fdU8jTBT4W+0cOPXo33awNHA8h2Vg8HtkcNcjkvdcT0MI5vnAtLexjGK7MsDE3HSo2Y
 taPw==
X-Gm-Message-State: APjAAAXbpMdGOke85voR2dgg0YbUkuuUbvH4vV+RXvRGaC5Vg4oVkuYh
 4LfhTFHZNY+rGRgjb0QktYs=
X-Google-Smtp-Source: APXvYqy9p8dSPEvM4hzF95R0FFtyo1rxhCi/zRvOgWjUjsYDlRh+llaumBgNmxKX4rqv6rftV5bR8A==
X-Received: by 2002:a65:4006:: with SMTP id f6mr9748488pgp.47.1557076417016;
 Sun, 05 May 2019 10:13:37 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id i3sm9575630pgl.57.2019.05.05.10.13.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 10:13:36 -0700 (PDT)
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net, wsa@the-dreams.de,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20190505034339.30778-1-nh6z@nh6z.net>
 <610c7594-85c9-72db-63a6-6e632e9586aa@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <c43eb848-23cd-4b0c-638d-3bb0df58ed31@gmail.com>
Date: Sun, 5 May 2019 10:13:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <610c7594-85c9-72db-63a6-6e632e9586aa@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_101339_791854_28057A92 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/5/2019 3:36 AM, Stefan Wahren wrote:
> Hi Annaliese,
> 
> Am 05.05.19 um 05:43 schrieb Annaliese McDermond:
>> Model the I2C bus clock divider as a part of the Core Clock Framework.
>> Primarily this removes the clk_get_rate() call from each transfer.
>> This call causes problems for slave drivers that themselves have
>> internal clock components that are controlled by an I2C interface.
>> When the slave's internal clock component is prepared, the prepare
>> lock is obtained, and it makes calls to the I2C subsystem to
>> command the hardware to activate the clock.  In order to perform
>> the I2C transfer, this driver sets the divider, which requires
>> it to get the parent clock rate, which it does with clk_get_rate().
>> Unfortunately, this function will try to take the clock prepare
>> lock, which is already held by the slave's internal clock calls
>> creating a deadlock.
> 
> i think i understand the problem, but could you please explain the
> specific use case where this happend?
> 
> I suspect bcm2835 is not the only platform which is affected, so it
> would be better to fix this in general.

Agreed, if you could identify i2c bus drivers that support changing the
bus clock and move the registration of the bus 'struct clk' into the i2c
core that would scale a lot better.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
