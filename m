Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BEE182807
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtcK8M6Z3zgaF6iJBHRvEoUtsXRmIkk4p3W3PlEYKu0=; b=IdUOUg08bbtJLw
	GdPqgf00I30f/5DKjDSkwWCyIaoN/Q+QGYXS94j+fK7yaPECCYTIGCIIUvgvV7XIMBn3WQ4CDWSmg
	sJ91k3NqOpQVsRWDSCtLVzFAZndLvR1bfFUPH/EJarNkc4+7ujl3CYKfSnnufharRMLJA2y467uRE
	+h/6U+5C5zxHVyOl3fXsMW9h42ztsDkDXAsh64A/lQjuFnIW9UJB08wVepgxvHcCSQCKJru8BqAWL
	Nhz/zKMJHRKD92jHs5s7XKt6CELZcK/s89mVM5n2nKKP0kq1Sz/c1qXDIPZQDh5z9pEJUEoZrkSjR
	LLWGbxH7yn7IqJSfRNDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG4h-0006uf-5n; Thu, 12 Mar 2020 05:08:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG4Z-0006uG-3q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:07:56 +0000
X-UUID: 98fdcdc0608741739cbbb2d3fa3fe28e-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EiH9wliZJ7SlCOgjGr1o9krpwAx0Yhk57Jmk6JMcvtA=; 
 b=WXCgrUwvwPckPJtrgli7CI1U5PziZL60rSUU1If/uRKOocJn2Bf7DiMVvg1bW13c5lC7uTkCP6KBN8KunoFOwNYhV1Mnb0qSB42mvG7PgydgKaDLk6l7YrlSI6ZMLBgFkx1DDTSfkPPFRz16ibhCCTruDcXwWLcaJdzXQN2W9pU=;
X-UUID: 98fdcdc0608741739cbbb2d3fa3fe28e-20200311
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1255333377; Wed, 11 Mar 2020 21:07:51 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 22:04:19 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 13:02:47 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Mar 2020 13:02:55 +0800
Message-ID: <1583989425.17522.29.camel@mtksdccf07>
Subject: Re: [PATCH -next] kasan: fix -Wstringop-overflow warning
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 12 Mar 2020 13:03:45 +0800
In-Reply-To: <20200311163800.a264d4ec8f26cca7bb5046fb@linux-foundation.org>
References: <20200311134244.13016-1-walter-zh.wu@mediatek.com>
 <20200311163800.a264d4ec8f26cca7bb5046fb@linux-foundation.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_220755_162809_F6A8DAEC 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 16:38 -0700, Andrew Morton wrote:
> On Wed, 11 Mar 2020 21:42:44 +0800 Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> > Compiling with gcc-9.2.1 points out below warnings.
> > 
> > In function 'memmove',
> >     inlined from 'kmalloc_memmove_invalid_size' at lib/test_kasan.c:301:2:
> > include/linux/string.h:441:9: warning: '__builtin_memmove' specified
> > bound 18446744073709551614 exceeds maximum object size
> > 9223372036854775807 [-Wstringop-overflow=]
> > 
> > Why generate this warnings?
> > Because our test function deliberately pass a negative number in memmove(),
> > so we need to make it "volatile" so that compiler doesn't see it.
> > 
> > ...
> >
> > --- a/lib/test_kasan.c
> > +++ b/lib/test_kasan.c
> > @@ -289,6 +289,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
> >  {
> >  	char *ptr;
> >  	size_t size = 64;
> > +	volatile size_t invalid_size = -2;
> >  
> >  	pr_info("invalid size in memmove\n");
> >  	ptr = kmalloc(size, GFP_KERNEL);
> > @@ -298,7 +299,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
> >  	}
> >  
> >  	memset((char *)ptr, 0, 64);
> > -	memmove((char *)ptr, (char *)ptr + 4, -2);
> > +	memmove((char *)ptr, (char *)ptr + 4, invalid_size);
> >  	kfree(ptr);
> >  }
> 
> Huh.  Why does this trick suppress the warning?
> 
We read below the document, so we try to verify whether it is work for
another checking. After we changed the code, It is ok.

https://gcc.gnu.org/onlinedocs/gcc-9.2.0/gcc/Warning-Options.html#Warning-Options
"They do not occur for variables or elements declared volatile. Because
these warnings depend on optimization, the exact variables or elements
for which there are warnings depends on the precise optimization options
and version of GCC used."

> Do we have any guarantee that this it will contiue to work in future
> gcc's?
> 
Sorry, I am not compiler expert, so I can't guarantee gcc will not
modify the rule, but at least it is work before gcc-9.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
