Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E3F103E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 08:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uiq3vBNR25DhX35kZhBr4bSb+FGufXb9kid8hnecuOw=; b=l2lJiWscmBiINZTBxtK/ux+oQ
	FlrgBHYxsAdl4aDGNG1Hj+e0yrNyAVFpDsq8uksAEjY8mDZBTnjiDZJc1NvXKzf9+p5BEwp3TZIKI
	2Uqp88bObR22ZoNlqQhbAZm3HUgaQYEjMJfq7mr1ZXA2Iriv4dHrgtmdPcc7vaq3h0ytfokTe6feA
	fT3RZaymXmnkbTR8yoT71I+h3OW38IElRw+PSfC0bdbFGrV/k22GyMG6YUd6Cp5F0TZMqMFwWIAbq
	6fF23YnYOtikdAvSyIGcqtCxN0Z1hhSnc1Ei1hYrhvFSIxQ/jpzp3hHQeMb8Ga29OKaWu6Vf8qKu/
	iFlFjVcRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSFkw-0008WQ-3I; Wed, 06 Nov 2019 07:29:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFkj-0008Uz-FZ; Wed, 06 Nov 2019 07:29:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id d13so18191095pfq.2;
 Tue, 05 Nov 2019 23:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=CZXGdk9uFu2d7V8fak5kkfAh72DjR9+d3K1XsYdLz38=;
 b=oGcJVGIO9nAfwZ9U9gs9P3ysGflXOrasF6qEiEhb6WpEy/r0O4b4WcXcLFHBABCJ7R
 QUOnBvxM0K+ORQ5GEwdd68Rbvuyj5JajApo+O20Qk7aw+1UO9FWS+6+LzSfRmtqSLrdq
 xvCHWuUmC+aEABOOmXkQjFb1AvmC1AZ+Bwjcb+sSQtS1GRTuQLMEbpuch+Wd9OB5B9nR
 MEP3ZWqL3l8J6HAnG5DRusZtOBOPsYcpMAZ4FMs88UBSyQ00BeMuWCLwvOdu7PSHWk++
 XtgmclZQxAc89Qmj6l/gKcwAVt76pZv/YKMWttV48g2arcZGneYo8SkwGAFkxvqsnIJf
 JInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=CZXGdk9uFu2d7V8fak5kkfAh72DjR9+d3K1XsYdLz38=;
 b=W4k7E51/n9wJZ+xIjNtwPCJE6Ff2f7liovTX+1+K5OPJO1DPIavOeJ/hY5KF+WpZXF
 TRdL4x1Xh5Xy7Nw8PyPLjWjssV/d27RgYB3V2NXP/f92M+XTMakA2OVAqB/P5VVVTKSJ
 YTPTp/+5qtOZFXb48LxQaJrIz5J0su9Tl3wsoLbSQ0CHfCk2/k39e3FNTLaLXVvuqFnk
 fBJEFoDsNBHIVhZYVcJ8fiOimncmPjFjQg5K/A3d7M+32pXELkNQ/tvqsT/gOc5AWeAm
 S1mvh34ovxYNKdolZ1xXk2Pp4tiVwza7CgnU5xlNDedSgDGy6oog4vuiynYGf9o8jyXR
 Udtg==
X-Gm-Message-State: APjAAAW/sWgj/JhKilunU2rcanW9MW08PCuogPw63sMNCab+jzVatDEL
 DaQSMaz19dfNdmH+y7YJI5I=
X-Google-Smtp-Source: APXvYqxBVXh1jmjAePr3S1g4NtkWBhTLAIl9OTaZqYXb6wMgMaiO3o4Y3mgSEbDLjoLjMA38tOeOfg==
X-Received: by 2002:a62:90:: with SMTP id 138mr1557534pfa.209.1573025356612;
 Tue, 05 Nov 2019 23:29:16 -0800 (PST)
Received: from [192.168.1.101] (122-58-182-39-adsl.sparkbb.co.nz.
 [122.58.182.39])
 by smtp.gmail.com with ESMTPSA id h13sm26505185pfr.98.2019.11.05.23.29.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 23:29:15 -0800 (PST)
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Geert Uytterhoeven <geert@linux-m68k.org>, Mike Rapoport <rppt@kernel.org>
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
 <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
 <20191104094748.GB23288@rapoport-lnx>
 <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
From: Michael Schmitz <schmitzmic@gmail.com>
Message-ID: <15fafca0-e4c4-1f46-4f19-9b2a177f7d6b@gmail.com>
Date: Wed, 6 Nov 2019 20:28:59 +1300
User-Agent: Mozilla/5.0 (X11; Linux ppc; rv:45.0) Gecko/20100101 Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_232918_194783_EF534672 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schmitzmic[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Am 04.11.2019 um 22:53 schrieb Geert Uytterhoeven:
>>> This indeed boots fine on ARAnyM, which emulates on 68040.
>>> It would be good to have some boot testing on '020/030, too.
>>
>> To be honest, I have no idea how to to that :)
>
> Sure. This was more a request for the fellow m68k users.

I heard you :-) Still doing more regression testing on the latest SCSI 
fix, but I can schedule this next.

Cheers,

	Michael

> But don't worry too much about it.  If it breaks '020/'030, we can fix
> that later.
>
> Thanks!
>
> Gr{oetje,eeting}s,
>
>                         Geert
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
