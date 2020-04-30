Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D85A1C0568
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 20:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXIfonXCapoaGKrYXwB83y/AdaGJcxjhGisAFh3l8Sk=; b=DDpAcKsIgt/Bfk
	3dd/Bx/vV5s3kI2Y2QEsr1/5hao1q3eb8gbjGb0bbQLM+vKNtKXU0k7S7dffjyq9FpCXzgbORXAer
	lbNzjqEaoEjTdIYnNsZiPhzTaBV8NQ9fxnHCYK3lX8/c9EeeClNfMxpNOiX97nMKoG186dzw/8n6Z
	Tp7AtQ5yC8hSZ5dV9+ZzgEs6UUlCVLRzrAmT++y+vTRIkNKleF9Ew7157uzdPgmk94QASLGeoPnoD
	D88D9y09XYVNvTvo19hnM41zSEJYgSo405/ljjbK49EpX42yPLswYKFfjMUMRY26tjGGCQkonv5hx
	5BcPFMBXfkLrZlLCXKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUENq-0004tR-7C; Thu, 30 Apr 2020 18:58:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUENZ-0004rD-PY
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 18:57:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so3305719wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 11:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=d5WxWhtGo9e2cw/8suqpVIB4+YEef9w62JZ0kEYHubo=;
 b=nfLflQyW8kj3CShI0XY4Vf6gRlgHFhTVQZw/GdD/zV4jALyGUkiWfG1+YbmI/MdYAj
 bdgTZPpCZ7Uf3+4PI7o2+IBAYzeEoV2BgNFA/RJ5ZJJkLTEnSmU8eG+X+oGMBE9ASWq9
 FlAdajBRHQVg1AZ3Ljwgtn8mCP8u3g8A/uGbua+pVlGqTbJdH+KsVd6ioM/C7DLFfrdR
 KJv+BsPm8MJOEf0OU/7N8vwe34xLtNw38tm8MlwiUDdAgkIEqasbbBr+Bv2uA/8MaTY6
 rN2xSH/xxF9Rupsf5ruVst0HeoT4VWff/Z2RxG0CBHKc/8ClZusJAiOUrSSWH7m83gcp
 p85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=d5WxWhtGo9e2cw/8suqpVIB4+YEef9w62JZ0kEYHubo=;
 b=nO4TLMdm1R8jkIljuve8YV+0FXLnoejKu/15b4cthigM+RY14yNKK0BMJFZykPE1e4
 v85Cii0fc/T+06dK0eapLSSDJ2DMxhaJjr5r/bt8GR8kge3v4VkPBVCO+C3alppoKB0S
 pL8jI/aX6EzevHAXhXaMDDWeYd3yZHWKXf/rgy/xu0ldHXNUHY8rGHyLDuQCbunOMynW
 NA4phL6ExFMRkCADRM9re1p+GngHVQh4NX86SNIC/E+of9JH8jZgKWCTnzLKmJPjOyzG
 RfyV8NnaDLA6hzAunDl0dLyGLo1SHRASodefoKIZi7eOLHLkvj/PfJ82hEy2rbJfvTz7
 +bEw==
X-Gm-Message-State: AGi0Puaf75q09AW1ppR61t//1L328EQZNz5wGIJM8nCbfn/q/YHJ8VD8
 0WC+/TvOZ3+0el3EGm7BOaG6Fg==
X-Google-Smtp-Source: APiQypJv60KX28ucnsH13Cw7j+iU/N3+xGie9VPYRPXyvaTcmuL9pnj+qnn6cgfiQwc5zxsDYQrDUA==
X-Received: by 2002:a05:600c:20c:: with SMTP id
 12mr4867772wmi.91.1588273067897; 
 Thu, 30 Apr 2020 11:57:47 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id j10sm713583wmi.18.2020.04.30.11.57.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 11:57:46 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Thu, 30 Apr 2020 19:57:45 +0100
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 00/15] Split off nVHE hyp code
Message-ID: <20200430185745.rcsug4f55yh5jtyr@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <73efca41e7b955db4963ff182624107d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73efca41e7b955db4963ff182624107d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_115753_210665_29DD698E 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 David Brazdil <dbrazdil@google.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marc,

> Do you have any figure on how much bigger the final kernel becomes once this
> is applied? I guess I can find out pretty easily, but this is the kind of
> thing
> that would be useful to make part of your cover letter.
Bloat-o-meter puts the diff at 21KB:
  add/remove: 152/45 grow/shrink: 10/32 up/down: 27882/-6240 (21642)
That said, the size of `Image` hasn't changed at all, not sure why that is.
The size of Image.gz has gone up by 10KB.

> 
> I'll try to review this shortly.
Cheers, no rush.

-David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
