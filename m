Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E60A0246
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N377b7slAPRY04Zg7kjuUPv93zNpRy03Mb+A50XrX34=; b=Gf1IG1Z9o/0l1r
	NG/hKS8BQwb0ZuhT9t5+4AmTVvRdM6eI+WeumvchTUmw8EbdrQFGGB3YzY/SmYHsyLjiH53pecSzD
	FrR9WSfL5HBWpgFHIYTA18PxbJXhaPeFE0QlrAyzw4+A+n9GZ5IkfIrF2yZUFiUb2FvDbUowW4FKn
	/PpM5FiyteWcnxYe/uFqa6S7H0mGGIwCL9MLnUr6DMYk0HcGebab8sBmMn7BiKdap4zWgZ9BKD8cH
	m0vPQyWm2m3O8dzGMgR+stMY4ovzUhanrbc0ZrHilQTcUkyIzYwncUsfY+2sK2ud650IW1yujTo7o
	LvMzteE2vW1cmEBAJzpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xSQ-0006bB-Ta; Wed, 28 Aug 2019 12:53:50 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xRM-0005n0-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:52:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id u13so2050287lfm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XVqiZEbVUqIzK5hY9HIE+w9Yw4YCnwVUWn8KQwWEJ/o=;
 b=j/ZkTZmHKtb+C6yykay6Lk89TOZ2nUMHdfIDdtlO3/glkjnfikIYS28NL2SG8TTJgs
 zaFgS4RwSSejdCGrhsS4ul+I8b6oSeCtpK4UBcERRoeQn1cs6AYlz+EbRcAN+fD38Vwi
 uNGYpuHx5n5iVdfhs38LAFPqeS9CaugquJL9Up1fPrU1vDd5RVAH2Sz0oKDHDqMQ3UU4
 r5KZS01C8wSJUawPbF/GeSys7s02FLBfU70H6f0Rz0LziJuBQNUyKBIppFqFqCPi4/XB
 xv2nnTa6+37DxCcKyOOhHTeKyCepv77Atwv/mavdOHSUq9IIS6QjbQwDuqf5bIbFCIl6
 is4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XVqiZEbVUqIzK5hY9HIE+w9Yw4YCnwVUWn8KQwWEJ/o=;
 b=GfsLB/iYgPfvBJxhcUtVeE2jbd+Xx1yHklgvy8jwbaJ/msQZv5IzY418+zu9B8Nt/V
 4tE72jbG9ozZlnyBoZpx4yp8Ht/kSXfLwpR6fe2vFcO4EnOJg93pMzHciTreEiDEZx4B
 gZt/DGVlnL0uiNdyb/L7Co1dB0Q5CUkPF6XZMSNrymWZ0Kq+yyHCtSKJQzCvncaCzLwh
 1+Q0sQvNAM6BUE7AEX1xYcvTE3WFQw58ohWtONj7XnIyIj9YJBVFZJwtXg4WkYi/Ju0a
 xIJlidNYZIUpT2OWk153W8m/HcLsaDAKBHaFaDp7lJCpFoWqBAsZVozaO5xFoGbFJLAo
 n3Yw==
X-Gm-Message-State: APjAAAXivgoH76QtQGZqrVAdL8gSH7oUDsnSPrVy5K1Kj0aDLrGtAkju
 dFiV+kvHLTGjrc8bg43sqBPfVCeZqck82Rcyy6EliQ==
X-Google-Smtp-Source: APXvYqxhh7npR4DKD02urqAfnNma90KEuSilcS60X5kI+BR0cS5y3dkj2v9FsecupCFIorgjCH8a/URG0YasbPxugp4=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr1699777lfp.61.1566996761734; 
 Wed, 28 Aug 2019 05:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
In-Reply-To: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 28 Aug 2019 14:52:30 +0200
Message-ID: <CACRpkdazfe3gJr6Q+X05GzxPuKtUg0M780SPA_oR5bd+-xBPvA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by
 disabling DDR
To: =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055244_426175_85E53FC1 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgNTowNiBQTSBBbGVqYW5kcm8gR29uesOhbGV6CjxhbGVq
YW5kcm8uZ29uemFsZXouY29ycmVvQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IEplcm5laiBTa3JhYmVj
IGNvbXBhcmVkIHRoZSBCU1AgZHJpdmVyIHdpdGggdGhpcwo+IGRyaXZlciwgYW5kIGZvdW5kIHRo
YXQgdGhlIEJTUCBkcml2ZXIgY29uZmlndXJlcyBwaW5jdHJsIHRvIG9wZXJhdGUgYXQKPiAxLjgg
ViB3aGVuIGVudGVyaW5nIEREUiBtb2RlIChhbHRob3VnaCAzLjMgViBvcGVyYXRpb24gaXMgc3Vw
cG9ydGVkKSwgd2hpbGUKPiB0aGUgbWFpbmxpbmUga2VybmVsIGxhY2tzIGFueSBtZWNoYW5pc20g
dG8gc3dpdGNoIHZvbHRhZ2VzIGR5bmFtaWNhbGx5LgooLi4uKQo+IHRoZSBrZXJuZWwgbGFja3Mg
dGhlIHJlcXVpcmVkCj4gZHluYW1pYyBwaW5jdHJsIGNvbnRyb2wgZm9yIG5vdwoKVGhpcyBpcyBu
b3QgYSBwaW4gY29udHJvbCB0aGluZywgdGhlIEkvTyB2b2x0YWdlIGxldmVsIGlzIHVzdWFsbHkK
Y29udHJvbGxlZCBieSBhIHJlZ3VsYXRvciBjYWxsZWQgVkNDUSwgaWYgdGhlIHNlbGVjdGlvbiBv
ZiB0aGUKdm9sdGFnZSByYWlscyBpcyBpbnNpZGUgdGhlIHBpbiBjb250cm9sIHJlZ2lzdGVycywg
c2VlIHRoZSBzb2x1dGlvbgppbiBkcml2ZXJzL3BpbmN0cmwvc2gtcGZjL3BmYy1zaDczYTAuYyB3
aGVyZSB3ZSBzaW1wbHkgcHJvdmlkZQphIHJlZ3VsYXRvciBmcm9tIGluc2lkZSB0aGUgcGluY3Ry
bCBkcml2ZXIgdG8gbWFrZSB0aGluZ3MgZWFzeQpmb3IgdGhlIE1NQyBjb3JlLiBEbyB0aGlzIHRo
aW5nIQoKSWYgeW91IGRvbid0IGhhdmUgdGltZSB0byBmaXggaXQgdXAgcHJvcGVybHkgcmlnaHQg
bm93IEkgd291bGQgc2xhcAppbiBhIGJpZyBGSVhNRSBpbiB0aGUgY29kZSBzbyBwZW9wbGUga25v
dyB0aGlzIG5lZWRzCnRvIGJlIGZpeGVkIHByb3Blcmx5LgoKWW91cnMsCkxpbnVzIFdhbGxlaWoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
