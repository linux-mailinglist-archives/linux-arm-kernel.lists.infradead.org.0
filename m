Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6105A55CE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 02:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIHH6F3Hegvg26khzOzo8Pf9MsWPt8TpBY+12106CKo=; b=qoJrsIwxqOYKRI
	AslMB7JaD/KOAJiHyDv1TboJ7NOU+XIH9yX2zMAlKeloYxAKGfkuIWFLkBnHH01TZURj/f0S69p9+
	hAg9fSNAG518VIYxy6orM009TRXaAkhSEH36+sqq2BuC15owrIqEo2ljn1sgcVizcLslJDjJokFAl
	OcE1u+uAjHq/l/OF0miD4JTfYlCMhjY/O4FSFYL5gHAFa226PxoXgpE+Syxl0yKa4dkCsCh09fHOu
	Hoo8Ik2Yk0apmue3XsWbdKv39n7uWtUY4V2FdU/H/WQOlFy03ZgjDWBK10aDTYvpRCQGGnIve+ZNw
	HR9D+EXloTRM+Jlq367w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfvo2-0008Qx-BQ; Wed, 26 Jun 2019 00:28:58 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfvnq-0008Pz-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 00:28:47 +0000
Received: by mail-io1-xd41.google.com with SMTP id m24so1216697ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 17:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T/uR/4PciUq//wm8VvTrYpqXShwr7/kFFKyCPyP8pcs=;
 b=YeX/xFTe86cLjtEiwNDGr0CKTn6yvfRoFVYAyjGpJqcjyjOauh0oSms8qNpsPWv76x
 eRvUUgmWL0+6wScBbr8rD2ZZ/RfhNpAX4UKm1peplkD8GmwmOk+8uVKUsB9hanwxe3Dm
 H0krLG+sD5Fzr71HJU1x0kXlYQzuI9cWXt4LY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T/uR/4PciUq//wm8VvTrYpqXShwr7/kFFKyCPyP8pcs=;
 b=uN6brP4UH4kJ7fHySmuzsMuW/CLzCdpDXQBTgQt7D8g54YA/uCMy1L/1F+ho9Y30kt
 WMnJZ9/vRJURGpK5zRx8VfeSOYpmM3OwWgzaLVgO9RkL+bFzQnjM2b+rmPdTeBGBi1cx
 bvz/S5JDn3P1YQkLJnZuVBVFEHnx/5R05jGqIoBwJ3HW46pKH+/XdjfHApGaX+9bzz07
 gdx0ce4zYiwAVj0iRdMBPtAxh8Hsxy6ElOU8BjBS8tHck2baGMAePbhP+9QbgmbrNxMe
 dCWyorGf4yfn3qTvjO02NO2iIwHXCDs7eFX6nQYhQTQBTBHtW4AK4KQyVmPezOsNQqSs
 TIJw==
X-Gm-Message-State: APjAAAVBcHhZnhQ5iP3wakCg+Y/bKCVfeg5N7X6Nt/6xv6VdjAwdEFbw
 IMRUezfrPINciFRbat6VDdiXaviDTGd6X+CeDzbfdA==
X-Google-Smtp-Source: APXvYqxX0Qrt909cJIALCW0svY89PQl3z7r/J2jSYrLO+BEo6+PoMkKF1jAWxKfLc2PBHctF8DPoeOKanHzXan7VOSY=
X-Received: by 2002:a6b:6d07:: with SMTP id a7mr1751422iod.254.1561508921439; 
 Tue, 25 Jun 2019 17:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
In-Reply-To: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 26 Jun 2019 08:28:30 +0800
Message-ID: <CAADWXX8wdEPNZ26SFJUfwrhQson3HPTrZ7D2jju3RhEeMuc+QQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] Enable CONFIG_NODES_SPAN_OTHER_NODES by default for
 NUMA
To: Hoan Tran OS <hoan@os.amperecomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_172846_069611_41A9ACCF 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is not a comment on the patch series itself, it is a comment on the emails.

Your email is mis-configured and ends up all being marked as spam for
me, because you go through the wrong smtp server (or maybe your smtp
server itself is miconfigured)

All your emails fail dmarc, because the "From" header is
os.amperecomputing.com, but the DKIM signature is for
amperemail.onmicrosoft.com.

End result: it wil all go into the spam box of anybody who checks DKIM.

                       Linus

On Wed, Jun 26, 2019 at 6:30 AM Hoan Tran OS
<hoan@os.amperecomputing.com> wrote:
>
> This patch set enables CONFIG_NODES_SPAN_OTHER_NODES by default
> for NUMA. [...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
