Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDAD710A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 06:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xAJiu7daPcZzM+D8JIRhhf2YyWcr/KHaKPmUSp+DYk=; b=FEtyatEuhZJB+4
	s1QNE2gVD+EEPYaXccuvp1+RcVMb773Y7Tw2D9fh4z/xOHxcDY8lW8S3j8TN+oWjM77cQz9NYWL3i
	oH+TSbe7rmddqh0KJmPDgolcOX3jj+bTzlb4qpKPI2rNxrVqVOV8tA9LKSNQSQTXNsyq25tHQjVc4
	GcT4KHkWuXjbnfTlC+igMEQQcdZsHriZ33FAWDZPZHQYfE8WpWJ68LKtvDMHg21+HjmCo5/JTJWwh
	QEaUNpI3TzKevuBDnnSSttesDTbB9UErwjPjPfBavAqIIuFDJrdMtQ6DRfsXDMNv1oibzOnvU06L0
	UB779FFw/jextfaXcmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpmUm-0008IL-IG; Tue, 23 Jul 2019 04:33:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpmUG-0008H8-94
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 04:33:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so78960414iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 21:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qk5U3bA3qzqu+IynLlWRQEOBAZ7N1ou8AjhC6QEx5u0=;
 b=eAaCUH2GDO3sHWHaMhz8jJtzV7jW+BiUeGImVRvQzC/HkO/ePhOmBL6V+3w7RvWvju
 1xXhjNCfMO2w1bVdjSwRyvk970tveUNzXQEtvso3ebs79zQaGzj6zYMhMBs3/x8MGWWR
 qaw7VDW7sDC5eieCOhpn2EBVf6uGWddX8jW+UeD8QOcH4Y0wAUIRqZcQ5SHOW+mupeta
 m3XxXRjDWwBQV6vnriWza+9xiQt3hTAl05kdNPy9AEoeMwvpmuBqvE8rlxUVcMFS/TLw
 9p/w0l84R/dJ0/kn1yOfELe4AwF1LEjk9TiJeGg1ZM37psFZmk4aVaodRogWibVwHPWS
 E8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qk5U3bA3qzqu+IynLlWRQEOBAZ7N1ou8AjhC6QEx5u0=;
 b=sYjJIVCmVryYHPrVeW3MSzuWDskaccwQVOcG1Q5Qq7LhZQnQrUQY73FjmADieF0WK/
 lRhO09tkMmqhmd/2vcLFUE1qleW9m8xyLBmf4CG3/JwukqIqDzQ+B89asNvIPbzHubbt
 AflsK77Ka1jPc69Z0IyVuD6PbSeTrpKeYJfnLUrpBB2hlmrp6dwKMPxkB7LL/xJxhBZd
 R8rqGjz7YFqUalGNKasTzNlWXKV0CZt8YxUQnRd9++2v2/MOzVE6T5pM1H9neKprX8Ir
 e0HoMmoY8WZmvfTzARo/qG3eH+8USmpL+UQIxzepyMe8e4sRpG99fTDBHNhY5kNuHgl+
 JUIw==
X-Gm-Message-State: APjAAAWks5fotPWuNGLp4TBYwzRs7b2gLxN6TJ43Ci2MKbBjTIcZI7e8
 9CsMP6QkVqE1BZxht2yRyQ6+G2SLNGB7XyRvpkg=
X-Google-Smtp-Source: APXvYqypWk0MoPSm5Ekj3ag8N4aYiKFddHyRSOhwJTVjabMMbXz/iRZaSJJJvO9mdCygUH+Vv3eCygCT2npGFTLY+Zg=
X-Received: by 2002:a5e:8e4a:: with SMTP id r10mr58528805ioo.100.1563856393341; 
 Mon, 22 Jul 2019 21:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Tue, 23 Jul 2019 10:03:02 +0530
Message-ID: <CAKTKpr5H=QCEx_pL272jCQKdaNwQoRAHVyo93YFa62Z2SZJVCw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add CCPI2 PMU support
To: Ganapatrao Kulkarni <gkulkarni@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_213316_318417_0BF3541A 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rrichter@marvell.coma" <rrichter@marvell.coma>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Any further comments for this patch?

On Fri, Jul 5, 2019 at 2:43 PM Ganapatrao Kulkarni
<gkulkarni@marvell.com> wrote:
>
> Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> support in ThunderX2 Uncore driver.
>
> v2: Updated with review comments [1]
>
> [1] https://lkml.org/lkml/2019/6/14/965
>
> v1: initial patch
>
> Ganapatrao Kulkarni (2):
>   Documentation: perf: Update documentation for ThunderX2 PMU uncore
>     driver
>   drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.
>
>  Documentation/perf/thunderx2-pmu.txt |  20 ++-
>  drivers/perf/thunderx2_pmu.c         | 248 +++++++++++++++++++++++----
>  2 files changed, 225 insertions(+), 43 deletions(-)
>
> --
> 2.17.1
>

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
