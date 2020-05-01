Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DB11C1A5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8BMF72cancDNGs44icxZrWuxYWsouxyVkzXZb2y59yk=; b=u91Ido4X84SEJ/NbNbXrvtAnqx
	RtCwgNrVPuK+Yfm+eH6+bvNKsRfwCP+BVzqqd6SHuWz0B1TSu0lL6jSPDx2MaDHi1tpED1BgteDu4
	W/cOFSUL7Z/DDguZXm2uwY6KTkxfkAJuS19VUq3JxbrU9KwJQMrUeu73khDPkSZO0xlr245xlNIYf
	+7xVjUbPxHc3IyouebXrmam8g94BI8IUycS6wGyTLARSAKdg3bWen9vJ5lpdv4gf05jypaonoThiS
	S3XPfsu7ZNFOnvpccwJ/E/jPK7X6+aRjksPv2y1Vj76RHfDuk93G5xPNkEmqIDgkwBAAaiYxfLrMY
	0I6LH9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYFE-0006cT-J9; Fri, 01 May 2020 16:10:32 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYF6-0006Zk-NW
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:10:26 +0000
Received: by mail-il1-x142.google.com with SMTP id c16so4871139ilr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 09:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=DegXdIet2b3uX8GSVrSI8KoyXiaxanbxBIa5N8IqYXU=;
 b=q/n/PE8Pno3XGS2iraJbkhoAMFS5b7SRmXX+JxzSyDKYrPTHHa1J1ZJM9H4rr/b68f
 h9MU6+7hrRg01D7id1+xtP9Av47i26V9LSdo9AZcPWey2N6z+/+B8U0pSwr8BElRPH5Y
 sHKI8KDnh+ffNCheUE1TM5+CZnnl/Wa4XqNHPutbpWOvPBiUWAjDZEsf55C7g5ZyX56P
 xA/mz5SfYZNLTiLY/ZjFfkNUcdQp8YTRCsKw78GbCz/R8Zcz1E9I5zaB6DGdt0mHsu9M
 hxM+3fno8Q+Cc6NBXvMu/B9NBzzTKueBjtVZsggo+Sqlaiy7CsVoegZRlvXOdJSR7EbP
 vVeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=DegXdIet2b3uX8GSVrSI8KoyXiaxanbxBIa5N8IqYXU=;
 b=elgg6H7/nZLnHP4jCyCermM7pKi0RV0VJUq96iEtb5kq2e8Fpy3MDKIYh4TM51q0so
 bf9WXCBEGE9D5ySmjT3JnJMVXswGCwik90zl6JQ0nwqCmH8gvLWXLB/oF8LAoI73sal8
 sWrXeYvL8e+QY5kgqccRAD/lUYEp2yVlZFT5FvAeM6reiHZEv72EvH5L8lBGYk/qdh1K
 xAQmimT11ZGq1v8Te6CRrcdfk3EoGoVGpaKeT08xQgZAdgtU891rMk2eXukWWPc7Oxfj
 st/kf6Mp44Itmixjn1uX7FbDDzzNQx4y2HD3TMCnPnpy9GMsjbIgHITk3Q/KxF9E0yIy
 GW9Q==
X-Gm-Message-State: AGi0PuZb13Wof80u6fYPngVNb7rv7Xx687dt0/SzRC47zX1KXQZD4u3H
 eRDpVGsLk1v4ffsjRCMCRn5b1JnRukM6WzH9AXA=
X-Google-Smtp-Source: APiQypK6yA5MKN0z9uIfc44vJiUhjDoDY9tPJZAn5r+n8DzkVBGv2LC+DqAq1GW+o172geijZU4d5a0lxsFt8Z26kgc=
X-Received: by 2002:a92:3c56:: with SMTP id j83mr3859096ila.37.1588349419659; 
 Fri, 01 May 2020 09:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
 <20200428100350.12699-1-matwey@sai.msu.ru>
