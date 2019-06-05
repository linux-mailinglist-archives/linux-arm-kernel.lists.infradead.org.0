Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A767363B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bygn6UDjCXuAimAtCKoeLf1gFeI0eqQ42b0qLBLMvfk=; b=lwhN4Yv+Psc/pk
	l/QHlquDW/NNB8E1Hvy7tQNQeS7PVUgew72SnOkg3aUrPKfbCIbinaJOy+0D3hL7/x1LkWAsk7s8/
	u41HtOq2GLJR/HzZD018MK6OXZa80yb93G2ht3eLk7chRVzLF1h2cx6jiZ+d3t0M+Y5gNylaexdoo
	GSMuk/tDQJS0qXlVwo3qon16W3ox9iWQ83eYuvfQDy78/pvvWsZs3LBt7J5PPhD5EhndjGKGv15E1
	Lcxqrq76fRQ2Qz9xAoIF8M7KhU96LJzuC0MbB/3884eMiAm7lAMDSI+Bq4kcZay1j2kRQB27B2JfM
	RP5Ke0YwnXpi4ciWc4rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbBq-0002sW-No; Wed, 05 Jun 2019 19:03:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbBi-0002s8-Ga
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:03:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id a186so14675395pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SXOn339QPmnFrGKWWFZXz/QlddF3pl58mYFHbR/CBgc=;
 b=jf7Od+/UXXhC1xFQqhG+5xyQhu+agXbXvyPf951K74Hcmkg7t7/1pcTYzVTWpunyVV
 a/i6FeUe+WdekyF8dAIxsGGqZh5qW7ZnWl+5rOKFKBjE86Hr0cTTwODmNmXiocJQYBPw
 chGVov2IGjWyPs0sgk/iSeCTYonJYKs46S16EhUUWUBaFACYuayAjYU/XqkX1TLbcMrf
 k7cnEgPwsaXGfTWNRph0DDzjAU60tFX/mXUt9rHa2VlYK2qKeCCeYex6vqrR+eJXGyk0
 68bOPGK4S34hUKox5YNshBHnl1xlWuaADNoLmFz85xKX7xo3CTJljowM+uWraMz5M+1+
 3igw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SXOn339QPmnFrGKWWFZXz/QlddF3pl58mYFHbR/CBgc=;
 b=PaGPUbfjkAoVa8q20jHE3R+mY98ixgxtfe5t7eOQWiadmh1mTCJcSbepDa0cPvcv+G
 FA8DqsN7bX9/NdP8/Ppc1ojt6k1PCwn6DZ42K8n798+1TJ8nStZBhImnzChbucxvjBlc
 Y5F2LxmofhZXmcNlF07A+eFTM2bpJP/Q2ZmkljFnStnsCDk7wLdzM+q8JBjvNEhPM1kV
 /lXOx6ynFKzFOLxi3JVaBPzx+P9I2E8yCzBHjluPSPUeX3shWhP1QAll7roK3DslozRw
 biJHbZDhrqQx/rR5eAXYUu4bVBapSe1H6UZtoGS3mzwGc77s1bku/l3O7USmY0KlywZw
 U5ag==
X-Gm-Message-State: APjAAAWrrmF9+Q6UUKUrCh3m9/drtzMOXgQAEp43ktWh4X3nW12/DDbF
 GfJus0dEztBRKzCU5xUyIvI=
X-Google-Smtp-Source: APXvYqxaMVvUzDdq1s1olNrxGr4N4T4Vxaq2ZXxyB4jdhjEG/dDOqashDmWvWxLX25qOht389KoT1A==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr24411180pja.106.1559761384526; 
 Wed, 05 Jun 2019 12:03:04 -0700 (PDT)
Received: from [10.69.78.41] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e66sm24816514pfe.50.2019.06.05.12.02.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 12:03:03 -0700 (PDT)
Subject: Re: [GIT PULL 1/3] Broadcom devicetree fixes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>, arm@kernel.org,
 Kevin Hilman <khilman@kernel.org>, arnd@arndb.de, olof@lixom.net
References: <20190520182648.1063-1-f.fainelli@gmail.com>
 <f03eaba2-f661-f675-ec3f-0a89ac92bb11@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <8f8d24f5-57b9-9cf5-3b0c-16c4fbc48921@gmail.com>
Date: Wed, 5 Jun 2019 12:02:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f03eaba2-f661-f675-ec3f-0a89ac92bb11@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_120306_562651_8B3C769D 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/28/2019 3:34 PM, Florian Fainelli wrote:
> On 5/20/19 11:26 AM, Florian Fainelli wrote:
>> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>>
>>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>>
>> are available in the Git repository at:
>>
>>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/devicetree-fixes
>>
>> for you to fetch changes up to e8bd76dccd792b371a934336c3e7d8c389755d9f:
>>
>>   ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)
>>
>> ----------------------------------------------------------------
>> This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
>> 5.2-rc1, please pull the following:
>>
>> - Florian fixes the remaining Broadcom DTS files to have a valid
>> device_type = "memory" property which was missed during the removal of
>> skeleton.dtsi
>>
>> ----------------------------------------------------------------
>> Florian Fainelli (1):
>>       ARM: dts: bcm: Add missing device_type = "memory" property
> 
> Arnd, Olof, Kevinm can this be picked up? I have changes for 5.3 that
> depend on those. Thank you!

Ping?

> 
>>
>>  arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts       | 1 +
>>  arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts       | 1 +
>>  arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts | 1 +
>>  arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts   | 1 +
>>  arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts   | 1 +
>>  arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts      | 1 +
>>  arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      | 1 +
>>  arch/arm/boot/dts/bcm4708-netgear-r6250.dts       | 1 +
>>  arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts    | 1 +
>>  arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts     | 1 +
>>  arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       | 1 +
>>  arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts | 1 +
>>  arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      | 1 +
>>  arch/arm/boot/dts/bcm4709-netgear-r7000.dts       | 1 +
>>  arch/arm/boot/dts/bcm4709-netgear-r8000.dts       | 1 +
>>  arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts | 1 +
>>  arch/arm/boot/dts/bcm47094-phicomm-k3.dts         | 1 +
>>  arch/arm/boot/dts/bcm94708.dts                    | 1 +
>>  arch/arm/boot/dts/bcm94709.dts                    | 1 +
>>  arch/arm/boot/dts/bcm963138dvt.dts                | 1 +
>>  20 files changed, 20 insertions(+)
>>
> 
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
