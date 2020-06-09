Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC6F1F38E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAQv/JmZNKkjnvKPDYVd5vygpx/tL07FsPsL0p1JM+Y=; b=mj0T98dgXAPlaO
	BVLsmL044d7yba6/IFJTR2HRFRgN7mj7jN2PLqH4tIOXTAhJ7KyGN+1PGKPLPUwp2Wbg+WsaaLhKO
	4+LlgFNcu8A6p2VShy0vU/cF52mAODWFgPvkcLj6tsRU8WX2LSYZXin+LC/WyU0Hr+nTYcXWpEFqd
	Izj+6L5tTzfi2CCebbaJmaHEfBqQ/IxtTrUYOxXPpzDYGaJXnvEBvAYoewiEB/sT6+EYpObkRn9Dn
	ZONs/SJPNrjS9SLC23hDus4tOzH9YuyZgxzhHXGlkbU1YhHwMlYsesbBHoPfuAvOff5+DNw9Lpxk/
	Vf+5I99gwnv2D3kZx9cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibzX-0004Pi-JT; Tue, 09 Jun 2020 11:00:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibzO-0004PB-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:00:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id k26so2653620wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=um+9GThB8p8rNN6JgnNnOtUG9o2dEln+9lSb83i4/9A=;
 b=epScxDKhKl3E7HP4w0yQGMeXUqGyQ4E8j/F6gngzDZruAoirtC2Fjca/nVZk0Rj5ew
 4jE3l5GRc5LTEHmZd7Frei/D6hv5YpJr1KYbiAXZm8BUPyshiquwaK+8QgOivmw/uoID
 ocSFK+bHrvUmDd5M3bmYoJdhJRmFmHTzEutDoSqpCq3ahzKlTKTxFg5ckxJGcyFD2jku
 NKa1l8y1O8FvpqHfA42cCL2BQ39oFYND3E1JbxL8CYOaKoFivETwvlrZRH6nWo8txBbs
 MVXSSUAsSCV8/w9u7LTgV3uQa+p3iuphEIv+QyDHA4UOzZAx/mnd5+xMUrhHH2oRnqqA
 9/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=um+9GThB8p8rNN6JgnNnOtUG9o2dEln+9lSb83i4/9A=;
 b=REt5RYsSmo1W2pzt0B3H24wtiy4RuiqIrguQIcgLgwpyTRsg8FOc4J4N7iQUQTk14e
 iAuTHfiCf1fOyv/dvMOWS74fERJb7DN38kU0dHwxdtl3m+JpmhKHU4cqeXjjLypI6Bux
 Ea5rbigawxxockB8irWDHURadEathlT9C6KLoBv2SmYXHEOPTyXRuzrAVJs4/J+QSxT0
 GwhPsEXXOzZpw9IEXZuc+70+bayzcIom9xPii1z7WqQAEOXh/egYr0mx4VlSO9yBZfzH
 GRW/xwFCVGaNDdUuh8+Xg3OcJYrq+XMJ2oH/n0xXimdQaSjCXiHfilFf8rOQJRRmb+4+
 FPKA==
X-Gm-Message-State: AOAM530CXS9l7f6b3cu9EWlpJPn7YwxZPz/KGszKXOW0Vs3yhc9VnCN8
 24KOANFbEfVLSV/VU7pz0ulNa9oi0Uc=
X-Google-Smtp-Source: ABdhPJwD0bvU+Di0C188WUrbdjPCTsD4EB5VTQYlPCEw8eTROa4hG09PWBQfXyS7zz9t16DWQ62cKQ==
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr3551231wma.102.1591700416622; 
 Tue, 09 Jun 2020 04:00:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id u130sm2551644wmg.32.2020.06.09.04.00.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 04:00:16 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-3-git-send-email-Dave.Martin@arm.com>
 <CAKgNAkhwYASEM+wqaDZQ-ftcB3jnsVN2cXq4E_1ep1rqv+4aLw@mail.gmail.com>
 <20200601135112.GB5031@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <61446b0d-5c17-2cb7-79a6-770c931c4b2a@gmail.com>
Date: Tue, 9 Jun 2020 13:00:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200601135112.GB5031@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_040019_035513_D92A3EE5 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-man <linux-man@vger.kernel.org>, mtk.manpages@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Tim Chen <tim.c.chen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/1/20 3:51 PM, Dave Martin wrote:
> On Thu, May 28, 2020 at 09:01:59AM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> On Wed, 27 May 2020 at 23:18, Dave Martin <Dave.Martin@arm.com> wrote:
>>>
>>> Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
>>> for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
>>>
>>> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
>>> Cc: Tim Chen <tim.c.chen@linux.intel.com>
>>> Cc: Thomas Gleixner <tglx@linutronix.de>
>>
>> I had also applied this patch from the email you sent earlier. I've
>> pushed those changes to master now.
> 
> Thanks for this.
> 
> Do you publish a "development" branch somewhere, or similar?

Ocassionally, I do this on a per-series basis.

> 
> If possible, it's nice to have git rebase work out which patches to drop
> for me rather than me doing it by hand.

Yuh, sorry about that. I'l try to do it bette rnext time.

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