In-Reply-To: <20200428100350.12699-1-matwey@sai.msu.ru>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Fri, 1 May 2020 19:10:08 +0300
Message-ID: <CAJs94Eb0k-Yf7FrOJwyusBqnYvnxsbD=2vxybbSAvLg0ZJ210w@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: zynq: Fix ethernet PHY for v5 schematics
To: Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Anton Gerasimov <tossel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091024_767697_8B18EC96 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matwey.kornilov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW50b24sCgpJIGhvcGUgeW91IGFyZSBkb2luZyBnb29kLiBDb3VsZCB5b3UgcGxlYXNlIGNo
ZWNrIHRoaXMgcGF0Y2gsIHNpbmNlCnlvdSBhcmUgaW5pdGlhbCBhdXRob3Igb2YgenlucS16dHVy
bi5kdHMgYW5kIEkgc3VwcG9zZSB5b3UgZG8gaGF2ZSB0aGUKInY0IiBib2FyZCB2YXJpYW50IHRv
IHRlc3QuCgrQstGCLCAyOCDQsNC/0YAuIDIwMjAg0LMuINCyIDEzOjA0LCBNYXR3ZXkgVi4gS29y
bmlsb3YgPG1hdHdleUBzYWkubXN1LnJ1PjoKPgo+IFRoZXJlIGFyZSBhdCBsZWFzdCB0d28gZGlm
ZmVyZW50IHZlcnNpb25zIGV4aXN0aW5nIGZvciBNWUlSIFp0dXJuOgo+Cj4gICogdjQgc2NoZW1h
dGljcyBoYXMgQXRoZXJvcyBBUjgwMzUgUEhZIGF0IDBiMDAwCj4gICAgICBodHRwOi8vd3d3Lm15
aXJ0ZWNoLmNvbS9kb3dubG9hZC9aeW5xNzAwMC9aLVRVUk5CT0FSRF9zY2hlbWF0aWMucGRmCj4g
ICogdjUgc2NoZW1hdGljcyBoYXMgTWljcmVsIEtTWjkwMzEgUEhZIGF0IDBiMDExCj4gICAgICB2
NSBzY2hlbWF0aWNzIGF2YWlsYWJsZSBhdCBEVkQgZGlzayBzdXBwbGllZCB3aXRoIHRoZSBib2Fy
ZAo+Cj4gU3BlY2lmeSBib3RoIFBIWXMgdG8gbWFrZSBldGhlcm5ldCBpbnRlcmZhY2Ugd29ya2lu
ZyBmb3IgYW55IGJvYXJkCj4gcmV2aXNpb24uIFRoaXMgY29tbWl0IHJlbGllcyBvbiBvZl9tZGlv
YnVzX3JlZ2lzdGVyKCkgYmVoYXZpb3IuCj4gV2hlbiBwaHktaGFuZGxlIGlzIG1pc3NlZCwgZXZl
cnkgbmVzdGVkIFBIWSBub2RlIGlzIGNvbnNpZGVyZWQsCj4gd2hpbGUgRU5PREVWcyBhcmUgaWdu
b3JlZC4KPgo+IEJlZm9yZSB0aGUgcGF0Y2g6Cj4KPiBbICAgMjguMjk1MDAyXSBtYWNiIGUwMDBi
MDAwLmV0aGVybmV0IGV0aDA6IENvdWxkIG5vdCBhdHRhY2ggUEhZICgtMTkpCj4KPiBBZnRlciB0
aGUgcGF0Y2g6Cj4KPiBbICAgMjguMjU3MzY1XSBtYWNiIGUwMDBiMDAwLmV0aGVybmV0IGV0aDA6
IFBIWSBbZTAwMGIwMDAuZXRoZXJuZXQtZmZmZmZmZmY6MDBdIGRyaXZlciBbTWljcmVsIEtTWjkw
MzEgR2lnYWJpdCBQSFldIChpcnE9UE9MTCkKPiBbICAgMjguMjU3Mzg0XSBtYWNiIGUwMDBiMDAw
LmV0aGVybmV0IGV0aDA6IGNvbmZpZ3VyaW5nIGZvciBwaHkvcmdtaWktaWQgbGluayBtb2RlCj4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR3ZXkgVi4gS29ybmlsb3YgPG1hdHdleUBzYWkubXN1LnJ1PgoK
Q2M6IEFudG9uIEdlcmFzaW1vdiA8dG9zc2VsQGdtYWlsLmNvbT4KCj4gLS0tCj4gQ2hhbmdlcyBz
aW5jZSB2MToKPiAgLSByZXdvcmRlZCBjb21taXQgbWVzc2FnZQo+Cj4gIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3p5bnEtenR1cm4uZHRzIHwgMTMgKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy96eW5xLXp0dXJuLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtenR1cm4u
ZHRzCj4gaW5kZXggNWVjNjE2ZWJjYTA4Li4wN2RhOWNmNjBkMDIgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm0vYm9vdC9kdHMvenlucS16dHVybi5kdHMKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy96
eW5xLXp0dXJuLmR0cwo+IEBAIC02NywxMCArNjcsMTcgQEAKPiAgJmdlbTAgewo+ICAgICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+ICAgICAgICAgcGh5LW1vZGUgPSAicmdtaWktaWQiOwo+IC0gICAg
ICAgcGh5LWhhbmRsZSA9IDwmZXRoZXJuZXRfcGh5PjsKPgo+IC0gICAgICAgZXRoZXJuZXRfcGh5
OiBldGhlcm5ldC1waHlAMCB7Cj4gLSAgICAgICAgICAgICAgIHJlZyA9IDwweDA+Owo+ICsgICAg
ICAgZXRoZXJuZXQtcGh5QDAgewo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImV0aGVy
bmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPiArICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+ICsg
ICAgICAgICAgICAgICBtYXgtc3BlZWQgPSA8MTAwMD47Cj4gKyAgICAgICB9Owo+ICsKPiArICAg
ICAgIGV0aGVybmV0LXBoeUAzIHsKPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJldGhl
cm5ldC1waHktaWVlZTgwMi4zLWMyMiI7Cj4gKyAgICAgICAgICAgICAgIHJlZyA9IDwzPjsKPiAr
ICAgICAgICAgICAgICAgbWF4LXNwZWVkID0gPDEwMDA+Owo+ICAgICAgICAgfTsKPiAgfTsKPgo+
IC0tCj4gMi4xNi40Cj4KCgotLSAKV2l0aCBiZXN0IHJlZ2FyZHMsCk1hdHdleSBWLiBLb3JuaWxv
dgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
