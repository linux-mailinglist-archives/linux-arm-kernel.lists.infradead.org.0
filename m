Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D171C6EB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OOSHC33Qd6Sgd2rO3ikcZZDRJ1YXu4Tt+VbqtQv7IQ=; b=goB1PFMWTPjROo
	96oBbBY3hDU6wyCIVSKTGSajESqxAHlnPmduAfjmdPhZW7FYGGqycJb8434Jv5VqyIBz/Tbi7q65c
	DPhTnrtGuLfYcIYTInWSDFiQ5rOuoMyuwPgHPtRbFQtVAMRKvepP6UIGIFt27Ca58eY3EUrxlJIGC
	D4/ZIKkXnUPBpkSUiHA9lLX9yMcUbHWbZD/5vn4YMiAIikOG1mU9v3rifUroJxqX2MFkoSIIXWrCY
	E50crTjX5ytBIe7U3CJnAXoEN6byMwmUzSZeQ6bD92KLo5ZrnviiuOKyZzPH+bXK9VJZ3aByrdEMe
	hbIEPeo3L5/rH43AZChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHb0-0007QU-PT; Wed, 06 May 2020 10:48:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHaN-00072y-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:47:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id z6so2089273wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bn8l4iq/kDr47VaFmt9THZoqkqCKyikbuRACxwF89WQ=;
 b=mpOFMn6VC2cMdi9cPFm/FAIPKXhSdPu+yxT2lAogq4IgkqNFxP7oo1Fqf4evOMHQ09
 7hvq+0BEglsI/B7XVotFtK3QbkUgmx5jujPHHaIPBNbIBAqdU72H9dB0SdWHuE5Fc4tx
 Vy269LWHj3B6z7pTxvAwlXyxP2FnCAvZgLqlc1p2uHD1ygCTT10llD1MwR46lMVTYfbc
 /iYujlDyCxrC7cCKiyb8+fimyYzHx5TKO1j+BnPr9jRpwZiGfCRK7ENdhCJ0f/g8Lasi
 cX2a5jnYh2DKCLnhXehduHSyZeH2c/Gr6IFv7YJ+1vfYPs9E+9S9ZFM19K4ejVlwfHLn
 SoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bn8l4iq/kDr47VaFmt9THZoqkqCKyikbuRACxwF89WQ=;
 b=UGGxJq2twRz0mfpIJKri6IzEBwQMS6TXP148s9ZxTUAPni45/fLffT5PkBAoNRC7Uw
 7J4D5+lMcxBD+xbMxTA8RB22UPhuHcvhTTxVgAAkgx6G/Z5/Tdh3cFxRPXKO5CZLporF
 tzuS8uLLrQDfJPVuvvjaOiczcUv7x54FaAvhOQhBJO3QsWa3EpuTa4NiJoV1PNdWxDsa
 6GlhWzwWIjSfaWC5xup75QNcQbBUes1vic7H1tKiOIAh4/8iszY7x/VTQ/TYwPyJ9XFS
 ZB4Ai48L0hxVmZNm8CsFmCbW7FgUTEo6uBeUGaHRGZM2n+FL8sCKoKULwodyXTrJ9BMf
 zSMQ==
X-Gm-Message-State: AGi0PuYIps8sxHBUZ0mLHif6Q1k7qk+/skfPJ08Jo0H4opWImmaQi1je
 DpHyMNGjuZy1JDS6DVTYqHgP8kd6
X-Google-Smtp-Source: APiQypLZvHp+DR8EzRb1U52DBzJ2NfFj0rnzFRgPKAsQFOQSfPze7TC2mHn4V2apS7ApMySs9jiuYg==
X-Received: by 2002:a05:600c:2c47:: with SMTP id
 r7mr3632755wmg.50.1588762050560; 
 Wed, 06 May 2020 03:47:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id h188sm2667936wme.8.2020.05.06.03.47.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:47:30 -0700 (PDT)
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
To: Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck> <20200505110519.GM30377@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <542d1191-5e89-2228-330f-ad2b65d5b897@gmail.com>
Date: Wed, 6 May 2020 12:47:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505110519.GM30377@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034731_875772_1D5B095B 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> If people start shouting about a page getting too big or messy I can try
> to split it up.
> 
> Make sense?

Yes.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
