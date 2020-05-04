Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D5C1C3156
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 04:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIkBhtIvdsMpq4wL6ytcTSvXo/CfxjZCCJ365C/oy/o=; b=PIAt9phFLVjI2w
	Y1cPcP4DI0CjgPd8XVRQl135QzeCr8XDjMETHaUeZP4Ux/s8FW+Irp+k0OC7WEAX2PeKpV5lGwXfn
	+y0m4MFoZ7+Qa82Wwf0vfBTKwWfEdzs+1kXGfJFxp5ciIYLXyB1m6j6wu0deR+NCiLhtmOaes/d2b
	1N9mcQ/7Wdvl9NcJWSSo0o5IY2aQdiWbnXHurYXHexqs7tRFnkcY3FSZTdgWm7ja5Wf3Spdzy1zm0
	a4+4uUmm9Nv2Lizb9eH3TJvDkj0lnavmdbY7ymx1U7ewn0aHyjTQy4IkkaoCut3LjfNYVWSnx64Yj
	qUYjlHCY+Iu1Gl+U3B4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVQsy-0000Ua-Fh; Mon, 04 May 2020 02:31:12 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVQsr-0000TZ-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 02:31:08 +0000
Received: by mail-yb1-xb43.google.com with SMTP id f5so2157167ybo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 19:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3m8mFiJJFlls0jL7OldEMji7AwjJiliGvx/P5K33AUs=;
 b=Qam7d7USzlv+nj5JiT4AM+NhxY2pit1lpFFzMzzpFkVwdtg3nmwuWRwCXDWJH7UTCS
 x69ZenAa675bWnkgRa+Btm0vcXiHS57r2Wk3ChqV3wQhT2iCv6bbH0ZHMLEjdtB0/8z8
 KJ7p5o0Yf6hdC9Cs3Cn3jwmAGzXNQX0EgTKhLYbZF8w5MdBHPuR3KPz2Uwpi2rEEQ4Qw
 AHn62bvcwgrRqNr5rcrpMMaGtbuwXP23ivbTX+drIdyxLH+9GfryQlqWliryy3jkPD4l
 6Giwr3SKri3tu2c/jqoNkm327x+rfBX0Ba9Gi+uhFrHuBE8cBv51uUY52ipJ2AclJdP+
 1pUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3m8mFiJJFlls0jL7OldEMji7AwjJiliGvx/P5K33AUs=;
 b=jgajCUed8rG5X1TcM9pP8ltpSJdNmWM48ASAzMeYzS6S+pwqx6ADhdh9ZDuqMQYlao
 DV9f2EVVyyJIweSJxqTeO2JrDD8/yoU6cy2izBNn5/v2Pgw5LAk78/J61/kMAERFcd/m
 SK4YHGw62aGZZX7QCA/RaM1MANA83cEgVMlXiHArgzMCp3JLcLzwd6tMuCo5iWD/XX7d
 1Pdz97cW21510cE/7C8ZqMQtpoNXVNU14EdguRyrrzxZpIFaSOR3JQzOWglrRASQWM70
 cp5bRvJ/351D0eWkFfq/52VZ1YPOODYYKuf/fuiUnoaM+pcNQo3VKxLD7EHE+bm2httD
 iHlQ==
X-Gm-Message-State: AGi0PubnV3GAE7objQ+apa2jIaLRLfKNMxSnhvGuxYqK+hiRexGywwPx
 haVys9Ngcd4MYPI35GF+Y7VRVuvwlbcD/udyqEKBOA==
X-Google-Smtp-Source: APiQypKtla2fm9tiFGvO50LdmQ10uZzynXifTZAffJJJidPcN+crNXe2O1fKBX8P5LCczAR8Y4eETM9yvTFDHfLdR3I=
X-Received: by 2002:a25:eb09:: with SMTP id d9mr11084216ybs.237.1588559462150; 
 Sun, 03 May 2020 19:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200430222439.0ae1c4fa9572c8487fca96b6@linaro.org>
 <CAK7LNAS7U-SxEhsdfAr=ioOP0DGksTWhW1hDVA4AN8a6YG-t-w@mail.gmail.com>
