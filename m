Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAB914E754
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8T68VQtBwspzJgK+YOd53iHHWDrAU9v4rv03hEwUfY=; b=oE/lcrmYOxuaNI
	9xjusWjF7PyUn1NJOgVn1LAaVYnKOryTDLULayc3gcyU1OvQXTR/5X8c5iwJ0sWfvWm50eui03xW6
	kc3Fu6supz6V8Mmgp2mXW42+epYAHKyt/0rd8B8IcwNCanqwm5Tui94bSyqw9Wf/vUulO9Iy0+USh
	TJR8l7lRoc/yWl6aPMUMBfqlTEd8Qxvu1unu9fe5Dn7ooD3UVuMGdln3YKIQ9/p2VPwcRZv4XuKGJ
	BsSEikkn5ubsbJPGWeqqjWR+Q1xedzf56ZuSbevTH76y26U5obDXMy6JglSf6WUQFj+dOTRDwUf5W
	MsqaYnNvfqfg9aTNrijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixMbA-0000dy-NN; Fri, 31 Jan 2020 03:04:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixMb1-0000dQ-T0; Fri, 31 Jan 2020 03:03:54 +0000
X-UUID: 2a9289a6ce88494f81af2130be738f48-20200130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=J/YS9xrz7SE39sg55EiuDt9slMVYOmJaP+90r0kGMF8=; 
 b=kU2cMA3os+/I6YXPqwB3/BHr2hvZiLyvU2Lj+5VvB8TH8KSVmTqGsWBo8WkSqev0Fo5qa5lCyQIDWwweOUrgjZzbKq6msuR9cHtm2SEB4ldme0hpsCOJXOmL4s7fTazW5y3IVtZk1Sb42cy/+JsG7g5lQYKgsQGWtP4Otbog4FI=;
X-UUID: 2a9289a6ce88494f81af2130be738f48-20200130
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2014001226; Thu, 30 Jan 2020 19:03:48 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 Jan 2020 18:54:12 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 Jan 2020 10:53:02 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 31 Jan 2020 10:51:23 +0800
Message-ID: <1580439225.11126.34.camel@mtksdccf07>
Subject: Re: [PATCH v4 2/2] kasan: add test for invalid size in memmove
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 31 Jan 2020 10:53:45 +0800
In-Reply-To: <20200130181613.1bfb8df8e73a280512cab8ef@linux-foundation.org>
References: <20191112065313.7060-1-walter-zh.wu@mediatek.com>
 <619b898f-f9c2-1185-5ea7-b9bf21924942@virtuozzo.com>
 <1580355838.11126.5.camel@mtksdccf07>
 <20200130181613.1bfb8df8e73a280512cab8ef@linux-foundation.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_190352_002694_4905CF59 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-30 at 18:16 -0800, Andrew Morton wrote:
> On Thu, 30 Jan 2020 11:43:58 +0800 Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> > On Fri, 2019-11-22 at 06:21 +0800, Andrey Ryabinin wrote:
> > > 
> > > On 11/12/19 9:53 AM, Walter Wu wrote:
> > > > Test negative size in memmove in order to verify whether it correctly
> > > > get KASAN report.
> > > > 
> > > > Casting negative numbers to size_t would indeed turn up as a large
> > > > size_t, so it will have out-of-bounds bug and be detected by KASAN.
> > > > 
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
> > > 
> > > Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > 
> > Hi Andrey, Dmitry, Andrew,
> > 
> > Would you tell me why this patch-sets don't merge into linux-next tree?
> > We lost something?
> > 
> 
> In response to [1/2] Andrey said "So let's keep this code as this" and
> you said "I will send a new v5 patch tomorrow".  So we're awaiting a v5
> patchset?
> 

Hi Andrew,

The [1/2] patch discussion shows below. Thanks for Dimitry help to
explain it. So that v4 patchset got Andrey's signature. Because I see
Andrey said "But I see you point now. No objections to the patch in that
case."

@Andrey, if I have an incorrect understanding, please let me know. 
Thanks for your help.

https://lkml.org/lkml/2019/11/21/1019
https://lkml.org/lkml/2019/11/21/1020


Walter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
