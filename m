Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA120DC6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJRTmNop719iinik+eGnvik6pU2lbrwVL2pvoUK8AL0=; b=FywozUz1wCrxeA
	5HwpRQK+OAUcgcbNiB/vUMwMgm0CpcPLDIrU0a9S4N7D3EhfZUdgCu57zLIMno63s+qha/EAfd1eu
	NCiafuDaLv7O9FpKO1ou/6rr0ZVHHhsX9EM3VZ/XyyprHFnb4W1tENvZ4LG18PA4kf6zcVRGPIdGy
	JT2NJ0B4HfPQTzCt0Lcldr0I5mRxJ8UusU5PFFejdeTFlBTxPF55YAbEPH9XvcU7DaT+girJK1zzE
	8Rk8aiNHWd0BY5dBvR3Dg5iYlfg6KrRP5hDq0w3rKS5ynyg9nf/vTobEnCi0wV64A/TRJBB6FonPN
	TbNVOTa8uZEUghr8/EBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0G6-0007kF-2S; Mon, 29 Apr 2019 06:59:26 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cy-0005o8-A9
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id v1so7087197lfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/RDzQlkBTEqOpH90yxgTGof1Un7bQfe8w9/CRuMdT+I=;
 b=exBRdwcbSzKYCFcHweKcVA/huFqeLe9UQWVdGvrgfxmislKrzVDXm1d+E0/Ikxegui
 VJSgXBu3v/pdjfaCpmuXH8hvxrjnAVegGO+aGmU9IWrvkAlTq40zQJAB9ch1DsTe8Ars
 5M34M9OeclpXuWdskb7t9PhGibeLr/+etjd7sn2W6Ig81ZrzV+vcmVrrCzZjfbFvtZUt
 GUvcI/Me3cAO/sO/coXiqKg+N67XNXdL3sDVkAWDB/BnBGpyodkRmEO6VCoAYAUPzAUJ
 Tnr0NwDYdGZOamopxLHNowycRPBgBm5jouBX0ZNQ1v+XX0WdLyaHcLs/AELQ86pJyWXn
 AWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/RDzQlkBTEqOpH90yxgTGof1Un7bQfe8w9/CRuMdT+I=;
 b=ricDXzPJui19w8Xpy/z8IJuDdqVlzDxDs0c5dmFLmMEcsOCocuNLgLnQxDsU4+qhOs
 VmksHjZWnTjoTiLN/OYqig/o5XTNSrw8pxMUn7s3IfN2mPuByzu/YnyHK4Lbnovrz112
 KmyBdB5Syy+Wr9GQUCF38ODYdQni2b2NPzGxdeFlWL7mDhIpDHa96qjaGGl4f0PztB3l
 sOofgf75OM0u6ZvVdrWI8VHUSJvcWE+MLeja5O8w+ET///409/a2t7NlfyR28FFAqJvg
 Nll3mxC2TqARzy4P1scYZTmZfBxLuhYxi2H3PQNflzmwsKucZiKsnKmizArVtlZ5SYim
 7Yyg==
X-Gm-Message-State: APjAAAWs9Dl0JS3xJbvTiX1JI+oLOwygIAsDdXDQdEu86G7CQpkDf1yA
 IemaC1p3GLcrzQ2GOTu+L79YuA==
X-Google-Smtp-Source: APXvYqwlpThgXrnAVkvf1o+jKXzUAuh3CfFPGnuljcqlvZ7oWL6vWIlJ95cNEi6F7SvXamvlqkJKjA==
X-Received: by 2002:ac2:5c09:: with SMTP id r9mr9199030lfp.104.1556520970730; 
 Sun, 28 Apr 2019 23:56:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v26sm6700529lja.60.2019.04.28.23.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:09 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:37:12 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 9/9] arm64: tegra: Default configuration updates for
 v5.2-rc1
Message-ID: <20190429063712.dqk443wbv5jkzmqy@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-9-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-9-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235612_840441_6F92C33E 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:20PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm64-defconfig
> 
> for you to fetch changes up to bd9ae25314f275cea87a20db11756f32ed88dc15:
> 
>   arm64: defconfig: Add PWM Fan support (2019-04-03 18:41:07 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> arm64: tegra: Default configuration updates for v5.2-rc1
> 
> These patches enable PWM fan and Tegra HDA support in the 64-bit ARM
> default configuration, so that these features are enabled by default.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
