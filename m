Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F339E1B4BDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQe2sQki/RPjrvhXkg1YOK1jX11UNiqbPO24foEy3xo=; b=c3iZ87tZ/eaymN
	XNiYQZnwaMAn7rKb4A++CgRwdC8HeNke6U4rrorNl+TM7S3ZShwEfD9aT2ANNf+8o2QE4AijX9u7Q
	IaYvJR5LkWsw4Xq/dX+M32ljVRiZWKjkfpvh6dbMvK/v5h91o0csqMR9dzBhhH8+dQLHFzjJznAv6
	hIHjnKwVMHmUE2GN7ufD9qA5f8+DOrJSLWw/IBeZX3zGt7Is0BCgQKTeICPFkkPMNxJR9SvLmT8S5
	q3aQLf45LFXrsm4LJh6WpGxXS0LjeBlhOIEqyEVbZxImn3QlG2TYfRNXaxp1wdyQB0eUF39JTh3hw
	UlqDUWZScPJFTIN0R6Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJIS-0005zB-09; Wed, 22 Apr 2020 17:36:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJIK-0005ws-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:36:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id t63so3374402wmt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 10:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VqYLYOfHT5ZSfKGRKS+ZrdUHUhuXAoIInHJ1yfB851Y=;
 b=W/LNCjGmYpNRINFjSz7yKOY0zNA9BTF14QsDEQB01oevDc/GgPPxVzDSTvjG5gAhbV
 esimCCSQioFWbimMAYRRg/+5XjJVBd4qoZ06SOLlH0iKUcf9v5215MbqLXeahWJQDmrb
 hVp4JLkHfntCQUcB6Pm658ohlphmO0GTEYu0wK9ViUhPP1aWmjMNK440lifjPRQbhKVk
 qMxzSRoYTeiGRqdrpS7z2iYOZkwPprMW95EAhoxXlWa0Pfeh+nChyDrKKeLV2UAyUAA7
 8UaA1p2+vXq2g6zH7Ac3fdTYLn+QRzYnGjXbvIG5Tb2dCJRrmUQCAtbr3aTrzonNS9ae
 TZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VqYLYOfHT5ZSfKGRKS+ZrdUHUhuXAoIInHJ1yfB851Y=;
 b=UPYbsQcVAvd5kWbEKjap8fwnPFV1WMXRmW7StqDtozQMYEBO7X/Gco/2G8UO9mxdeZ
 NUgjzpte8UdvWAHso8vym2W33muhO+PeXG9mlNAHmzb7JZMTZS+LZKcnMKakYt6gua0N
 YpiwKJYRChkjr3FIXO/glQORx9UnonRAu0/Pw1bQAeWw0vm07IH02125cC8tQWnkMoG9
 VR8auu+fBdhz4kF+9GKcDvLDUBRAo+3FDz2ce36I0Yq/kybGjDzzTOZZbo4H4cQBA5sg
 04Y9hpWJaTQCdIzzt7jnQwtv0nlXqCysuhePdThHU7dVsn5BRIzRooBkWzHhrxc9Pjlt
 KQxw==
X-Gm-Message-State: AGi0PubPyQMzm+RoakuUdgzrUjJjNAQgKYhIgLmW6OMnOkNQCEakoe4K
 6/mfivAYVX6PtQbqlkUlxfw9WQ==
X-Google-Smtp-Source: APiQypKPIJqGIiMFYHYI6SdYXapZap4vIILlRn2L4aANn4NELzJ8fw67xU/T5bMViFaJ25gGtDH03g==
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr12048574wme.77.1587576975999; 
 Wed, 22 Apr 2020 10:36:15 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id p7sm9473270wrf.31.2020.04.22.10.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 10:36:15 -0700 (PDT)
Date: Wed, 22 Apr 2020 18:36:10 +0100
From: Andrew Scull <ascull@google.com>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200422173610.GA115208@google.com>
References: <20200422161346.67325-1-ascull@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422161346.67325-1-ascull@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_103620_474249_51007689 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 05:13:46PM +0100, Andrew Scull wrote:
> * From v1 <20200327143941.195626-1-ascull@google.com>:
>   - Restored registers in VHE path
>   - RFC: Remove trust in host

Woops, got a bit happy with my clipboard. That last point isn't included
here as it didn't seem totally relevant. This patch is just fixing up
v1.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
