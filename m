Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186D3C2BF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 04:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhwMvoosqxh9bOLEMlwA6DHbF+vhq6Ku1GReZVajDNw=; b=X5t3KjFk3X5Ao7
	HN0oPr39jMowwxqIQ8lJhJGY6xK6maDxk9TV+Rr4m1uaR+U/+Vl8EON61cMF3wmiQy/maPkVcLoLg
	jZKlY29z//82N0wfC0A9/7CkqHJDowpXzS845ajn+8PvKOksCBm2Y0fXVkpShXEuK88DIgsSyjx18
	iArfsdveUDdcneG6syowfIMb0gR2rLDgbgGX4lQJTMgJ/HWyYeU5RL+4rnEjhSB3C3wmZ3/JgHDWy
	tjIMFyc1MpAZjWhFzo+i/GnmQ+BaMXDrLfHqV2A9YPg7abeITrXsvdnG2ZnsoElktnuXEIXd2zcjH
	dUVcdhqAQYpAgqqdxIng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF82E-0005oF-3b; Tue, 01 Oct 2019 02:37:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF825-0005nn-16
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 02:36:58 +0000
X-UUID: 166ee87ab1fd4637acf8b5ea5045ecd3-20190930
X-UUID: 166ee87ab1fd4637acf8b5ea5045ecd3-20190930
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1233309953; Mon, 30 Sep 2019 18:36:48 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 19:36:47 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 10:36:39 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 1 Oct 2019 10:36:39 +0800
Message-ID: <1569897400.17361.27.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Date: Tue, 1 Oct 2019 10:36:40 +0800
In-Reply-To: <a3a5e118-e6da-8d6d-5073-931653fa2808@free.fr>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
 <a3a5e118-e6da-8d6d-5073-931653fa2808@free.fr>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 30DA4FADFE5493A2DA7970C7B5D1BB63117B8C3E403BB8DB2EA5B42E8CA9F7522000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_193657_078277_D69DB8CC 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andrey
 Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-30 at 10:57 +0200, Marc Gonzalez wrote:
> On 30/09/2019 06:36, Walter Wu wrote:
> 
> >  bool check_memory_region(unsigned long addr, size_t size, bool write,
> >                                 unsigned long ret_ip)
> >  {
> > +       if (long(size) < 0) {
> > +               kasan_report_invalid_size(src, dest, len, _RET_IP_);
> > +               return false;
> > +       }
> > +
> >         return check_memory_region_inline(addr, size, write, ret_ip);
> >  }
> 
> Is it expected that memcpy/memmove may sometimes (incorrectly) be passed
> a negative value? (It would indeed turn up as a "large" size_t)
> 
> IMO, casting to long is suspicious.
> 
> There seem to be some two implicit assumptions.
> 
> 1) size >= ULONG_MAX/2 is invalid input
> 2) casting a size >= ULONG_MAX/2 to long yields a negative value
> 
> 1) seems reasonable because we can't copy more than half of memory to
> the other half of memory. I suppose the constraint could be even tighter,
> but it's not clear where to draw the line, especially when considering
> 32b vs 64b arches.
> 
> 2) is implementation-defined, and gcc works "as expected" (clang too
> probably) https://gcc.gnu.org/onlinedocs/gcc/Integers-implementation.html
> 
> A comment might be warranted to explain the rationale.
> Regards.

Thanks for your suggestion.
Yes, It is passed a negative value issue in memcpy/memmove/memset.
Our current idea should be assumption 1 and only consider 64b arch,
because KASAN only supports 64b. In fact, we really can't use so much
memory in 64b arch. so assumption 1 make sense.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
