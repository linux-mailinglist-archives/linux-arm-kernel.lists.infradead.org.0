Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB8F1DEBCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmclXp7pX7j6mnM4I+Ewv0dlD24Iva9o9RhY3GDhGYk=; b=c5cYcHUfcoo9G3
	5Uqi/oBdsscG4RaplPHXbVVHwwwMgS8G+zamdqoEF0llAeGgbJvEQISveIIsmKAG4ESYFjnRiAPr5
	4AnvMkBw0sLjgAASnWUZ9yTkNJ1E9YPiWVVzepW8AaxcuXkZ2lU4UEQrjbbAv5/+MYdxoEprsljEK
	Q+TDnpY97ZQvqQ1LxGlAzUvLTCfubUM0hA7mToFi79b7o/ysmlyGXYln8pMXN/pM4i2aAqXONQbkP
	i7VFX3yanrDFIhNZtczuZflCm1mDuSOM5MLH++3Ia3MeZ3geLpmC0xNo8pX5gLAQsgPhiKxlmZUx7
	22fCJBcCIf0lp9X6xk7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9a4-0007E1-1W; Fri, 22 May 2020 15:27:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9Zr-0007CB-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:27:18 +0000
Received: by mail-qt1-x843.google.com with SMTP id l1so8559064qtp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SRsdOjWWL+ErLjyMojixNVl7s3eXgVVstDINvK3dtXg=;
 b=jfK/zDIFzAwRiPF5rSe1xq8YO+ZE0VL+EQPe6K4YPFRj9xXRozQLQi0tJM2zyK91BM
 w6Q6wyRRRq4Qq46NUYu/kcCX1f78ojBrzaVsc9LDiIYA/RuUiiX8vfA7GBkol9Finv11
 mQ7Ox5f4M3JlcOOKELjHlwqAPzd7yc/GQhYmlEdYOXV+xnBdH0/HrN2sD/BWNxqHT91u
 rAo5gUjweaCu8QoaGEUC5QVe8xt2NF2nAQIlJ5w++VFJJpSUf/6ig5/aEe3d+a7IVzuF
 82wUAcK7HdnhoZthoiL4FwdoJXIAvTjfiqfV6kii/d5yWsSktVexR4BbOAqcqg9hjBrg
 Vgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SRsdOjWWL+ErLjyMojixNVl7s3eXgVVstDINvK3dtXg=;
 b=szLLcCSwHTjG6tMVfcDosQyMLvhqyZa4L16gL8yWF8nFN9hOiZzMoc1pyk20xgFTi8
 z1kzbnLZif5vq6HACYoAcAsaJMwvnQ8AhWgO6SoEgOnUd2BPV9E5zvS99OPc+k9xttLQ
 SSMDi7k2EqXjtaEytNSXR/HQDjR9Ew89ArEgiKJDd4NE5ZXEjoHLJEmrPDXQCAS9OXrI
 G11uYpLAnZPv49x94EYrpdSjvZbX9fzmQPaabZWx+g2V66TMcUC4+wmkZZu1rZxzpuoj
 C2WM2Ti3GFVoglQH+UedDQg5rSow6kAN3Nnqccccxa8jrez+2o2NmlPswPU2LjMPvjDo
 mQEA==
X-Gm-Message-State: AOAM532TfwRDxF46F4yG1FfYxJkcQ/JYJezPeN4OdXQVhZAiaXIiuSUX
 rUBVKItok/bxnYQJ2oSQFHGay7svGJGeh1fTKYc9dw==
X-Google-Smtp-Source: ABdhPJy8zE09hP3ssAEXIS8PrMxrdtczpkONJnriZwX1UvQjiBseW1fjfukwynTIX1jUsud00Bk+uIw6wPtBlxqVO3Q=
X-Received: by 2002:aed:37e7:: with SMTP id j94mr16165439qtb.57.1590161230357; 
 Fri, 22 May 2020 08:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
 <5627e304-3463-9229-fa86-d7d31cad7a61@gmail.com>
In-Reply-To: <5627e304-3463-9229-fa86-d7d31cad7a61@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 22 May 2020 17:26:59 +0200
Message-ID: <CAMpxmJVCE0RBNqBQw03bT5uqnCk3vDi1ncbNeWj=VvcN1wEaZg@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_082715_964355_2DFD6080 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
bWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+Cj4gT24gMjIvMDUvMjAyMCAxNDowNiwgQmFydG9zeiBH
b2xhc3pld3NraSB3cm90ZToKPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pl
d3NraUBiYXlsaWJyZS5jb20+Cj4gPgo+ID4gVGhpcyBhZGRzIHRoZSBkcml2ZXIgZm9yIHRoZSBN
ZWRpYVRlayBTVEFSIEV0aGVybmV0IE1BQyBjdXJyZW50bHkgdXNlZAo+ID4gb24gdGhlIE1UOCog
U29DIGZhbWlseS4gRm9yIG5vdyB3ZSBvbmx5IHN1cHBvcnQgZnVsbC1kdXBsZXguCj4KPiBNVDg1
KiogU29DIGZhbWlseSwgQUZBSVUgaXQncyBub3QgdXNlZCBvbiBNVDgxKiogZGV2aWNlcy4gQ29y
cmVjdD8KPgoKTVQ4MSoqIGFuZCBNVDg1KiogYXJlIHZlcnkgY2xvc2VseSByZWxhdGVkLiBUaGlz
IElQIGlzIGN1cnJlbnRseSB1c2VkCm9uIE1UODUqKiwgTVQ4MSoqIGFuZCBNVDgzKiouIEl0IG1h
eSBiZSB1c2VkIGluIG5ldyBkZXNpZ25zIGluIHRoZQpmdXR1cmUgdG9vLgoKQmFydAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
