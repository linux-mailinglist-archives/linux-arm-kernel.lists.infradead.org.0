Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A83336675
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAgsHSdci+cSGYpHn8zvLe3F27c0MNOFPO1ikzDiIlM=; b=IM+XLMltDJ9uat
	ghZnV/VRhYOxoy0Mom69BDiBoG8ES51KzGRj+e8a2dKfISw5HZiCnxFxS7MKkTlCrGyZX+g5zvZtq
	0Ls4CKph99gJJ6pJfaAdSpcYvQrBKg/svzgLmEHuK70xa6ZjsYiDQuQD3U3m7k4I1G8YXdSkOODMk
	GWVBzaITL0/xB1+Fb7u+/thKVfYq5Ln8lbEeqnl6/l0Rcmoi7c8aitjLsbDdDeK2ieZJhaXGwc3AI
	wX36QdO29AK7qEIVOG2lv6CxuQA6LCDpSypW3wVGBSKPU2hDysYWyPMbAiTHui5lFNJsX4rNxjvIA
	mthwAi0b051spr/ZGTlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdCk-0005BQ-QM; Wed, 05 Jun 2019 21:12:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdCd-0005Ah-CT
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:12:12 +0000
Received: by mail-ot1-x344.google.com with SMTP id j19so2124072otq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9BxEXBkPu7Rt1lvEKYAUloqr4lYKDxvLyZYK0ms3zwQ=;
 b=FGZbVrfVzM2ACfI6TuBoVTPUwOaAFi/95lcDRJQ1vijIPK09eVzGXDLtyV2sUr4Slx
 +uGs/SlMY2qjhe5U4d1pJ8WkkI2Dcfoe+l6jpW4Xkit7qRmIvYa4zuOyhUpeMuDWbXy3
 iR7KQ+P9u5pCXi0ZGDe2mbBxrmZ4WeZFpVFtk2AjC5bBLM0DId7pR+272ZVxQb3Mn37L
 Q1TlUFkAVFHtaqhuhYhIiZTew5CqYl8LIuxqBAQYH22rNzt+aRFmId4rFfSVjIACN6nr
 OmPsMTLt3AQ39LQ1V01ZqlMrlyMWAwGhiWy2nBnveJGQT6daL1jfOFBCbq4HD2bZfRjS
 prkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9BxEXBkPu7Rt1lvEKYAUloqr4lYKDxvLyZYK0ms3zwQ=;
 b=tZy/9Uin+28oeOOrLR6pEB2fnUF9RSWCiLorQUPRoD7L5j7sywWmIxxBo0NG0o5PcD
 Aaif5N++DI4/PNUA04CKm5tEVAVL2OvNAjUCVlxblH/0x81KmwmOUmqjrvEoHFDe5Jw8
 RlImWabCjwR/CfPgsvzv31OpwknFUSVk6rGWJbqmXL9oohgQA28Wcq4dPrOaX2pIBkkX
 3tolx5lmtDRWJIGkChPdEhHCRyl3XtkU6Sh4io1df6Ej6F3+0VF3aMEcfLvUgeqgE+eo
 IEJGGQ+QDJgFEJeb69+O0/ThuEhIt6szjSwXRwIl5I5ck2V+G3y+SOJ7yRO9D9HXHVI1
 8aqg==
X-Gm-Message-State: APjAAAWdF536B2WVUQ5dcISOlddLffrH2sRcrZZwFfB70lzaltg2WVfY
 s+nbBAXPBM3eaJ5O+wH5jr2fyJfQ5i16Kg==
X-Google-Smtp-Source: APXvYqzQdsj721JqhuiCq5X6sa2mQuCx15ImEGgsjnGkTNaWMTLwSotGlR02x6A3uKbkjf+c4EBmhQ==
X-Received: by 2002:a9d:6447:: with SMTP id m7mr11103028otl.159.1559769129424; 
 Wed, 05 Jun 2019 14:12:09 -0700 (PDT)
Received: from [192.168.3.43] (200-56-192-86-cable.cybercable.net.mx.
 [200.56.192.86])
 by smtp.gmail.com with ESMTPSA id e184sm8359944oia.28.2019.06.05.14.12.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:12:08 -0700 (PDT)
Subject: Re: [PATCH 0/8] arm64: ARMv8.5-A: Branch Target Identification support
To: Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <935adf9b-0609-8dc6-5439-719422f4cd40@linaro.org>
Date: Wed, 5 Jun 2019 16:12:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_141211_425686_67C1BCE3 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 =?UTF-8?Q?Kristina_Mart=c5=a1enko?= <kristina.martsenko@arm.com>,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/24/19 5:25 AM, Dave Martin wrote:
> Various things need nailing down before this can be upstreamable:
> 
>  * Not tested with hugepages yet.  (If anyone has any suggestions about
>    how best to do that, please shout!)

The qemu code_gen_buffer is generally between 32MB and 2GB, contiguous.  It
usually gets AnonHugePage'd.  I assume there's no difference in where the
hugepages come from on your side?

It won't be too difficult to modify qemu to make it's own code generation
BTI-safe, and is on the schedule to do eventually anyway.


r~



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
