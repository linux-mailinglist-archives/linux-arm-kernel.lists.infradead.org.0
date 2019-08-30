Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D02A3DC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KjDnVC244PCk8j8ACoZgmnuVoiHrCaXI1/wor/3UDRU=; b=p4PB4Nq95+sD21n9THW2u3h4K
	sGUjhSlDELOuTJgegKmvKIhzKazFxcfYFEqIXcLhphbx/IP9clSAndWpDAIZaVpCaB0JhOoCwv0rj
	ld0SRJ2RLi8Jv6os1p8ClU2e7Zwn6aXW5r4jbZAWhhSjRQzBlYnB7jJdSLS6I/WomepbZNpvf3d7a
	+G8n0LsXZjVZBie3vnezuwiAkf98uedr22fUuMYQzQVaYvcnx+e4WnvnP9UD0vlCPAdPskel/6p6w
	w5fY5v7tAgnFj1aTZgfTeJISe+rzG13rcQAiu38SbynwkS7G9S2+KC3jkPQB5qweCFGo8Mi48nYR9
	5rJaAo9MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lkD-000377-Sx; Fri, 30 Aug 2019 18:35:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ljx-00036L-Nn
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:35:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id n9so3959853pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 11:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bIeN59zLlf9hPECJ+a5c6Glfl7dAXXKY36z7SizN9gM=;
 b=IQGa3Mt4+au2PyMQHW+PvrAcz/AETV0wFmHOYGLymVh/gc+dTht/JO4nBjR1m4Z8Qx
 B7KxIkemrczvh45Jb/1x2k0NFOVuub+ATOjZSexJsTNLChgVm8aVno/qRULf4iIGKJ07
 z71IX/iXX3oF2ff6SAr+g37jeArEF4jRYP+lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bIeN59zLlf9hPECJ+a5c6Glfl7dAXXKY36z7SizN9gM=;
 b=j7bhVvuiaIyCDKJD7/JYd9TEazvvmaRadJ1W/QY9ro5OT7/SEaKzmGgTQeWWi+Mkel
 MXozJjBKj3DTY8QqVzV6Tq0VG3ezEyV5K9jqtkzL3xslETuQSw+8VMwqYAMNbhDHuRN2
 l1qF7qmljuCkWXEJd08stC4EZeLhfQcw+Qv2R0m9r0kCKm/MJknPlKVbHn3QKZ3s5TNL
 LinyoKpvGqD6Mz5IODFRZ4AcEu8uIe/DoD6UvYE50lLW4rCpvlmwIYiV44sEeAyt3b/8
 eBHAkzECiFxThqOIcmDK8nToQO75nxF01DbPbkg8CF01R8Y5HSXCIoJMxiahS4C2zmzP
 yecg==
X-Gm-Message-State: APjAAAVGXsC2qpF4wuycrM3U/TUOaKDXEMiMCaP8YszRXfdlRIPfEtO+
 mg0E3+LFJwLpRBcnfKECQDuZGw==
X-Google-Smtp-Source: APXvYqygSJnu7L2JedNmYX5ICyfUrGX+E4J3wKc8DRjWeJwkgnQsT/NWZZ9V0F2txVYvAu85h9YZmw==
X-Received: by 2002:a17:90a:8081:: with SMTP id
 c1mr17371952pjn.62.1567190113962; 
 Fri, 30 Aug 2019 11:35:13 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id x16sm7420135pff.99.2019.08.30.11.35.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 11:35:12 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
To: Wolfram Sang <wsa@the-dreams.de>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
Date: Fri, 30 Aug 2019 11:35:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830125626.GC2870@ninjato>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_113517_781253_6FBAB502 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Shivaraj Shetty <sshetty1@broadcom.com>, linux-kernel@vger.kernel.org,
 Icarus Chau <icarus.chau@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/30/19 5:56 AM, Wolfram Sang wrote:
> Hi everyone,
> 
>> +/*
>> + * If 'process_call' is true, then this is a multi-msg transfer that requires
>> + * a repeated start between the messages.
>> + * More specifically, it must be a write (reg) followed by a read (data).
>> + * The i2c quirks are set to enforce this rule.
>> + */
> 
> With all the limitations in place, I wonder if it might be easier to
> implement an smbus_xfer callback instead? What is left that makes this
> controller more than SMBus and real I2C?
> 

Right. But what is the implication of using smbus_xfer instead of 
master_xfer in our driver?

Does it mean it will break existing functions of the i2c app that our 
customers developed based on i2cdev (e.g., I2C_RDWR)?

1) Does
>> +	/* Process the read message if this is process call */
> 
> Also, the term "process call" here seriously sounds like SMBus.
> 
>> +		addr = msg->addr << 1 | 1;
> 
> addr = i2c_8bit_addr_from_msg(msg);
> 
>> +		u32 protocol;
> 
> Hmm, another SMBus terminology.
> 
> 
>> +	if (num > 2) {
>> +		dev_err(iproc_i2c->device,
>> +			"Only support up to 2 messages. Current msg count %d\n",
>> +			num);
>> +		return -EOPNOTSUPP;
>> +	}
> 
> With your quirks flags set, the core checks it for you.
> 
> Kind regards,
> 
>     Wolfram
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
