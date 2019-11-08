Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC4F3EED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 05:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6gCR76lErJP/CRx1ODDRIscorcRLw79ZTejKRwI8KPo=; b=hykGgAKXz4p7TMv8Yig1hQjyK
	/z8NM6e4A3c6PADHVGM+PTim/Bg8OlkZ+V5hwjLVknQ3+PBibGm/MeLS8bG6RLWA1JoT54XH4Ry38
	SIkVp/cC9E3Y0rVzdXdNiBkbx5Z1+9irW/stZeaqHWXKP+fuQszKmhbbDMxSkp90df2ITKCFKumoL
	f0lqke1zgnbxPLM5W6QtdWH7IIh58EAtnHA6BaB/Q9r/fS4i1GtUiPbwnGNgCJlWyCH835BaG56L8
	PRWXzPQkSLQxaxhG6HM7x9+K33yPta7wAI3hRhkMqpafdgQbPrbdaQJjh/MosE5rB2mwpdSJDVAGa
	/aVkwYFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvul-00018k-0D; Fri, 08 Nov 2019 04:30:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvub-00017x-VF; Fri, 08 Nov 2019 04:30:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id e3so3188462plt.7;
 Thu, 07 Nov 2019 20:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=GEvPrgPPegoWDjxGYmMInikn90DDnMAOw8xBaDl5kZA=;
 b=pGQ+a/83A9/0Nc2QLG/lrr1EYbt/bjvX3SE4LpTBgZGf0KilWjqO6VeOG6Jwcb1D23
 fj+jvlUeTjjSw255ZQykSDw3AJVbte/f/cE1oLe8M6sGNMwYNJK9ALY+tjxZheqDchxu
 uAZMm1A8J8KM9d9f92xRrv1AInfaJSQbOM4UjupIdxR+V8PDnlIAOjTNsXdQqC1CSA9i
 7NDAIlAd9wtaEkQI0UHHeMwVQpIhz75MXzB4PVA2lnJTqpyORABxoTq5C4z7RED5Jagj
 p7JTWMZQtDHju/NCEn/n/ZU5jW56e2cp+KSQRvmhV5kQrLQKAhFZLEAm61D2fgLPindm
 WN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=GEvPrgPPegoWDjxGYmMInikn90DDnMAOw8xBaDl5kZA=;
 b=J66x3lxlaLjyvkwB42JLrxY7ZTfXeUlRAzivD6d/expJQ0pa/OrWhyt9m+LxQIqvhX
 a8ao8guKEk1532VhBVt21ixZYEPUBl5JZcT8xBfgCvfxz+yUpKLhQb35IKBxADaxs4dg
 TTyaqyhSAqBJhFCvmluaN3A7gL/sw6dJkd5mn3xd8OuXvP6PPuv4FAKRwvhXU1xiu+5L
 l+M76vwsrbhFayvGslIuNJop8BvYjvP7cCQMrN30zo39OKeoTHnu33vk1cevSMMlKkcm
 yJxsWV/3cponbA+JtmZFWhFQm9NQq2y2UmObukHTjEyzTeBYL0+m3qLpWskB52NYr2Ki
 HtUw==
X-Gm-Message-State: APjAAAX94QTh+YVNCYFkv+WIuNOxTt/y5DAhR/mXNyqNyd8N/W0XeAFk
 TtzWaKLEmMPReV8A+2b8efg=
X-Google-Smtp-Source: APXvYqwQ686n7vNnzVLImLtqcTfZ3PQU/gu1LdOpnaXjAFca86+mHnqZ1aY/PwV9eAq6yZBUTvdpJw==
X-Received: by 2002:a17:90a:bf04:: with SMTP id
 c4mr10812587pjs.5.1573187416969; 
 Thu, 07 Nov 2019 20:30:16 -0800 (PST)
Received: from [192.168.1.101] (122-58-182-39-adsl.sparkbb.co.nz.
 [122.58.182.39])
 by smtp.gmail.com with ESMTPSA id x70sm4621756pfd.132.2019.11.07.20.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 20:30:16 -0800 (PST)
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Geert Uytterhoeven <geert@linux-m68k.org>, Mike Rapoport <rppt@kernel.org>
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
 <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
 <20191104094748.GB23288@rapoport-lnx>
 <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
From: Michael Schmitz <schmitzmic@gmail.com>
Message-ID: <3d908bbf-0469-c53b-dd86-87df98f40ee7@gmail.com>
Date: Fri, 8 Nov 2019 17:29:58 +1300
User-Agent: Mozilla/5.0 (X11; Linux ppc; rv:45.0) Gecko/20100101 Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_203018_031928_EF3E3F8A 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schmitzmic[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> But don't worry too much about it.  If it breaks '020/'030, we can fix
> that later.

Boots fine on 030, too.

Cheers,

	Michael


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
