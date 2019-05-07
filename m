Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97A16A3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIWi8JlZCYUy//jdgCYtztZpDzvfRUiT+KMj3rjtxrw=; b=lmSiKhQA6/J5Yg
	1Enfa58SPY/NtU6jnj2yql4C/b9nkaFRoFy91LwKyU+FL6PIgWG4XnOoECORNKiVtKzycB3uFy4cr
	XuVvUOI7li//hUPCaNAA6GYl5J6/ZF4oMlXVSQb4bPMwul70cQ77CXGHii0qfuEBXrdWxlEkdOrCZ
	A+1eeP8OZWKkraCN+eecmCWq2SSaK0CK6NAVLDZ95wPFz80LEnPHi+s6aioh70A++RUmcTCU8UHaG
	rYPxsJZvGg8FndhOUFPhpuQUwtcmzIwRo8WAA63ms9qAM2uuMkRH7CgOUiPUagqRF2bbnnEO8rVw5
	Or2fo3rn2La/kdNb4wsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4tR-0006yp-DW; Tue, 07 May 2019 18:32:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4tJ-0006xv-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:32:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id v80so9090274pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 11:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L9NP0SdsXX0ATQ7hd4FjxeMY66WC5qCBDhcE03wlMhQ=;
 b=n9pn7hTy9KeLWgCDSYDl8ehIiuebJ7aO3nNdFBbXLH37I+1VGfxYiaqMQIEpUnpIPL
 OOQdkHsKxGosIIg1Ojsclp7fzclPx5QdLp0tpD6V2MRTelH82w79OrWA2Wru3n5SWnjJ
 btm1yoHLX7jisUvqex0E8XlrfqNKCSXawfT107h9rokUwhcSdHHa1zskeKwDGCDBun08
 1dUDRURl+9pcBmyQ7DyV+pOf3nHd9GcXo6wRSEwO50Ispp5PBZuDlVtlSzts/22JsuCq
 XGOJ5e390VuNE0Qr73SMTMoPyf3dRQ2C3U+4rBMnkzQWgyvLmtUKwmKsYgRgFAovdbO1
 EONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L9NP0SdsXX0ATQ7hd4FjxeMY66WC5qCBDhcE03wlMhQ=;
 b=m/xNs9m0/3HWbrDvLx4Il8Po42TydC7DZ8UDT+cWz2iK60htAKtLlFDCxbpzM8cfoM
 ac9NveyHt4xk+j4lLZ/FJpsosRRLlHwyDeVwNuIKLXf5q9pbiAyKiTEozAaCS5F1eFj1
 afXNjS22Tx0EWdZ8731NFq3gBu8t2z5HfLfISU7yDggUKjb84S70XfwnbjAR/zUQZNfS
 pcmntyZULkeWDF1fhJovO9U33EDwLrm2wqsYEpVVzQxq4mxKpq23/Y3orkmlT/NgdcnZ
 w5NW+VKmFEiKeRqnCDn66m/qgNl3r1b+kO8+uOhwOhkUKwsKuGtZwJ/oqFKr6J6Hb5o9
 qdSA==
X-Gm-Message-State: APjAAAVQcKDX+2eYMcmxGiWCngAjZXzihwQ3+x9ZHyTz+CnymXdsIL0H
 kdDHwiqitVAR+hjyM3ZmaTrqfA==
X-Google-Smtp-Source: APXvYqzbS5T0pyt5oyrebrwGtITwJcnl5essJwblVvuBYtzglREQxvzkfbjLim3A//WXRWpXvS7Z3Q==
X-Received: by 2002:a63:1654:: with SMTP id 20mr41908345pgw.166.1557253953236; 
 Tue, 07 May 2019 11:32:33 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id f15sm16524993pgf.18.2019.05.07.11.32.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 11:32:32 -0700 (PDT)
Date: Tue, 7 May 2019 11:32:27 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
Message-ID: <20190507183227.GA10191@google.com>
References: <20190503191225.6684-1-samitolvanen@google.com>
 <20190503191225.6684-4-samitolvanen@google.com>
 <20190507172512.GA35803@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507172512.GA35803@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113237_782643_642EF4F3 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 06:25:12PM +0100, Mark Rutland wrote:
> I strongly think that we cant to fix up the common definition in
> kernel/sys_ni.c rather than having a point-hack in arm64. Other
> architectures (e.g. x86, s390) will want the same for CFI, and I'd like
> to ensure that our approached don't diverge.

s390 already has the following in arch/s390/kernel/sys_s390.c:

  SYSCALL_DEFINE0(ni_syscall)
  {
        return -ENOSYS;
  }

Which, I suppose, is cleaner than calling sys_ni_syscall.

> I took a quick look, and it looks like it's messy but possible to fix
> up the core.

OK. How would you propose fixing this?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
