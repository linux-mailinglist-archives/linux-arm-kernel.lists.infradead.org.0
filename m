Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6251A608C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 22:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KyajxTAoxUFrBII4sXvOggMTzrGt5unlfWIzfWvPMU=; b=to+l5PAvh4T2sU
	n91Hn+GMef5emfNb0pN8RRrSC1HfMF2N0hQPEclX5Dt6wR2PIPYFI2I6Su6XCDXuZIJ3ndOf3FUVi
	HYahvIrF5DlUlfALjDWOcCGFOKqMbmbs2u/tcGH5rYWvCkBRKIJW+9dVsT+QWxbkIiw4VYdqXRQPB
	l7SpDTtVAm8r6GERKURAi+cfgDXvxT+P0ZPvjXBuip0YYkbwYIfnYSpaE1G/rCRetdf6Z1/Tcd2rI
	MOV5qBR3sOy/pxKkciFW+l2H8136ytMCU9msDEEDfO0sM96kB5MzGRmKZkFUsfgpCdy0B/Btn/6En
	OSOjy9tNZKP2m3oe1ybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNjN1-0004kC-Bb; Sun, 12 Apr 2020 20:38:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNjMt-0004iZ-Up; Sun, 12 Apr 2020 20:38:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id w4so7959069edv.13;
 Sun, 12 Apr 2020 13:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wa1SO5Y4XDQuq8silK209UBn0y1wsner9tHYDWtaFiM=;
 b=ROv6afYR/x28UGaGfNFGr5Yvqz8lUeh3jEuJ0jVR+y/ij3iXffQKNnJubd1SNgXCSv
 i6DNJ7fgP7KJDcRhcu6v3Nm4zB3bZt0tYadE4ojb15hhFhiyAcIOL1Ls6rFOYOO89Z/h
 bg0SNjGFL4iamcklP68aL1t3juXyMjLt+42TtwC2LAbLaZjl4uTliLdRWqX9sM54gaVx
 1BWIU/RFC/wOltz9sdIW/09VBeb7YbND3IXR5tNGIvitPmChOwGrxN35d4Hxs99ci/tK
 xRRxXuPfsWu4hINrhhuuotZ1ZawyKbs1U7wuAA3W61+uIS9yc4lIU16cCeRE+84Bty8F
 33Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wa1SO5Y4XDQuq8silK209UBn0y1wsner9tHYDWtaFiM=;
 b=teQdjXKLOuWPXcHyZrD5MqtW6Qp6r4GyqW5ujJsLEAAJGgR+5OT5xz2rrRnFQVaFqw
 bjqVUOBTLX87EvGpSX+5Mlw9KuGzwv3GG4rTJ/E4w0b9nW7eNAgyNuHM1EuDMWw4mGNx
 HFELvPpnWZOH5WKW6EUDJ65MdZPGfdRzNLhz2cMzIKQpjOyi7vsr7Fx7h8w0dRx7ZwBi
 udXpEV+HeAl6oB/4n23yh6IfLYIqv9wiYPUdn0TP9GTb/WfJkWf4aYSJYaIy09yYtIqy
 wbIHNKxUowep/VE8fN7kWLUMetL5FzWoUwS6+Th/N6uBhFumDgq313mnjqYnw09O1Ol5
 IIIg==
X-Gm-Message-State: AGi0PubNs8P0N/Q+wnoOP1ZrsKDiHvdPDUN9Q40b3cd5GIZwhSFaxsb5
 f5X2qQTTgX2JkuuOHsOuYMg4MkPiTX4d4pJnV+Q=
X-Google-Smtp-Source: APiQypJGMBeffCVdcFVnN9fRT6uxwApkPdfG285+gWq3FbH/rXCHsj/Y8rQW4Y8qptY48Zvi0ojWwjhJLJkhWzYLTKY=
X-Received: by 2002:a17:906:2458:: with SMTP id
 a24mr11998004ejb.239.1586723891740; 
 Sun, 12 Apr 2020 13:38:11 -0700 (PDT)
MIME-Version: 1.0
References: <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
In-Reply-To: <87wo6klbw0.fsf@x220.int.ebiederm.org>
From: Bhupesh SHARMA <bhupesh.linux@gmail.com>
Date: Mon, 13 Apr 2020 02:07:58 +0530
Message-ID: <CAFTCetT=7rYm_yPSZWjT=+fKPujuqwKyY_2aBcAR17AifuHaoA@mail.gmail.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_133816_024966_745B4D1D 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bhupesh.linux[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 1:26 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>
>
> The only benefit of kexec_file_load is that it is simple enough from a
> kernel perspective that signatures can be checked.
>
> kexec_load in every other respect is the more capable and functional
> interface.  It makes no sense to get rid of it.
>
> It does make sense to reload with a loaded kernel on memory hotplug.
> That is simple and easy.  If we are going to handle something in the
> kernel it should simple an automated unloading of the kernel on memory
> hotplug.
>
>
> I think it would be irresponsible to deprecate kexec_load on any
> platform.
>
> I also suspect that kexec_file_load could be taught to copy the dtb
> on arm32 if someone wants to deal with signatures.
>
> We definitely can not even think of deprecating kexec_load until
> architecture that supports it also supports kexec_file_load and everyone
> is happy with that interface.  That is Linus's no regression rule.

TBH, I have seen several active users of kexec_load on arm32
environments and we have been trying to help them with kexec issues on
arm32 in recent past as well.

So, I agree with Eric's view that probably deprecating this in favour
of kexec_file_load will break these existing environment.

I tried to do some work at the start of this year to add
kexec_file_load support for arm32 in my spare cycles, but I gave up as
the arm32 hardware had a broken firmware and couldn't boot latest
upstream kernel.

May be I try to find some spare cycles in the coming days to do it.

But I think since kexec_load is an important interface on these arm32
boards for supporting existing kexec-based bootloaders, we should
continue supporting the same until kexec_file_load is supported/mature
enough for arm32.

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
