Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C7920086C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srWdvAOdV781kHfuc+PMlfVABt6O7zhE6e54YMc0AmE=; b=knoniYKKzls/SX
	z/9sBKTZTTXMo64WlqxbZW9kBUSQ62uNRL7HIOIt9Q74DzxB5eO6a+J+TcVj4Re+illYDvC/6v0+I
	0O8ZB6UM8M8h2UyNiJzbzMU1g+JwHR2wOMGzhp6CxybQSyxQ4FFqL1Whh76o6vzsb9trVCZ2gedf8
	ptpTLvYuySIdY+i/3/imD7ZywaBt0/diXVxSrzUY8fgr/QOV1h2qqAmmsLoFTSvzEogxrHFoT9enx
	7XncGGG5glPFctZtF4nZg19M/VFgZ9FoUVicMGws/yMkKN0PItS3idHQEDloHB+UEjT6lfxTsAWWt
	SwF+p/6mUgKfNlqCp8WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFrv-0004Cy-60; Fri, 19 Jun 2020 12:11:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFrT-00043e-DZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:11:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id g18so386422wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 05:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uw1fRJk8W9uzHYW58SXoTwxg2AWOnCyPtVa0nujwxNo=;
 b=aAA1aFkxA985YEVfjLAPiKf66EhzPWckcNx4xKon5snQWNwK/YtUsVhxAr8entll5J
 FqpecJvgTmxRT5+MvuHxJe9wSNpmI0nvvrBzF3a6gi+LUIybTOg+JYdbJqT0dZYlFxMk
 KKN+iSVJrEIms+E2BI5fXbNWVdsb2j9/Lm4zmMbjwR4aASLWSTAHS8bjK4ndoX9Radrz
 tAJ9VVNEEMY8zPNBspED7etWgK9KAxQVfeSI4+eLeelOpXXdGi5OUzXSQ1/NP3AapKjN
 3YhofK/HVDX+bv/bUFdvGIO34LjDkJ5lop0TmHsA2yBXmfMLzQrW56prXHQF0G2R0N+F
 /h3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uw1fRJk8W9uzHYW58SXoTwxg2AWOnCyPtVa0nujwxNo=;
 b=KX/dx3JzS6aXOdOjVawMXpS/8RFh1nb6lMPkDdZ8E5qImFZEdLU8BiFh3ZtjKSj7Ea
 ukl4WGJVbHeGwevARNZzNtAdC9DgetL5YTwfAIMeR3VZtZlOxhp7p1ehqhTnuPVbEw7t
 c70lnQNwT4FGP49hnQQE797K+GhcUyiFmLQI9CzEKY6ZpE3y7B/opJX38axJ09ri74Da
 UL83uZz+t3sLSgXog15LIqn+vTJPYmnygBt/svI70mVgs10ECUh39M9E60uWAIsEiQPb
 mfPaEM41aqYMkPtB7Rbd0vXeZPu14TqxPIhkEyX1b6bv4gX9spgLgydKfh2YOq4GqeDB
 9WVQ==
X-Gm-Message-State: AOAM533BH8MkI3Zf4nysEnAWQfCTbVxmX1M9VgbmLUqdBN62N8OQvOMb
 Ng989pI9qNQKrkBFMsLloRZ11g==
X-Google-Smtp-Source: ABdhPJzXf4aN7gKCGZYXPOoqVI1aLeO650Z1tn89qTbHzCNLC55N0Ab6rAbplKt8XgQAxTgA+V7Dkw==
X-Received: by 2002:a5d:4282:: with SMTP id k2mr3727602wrq.196.1592568669243; 
 Fri, 19 Jun 2020 05:11:09 -0700 (PDT)
Received: from google.com ([2a01:4b00:8523:2d03:d994:d48b:4a9:7c2b])
 by smtp.gmail.com with ESMTPSA id l8sm6886721wrq.15.2020.06.19.05.11.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 05:11:08 -0700 (PDT)
Date: Fri, 19 Jun 2020 13:11:06 +0100
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 03/15] arm64: kvm: Add build rules for separate nVHE
 object files
Message-ID: <20200619121106.sz5qxxkb53ida5qa@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
 <20200618122537.9625-4-dbrazdil@google.com>
 <09976ea31931481f4e00d627dc5e06fe@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09976ea31931481f4e00d627dc5e06fe@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_051112_189537_FD608DB5 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marc,

> I guess that one of the first use of this __KVM_NVHE_HYPERVISOR__
> flag could be the has_vhe() predicate: if you're running the nVHE
> code, you are *guaranteed* not to use VHE at all.

Sure, I'll add that to the next respin. If I'm reading __is_defined correctly,
it means I have to define the flag as =1. Easy.

Thanks,
-David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
