Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA2172E5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 02:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5hEuG6Ywa2zFc4hb2VcJBRTLh/FbDj37BuD0hvbOe4=; b=aMnbMBcAtMUfwv
	ogW8hvA5WAB1NWKRzAp9awJ6htL/ktjiWZzi+j5UbC4LZvmIIrdSh269gq2wt3gjVN2smwUvJtvPw
	OkkIAJA52m2hzSyjbzfgr04W+yJjJjMgWNyTgyRcNVzySR/BCJZzrZnfo+MZYjDdmEXpI1FCuMd7x
	waVRikI83eBqt9ibs/aCt4I5XhFNoodYjAl0RZnIuhyxqChbGuSTAueVlDSJ/kOncjn8Qtv5VgV8Y
	F7s1GN2XDyZBIBs8JT/z1TQDUFh4iDTy0IukfPiAFb0b2sbmki1DmadSZBPM9KI63kr4xS3RdJhSq
	ZuIea3JG3AZJ+4LwfwlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7UZG-0002pE-Ur; Fri, 28 Feb 2020 01:35:54 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7UZ7-0002oq-2L
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 01:35:46 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m13so572868pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 17:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bMqEeWlLS8pQIJAtkSYGwz6EETfHigbDwAopBr6aqSw=;
 b=lgtrW87iuETCM6MZfqHeUbE2DW3RSQUkTb5c9Os5peB3NMgUMmvzYpHhxFIrY0jQXl
 gTrEBhDd72sK9/GoImcg66uzU3uAqej/TrzMSPyuRvYKJXLyOBQspS9TcAOMJg6azajt
 4e4q0xU1JkQ3g2MaJrsC9L1l9n0PDkxKG0gN++8ID1WkaCe0ROEz0wYUUsuEolByzx4i
 fG8Lbqc6k6bo4o2QTP0TttQdc2i28Mmr0Awltak6siB2kyTSpUJ6DCCiYQ+P2cNJRppz
 ooeJ4vQNEK7hfzeQav9OBK3kBGi0VJ3wFrtbS7/vKcxY6xS/94NshlnQDnSNmwv45TSF
 5zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bMqEeWlLS8pQIJAtkSYGwz6EETfHigbDwAopBr6aqSw=;
 b=GwAl3hhA7X1pK0b78wvEkAFHnjyj80Hiy6x5iLNsBqpsVkhM2BTzKNiou+g2t5FuUf
 NtEuAONDNA6TlBXbdAjCiKRvUZui+fEtN+fT6hZVoDGZgxQVeaFNS1J0wgMB1c1xJW4K
 n5XVRsbpmWbiw7XiZiXePjb4/fjG+Z+LRo/0JnjNYzJcDg3HCyNySad+Ou2v7KRnQ3Jf
 naGWiPcTvzHPWdxbjEMOmq0AT91OZZc8vi9I2nlWqRseuTph6epcTQ7HRH2j9WuHMZOg
 IQGwciHSJ/oR8uItcz+7Njc+gaLw0GP43uPukHFtC0wC+A+Nu7f5huI/jHx+zRD/MywZ
 f+Ug==
X-Gm-Message-State: APjAAAWAWMv+sDjBdJfVQjG5D9/gard0Xis7YGOrB4W7UfnfB7KzgpAP
 iQBuHNEmDiu6QxpfQWtQZdSt2g==
X-Google-Smtp-Source: APXvYqzFAG8op1dk3VkVp/cpqFeD1tiz06LRZypn5EbxphJV/FMkk89RccTVZt4zprSwmIDBPcQEAA==
X-Received: by 2002:a17:902:426:: with SMTP id
 35mr1619596ple.176.1582853742556; 
 Thu, 27 Feb 2020 17:35:42 -0800 (PST)
Received: from [192.168.1.11] (97-126-123-70.tukw.qwest.net. [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id
 c1sm8546037pfa.51.2020.02.27.17.35.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 17:35:41 -0800 (PST)
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200227174417.23722-1-broonie@kernel.org>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <562edd23-9d86-800e-aae3-e54c92601929@linaro.org>
Date: Thu, 27 Feb 2020 17:35:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227174417.23722-1-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_173545_143295_BE2E3FC6 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 =?UTF-8?Q?Kristina_Mart=c5=a1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/27/20 9:44 AM, Mark Brown wrote:
>  * Binutils trunk supports the new ELF note, but this wasn't in a release
>    the last time I posted this series.  (The situation _might_ have changed
>    in the meantime...)

I believe this support is in binutils 2.32.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