In-Reply-To: <CAK7LNAS7U-SxEhsdfAr=ioOP0DGksTWhW1hDVA4AN8a6YG-t-w@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Mon, 4 May 2020 11:30:51 +0900
Message-ID: <CAA93ih3DpajKf3CcVXo=2E3KM8WFbFmEwb2uwLo4rapsiU3Mxg@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] dts: uniphier: Add Akebi96 Board support
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_193106_026740_2F179E7A 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAyMOW5tDXmnIg05pelKOaciCkgMTA6MjIgTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lAa2Vy
bmVsLm9yZz46Cj4KPiBPbiBUaHUsIEFwciAzMCwgMjAyMCBhdCAxMDoyNCBQTSBNYXNhbWkgSGly
YW1hdHN1Cj4gPG1hc2FtaS5oaXJhbWF0c3VAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPgo+ID4gSGVs
bG8sCj4gPgo+ID4gSGVyZSBpcyB0aGUgNXRoIHZlcnNpb24gb2YgdGhlIHBhdGNoZXMgdG8gYWRk
IGEgZGV2aWNldHJlZSBmb3IKPiA+IEFrZWJpOTYgYm9hcmQuCj4gPgo+ID4gVGhpcyB2ZXJzaW9u
IHJlbW92ZXMgcmVkdW5kYW50IHNldHRpbmcgb2YgUkdNSUksIGZpeGVzIHNvbWUKPiA+IHBhcmFt
ZXRlcnMgZm9yIG1heDM0MjAtdWRjIG5vZGUgYW5kIGFkZCB0aGUgYWRkcmVzcyB0bwo+ID4gZnJh
bWVidWZmZXIgbm9kZSBuYW1lLgo+ID4KPiA+IFRoZSBBa2ViaTk2IGlzIGEgY2VydGlmaWVkIDk2
Ym9hcmRzIHdoaWNoIGlzIGJhc2VkIG9uIFNvY2lvbmV4dAo+ID4gVW5pUGhpZXIgTEQyMCBTb0Mu
IE1vc3Qgb2YgdGhlIHBhcnQgaXMgc2ltaWxhciB0byBMRDIwIHJlZmVyZW5jZQo+ID4gYm9hcmQs
IGJ1dCB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzLgo+ID4KPiA+ICAgLSBNQVgzNDIxIFVTQi1TUEkg
Y2hpcCBvbiBTUEkgcG9ydDMgKGZvciBVU0IgZ2FkZ2V0IHBvcnQuKQo+ID4gICAtIFNpbXBsZSBm
cmFtZSBidWZmZXIgd2l0aCAxMDgwcCBmaXhlZCByZXNvbHV0aW9uLgo+ID4gICAtIEkyUyBwb3J0
IHdoaWNoIGlzIGNvbm5lY3RlZCB0byBhb3V0MWIgaW5zdGVhZCBvZiBhb3V0MS4KPiA+ICAgLSAz
IHNlcmlhbCBwb3J0cywgb25seSBzZXJpYWwzIGhhcyBDVFMvUlRTLgo+ID4gICAtIE5vIE5BTkQs
IG9ubHkgZU1NQyBvbiB0aGUgYm9hcmQuCj4gPiAgIC0gT1AtVEVFIGluc3RhbGxlZCBmaXJtd2Fy
ZS4KPiA+Cj4gPiBTZWUgaHR0cHM6Ly93d3cuOTZib2FyZHMub3JnL3Byb2R1Y3QvYWtlYmk5Ni8g
Zm9yIGRldGFpbHMuCj4gPgo+ID4gVGhhbmsgeW91LAo+ID4KPiA+IC0tLQo+Cj4gQm90aCBhcHBs
aWVkLgoKVGhhbmsgeW91IHNvIG11Y2ghCgoKLS0gCk1hc2FtaSBIaXJhbWF0c3UKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
