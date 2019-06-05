Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235033653D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJi4sUlS1/lsMpwKMptMAUlobv1/GWAK8RwA8fZozgM=; b=M3i1E0EOYpI2++
	ZeTTZ1/TqtPBXdGZ/dIBLlT6gZ1ey9kX0zMRCyW+7/M+UXbqTHfKe3fMaaILkzRFd3BJrRP8E7rkZ
	g+EPuiCmGfchOITFhCx2KdSqIC/y5BuXdf8F1Jp3I0nrR/HWzgfvEC3EBjmq8tEFZKfbMAiT9Wde+
	lrmq49nlxb5ofMwfgN/nkQUOqln8WeaEjmOmOfVmA3s12SjZ+iK8A2NaCo3G9PghtmdWyvaNfTWYj
	U34Xn2qHjW1CgQj8NcQQMNmPYLHwjGovQLVTMIURr68J1nVyV1O83F0SQt3FKJr0W1yzwUuT48Hlw
	YPXmDlHBv6Qmz1PntBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcLT-0007L5-Vs; Wed, 05 Jun 2019 20:17:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcLM-0007KJ-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:17:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so9781075ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lAgnsEnKeCxY9u014rJT1VaHWqSctLHeKnZqo2hzSG8=;
 b=RG30N6aoY395YurZq4ybtnNRM9wlIxtGe/8kU8b/tgTboXtztfw9Hjjspt4Rs+ny5z
 YMl1H3wa17kRy73GosnYqgk2HhP2PBpl7z1UpnWxC3rTqCyB8vRcNnwk7iLCE5J5vKTx
 XmjM1HtA2Ml6mzEsGoV+kvNly1eZynxjS6LBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lAgnsEnKeCxY9u014rJT1VaHWqSctLHeKnZqo2hzSG8=;
 b=S61c9ZK+0qZCj50R2es05iAApGFb2AnsInhUkIYiltiwXci/r9DJJ0La7YBI6UEY1g
 844UJe/TV89Bpzd/YKALL8T4ny8TcC9mty6t8vAq723FSnZHId5NKEgEGMkZ05ICE6hD
 DLnSVY+wK4SbRLQkrUuPWUGyrZZFXH08xM1AcWYciqa3virvOSckW+LwHvzunMTW5qFr
 yv/lA1wJo+U+qnY8S/TC5i2qGPoILx/bjLxQ2V6hGxai2NnzFpzTy8yZAYjYmwtFcLNY
 yZ0324K7f8Fa7znyQ+yb9tFzzZCetaHPjvJrwuzTpRRhmWFs+wbwq/NQs2+IH61wIcuG
 BTRw==
X-Gm-Message-State: APjAAAXTDPkgEtz5nLuei3EdXA4o2GSNz/hArA4uOnnmTCwntwGYo0Cv
 FBJsizCL2+ZYlWV5rf3ii+AIIuNN4/Q=
X-Google-Smtp-Source: APXvYqxZptk+FXO+gi4fPCxCe0VEX/YCOKLVtVgXbZZdBRSYxhTkKoL1sDrbOBtWy2OV9b9SnOtcWw==
X-Received: by 2002:a2e:5d49:: with SMTP id r70mr22490250ljb.102.1559765825200; 
 Wed, 05 Jun 2019 13:17:05 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48])
 by smtp.gmail.com with ESMTPSA id b11sm1825036ljf.8.2019.06.05.13.17.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 13:17:03 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id 136so8518919lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:17:02 -0700 (PDT)
X-Received: by 2002:a19:ae01:: with SMTP id f1mr20922609lfc.29.1559765822588; 
 Wed, 05 Jun 2019 13:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190605134849.28108-1-jglauber@marvell.com>
In-Reply-To: <20190605134849.28108-1-jglauber@marvell.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 5 Jun 2019 13:16:46 -0700
X-Gmail-Original-Message-ID: <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
Message-ID: <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
Subject: Re: [PATCH] lockref: Limit number of cmpxchg loop retries
To: Jan Glauber <jglauber@cavium.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_131708_336712_013D3F30 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 6:49 AM Jan Glauber <jglauber@cavium.com> wrote:
>
> Add an upper bound to the loop to force the fallback to spinlocks
> after some time. A retry value of 100 should not impact any hardware
> that does not have this issue.
>
> With the retry limit the performance of an open-close testcase
> improved between 60-70% on ThunderX2.

Btw, did you do any kind of performance analysis across different
retry limit values?

I'm perfectly happy to just pick a random number and '100' looks fine
to me, so this is mainly out of curiosity.

                       Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
