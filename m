Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72661F6F21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 23:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jN9DWboszWEIvkS5n++wf9D+zloHMiwfyjNbpb0Hfh4=; b=mBAtC3+nGKBvky
	aVefTUIZbkZY5peOmnHJS062vPo81fGh8OHxYP6qxlit8pi8D9pTaGKr+8/2RsXR0r/mdFL+cbDbE
	wxs2/fVSCrr5vSHtkyHYoZU1ity/18W84O5GRzlXqTTAWJd37KrXYz4AGQkvB3dietSQk/5uVDeTD
	rpdRtA7SiQfiMcvXKsEA8LSuUMggf8JS4T3xSj+zYMHgCn5sKFeve+dIes5zCCQAAm6Xwyb09r3Rs
	pWAg4kWIRR/LnOD+9tUzNyKw4GQOD/CaBE+V1Mo9sjzNsouTRLmjGoJ91SVC26QPNPLQGi5Oc5GPJ
	5Yr/pJF5SiHRQ5zzdF5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjUN8-0002MP-Vf; Thu, 11 Jun 2020 21:04:26 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjUN2-0002Kw-05
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 21:04:21 +0000
Received: by mail-io1-xd43.google.com with SMTP id s18so8013149ioe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 14:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QOSq7LGEuq7joF0MKi0FZitcudqJi1UF8Oe0ZqqRITY=;
 b=ejBFiBbtcNieZodpXk84vlOp76dBFyUz0It9ZB89Bm0gwwgSkiQ3Ld3c+E4rAHn+tc
 Ky7P4kv0a3jv8tCtxGD7hbtix7zY1KY0C0+21gkKa3fwbxfDECedpuSWHULM6G/xucVO
 BkK4P2urYL+E7Ek3rsHbB85Lw//zCtmOX3CyO6UXC0FDaJLJUPp61MYlLa6BW3CeUIQv
 hz/3ghDmDm7MMNQwQC8ay46xt5gvI0xZrfxXiSLKUdIsvk2EZVb+fXb/dLexqaC4yak6
 md8V7tpMgcI/yfHTw1GC0foKLJdIws+xSr6EsZpUXE4GwjxSpG9CQxLixDptY57BDvQS
 6isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QOSq7LGEuq7joF0MKi0FZitcudqJi1UF8Oe0ZqqRITY=;
 b=KsVfp1ncHw+vGhHjtUTblGeAYtfibru+ONrfvhOEizEqLNCCqLO4Jo/9EJhW2okK6K
 XeZEWpipMx7vHOA018t5BiDICyNhUn1ioGKBY8za3AWSpUJUcgp2Tep80mKyT6/BDVk3
 sq+H9daRUzHFPQeay6M9BqGlKWOnYmi0byZ31lRkEDd7udc39t9OO8xSqFM4uv+t8OV3
 ApnMnIAbsyRdh39pGehmQSH+1MDcpaQgWQv9cIiqTJv7A9eGF+TbrFuw2QhyikhO7/uD
 27FkKb1xZvlejTa8JY/QI83fwKTGsHMTdxmoUA1mqVaA4ruHDTgLOVYZ0JTack6wZ6ve
 2imQ==
X-Gm-Message-State: AOAM533SXx4KODbI4tnjEdFuwbu9SYDzRL35YID/0xhxJT/uCP4hf0Gd
 04ft6Isl0eIdxUj5pBODJS1Zf0Igezz3TAiYutxM6w==
X-Google-Smtp-Source: ABdhPJyO4AzvzoVU07IvyqRN0BNwJCqq3fQQMT4qsrccrqgOXdW1x8Jpn2kXepafXKggJLeehXQ4LnD64mv/X7/NjJU=
X-Received: by 2002:a05:6638:b:: with SMTP id
 z11mr4888189jao.114.1591909457976; 
 Thu, 11 Jun 2020 14:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200611140139.17702-1-brgl@bgdev.pl>
 <20200611.125140.717118972991857444.davem@davemloft.net>
In-Reply-To: <20200611.125140.717118972991857444.davem@davemloft.net>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 11 Jun 2020 23:04:07 +0200
Message-ID: <CAMRc=MdcW-FQecZViyAEevpJrkREGTc4Xr8zPTAW_QvqGm7P1w@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: mtk-star-emac: simplify interrupt handling
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_140420_111201_1294FA47 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMTEgY3plIDIwMjAgbyAyMTo1MSBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rl
di5wbD4KPiBEYXRlOiBUaHUsIDExIEp1biAyMDIwIDE2OjAxOjM5ICswMjAwCj4KPiA+IFVuZm9y
dHVuYXRlbHkgYWZ0ZXIgdGhvcm91Z2ggdGVzdGluZyBvZiBjdXJyZW50IG1haW5saW5lLCB3ZSBu
b3RpY2VkIHRoZQo+ID4gZHJpdmVyIGhhcyBiZWNvbWUgdW5zdGFibGUgdW5kZXIgaGVhdnkgbG9h
ZC4gV2hpbGUgdGhpcyBpcyBoYXJkIHRvCj4gPiByZXByb2R1Y2UsIGl0J3MgcXVpdGUgY29uc2lz
dGVudCBpbiB0aGUgZHJpdmVyJ3MgY3VycmVudCBmb3JtLgo+Cj4gTWF5YmUgeW91IHNob3VsZCB3
b3JrIHRvIHBpbnBvaW50IHRoZSBhY3R1YWwgcHJvYmxlbSBiZWZvcmUgcHVzaGluZyBmb3J3YXJk
Cj4gYSBzb2x1dGlvbj8KCldoeSB3b3VsZCB5b3UgYXNzdW1lIEkgZGlkbid0PyBJJ3ZlIGJlZW4g
dHJ5aW5nIHRvIGZpZ3VyZSBvdXQgdGhpcwpwcm9ibGVtIHNpbmNlIE1vbmRheSBidXQgc2luY2Ug
SSdtIG5vdCBzdXJlIGhvdyBtdWNoIHRpbWUgSSB3aWxsIGJlCmFibGUgdG8gc3BlbmQgb24gdGhp
cyBnb2luZyBmb3J3YXJkIGFuZCBkdWUgdG8gdGhlIGZhY3QgdGhhdCB0aGlzIGlzCm5vdyB1cHN0
cmVhbSAoYW5kIGJyb2tlbiksIEkgc2VudCB0aGlzIHBhdGNoLiBBcyBJIHNhaWQ6IGl0IGRvZXNu
J3QKaW1wYWN0IHBlcmZvcm1hbmNlIG5vciBpcyB0aGlzIHNvbHV0aW9uIGluaGVyZW50bHkgd3Jv
bmcgLSBtYW55CmRyaXZlcnMgZG8gaXQgdGhpcyB3YXkuCgpJIHdpbGwgY29udGludWUgd29ya2lu
ZyBvbiB0aGlzIGRyaXZlciBvbiBhbmQgb2ZmIHNvIEkgKmRvKiBpbnRlbmQgb24KZml4aW5nIGl0
IGFzIHdlbGwgYXMgZXh0ZW5kaW5nIGl0IHdpdGggbW9yZSBzdXBwb3J0LCBoZW5jZSB0aGUgRklY
TUUKYW5kIHByZXZpb3VzIFRPRE8uCgpCZXN0IHJlZ2FyZHMsCkJhcnRvc3oKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
