Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE98598E95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrC05t+wWcbsqv8dxx9tqmfX1QibCiQEDuc1aNsqSjc=; b=I9DeWjSMa7Hhno
	MSMKI3cSAkcfjtXOSuSf/1CacdIjbt8xK4WfWemg0SsCjbZtcrH3+rC7KwerI1ef6UY6DNkUdn+x0
	WK05FDZ1OZtR/1/t8DH3HS1foAxDeOeuGYGmZm4+2HMORatMpCChPpn2cTgcTBCR9VDfIRqQ9oeYM
	jyqM0XTGTQjBf9qPXaZGtC6wgURxBqau96txEqMTGA51Xu+azG/aEHY0TD04THrr+Mr3uaFHweypH
	7bQtMGiWdVLqyHaOruXUUaBVyHnXqdfrxW2YuYtebbVosLbXSzqkfiRjtkg8rWgwf3rUj0N1CD5Z1
	9pU82UTd9QN2+G73Eshg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ixR-0007rN-4z; Thu, 22 Aug 2019 09:00:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iwc-0006L0-Uy
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:59:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id k2so4645823wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 01:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=kSpdxq5R2ZXVE8nu/XqaBKCSesahRY6PDFEkyTg3anE=;
 b=mjY6H66cPe06RdfYEXFMBSc4YWclkv3FHF1xhq+GB7/uY34v/d2COdOk3tnovDAIMP
 gmQRSbXzL9wpmrHpMx+Dt5BSkE501yYYccnGwwY6npXZIxFldZ30+iqdQo6mD9u1ghoV
 lWYZ2OSYzF8haHJJDJxNqfssGbfzuHCXoPwz9/GFRiZLQud+momrAG0f6ZRlIrNKtYwO
 fyVQHwVXYvbrKcLpJWG9DS45/DMVxO/ZoPiXZ2YK4dlw4m4gMFLlZjiQrkBmrWgN2nEY
 /bIp0jnGJ2mFphi1gkqydigbK60fgpkVCBsf4q3FTdzq+yWU5TcE8Z/pp7jcpMItTobP
 b/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=kSpdxq5R2ZXVE8nu/XqaBKCSesahRY6PDFEkyTg3anE=;
 b=so4tmLtQPTeqenfQDsag5zfEv0qYB3cMZynl4M8pSPU/C+XFfCqOP7QJlSI5RYMkHq
 TX5uAweUYFTkVZhcK0O0+cXORDl+c6VFgnLLaWes1aQsdvzeM206/zgPeFp8IrAQvgwZ
 qjsZd4nehrxmYYqjQMkyslG0+hdGethBFqK3Sccn1SA5ka8b1fLdhokSpgHV6iqZ8kGo
 u1QVXPZbDWYgHX1x9dtqk0CXLDv+5UAvqo3U3ocvlV8nkx0v/NroeH6uNWWKd3NDu7Zx
 cfDXVWG9nSWHfnWC0Js/Ppbh1AmCG1oP9A+K6NeZBX5P5E2OripjfXUaOnkYuKzCw1bM
 1Ekw==
X-Gm-Message-State: APjAAAXBGLs+tk2k/bqjHrX2SlFyXwMquAIQj8xjps17SquEXPxcdqc0
 Mnbc5bHKDcokR4p9lYt9yr9VVA==
X-Google-Smtp-Source: APXvYqwuKNVJFhJQRdzYNki7o1D+RUvGpp/z37PeOA04+PvNyoaR6ILYxxLPwX8JoH/GpSY3l+eqOw==
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr47080873wrt.336.1566464385170; 
 Thu, 22 Aug 2019 01:59:45 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i93sm34408190wri.57.2019.08.22.01.59.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 01:59:44 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Rob Herring <robh@kernel.org>, Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
In-Reply-To: <20190821181458.GA2886@bogus>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com> <20190821181458.GA2886@bogus>
Date: Thu, 22 Aug 2019 10:59:43 +0200
Message-ID: <1jftltpocg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015947_026556_D5F605A7 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 srinivas.kandagatla@linaro.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 21 Aug 2019 at 13:14, Rob Herring <robh@kernel.org> wrote:

> On Wed, Jul 31, 2019 at 09:23:37AM +0100, Carlo Caione wrote:
>> Add a new property to link the nvmem driver to the secure-monitor. The
>> nvmem driver needs to access the secure-monitor to be able to access the
>> fuses.
>> 
>> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>>  1 file changed, 6 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> index 2e0723ab3384..f7b3ed74db54 100644
>> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
>> @@ -4,6 +4,7 @@ Required properties:
>>  - compatible: should be "amlogic,meson-gxbb-efuse"
>>  - clocks: phandle to the efuse peripheral clock provided by the
>>  	  clock controller.
>> +- secure-monitor: phandle to the secure-monitor node
>>  
>>  = Data cells =
>>  Are child nodes of eFuse, bindings of which as described in
>> @@ -16,6 +17,7 @@ Example:
>>  		clocks = <&clkc CLKID_EFUSE>;
>>  		#address-cells = <1>;
>>  		#size-cells = <1>;
>> +		secure-monitor = <&sm>;
>>  
>>  		sn: sn@14 {
>>  			reg = <0x14 0x10>;
>> @@ -30,6 +32,10 @@ Example:
>>  		};
>>  	};
>>  
>> +	sm: secure-monitor {
>> +		compatible = "amlogic,meson-gxbb-sm";
>> +	};
>
> I guess I acked this a while back, but I'm not sure I would today. It 
> seems incomplete and a node with only a compatible string and no 
> resources doesn't need to be in DT. But that's already done...

It does have ressources (the shared memory) but the mistake (we should maybe think about
fixing) is not expressing these in DT

I think the shared memory is already in our DT, maybe the secure monitor
should get a phandle to it ?

>
> There's no need for 'secure-monitor' anyways. Just do 
> 'of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm")' or search 
> for the driver directly. It's not like there's more than one secure 
> monitor...

IMO the two methods show different constraints:
- Carlo's proposition show that the efuse driver need a ressource, which
is *a* secure monitor, whatever the variant is.

- Your proposition shows that the efuse driver depends on a particular
  secure monitor variant, which is the one provided by
  "amlogic,meson-gxbb-sm"

Yes, we could make your proposition work by the keeping the
"amlogic,meson-gxbb-sm" last in the compatible list but it isn't great
if a newer variant is actually not compatible with it.

Carlo represent the HW the way it is. It seems more flexible to me,
without adding (unbearable) complexity

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
