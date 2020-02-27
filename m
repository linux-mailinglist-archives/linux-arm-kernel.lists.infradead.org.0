Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592A8170E01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 02:48:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JaP+x9vv6uETIxVh/90QdZsUJEvJ+1j2YtOVmt0IoU=; b=VTL452yVN0/TNf
	SK0VYLRFm0kRbq+CSoXRVL8m9la9tYeLh6srNftALC0M70MbN4+QvR8FoznbSXJ5GbTBumPAetMD4
	MrWzuWpUw1ztTDIHjr4N3oB/9dE3BhCwJoxnIk0onZ15dxnctVDxHEHs+E69lxrfjzAy/p7DLkPe9
	FyFv8bsLlKiBqtCjKd0CFK/07fO/RmlbkvfO896trEVTDfgn5UldTJHnLHxWTBXMgK5k7Ir8+Apdi
	QEJorVlJrrlA51jF0dkkVjNwEDosBSfuiMrHlLTF2nLAGQfV7ELe+ORREROiVbJoCJC2LOLe7cbBE
	6Q9d/UB6nkDrN249mkdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j78HG-0006Tb-Qc; Thu, 27 Feb 2020 01:47:50 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j78H1-0006SU-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 01:47:37 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01R1kxCA014964
 for <linux-arm-kernel@lists.infradead.org>; Thu, 27 Feb 2020 10:47:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01R1kxCA014964
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582768020;
 bh=gka4nv6hoOzbwfb7j4YlBZPR1X9FHcvBUbW+Bllno6o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Rng4mTvuC3n3GOagnxVc5mUyTu39YpuSpd23P+VVp4+Hk20cofBKVJFKUOOQv5Y3G
 K+qS0GK60XrSZNlmEARCRT5qTrKZgDAuo5ngBom4Ob88b13IBA4xoxKoAWDMQCR9v8
 yxtTRzXTz8IE3qN0WdrSZi2xSiSeJMtIcxlB5vpqpxAdBic9qLZItkcLes/fIyC7vL
 C8G+HU5MMiUbpuELUlSJWUJFkfQoTWKM+Al5yzcwuzvjY4MM4z/vPN1CQBEEqwJwau
 GOwGdkcxAVSEWr9l1crmT/z6GFNg/l2zS9f+iYA0theiV5LbHgXrQQXHKCmzEXuJnS
 xKMugWpiyRAPg==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id a2so805460vso.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 17:47:00 -0800 (PST)
X-Gm-Message-State: APjAAAXKjF4vsYVhe9c42KHWVeN0XwiPQ03Fqig3W0Frxj2YB486SgDp
 enhTYAgvKBXJdhC+uTDpW4DB2QLwDEjh+4uNDG0=
X-Google-Smtp-Source: APXvYqz2gMdIqZp6jmEWo6V6bYnkSsv9Pt66yn+koMjv2AHfNxu7UVya7JTzAMd1ZsC9wZAXV3G/f2BuvBQMLkd3Qw4=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr1167903vsh.179.1582768019168; 
 Wed, 26 Feb 2020 17:46:59 -0800 (PST)
MIME-Version: 1.0
References: <20200222110435.18772-1-yamada.masahiro@socionext.com>
 <20200226221325.GA19817@bogus>
In-Reply-To: <20200226221325.GA19817@bogus>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 27 Feb 2020 10:46:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNATQGQu8bWR5ybcfdWckZ_TsXKBqi3kxtO4=9=WDm4BMuQ@mail.gmail.com>
Message-ID: <CAK7LNATQGQu8bWR5ybcfdWckZ_TsXKBqi3kxtO4=9=WDm4BMuQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert UniPhier
 AIDET to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_174735_850569_E35FD23B 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, Feb 27, 2020 at 7:13 AM Rob Herring <robh@kernel.org> wrote:

<snip>

>
> It all looks fine, so I'll drop the questions and apply.
>
> Rob

Thanks for your answer!

Yes, please drop the questions.

I just want to put them below '---' marker.
(You can see some questions in my patches)

I use a tool that automates this, but I made a mistake
in scripting for this one.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
