Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C87A1CB8E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 22:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzdZ6L5lrJP7lXxq4Lp8mlC0Shg4qD47g+HPa1gHkhQ=; b=cHFDR4O9BdYqC1
	Q4THaGho8fCdLj6H3f3EGs4TKCFRGQf6OpQ0fJB2TT+d28E95muRo/YrQM4FjCqyLKSFmJlmXn3z7
	6l62OSWbsWCvEzBYQErorbD9l1du/BQKrrPRyThQOl46UXO1h/FGf21HCUvjUMpgq9524iN8y+/tR
	SeiJEY95yJuHXWCOWZBbk50168p1JCHxHY+i8/PchI2P5VcH5YSj0ZuxJsy0JoHWhyqflMLRjt0Dn
	3oUoyZzaf8WC6buDkP85qNoqApWR2gbsXDqGqM1GKMJQLoB7IB/rCbrpkZhokF1AuLeVc6qrInJiC
	nzsOT7dMcjjx15khi2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX9Tp-0002W0-4h; Fri, 08 May 2020 20:20:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX9Th-0002Kb-Rm
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 20:20:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so11503369wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 13:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iEUjvelwXy8CWK5HabUo2qnW5586fdmwk4hsFNhgWgk=;
 b=DGuFm4EolHYHVQPXYJyEZCd/SDMorbrBWxJhVQNvIxFh59gtLDHFLbMmChtFw1HLga
 1BtOr7TldiKL0Y8Y3dxKg2U1uNeMsb2VxplirrxX48zcIV71v954ftpQej6oS3OIG7oL
 SvI0Q9HEMnrFO13Bh3cSFIVFrass6xLWL2Pf9YOeV0zHYMLoNMwbfbPbSRjPMzg+Fucr
 pbbh1TOHisOlML7S7kzMyjAK8yPYHxlCehOBSen+HFslf6HSDKqo5/4VJmPzr6AEikqu
 b61Nr5u/QGtCDayWTub1ta5Tb5/c7xYpOKQL9gcYgvenXnAmEQo+MX7OfPkf30dxcpi9
 rh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iEUjvelwXy8CWK5HabUo2qnW5586fdmwk4hsFNhgWgk=;
 b=DgzkcdLOUBneL01SXG3n97NJt9bkMW5kakNSbGoy3WFKvxBr9Mv4nvo4BMAIsWIOVM
 mi/VU1E0HI63Z2oiAGp6pRXdId1AsmXD758vgpCBLMlkRpJBWWG0GRkJ9hsgOg9XoOYg
 jPRHDSBwWo3kamRmdMzGzZ8Vevl32PURYytJgGU4JqV1m0E6JWNo7mEFsrNDiUR6yY7a
 dte409A/NUOo1LhNMO0TFInE+rrK18ui+EY2rqQYMW2/AaVq+8dHf6AlZasnRQnF9kqX
 wc4hBDVoP+bwyTtP+tsU5y/Rk4xC2Xiqmwryubs3qqIueez+JuTu+ksxnbQonQC/Vr/1
 //MQ==
X-Gm-Message-State: AGi0PuaDvckzCbNfO1mJeuFFZvRiAg4xb57xTQtJ9XTRKVCPMrZJhlA7
 hjgFPfd6tPOJb+Ggp51y+dY=
X-Google-Smtp-Source: APiQypLoQyVP6hrRyLepx+LpOeJvL8bCPmpMX1VcFrAj7rP41elns1bWPmWucpq8UwoOyGloW9ewWA==
X-Received: by 2002:a1c:6a17:: with SMTP id f23mr16962529wmc.136.1588969209492; 
 Fri, 08 May 2020 13:20:09 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j2sm4648887wrp.47.2020.05.08.13.20.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 13:20:08 -0700 (PDT)
Subject: Re: [PATCH] arm: use SPARSMEM_STATIC when SPARSEMEM is enabled (Was:
 [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting)
To: Mike Rapoport <rppt@linux.ibm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <20200507200859.GF683243@linux.ibm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <235b21a0-f0c9-24d9-a78e-a54010aa87ef@gmail.com>
Date: Fri, 8 May 2020 13:20:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200507200859.GF683243@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_132013_922932_6D941970 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 1:08 PM, Mike Rapoport wrote:
> On Thu, May 07, 2020 at 11:30:39AM +0100, Russell King - ARM Linux admin wrote:
>> On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
>>> From: Kevin Cernekee <cernekee@gmail.com>
>>>
>>> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
>>> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
>>> choice.  This is true for all of the existing ARM users of
>>> ARCH_SPARSEMEM_ENABLE.
>>>
>>> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
>>> us from ever defaulting to FLATMEM, so we should remove this setting.
>>
>> No explanation why that is desirable.
>>
>>> -config ARCH_SPARSEMEM_DEFAULT
>>> -	def_bool ARCH_SPARSEMEM_ENABLE
>>> -
>>
>> What this basically says is ARCH_SPARSEMEM_ENABLE=ARCH_SPARSEMEM_DEFAULT,
>> which is exactly what we want for the non-multiplatform boards that
>> select ARCH_SPARSEMEM_ENABLE - we _want_ them to default to sparsemem
>> because that is what the platform requires.
>>
>> For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
>> four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
>> 0x1c000000.  These correspond with the two memory slots - the first two
>> for the first slot, and the second two for the second slot.  Each slot
>> has two banks.  The size of each memory bank depends on the size of the
>> module.
> 
> Out of curiosity I've run 
> 
> 	make ARCH=arm rpc_defconfig
> 	grep SPARSEMEM .config
> 
> and I was surprised to find out that it has
> 
> 	CONFIG_SPARSEMEM_EXTREME=y
> 
> Which would waste several kilibytes of memory for nothing.
> Here is the fix:
> 
> From 7097c114226b5b1b2fc6bb605bf0d7eae601cc7f Mon Sep 17 00:00:00 2001
> From: Mike Rapoport <rppt@linux.ibm.com>
> Date: Thu, 7 May 2020 22:39:12 +0300
> Subject: [PATCH] arm: use SPARSMEM_STATIC when SPARSEMEM is enabled
> 
> The commit 3e347261a80b5 ("[PATCH] sparsemem extreme implementation")
> made SPARSMEM_EXTREME the default option for configurations that enable
> SPARSEMEM.
> 
> For ARM systems with handful of memory banks SPARSEMEM_EXTREME is an
> overkill.
> 
> Ensure that SPARSMEM_STATIC is enabled in the configurations that use
> SPARSEMEM.
> 
> Fixes: 3e347261a80b5 ("[PATCH] sparsemem extreme implementation")
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
