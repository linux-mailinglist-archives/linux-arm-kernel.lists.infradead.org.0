Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B810B78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vmGSVJ/N0pPmGwp57iWsO0dzvmUX8lX6UMxLI4QlVI0=; b=PJSIrWa2uWE+pI90hQ4odJyYV
	Uz3r05QX37AguX0Yq/qBCMmWrheCDoPx2HziONpj+Y9zlQbhQXzcn/rZRsNtmnQ/MXyeP8zN7gsyi
	xMV8JTCpPAgmBUs7oG5kzlcIBRfuwK5pza5sMozhkTmDIngp7g9y1Oaerz3ls7+U9X0h6rLEi9Ok+
	yoWZgxO9c+q/22uQ5/qNPvn1VKOUTBPOL0AhCBbGE2JcGW+OKv/f2vaUgVDSB8n1wnaXm0pNmMB41
	oGcP6W+PK1jqn3uhyJ+pyBbV0PH9fWy4Tu8B8o+0hpunj8ku/zC99oiNG9TIfgbhIOiB4Gp0n6OnI
	CVdzXbNmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsIb-0007vI-1e; Wed, 01 May 2019 16:41:37 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsIU-0007uj-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:41:31 +0000
Received: by mail-lf1-x129.google.com with SMTP id w23so13345168lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 09:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YglL26BPkLdb+nB/L4IuDXbTHUR9z5OvamFj5OfgDus=;
 b=e6F542OnhRlxbTbq/st12xNkoNYfc8DIFE8Rk49sGbMS6dnVv2qoJ2gu0ufnyL6Kor
 qoKDS//JtmtMtU9SemEw0k1N169heWHAjP8DkUVXRFKw53dR6Z1594P0Jo5t5Ek4PEUF
 mvL5mFk9Z7sEWYutlcq9NuTfGAljRAzdxF1ro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YglL26BPkLdb+nB/L4IuDXbTHUR9z5OvamFj5OfgDus=;
 b=MsoXm/2CmsxlniRBwhcKWeQus8AUU8r8UF2rsX4KG0sQiwComYeab5ZIJZgVNtMzrm
 Y4OaSDhJRxy/x5xepDFfcmS6qrNon/b7xYalKEWAkH93wKorUzc/0DNTMZQnwRj5Paze
 jTNowytqebStX/PF/v+YK7HRhSPCEWaHvf92ue7wVuyBWzmMdPi5I3twkWlA/HSrC3IY
 i+dZk9ngsTv1SWwtOg+9XVBkxgSyCvrW+3pZGRWE7pUvESXyOunPWd5p593wEj7Wxr0A
 RBA6FnC4qMLl4npOXI9ZnnkIQDK3oQ+8fdJGfCpEiHQ0dbrVt9WQHrwoKPI1o3wvLglR
 s9ig==
X-Gm-Message-State: APjAAAVCBIvE9Zktg6zKmgJxg1BFcAERsazCJIwL5as7q3akx1XHJKQk
 wXjTa1hvCs9Dn2/2JFw6/PXAPuXyCxU=
X-Google-Smtp-Source: APXvYqz/ntMIScAHDgeiGetwVB2VTqC5ro3LTTtsf80VoeOOwCEfkKze4kZA6kgGgJirEZJ6eSQs+w==
X-Received: by 2002:ac2:482e:: with SMTP id 14mr36491712lft.1.1556728887193;
 Wed, 01 May 2019 09:41:27 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id z26sm1244087lfj.66.2019.05.01.09.41.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 09:41:25 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id j11so13521854lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 09:41:25 -0700 (PDT)
X-Received: by 2002:a19:f50e:: with SMTP id j14mr13102495lfb.11.1556728885147; 
 Wed, 01 May 2019 09:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190429145159.GA29076@hc>
