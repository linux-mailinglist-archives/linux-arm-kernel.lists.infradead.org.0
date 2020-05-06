Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915BF1C691C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pc+VzH2/eL+nmBDf/rkQbetO5HQ1mmUv3+CRhAVR5k=; b=GEeFg7Sh2qU4mu
	juN8vSIwlRGlHB2Q+0YBATdg698g52aI8hOifC8jzSVvxHNdX7pFuZjqLsgd+02zmEtaaFrtoARLj
	QysX8BhhBFz37H+/pbiWIn4fm2dPJERXc3bVeinBI4fEkdHSFO5ZbbsiRtXMBmo2PeE7MIho0qsle
	iVkQXoMt/SzMhbLJCAG3v3bI1a0gTqkanDYzHfbOqh9xcOCR+c60UIF4Yp5eXQq63mvRxUXGMXIe7
	J90EGpFoHrj7BI6x0Tw8XhF42Q7O9O6hIac51EodBjtL8agcaIkCvQUNDGCrjo+BfXnpVq2HPHZhh
	lFY6qZroYA49Nzt4B9sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDj8-00022C-O2; Wed, 06 May 2020 06:40:18 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDip-0001hY-Cb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:40:00 +0000
Received: by mail-il1-x143.google.com with SMTP id t12so695277ile.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PsWFEGMVJXcSSkAjwrVFH6KJLf0s0b6ByKNGvxglslg=;
 b=Kr5jrMX/+PcTSTiywlXvOb8Kl6wEWgrrE0EqA30uFVzGqFsiZXfp945Iq9nxoAburZ
 7Rs3ERUy82Zma/rH7oPkI8imeqGVZ7htwpQI0s4j1XgCEJxdreiWmrbw37k7528UOLIb
 7GJUXVP8ogrq5C8xkXS6xCpM36TXREVn7F0WZt3t9xRUw/yl4d3x6F8m2ATmEFJrdnky
 +kODoPK5I9u3PytnmWA3652DueJnRefdk+JoJCaJkUIaZaZRfFWw27b/ikrzoVD7PlH4
 /1E2pniM3AM9nVvVC2/+EKPtYlz0RGBckD9orVy5059umC2zzj9Zk+RB8+BROBCqRXGm
 TyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PsWFEGMVJXcSSkAjwrVFH6KJLf0s0b6ByKNGvxglslg=;
 b=LBToUWiHKqO5Xp7GTOCzMtNiUpNEX4CMpRVv/HZmb2u3nEyRAE0DHW3zDCfxDthMWj
 MSL4hsOso6k+FIcmDZv0F8hTih900z6ozPeVmsLnVjssr4ux1ktgm47Y1mHQ2y1l3wh2
 ZLiYfZod+2YFoGdMODEhpkk2Yq7o0U6xRz/IO00vV/CS9hFkNkPXdh40pKUsG20zrfZV
 lixPnaY6MsKvCCTe1qCaCtMpnBYF5NUB+GQgpaNxhF3zNA/kd40pqEB3TJGnAILnF8ZV
 uYZ/VPjYvdDTR60NkKRsN0mOv6gDVDbbOdLWgYSGEQdbAiG4TSR4J2ogYGfS2HpxvHec
 OU/w==
X-Gm-Message-State: AGi0PuZiMaXfekyF+a0Cf7AkVT72YX8eNmOOtkRoK5QyTtjcjHOT/0fx
 KIcsuw8I/vN2TW89wI0Ys6ruMRjSv4pB9M/pRV5ZHQ==
X-Google-Smtp-Source: APiQypKqtjH4SAI/hXBWX3+KWPEY3bw3Ls+I33LVzGThbfZA9NOr8ifN8iSwMhFGSis6GvXv/BqSn8GW32PMwFDzUQw=
X-Received: by 2002:a92:dac8:: with SMTP id o8mr7207819ilq.189.1588747198311; 
 Tue, 05 May 2020 23:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 6 May 2020 08:39:47 +0200
Message-ID: <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Jakub Kicinski <kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_233959_476239_71D35944 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCA1IG1haiAyMDIwIG8gMTk6MzEgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g
bmFwaXNhxYIoYSk6Cj4KPiBPbiBUdWUsICA1IE1heSAyMDIwIDE2OjAyOjI1ICswMjAwIEJhcnRv
c3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IFByb3ZpZGUgZGV2bV9yZWdpc3Rlcl9uZXRk
ZXYoKSAtIGEgZGV2aWNlIHJlc291cmNlIG1hbmFnZWQgdmFyaWFudAo+ID4gb2YgcmVnaXN0ZXJf
bmV0ZGV2KCkuIFRoaXMgbmV3IGhlbHBlciB3aWxsIG9ubHkgd29yayBmb3IgbmV0X2RldmljZQo+
ID4gc3RydWN0cyB0aGF0IGhhdmUgYSBwYXJlbnQgZGV2aWNlIGFzc2lnbmVkIGFuZCBhcmUgZGV2
cmVzIG1hbmFnZWQgdG9vLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdz
a2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4KPiA+IGRpZmYgLS1naXQgYS9uZXQvY29y
ZS9kZXYuYyBiL25ldC9jb3JlL2Rldi5jCj4gPiBpbmRleCA1MjIyODgxNzdiYmQuLjk5ZGI1Mzdj
OTQ2OCAxMDA2NDQKPiA+IC0tLSBhL25ldC9jb3JlL2Rldi5jCj4gPiArKysgYi9uZXQvY29yZS9k
ZXYuYwo+ID4gQEAgLTk1MTksNiArOTUxOSw1NCBAQCBpbnQgcmVnaXN0ZXJfbmV0ZGV2KHN0cnVj
dCBuZXRfZGV2aWNlICpkZXYpCj4gPiAgfQo+ID4gIEVYUE9SVF9TWU1CT0wocmVnaXN0ZXJfbmV0
ZGV2KTsKPiA+Cj4gPiArc3RydWN0IG5ldGRldmljZV9kZXZyZXMgewo+ID4gKyAgICAgc3RydWN0
IG5ldF9kZXZpY2UgKm5kZXY7Cj4gPiArfTsKPgo+IElzIHRoZXJlIHJlYWxseSBhIG5lZWQgdG8g
ZGVmaW5lIGEgc3RydWN0dXJlIGlmIHdlIG9ubHkgbmVlZCBhIHBvaW50ZXI/Cj4KClRoZXJlIGlz
IG5vIG5lZWQgZm9yIHRoYXQsIGJ1dCBpdCByZWFsbHkgaXMgbW9yZSByZWFkYWJsZSB0aGlzIHdh
eS4KQWxzbzogdXNpbmcgYSBwb2ludGVyIGRpcmVjdGx5IGRvZXNuJ3Qgc2F2ZSB1cyBhbnkgbWVt
b3J5IG5vciBjb2RlCmhlcmUuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
