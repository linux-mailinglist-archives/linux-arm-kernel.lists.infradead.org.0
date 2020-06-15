Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7231F9D92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Or5uoVl0HC6FljpQ2SgkMlhj4LZTU9x4B/9br/hw2II=; b=pvGS+hlDv5XxZs
	FE3NY9caQe4LlQlFwrarGdRr+Y+j4dP2NoMlYCqkVMSQZ+89r4RPuwMh88GPWS+h9o7805PoznnaP
	TXELqVNuTm7jHLluuZHTaJs6AL+eX+WG7Q5CQVpzbPUozWDuYCowWX/S6LL+s2iq8b5wr4yQOzK3G
	8sYnfWAws2YhlGviQzvczCAKwi1+R8wStkYNvGkQSx8NqfHJFaMwQBxBtN15+EkQvzqxagDW8yZC/
	Rfxd78J2y+hg8vbWUWcS/t43HOEsyw9xReboq9bN5QDD5ov8yePVBcKjDX/DrNOqiQ33hcHvWbIBU
	uweo8K3uZ+7C5C8kZcfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jks4y-0000CT-37; Mon, 15 Jun 2020 16:35:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks4i-0007h4-5m; Mon, 15 Jun 2020 16:35:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so17763041wru.12;
 Mon, 15 Jun 2020 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5lQ7/lXKr17vodyRktD27IeUshUvPdaX3z7NooA/F6c=;
 b=lIxkFBz4V7PvO7vVgR/1G7SztwCxC+vE7xGy7iiI04gpvRrGz3fvI6WC2TlbheWbcA
 hVziL9UihaCcCbEfALSiVRaZEaoEWBDglQSV7TEf4br1zJMuX19hnyeWo2IBZjx1+F4T
 GNG5MSP4WRky8nQZ6FezVDnp8l/iUQelNogrAsqbUOnGnXMk1D2ga531EYXwTTm+Z32V
 zrhWCmNoWtFtobtHUq8eRx4yMvvhF+TR4xw4vOUFD5xk9BEliXendpGi3k62DLLehbVU
 AKog/oFVxhmYuZJZMkHqRqWZxcPbRUmS8YKBMXB7PROAR0Zse1agKmEZyIMnnkdkmczY
 vexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5lQ7/lXKr17vodyRktD27IeUshUvPdaX3z7NooA/F6c=;
 b=Ui8D/HcEubid+MCzfAo/Du4X7MA1Yt7FvQt/LuZeKkAUhjWpDzaxl2+hWe3FOARrep
 AJzOGh8KAL0VuzQ4Rk8Gy1hguggXuLLepDs/LJTHX1E2T2/2t1VwGjeJwTb3/r4999s4
 9JvlYbYKYYcS2sppB0SjXHp7dbdG5UUc7Wpc2lrhJX7v4C4q1h6B9eJ6w8UV3VGwpSb5
 6uUj0V18u/8FY35NbfCwBJQCeytLB2SGyOV2oonIjqHMlVPngn9TK4HI0UsbPZFOHabZ
 mZuOcozeOYJGTdk3uY6DgphFhq3iGWuTK7g1MQqVR45sNDoHNhzcJ+aqbJ3rWUo+MxBq
 1V7Q==
X-Gm-Message-State: AOAM530tNj3VjkRIjhSlbZdhd/ou+Rwq2KeJAu2tZkvcWx9eqQIHM1q8
 oLUZJ/KU+z/gap+5YCJ0qTw=
X-Google-Smtp-Source: ABdhPJx16P7DvzPCkCZaqX3CvQm6rK5GkXK/vM+JGs/qyiKtD3n7zer28P+ZWST4ukMKG0x0q4CynA==
X-Received: by 2002:adf:ecc2:: with SMTP id s2mr32591979wro.60.1592238906258; 
 Mon, 15 Jun 2020 09:35:06 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d24sm67808wmb.45.2020.06.15.09.35.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:35:05 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Mark Brown <broonie@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
Date: Mon, 15 Jun 2020 09:34:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608112840.GC4593@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_093508_256571_BA8F5F8E 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/2020 4:28 AM, Mark Brown wrote:
> On Mon, Jun 08, 2020 at 12:11:11PM +0100, Robin Murphy wrote:
> 
>> Again, 2 cycles. The overhead of a static key alone is at least 50% of that.
>> And that's not even considering whether the change in code layout caused by
>> doubling up the IRQ handler might affect I-cache or branch predictor
>> behaviour, where a single miss stands to more than wipe out any perceived
>> saving. And all in code that has at least one obvious inefficiency left on
>> the table either way.
> 
>> This thread truly epitomises Knuth's "premature optimisation" quote... ;)
> 
> In fairness the main reason this driver is so heavily tuned already (and
> has lead to some really nice improvements in the core) is that there are
> a number of users hitting 100% CPU utilization driving SPI devices on
> some of the older RPi hardware, IIRC around IIO type applications
> mostly.  I do tend to agree that this particular optimization is a bit
> marginal but there has been a lot of effort put into this.

OK, so this has been dropped for spi/for-next right? How do we move from
there?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