In-Reply-To: <20190429145159.GA29076@hc>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 1 May 2019 09:41:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
Message-ID: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Jan Glauber <jglauber@marvell.com>
Content-Type: multipart/mixed; boundary="0000000000003645400587d6305c"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_094130_301721_27748BD6 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--0000000000003645400587d6305c
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 29, 2019 at 7:52 AM Jan Glauber <jglauber@marvell.com> wrote:
>
> It turned out the issue we have on ThunderX2 is the file open-close sequence
> with small read sizes. If the used files are opened read-only the
> lockref code (enabled by ARCH_USE_CMPXCHG_LOCKREF) is used.
>
> The lockref CMPXCHG_LOOP uses an unbound (as long as the associated
> spinlock isn't taken) while loop to change the lock count. This behaves
> badly under heavy contention

Ok, excuse me when I rant a bit.

Since you're at Marvell, maybe you can forward this rant to the proper
guilty parties?

Who was the absolute *GENIUS* who went

 Step 1: "Oh, we have a middling CPU that isn't world-class on its own"

 Step 2: "BUT! We can put a lot of them on a die, because that's 'easy'"

 Step 3: "But let's make sure the interconnect isn't all that special,
because that would negate the the whole 'easy' part, and really strong
interconnects are even harder than CPU's and use even more power, so
that wouldn't work"

 Step 4: "I wonder why this thing scales badly?"

Seriously. Why are you guys doing this? Has nobody ever looked at the
fundamental thought process above and gone "Hmm"?

If you try to compensate for a not-great core by putting twice the
number of them in a system, you need a cache system and interconnect
between them that is more than twice as good as the competition.

And honestly, from everything that I hear, you don't have it. The
whole chip is designed for "throughput when there is no contention".
Is it really a huge surprise that it then falls flat on its face when
there's something fancy going on?

So now you want to penalize everybody else in the ARM community
because you have a badly balanced system?

Ok, rant over.

The good news is that we can easily fix _this_ particular case by just
limiting the CMPXCHG_LOOP to a maximum number of retries, since the
loop is already designed to fail quickly if the spin lock value isn't
unlocked, and all the lockref code is already organized to fall back
to spinlocks.

So the attached three-liner patch may just work for you. Once _one_
thread hits the maximum retry case and goes into the spinlocked case,
everybody else will also fall back to spinlocks because they now see
that the lockref is contended. So the "retry" value probably isn't all
that important, but let's make it big enough that it probably never
happens on a well-balanced system.

But seriously: the whole "let's just do lots of CPU cores because it's
easy" needs to stop. It's fine if you have a network processor and
you're doing independent things, but it's not a GP processor approach.

Your hardware people need to improve on your CPU core (maybe the
server version of Cortex A76 is starting to approach being good
enough?) and your interconnect (seriously!) instead of just slapping
32 cores on a die and calling it a day.

                Linus "not a fan of the flock of chickens" Torvalds

--0000000000003645400587d6305c
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_jv5g69gy0>
X-Attachment-Id: f_jv5g69gy0

IGxpYi9sb2NrcmVmLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2xpYi9sb2NrcmVmLmMgYi9saWIvbG9ja3JlZi5jCmluZGV4IDNkNDY4YjUz
ZDRjOS4uYTY3NjJmOGY0NWM5IDEwMDY0NAotLS0gYS9saWIvbG9ja3JlZi5jCisrKyBiL2xpYi9s
b2NrcmVmLmMKQEAgLTksNiArOSw3IEBACiAgKiBmYWlsdXJlIGNhc2UuCiAgKi8KICNkZWZpbmUg
Q01QWENIR19MT09QKENPREUsIFNVQ0NFU1MpIGRvIHsJCQkJCVwKKwlpbnQgcmV0cnkgPSAxNTsJ
CS8qIEd1YXJhbnRlZWQgcmFuZG9tIG51bWJlciAqLwkJCVwKIAlzdHJ1Y3QgbG9ja3JlZiBvbGQ7
CQkJCQkJCVwKIAlCVUlMRF9CVUdfT04oc2l6ZW9mKG9sZCkgIT0gOCk7CQkJCQkJXAogCW9sZC5s
b2NrX2NvdW50ID0gUkVBRF9PTkNFKGxvY2tyZWYtPmxvY2tfY291bnQpOwkJCVwKQEAgLTIxLDYg
KzIyLDggQEAKIAkJaWYgKGxpa2VseShvbGQubG9ja19jb3VudCA9PSBwcmV2LmxvY2tfY291bnQp
KSB7CQlcCiAJCQlTVUNDRVNTOwkJCQkJCVwKIAkJfQkJCQkJCQkJXAorCQlpZiAoIS0tcmV0cnkp
CQkJCQkJCVwKKwkJCWJyZWFrOwkJCQkJCQlcCiAJCWNwdV9yZWxheCgpOwkJCQkJCQlcCiAJfQkJ
CQkJCQkJCVwKIH0gd2hpbGUgKDApCg==
--0000000000003645400587d6305c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--0000000000003645400587d6305c--

