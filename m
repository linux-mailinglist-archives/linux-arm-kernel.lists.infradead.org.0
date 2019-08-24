Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C65D9B9AD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGznnFrKyUvHp3ico367hy4cxLjyxiYgprHgi2IHuHE=; b=QiEoi7ag12sOY7
	Z7/rxhdhu0R5hinGQxBxC75INZRSKLAzAHgNh7tQnVWL2reYAlqnrC5JO76dccL+NJm3Ef3Tfil2L
	15OBuNeHYIL/pZ1ym24dFU4ktxncYfYNeShFl1M2MF7entK1137rmQWp9cnr7n388i/MoN2zwqbCK
	78TailXyiP7gsF/KpPAQjcy+2eivCOts1TZ2WQsiaKWTmSIWS2QaGwM2lkFxfkaV4vJg2jdYuOjn4
	we3eGZ2b1YDOE5b+wvMw/IxnAuHpzJXiewgswpagXZQf8govlVeCOzns1QX4REw6QMXxU/Q9usQnk
	TlVWT7jz01AHTcjtSDfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jwe-00033o-CT; Sat, 24 Aug 2019 00:30:16 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JwX-0002mD-B9
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:30:10 +0000
Received: by mail-pg1-x549.google.com with SMTP id i134so5938605pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 17:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zkT1VJzOlMpr+PFhdjulVHmUztYGPpsUcL1mcrD/sx4=;
 b=XV0kIGfNLhFKDErAKV4H4RtNR00mLJJVXSCIWoEkw/0J2J6foBPWW7JP1DLkyJdJ4L
 kslBmPi0XhLhRoam2pwpXrta1dWTQ7E0fdwmqbqss+eWXhDlJPc3Fi4LlIXSZiFo/bst
 qPTbxxIAp5g0EF/0rDGLgJ3drfj00RbQvupJYLutusnyop98Z5bl9AUmCy/5uLG7jnrT
 WEhaEh5HdYmQzG6Jh4R7QXoWAfRasZfFn5EH3kbWZIwMNJW/EQKSQLWN9b0s1J0EiRLj
 7mnEAq9of1Of2/H+G93xViCMwhHYB5b7V3wPJh49LbTX4J50fGbjmj0sp2XiR6RWkcSg
 086w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zkT1VJzOlMpr+PFhdjulVHmUztYGPpsUcL1mcrD/sx4=;
 b=AFtFSh8hBBSkEm2e/d3Sy5yiDOT3NOFUGzKhCXYzvkv5HdAxM1mhWG4uxDeXW7wkGx
 5mg34Ozm2YEDLe3sWHobS5NAXfApjmyDX3pQWMQA1NDXlJfiAPTjP0qpMbH1jLtW/+Kv
 tMlHkKXJ4pCuBPdJw/SxKkkN/A7R8mWZK82e+i8LE8bJe2mi8kcwHWASQ4240oYrxpAs
 VcC4HjPmLsJlWUVAB/9u9Mp4x4uXdcGl1+3lDScmfNFD0MIXqYvffU9EGkrFhrus0Nvl
 wnHj+tin0httWRKaP9HBChaS0xVohzFSZ3VVD87URw6rTLE8VGltjc1R5p4mTjHJnB/D
 1gjg==
X-Gm-Message-State: APjAAAWxFIklWBmPISwWECEgactMHpSD+aSOLdTTALUYLXQ63YGb+rXG
 cROv+j0Z4yUrgOLqrSQEIJSOZLV+WQ==
X-Google-Smtp-Source: APXvYqyEOPLUtDizG8AcfA+fSIo2U88KPAd6cNLP0knFvcFoo7pvjTbOpThlzzU6BqduUVHTOxPE851nWlw=
X-Received: by 2002:a65:65c5:: with SMTP id y5mr6171809pgv.342.1566606606983; 
 Fri, 23 Aug 2019 17:30:06 -0700 (PDT)
Date: Fri, 23 Aug 2019 17:30:02 -0700
In-Reply-To: <20190822220915.8876-1-mathieu.poirier@linaro.org>
Message-Id: <20190824003002.87657-1-yabinc@google.com>
Mime-Version: 1.0
References: <20190822220915.8876-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: Re: [PATCH 0/2] coresight: Add barrier packet when moving offset
 forward
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, leo.yan@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_173009_414441_30B88349 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alexander.shishkin@linux.intel.com, Yabin Cui <yabinc@google.com>,
 linux-arm-kernel@lists.infradead.org, mike.leach@arm.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for fixing this problem. I didn't realize it because I usually use a
buffer size >= the default ETR buffer size, which is harder to reproduce the
problem.
The patches LGTM, maybe you also want to fix the problem commented by Leo Yan.
I tested the patches by recording etm data with a buffer size smaller than the
default ETR buffer size. Then I saw barrier packets when decoding with OpenCSD.
And I could decode successfully without error message.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
