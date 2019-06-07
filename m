Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166D391FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 18:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBPnzgvuTPN6yYlcl0igp8FiKav8yrb3KcVeq495utU=; b=JBGtYA0JPLt+2A
	h6w+gihYoNGLOoRf9/DsMNKzmoC5ZbqHbHE1BelOebUqNjxVHzIhKE4r7xWQmIH+Z+L9WjTCl70PM
	AAF7u+k2eXubXIMSVUHdA8Am6BJbEVPnh2fqGNJFDrIEUmmKmcLXooFwKpWqF5Wd5nj6nCS7MhBC/
	cJr9WjpDkdN42sbuyCrajsQMub+FbqVk0pIVXOs4qKLOudzonpiDylCfze/fkRaPCs5S2E2OGhVxR
	a49Z4gc/mLB7GaRsl4Dt5ptLpyMPfOM133sSYVwZ6+1blqrrNDcIaYSGv3j+Kw/rVNxQDNmmr9Lzj
	wGTycDRtB5vI0+qGyN9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHil-0000GI-Bz; Fri, 07 Jun 2019 16:28:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHic-0000Fe-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 16:27:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id 83so1421955pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 09:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqyZx9iWQSohVD4pOTPBFDt/riunHpxurkj2Ho1xanY=;
 b=O5mkG8Xz6c0aSCpHQl5CUNP9F4sa04/6eEwgbg11oS4zsnlYr/4kt+6kPEOj/W/s1K
 HoREQuZ5fedTxfZ0oPJER12yuy9xT4nEJZFJuamYtN0blVEep3BjpHURl9TFr1K39aNi
 nRQ0L2FYopbECGm9MnJoefxRTAbgYcJBUCrxXpaKxEYT+tjIXJcDF6NWwWYTtYU7BiNJ
 TNi+0JH9Muzb4W5LkG3HkoMlRVUGlBPJEAUFAI1Gu/gYfW0/mS9aOv374hLxsxMvgZME
 jeFtL7YOeskSA+xiCfzrwt0PVSw5HXOTOS35kSvVV73joezUDzwf9CrgbcZs5CF0IelP
 SBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqyZx9iWQSohVD4pOTPBFDt/riunHpxurkj2Ho1xanY=;
 b=qxaHRyJUL4t8vD0HYicRUXax+/WFFDQORkfvGr16TLN/S6f/7tztZRQX/9JwwYcveS
 7je/+IJkv52k8QWu70AtJtFrPWcvyxeA7pA0SD1MQXdGb3QtU6cH262r0l7vd+7aIa7a
 iF5J+tzSR5Up3TxMmhp9ExcW4ITpTIpPW4MB+XHpQ2n1MzjWR15enGC4m9FV5QzLmgGW
 5XF0N38rYYRZCBgH6SCv6XzSV8cmLUD/CaoC0AEnU+JrZZyy9Ek0l256EbLQKV3N/Ejc
 wBd33nH2fNrL76sk5KS7gas8VYMi0U+47/a0j0h4Hh5FbZWUDB3u9juzx9VJbs3L8CXw
 eoEg==
X-Gm-Message-State: APjAAAX/cji9cm/LJNd+8rzRpDhlqJHtdRf3ZwarB2ZtazUxfQQQRGXw
 Gry5oQV+mazjG0RT5KgFLZwfMKFyJXAxdluK8BBDsg==
X-Google-Smtp-Source: APXvYqyzrRMSqaqwsV0Po3zPJV8/o7msAVJpp+Avm7yDigimd3u39ivzLigKuLzto8lyalxe4W7ehLmTWc1DMrKYZlI=
X-Received: by 2002:a63:1d5c:: with SMTP id d28mr3601408pgm.10.1559924870758; 
 Fri, 07 Jun 2019 09:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190607161201.73430-1-natechancellor@gmail.com>
In-Reply-To: <20190607161201.73430-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 7 Jun 2019 09:27:39 -0700
Message-ID: <CAKwvOdmV2Z77hKHCg-Mn5DK+3Zdpj0sY2uRc2Or0Y20UkS8UHw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Don't unconditionally add -Wno-psabi to
 KBUILD_CFLAGS
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_092754_291189_7FFA3CF7 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Qian Cai <cai@lca.pw>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 9:12 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> Use cc-disable-warning so that it gets disabled for GCC and does nothing
> for Clang.

Thanks for the quick fix.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
