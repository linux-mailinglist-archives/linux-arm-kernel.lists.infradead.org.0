Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D31B1341A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHxbgUDtOhtsm9nyizDN8IozTf3m3iI2zcEcuj+2n/o=; b=VOfCx4UqQ5Epjl
	GaSGf/aoA0Thc4kPO5PxPCPpETmwwzBNVs3nuA9hHF2oP5GkJHIH6RTAhonLya1WECxxfA3I9k7F8
	evgB6LlVFGiDea4O41j+SdBcuZ10sU+tZIHilcLRu8GF60sL2Xtad6f3RG00QcMSgcxHmn+lfrqrW
	kcwDS7/5b6Qag6XKC5awYGaFfhtPck5g6vFFOKaFKfO7J4cz391EYy5NHsRXhO8xaROnpxC7C/sqt
	5RrcrSuTfrmSc+a7wwWHrOF2ekbFXxB9W/8XKb20O9gu+jJOK+QyOQpnJscvWdVKvi2w+pgkAzomf
	5lIjRvcE3/7v2kh0RsnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMe3L-0000NM-QX; Fri, 03 May 2019 19:41:03 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMe3D-0000MV-Lr
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:40:57 +0000
Received: by mail-lf1-x130.google.com with SMTP id o16so5186212lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VveNzZAjXPBlYkWe2poT9sM0nBecoUnFUlLniFmqy38=;
 b=QXskVGEGvKifmiGq0XwJk+jLIWyk2HquWywFpIRDLlglZjN3GPkI4xyp+M2/GjUy95
 nvgp4UbOqLkdLtBy1tbU9hnCLo3S7Or1YJxBoCHN7LZpzhj+djviLLsDFMQ8U6cZJA8m
 uqwoEPfAUULAYl55QiZti76rKbbs12Z71hD20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VveNzZAjXPBlYkWe2poT9sM0nBecoUnFUlLniFmqy38=;
 b=TUz2kR7sMpxkwqu6iU14IFjk3vvkxhX/tx19fWO3JlE0lyVQZWYV7BrtgQWb0znSLz
 +DjMtG0GJwQCxbswxjOs+bxBD81HPVtPpp0hofrFseB9p3164iEtCxQdFVXAfDzuo0Gj
 h2E6Y7g4o8CWuMXWlIV+XN5SdtODXur7hlrPPz2c8AihJcXJD0TGmybkb/7HyPwra7kt
 c59hlwndDi8n838rW4nhQWsivRaowFP4uaVFyRBwSw7zmqHS3m5mhn2u0A/3GsS97Rg3
 P3Z6QgZ3eLH3ceI2ME5dkq+r67Ozf8j9vtM+1BRL8mHJoHQ9baBq0fnm1yejhBdPJp7B
 nFnw==
X-Gm-Message-State: APjAAAWY4PemxPjw9J0f41HvHqW2H3WpDdXHFRwkbZtbdfrmTkvzW00A
 ZVKZRGBGR4DRnc/dTnSZhMFMqgx/P9k=
X-Google-Smtp-Source: APXvYqzJd7Kdu4wcsphOxc6Z63jvlA/tR3S/53FtE5GLCKNRK59fSeNsqVUbkuBcmEafu8OanT9bdA==
X-Received: by 2002:a19:1dc7:: with SMTP id d190mr6100489lfd.48.1556912452738; 
 Fri, 03 May 2019 12:40:52 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id h12sm659030lfj.45.2019.05.03.12.40.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 12:40:51 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id w23so5188022lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:40:50 -0700 (PDT)
X-Received: by 2002:a19:f50e:: with SMTP id j14mr5925434lfb.11.1556912450582; 
 Fri, 03 May 2019 12:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
In-Reply-To: <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2019 12:40:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
Message-ID: <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_124055_736799_9A2DBC2E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jan Glauber <jglauber@marvell.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 4:19 PM Jayachandran Chandrasekharan Nair
<jnair@marvell.com> wrote:
>>
> I don't really see the point your are making about hardware. If you
> look at the test case, you have about 64 cores doing CAS to the same
> location. At any point one of them will succeed and the other 63 will
> fail - and in our case since cpu_relax is a nop, they sit in a tight
> loop mostly failing.

No.

My point is that the others will *not* fail, if your cache coherency acts sane.

Here's the deal: with a cmpxchg loop, no cacheline should *ever* be in
shared mode as part of the loop. Agreed? Even if the cmpxchg is done
with ldx/stx, the ldx should do a read-for-write cycle, so at no
single time will you ever have a shared cacheline.

And once one CPU gets ownership of the line, it doesn't lose it
immediately, so the next cmpxchg will *succeed*.

So at most, the *first* cmpxchg will fail (because that's the one that
was fed not by a previous cmpxchg, but by a regular load (which we'd
*like* to do as a "load-for-ownership" load, but we don't have the
interfaces to do that). But the second cmpxchg should basically always
succeed, unless something exceptional happened (maybe an interrupt,
maybe something big like that).

Ergo: if you have a case of failing cmpxchg a lot, your cache
coherency is simply bad. Your hardware people should be ashamed of
themselves for letting go of the cacheline without just letting the
next cmpxchg succeed.

Notice how there is *NO* ping-pong. Sure, the cacheline moves around,
but every time it moves around just once, a thread makes progress.
None of this "for every progrress, there are 63 threads that fail"
garbage that you're claiming is normal.

It's not normal, and it's not inevitable.

If it really happens, it's a sign of bad hardware. Just own it, and
talk to the hw people, and make sure it gets fixed in ThunderX3. Ok?

                  Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
