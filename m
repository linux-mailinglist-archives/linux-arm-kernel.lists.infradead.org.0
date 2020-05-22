Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582811DEC10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq1NscdXvGuWZS0R6KnzQjobE/pl8MOWFb+l5qD2P/Y=; b=hwrhGpT9PJVH8I
	zcSmYKDp5hSR1X1F2JkiFvsIQnsij+ayTA7ITJgYdx4ZlOKMPGl9YKSyRRr7G+LX2APrAT2dIXihl
	Z7EPPcsuZHxhPNfNhKkxRJdAOteT72MoRICYhrvukJhlHSNQJYInjNfylxLPHFZQ77Kfh1vgScLJz
	ni/zJa/i6CKTxHWa7pboqaWWxPDKPVnl0rWQ62kBYC70u6d0GSFIuN4BpgBGXfPXDD+5jPRvI5HLr
	DxzDbhMiKDeaZ+nqtaQzlr5Q5w/a4xRmmhta1WoiJsOesucoaO9o3qMJ8v8XrNfxoOvsDk6TAwKQJ
	eDQTelMFitDBE7UfYh6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9j8-0006WR-JJ; Fri, 22 May 2020 15:36:50 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9iR-0006Bg-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:36:09 +0000
Received: by mail-qv1-xf41.google.com with SMTP id er16so4924004qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=61+HQokeJZQ8qkHJ2OEdKbbtcdPY4X5ntDI2ko215XA=;
 b=FsB9N5UHSBWaHC/PI7gccIUfEYQI9QY2OJ2DpQw6NYmUIu/yS181SpbIsrMxh4tBq2
 251MX3ARNKmg1PIdHLrIfedovaTFRuT7fr6qAJ0OzP4eZ9kHh5QC9Uqu8z6t+H3RAa5L
 F060Wo09d4reWusv3yHvuVJT+swTL3Pz0DXKljhhGyA3kFwjN4C8iZYyafihOn7/z3Qg
 0IuxiDtjd4U1Id+/0zAMVIS4TwL0Ptw3vYEV4ApNhTbJ9HL4cLaRC/CpSTAqYS2lFN8k
 vztqA+6NvLDs6svcdY+jVjLfyDAKQ9YtsTkPHdPtxR9XEgWCjKhKy8Zuuz0XJ0fQto/0
 lmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=61+HQokeJZQ8qkHJ2OEdKbbtcdPY4X5ntDI2ko215XA=;
 b=ZaIZt2odB5eor9fq8q5Dr0zFi4CHy+LcH0/1JR0Ok5gLCndKvH3n5DULLYMx5+ZhHe
 8PzkmztaKGtUiWjuIdKznkJGNefWLCsAPL1VE7oe/rqEvEAZsVJHsup24mriOTAN7BG5
 MztmHOpldTXL3rNxZh6/8zCjRGtX+qwO1hVNsd+eD4R3l4ZaOxNJat5Vt3Ag7mFYVWoj
 aKSEJUnUbVZ68FMxnlvq/u+yV6zWJLTmEPp8OoIekSkVKsXuBcNKTs1ohICj59V8vkXU
 JFVIAD1RytljqjpkmQIX5LPaKKXDruQLXZhXzMPEV1xRQ3qyAeGkpKL2JFhLbgqMokW0
 VdQA==
X-Gm-Message-State: AOAM5301GlJxRlZjevO10jNeh/JbUm90O2mu0ZMd/7kP7uXQblpOYHQl
 R62N+ajIrEfMJJBN1PxedRw6NK5KuS74LYm6VEgzsQ==
X-Google-Smtp-Source: ABdhPJxlFh9zM8Njqgrp9/xR4Z1brfdmQPtm73E6Mi4XIQKqvXjo8/lYWwCLTLOHbqsxApeDG9Che+ylwvNrK03MWBo=
X-Received: by 2002:a0c:be88:: with SMTP id n8mr4247699qvi.134.1590161766309; 
 Fri, 22 May 2020 08:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
 <5627e304-3463-9229-fa86-d7d31cad7a61@gmail.com>
In-Reply-To: <5627e304-3463-9229-fa86-d7d31cad7a61@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 22 May 2020 17:35:55 +0200
Message-ID: <CAMpxmJVg3VPt7Xu0U9Qnt4wYRmT75iryMDu1qaYdoGib1bhdiQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083607_447784_5EAB808B 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, netdev <netdev@vger.kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Sean Wang <sean.wang@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>, Pedro Tsai <pedro.tsai@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Jakub Kicinski <kuba@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAyMiBtYWogMjAyMCBvIDE3OjA2IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0Bn
bWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+Cj4KPgo+IE9uIDIyLzA1LzIwMjAgMTQ6MDYsIEJhcnRv
c3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IFRoaXMgYWRkcyB0aGUgZHJpdmVyIGZvciB0
aGUgTWVkaWFUZWsgU1RBUiBFdGhlcm5ldCBNQUMgY3VycmVudGx5IHVzZWQKPiA+IG9uIHRoZSBN
VDgqIFNvQyBmYW1pbHkuIEZvciBub3cgd2Ugb25seSBzdXBwb3J0IGZ1bGwtZHVwbGV4Lgo+Cj4g
TVQ4NSoqIFNvQyBmYW1pbHksIEFGQUlVIGl0J3Mgbm90IHVzZWQgb24gTVQ4MSoqIGRldmljZXMu
IENvcnJlY3Q/Cj4KCkl0J3MgdXNlZCBvbiBNVDgxKiosIE1UODMqKiBhbmQgTVQ4NSoqLiBXaGF0
J3Mgd3Jvbmcgd2l0aCB0aGUKZGVzY3JpcHRpb24gYW55d2F5PwoKQmFydAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
