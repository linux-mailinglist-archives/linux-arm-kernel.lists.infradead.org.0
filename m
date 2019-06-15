Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2B947063
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 16:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SnMMF1hyfA7ndagMY6q3iRwi+v6FPRK2bi4oYXj31w=; b=QwIjc7YhMVt8O1
	u32iVxC4MNsRL8pGp7ixNpyGDr2f4+uohzhr0i6vuud8vggzfOAVD92b95FXaMMfu0feNYZqhzZoS
	5nru4F69MU5cXq6QfLn2xyVuudbY2spEbCXc6E7ceQamll3Ygr7TNlnv09jCo6b5td/rd9eA1dW1T
	rXKtqjquzYdrbJh/Qpwmvfvvr8WEqDejk/ZSae+T0mziPtxVkVEH/fVPn4okEW2Owyupdj/b5beD+
	OAxhsRBxGcyFNzpyFsKuvhC8csi93DC8gRQPjbcCd8FjBUizRXJUS/s/NI7bK8aBYmlmPBg3mTMPO
	yy2+OK8TTgy5vt/t3wKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc9W1-0004Xa-L7; Sat, 15 Jun 2019 14:18:45 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc9Vs-0004XA-Dw
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 14:18:37 +0000
Received: by mail-io1-xd43.google.com with SMTP id d12so4070085iod.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 07:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WZCWllnmsiBaICnZjSKeck7hGpgHXTO6pHNqapuT9AM=;
 b=Z9Rk60LeD/0ptcPj16hkpfST5k3ZThFqW3OXHdbZlJbMajc0/BhzHF+sQMfmAFeZPf
 g9RM8ZRaUqycBUQNF99rNjCoZSwH+6o3iRvi0RGwdkOg7rMWz5WCxfsdWyMgmM/EpS06
 dAubW+ndaqdG95ne2fbXiysxPXe/a0cF4y9aexF3g+ERtHCy1rR/TApR3VIitpi2rmzF
 Lri4OA9uev4HytKxrr7YzelhP4haIrdQbQrG8iL17AMzhQxcUskPNUFl6YyIDiq9ePwC
 gsZyxStXOcx0YWnIjrsmzA+A36r0ILOMH2lzG/aLqTTxAOHiBZoGgqDc0vgB47TpSJYu
 XzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WZCWllnmsiBaICnZjSKeck7hGpgHXTO6pHNqapuT9AM=;
 b=bcvn0KZF/XPHxrFuLYr71dWrNT16pWV9G06+B/tq2beHEuR66qgdzQolcuOOZC7SQ4
 4MmCsvdEmLJuwTj9CltF+5GLxFzrBxZcn9cT5iSRDFHKVF3Aa3xJbIbjJMrtoNOfJGgF
 wkNsdKhaUT+uCTkNEv6v8r8lk5ASrooWWWCS/l9QXfLYu8eTOC7wV1crEHAqVwWGOoUW
 hHbcXCh1AFOKGW5JzyHMeP6bd9aBxNV6rxwq7jDjfU/yWJxeMg8IhPAkIaqQTIt7vD0x
 +4DAiPktwoMsN+a2S8LlE6RVq2mv/6iwWCj997+x3uMoElPtK0UBT927pz0RP8iHzjEH
 HGdA==
X-Gm-Message-State: APjAAAUmsfTWgA11sz9LyldJ5fdbhM26aEh/hLWyNBvCROf1QlYC1cce
 5DylMkAJpXebWlxMsjkQ9IHdoTloVnKTkhrLHeAP1Q==
X-Google-Smtp-Source: APXvYqxghuy0pG3URpiRF/uKu7ofXRDyNB8i7XeBd+Uupypx/WpqsWUjXwueN9xkkeBLCpEwkBt1I6agbNIYnAhx990=
X-Received: by 2002:a5d:9456:: with SMTP id x22mr1769308ior.71.1560608315058; 
 Sat, 15 Jun 2019 07:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
In-Reply-To: <201906150654.FF4400F7C8@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 15 Jun 2019 16:18:21 +0200
Message-ID: <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_071836_535464_2104A05E 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 15 Jun 2019 at 15:59, Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Jun 15, 2019 at 10:47:19AM +0200, Ard Biesheuvel wrote:
> > remaining question Will had was whether it makes sense to do the
> > condition checks before doing the actual store, to avoid having a time
> > window where the refcount assumes its illegal value. Since arm64 does
> > not have memory operands, the instruction count wouldn't change, but
> > it will definitely result in a performance hit on out-of-order CPUs.
>
> What do the races end up looking like? Is it possible to have two
> threads ordered in a way that a second thread could _un_saturate a
> counter?
>
> CPU 1                   CPU 2
> inc()
>   load INT_MAX-1
>   about to overflow?
>   yes
>                         dec()
>                           load INT_MAX-1
>   set to INT_MAX
>                           set to INT_MAX-2
>
> Or would you use the same INT_MIN/2 saturation point done on x86?
>

Yes, I am using the same saturation point as x86. In this example, I
am not entirely sure I understand why it matters, though: the atomics
guarantee that the write by CPU2 fails if CPU1 changed the value in
the mean time, regardless of which value it wrote.

I think the concern is more related to the likelihood of another CPU
doing something nasty between the moment that the refcount overflows
and the moment that the handler pins it at INT_MIN/2, e.g.,

> CPU 1                   CPU 2
> inc()
>   load INT_MAX
>   about to overflow?
>   yes
>
>   set to 0
>                          <insert exploit here>
>   set to INT_MIN/2


> As for performance, it should be easy to measure with the LKDTM test
> to find out exactly the differences.
>

Yes, I intend to look into this on Monday.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
