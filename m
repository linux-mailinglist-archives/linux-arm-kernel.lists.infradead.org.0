Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBD9DA5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 02:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2T+XDCePPD2JRmlWO1eIgKXGH99qapcEVjI4E/qk5/s=; b=dxkuAlvTBBNF0dGVuxyZzRKtC
	lIBedTUuWLL4m/skplLrkVIdocg2noN+3RaTQyjkfEbVjiTOu8tmIfyI+8+G4CJLPBQ0Yb2XTOkpE
	mSKV0OMvSZcLkH0s2SICpWnHAgo4twtZ4BTmIZ0yb0cWB61vSZw/2tLke/z9jVbWUwecv2UGtj7Zq
	U1LZhDTr0U3vchc7MwgYYx3FooBHOYEgUV9tU7iPruurS/onD4jV9PgUgqljrmktJi+KJzMVKhZhB
	2gL1txT0nvdc/ThLo317PD/E6xvhO4CVMh64YCap2jQFYGgJOfN8xFSeVT+brR6XMc7b8dKWf/dPc
	MeiJusZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2P2C-0007Ca-N7; Tue, 27 Aug 2019 00:08:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2P20-0007Bo-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 00:08:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id i30so12853141pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 17:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=op+KI7TlBsB6S6sFewOJ0t706uisxtkweddZPva/XUs=;
 b=RX9x+6DtGafaHO1iuCX95LpTQasZh6Epfv1c1WbVTDYTdGMgc1MTuuAunpoIXNNQhd
 dyvTNYlk5n1nkTqY721ASC09AaF3Jd2PeyOINmfcUce/x/U0YrVO2OGxhy1eJkkIdVcy
 TrypAKXyYIZgYBYIgWvMufNafmydykIbS4ktkSRekVFf1BscbukfP/gaj1ctYHrHIdI/
 W2Mu0iyEX6/umnjyUCn9Ad/wL0b0RAXM5UjjCAMWeg1lV/NxmqX4SSqS6TOZJnhVTtps
 aBxZY57njSC06peMlK8cO24ROLSbspHwy4OMMx2ogZIgS5YEKWUSUpoc/lhDEs5fUsfy
 oF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=op+KI7TlBsB6S6sFewOJ0t706uisxtkweddZPva/XUs=;
 b=LcJuvz/kKjYYWrGUQmG8bSlgu5n+FRfdUR3uHH6XgxitAMAaCgENYysfJ4Qy736Zoo
 2ouRshedxYQg96auQ5Y76Md2mL/QzSY2SpotrZ4yuQzCKUe/bpPih6HLPWvMTAn7wD1y
 tk4EU/cbewzLKvNtk917p6SL4LubQY0PKWA7kW0FZqi4R8L6E3sGcpGBcq6a1yXLXQqH
 Fk13pq4/QQn8mrXUvTReYdoc0yFB0MoNof4TUUvmJ6IjR6agZ+pARLNjiYndaDCKkrG5
 yXa5VeAYyUpDMcFUExtFSZRgkH5u/Wd2eFG4iTN77V91sSI2pBt5tTnr/EjwQ4Vsbf32
 21Fw==
X-Gm-Message-State: APjAAAW/+dxoyU8wH37vso45quuSwS/12apTtuJ7zBj91iPa3BmBXIQN
 Xpc5F/6Oci+LOqT69p6RmrU=
X-Google-Smtp-Source: APXvYqyCOpJkfY8Cd0SdDE6aYRxO1Pg9WhbY61Aef8FokG+LaTjhPfxqLF8Bp0gzFOPMpKEYS54c7Q==
X-Received: by 2002:a62:7789:: with SMTP id s131mr23022125pfc.50.1566864493131; 
 Mon, 26 Aug 2019 17:08:13 -0700 (PDT)
Received: from server.roeck-us.net
 (108-223-40-66.lightspeed.sntcca.sbcglobal.net. [108.223.40.66])
 by smtp.gmail.com with ESMTPSA id b126sm17923109pfb.110.2019.08.26.17.08.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 17:08:12 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] dt-bindings/watchdog: Add access_cs0 option for
 alt-boot
To: Andrew Jeffery <andrew@aj.id.au>, Ivan Mikhaylov <i.mikhaylov@yadro.com>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-5-i.mikhaylov@yadro.com>
 <f33aa4b8-6d06-4226-8859-ce21a4b8728b@www.fastmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d040fee1-d12d-9ac9-a72a-e76137a4579f@roeck-us.net>
Date: Mon, 26 Aug 2019 17:08:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f33aa4b8-6d06-4226-8859-ce21a4b8728b@www.fastmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_170816_439468_67409BFA 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/26/19 4:57 PM, Andrew Jeffery wrote:
> 
> 
> On Mon, 26 Aug 2019, at 20:17, Ivan Mikhaylov wrote:
>> The option for the ast2400/2500 to get access to CS0 at runtime.
>>
>> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
>> ---
>>   Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
>> b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
>> index c5077a1f5cb3..023a9b578df6 100644
>> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
>> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
>> @@ -34,6 +34,13 @@ Optional properties:
>>                   engine is responsible for this.
>>   
>>    - aspeed,alt-boot:    If property is present then boot from alternate
>> block.
>> +                       At alternate side 'access_cs0' sysfs file
>> provides:
> 
> Why are we talking about sysfs in the devicetree binding? This patch
> doesn't seem right to me.
> 

Correct; this is the wrong document. The attribute also will need
to be better explained. "At alternate side" does not explain (at
least not at all clearly enough) that the attribute only exists
if the system has booted from the alternate flash / block.

> Also if we're not supporting the aspeed,alt-boot property we should
> probably document it as deprecated rather than making it disappear,
> unless you're going to fix the systems that are using it.
> 
Sorry, you lost me here. Where is it made to disappear ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
