Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4471ED5990
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 04:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaglZCWyQq4Qtexm1d+N3dJG8+N2sA5MZ43u8lyjceQ=; b=HEEFk1qjD20PSv
	Wl0QKRDd5kTG1MEROUQGzRC1MvYlA95tOcAvGNxricLTIj45BTakdlPqeSsiv6KcEExxJTnQ00ddK
	P90MfkeqI/vPfbhNDOL9rAe1q8Yt89cOvwp+9XIgU34Jv39A62XUg4aM8Y7PawapRT8/fmtAeZjmN
	j8P13LyC9Qg1diAjpIeyCOAvEL/9GRWUuZlSJTr+oXGs2ci7ZPIFfdxoM/jZHzNG5/MBLIGLdAgGg
	Imk2bB+mVUKHz59uFHi8opGnrgl1h08w95++8i4XzP+LK+kxM0TbGFc9reXCAZn6PWvgF0k61oHHP
	/h8hEj5RvhlmVrhWsdCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJq7U-0002JG-1q; Mon, 14 Oct 2019 02:30:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJq7M-0002Ig-QV; Mon, 14 Oct 2019 02:29:54 +0000
X-UUID: a6cae1c369814cb9ba604129454392e4-20191013
X-UUID: a6cae1c369814cb9ba604129454392e4-20191013
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1200223642; Sun, 13 Oct 2019 18:29:38 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 13 Oct 2019 19:19:42 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 10:19:40 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 14 Oct 2019 10:19:41 +0800
Message-ID: <1571019582.26230.8.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 10:19:42 +0800
In-Reply-To: <CACT4Y+Zbx-2yR-mN5GioaKUgGH1TpTE2D-OgLbR2Dy09ezyGGQ@mail.gmail.com>
References: <1570532528.4686.102.camel@mtksdccf07>
 <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
 <CACT4Y+Zbx-2yR-mN5GioaKUgGH1TpTE2D-OgLbR2Dy09ezyGGQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_192952_865098_E1E271DA 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-08 at 14:11 +0200, Dmitry Vyukov wrote:
> On Tue, Oct 8, 2019 at 1:42 PM Qian Cai <cai@lca.pw> wrote:
> > > On Oct 8, 2019, at 7:02 AM, Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > I don't know very well in UBSAN, but I try to build ubsan kernel and
> > > test a negative number in memset and kmalloc_memmove_invalid_size(), it
> > > look like no check.
> >
> > It sounds like more important to figure out why the UBSAN is not working in this case rather than duplicating functionality elsewhere.
> 
> Detecting out-of-bounds accesses is the direct KASAN responsibility.
> Even more direct than for KUBSAN. We are not even adding
> functionality, it's just a plain bug in KASAN code, it tricks itself
> into thinking that access size is 0.
> Maybe it's already detected by KUBSAN too?

Thanks for your response.
I survey the KUBSAN, it don't check size is negative in
memset/memcpy/memmove, we try to verify our uni testing too, it don't
report the bug in KUBSAN, so it needs to report this bug by KASAN. The
reason is like what you said. so we still send the patch.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
