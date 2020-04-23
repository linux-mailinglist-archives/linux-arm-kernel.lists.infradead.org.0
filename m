Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF51B6338
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWlct4e9skWDcM39K7jbfv1+sW1G8JrexFbOjLqs+2g=; b=KRV/tqimrKmi6j
	BNtMdSZDkE7Ua9W2R9gUUbhGuwMEdjTvgpLUsIudHC5UG3M6yPJj9Yioly/KqVzaiNTkg9qjawB7z
	db6NcsmnkdbMraBROaOgls1GOIkQrZHqu+ADYjBbjx7GWAfvRpZQrX+wPS+8V0Skbr1V+N7COL9+y
	Jq0905w79Z2JbawT9zW/p/75tLPi/GAgWLnf02liZeKGcS5pUdi/T5IUI5nfdxdjUBpsnP2F52QjH
	Ba6G3NdT+wuf7gHANuypooGT5Li3Cm/eMYuWybwM8laclZ40Es8M4ZfOlmJuMSHmLrh0c3mOKVEZe
	NCMZM/3fasenuUofRw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgTz-0000h5-Hl; Thu, 23 Apr 2020 18:21:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgSX-00084M-A2; Thu, 23 Apr 2020 18:20:27 +0000
Received: by mail-qt1-x841.google.com with SMTP id e17so2264352qtp.7;
 Thu, 23 Apr 2020 11:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cT5ATBuUiTdXH82UTD5odx305gB5xjb75K740f5eMPs=;
 b=o3MX+cfGQ8qSY+2N9+UlkZSOhS2dfjgCFVabO/QNwiXpnSSc9WWra2U9f2xEQUYcUc
 IHf0TCV0P8QFI5hz9/HaRUyHi8SjisWGLTQkBzgmDGIuS75gOsTzp8NcpFWwsYZr7L3E
 G+m0fY2La0uEHOQIqhlpDYpoIua0wNUtrc3aH00DEPsmPVoEriDd+q5nUW99DZY11hTc
 VGk3Zi68G48DUwTPkthkbeobo9Ky+iYCf/3DSPXtNgB2mwV07DfgMqcex4dz2CtaOTDO
 Pcu5LuRrWoRuRk9VUL6Ll+fajn8HdU2bU6ly87taZYPa1mRK2ZIbnb1L3nd6Rrte3tLx
 OKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cT5ATBuUiTdXH82UTD5odx305gB5xjb75K740f5eMPs=;
 b=DOFCtPZS/OGotKdAqhpYCdtxNWneDDdaR+3UErHuTzIQEnp3uAlzKzJZvXkCPiPnWE
 JX6TMo5As4jRXuEUm4U2XHXBTRaAHZg/mddKg6oPzM3BaN9H7X6cgrg+OL8tGwB30wM6
 rd2DgRxYEF2EooW2kx416kTun72NyuJlfgLsKmJbtzAyJVmOZmTkIyeSsRbRGDCyMq7Z
 B0fAZHUbqaHjbtWLMshfPIuZWmrbBH9t3phX8n81FhlpqtxeAU/cHroGW+6e4CC7yofm
 hD0oGdo5t7NmT2A07hxq3haKpsUA5LXUaAnDOCU/4EXaTfGU30CD38L2V/9nnIDHEM7S
 95BQ==
X-Gm-Message-State: AGi0PuYAOC/VCJxh0qlsSV2cfkq32sWTIAwd+kYLonPlJ7hsOvulkRoH
 ralFRWez/uLu80r1NyhUgfFg2sU4w+wAY+YYRb4=
X-Google-Smtp-Source: APiQypLQ+A5G+am3KfrM/gyUvuSvnsHkNi9N1yvzsrOeq9ZksxmdWo6aDMZE9VUwTHe86G4UpkAKY7Gw2tqumq4Ti/c=
X-Received: by 2002:ac8:7681:: with SMTP id g1mr5259933qtr.311.1587666023963; 
 Thu, 23 Apr 2020 11:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
 <1584689540-5227-3-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1584689540-5227-3-git-send-email-weiyi.lu@mediatek.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 23 Apr 2020 20:20:12 +0200
Message-ID: <CAFqH_523KpaCwhhHDKVCKaJgJUPc+7r03f6U=1XiNNQ1PaNN5w@mail.gmail.com>
Subject: Re: [PATCH v13 02/11] dt-bindings: soc: Add MT8183 power dt-bindings
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_112025_361835_1C1C714C 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2VpeWkgTHUsCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4gSnVzdCBhIHRyaXZpYWwgY29t
bWVudCBiZWxvdy4KCk1pc3NhdGdlIGRlIFdlaXlpIEx1IDx3ZWl5aS5sdUBtZWRpYXRlay5jb20+
IGRlbCBkaWEgZHYuLCAyMCBkZSBtYXLDpwoyMDIwIGEgbGVzIDg6MzM6Cj4KPiBBZGQgcG93ZXIg
ZHQtYmluZGluZ3Mgb2YgTVQ4MTgzIGFuZCBpbnRyb2R1Y2VzICJCQVNJQyIgYW5kCj4gIlNVQlNZ
UyIgY2xvY2sgdHlwZXMgaW4gYmluZGluZyBkb2N1bWVudC4KPiBUaGUgIkJBU0lDIiB0eXBlIGlz
IGNvbXBhdGlibGUgdG8gdGhlIG9yaWdpbmFsIHBvd2VyIGNvbnRyb2wgd2l0aAo+IGNsb2NrIG5h
bWUgW2Etel0rWzAtOV0qLCBlLmcuIG1tLCB2cHUxLgo+IFRoZSAiU1VCU1lTIiB0eXBlIGlzIHVz
ZWQgZm9yIGJ1cyBwcm90ZWN0aW9uIGNvbnRyb2wgd2l0aCBjbG9jawo+IG5hbWUgW2Etel0rLVsw
LTldKywgZS5nLiBpc3AtMCwgY2FtLTEuCj4KPiBTaWduZWQtb2ZmLWJ5OiBXZWl5aSBMdSA8d2Vp
eWkubHVAbWVkaWF0ZWsuY29tPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mv
bWVkaWF0ZWsvc2Nwc3lzLnR4dCAgICB8IDIwICsrKysrKysrKysrKysrLS0tCj4gIGluY2x1ZGUv
ZHQtYmluZGluZ3MvcG93ZXIvbXQ4MTgzLXBvd2VyLmggICAgICAgICAgIHwgMjYgKysrKysrKysr
KysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2Vy
L210ODE4My1wb3dlci5oCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvYy9tZWRpYXRlay9zY3BzeXMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NvYy9tZWRpYXRlay9zY3BzeXMudHh0Cj4gaW5kZXggMmJjMzY3Ny4uMWJh
YWE2ZiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L21lZGlhdGVrL3NjcHN5cy50eHQKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc29jL21lZGlhdGVrL3NjcHN5cy50eHQKPiBAQCAtMTUsNiArMTUsNyBAQCBwb3dlci9w
b3dlci1kb21haW4ueWFtbC4gSXQgcHJvdmlkZXMgdGhlIHBvd2VyIGRvbWFpbnMgZGVmaW5lZCBp
bgo+ICAtIGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvbXQyNzAxLXBvd2VyLmgKPiAgLSBpbmNs
dWRlL2R0LWJpbmRpbmdzL3Bvd2VyL210MjcxMi1wb3dlci5oCj4gIC0gaW5jbHVkZS9kdC1iaW5k
aW5ncy9wb3dlci9tdDc2MjItcG93ZXIuaAo+ICstIGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIv
bXQ4MTgzLXBvd2VyLmgKPgo+ICBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICAtIGNvbXBhdGlibGU6
IFNob3VsZCBiZSBvbmUgb2Y6Cj4gQEAgLTI3LDEyICsyOCwxNiBAQCBSZXF1aXJlZCBwcm9wZXJ0
aWVzOgo+ICAgICAgICAgLSAibWVkaWF0ZWssbXQ3NjIzYS1zY3BzeXMiOiBGb3IgTVQ3NjIzQSBT
b0MKPiAgICAgICAgIC0gIm1lZGlhdGVrLG10NzYyOS1zY3BzeXMiLCAibWVkaWF0ZWssbXQ3NjIy
LXNjcHN5cyI6IEZvciBNVDc2MjkgU29DCj4gICAgICAgICAtICJtZWRpYXRlayxtdDgxNzMtc2Nw
c3lzIgo+ICsgICAgICAgLSAibWVkaWF0ZWssbXQ4MTgzLXNjcHN5cyIKPiAgLSAjcG93ZXItZG9t
YWluLWNlbGxzOiBNdXN0IGJlIDEKPiAgLSByZWc6IEFkZHJlc3MgcmFuZ2Ugb2YgdGhlIFNDUFNZ
UyB1bml0Cj4gIC0gaW5mcmFjZmc6IG11c3QgY29udGFpbiBhIHBoYW5kbGUgdG8gdGhlIGluZnJh
Y2ZnIGNvbnRyb2xsZXIKPiAtLSBjbG9jaywgY2xvY2stbmFtZXM6IGNsb2NrcyBhY2NvcmRpbmcg
dG8gdGhlIGNvbW1vbiBjbG9jayBiaW5kaW5nLgo+IC0gICAgICAgICAgICAgICAgICAgICAgVGhl
c2UgYXJlIGNsb2NrcyB3aGljaCBoYXJkd2FyZSBuZWVkcyB0byBiZQo+IC0gICAgICAgICAgICAg
ICAgICAgICAgZW5hYmxlZCBiZWZvcmUgZW5hYmxpbmcgY2VydGFpbiBwb3dlciBkb21haW5zLgo+
ICstIGNsb2NrLCBjbG9jay1uYW1lczogQ2xvY2tzIGFjY29yZGluZyB0byB0aGUgY29tbW9uIGNs
b2NrIGJpbmRpbmcuCj4gKyAgICAgICAgICAgICAgICAgICAgICBTb21lIFNvQ3MgaGF2ZSB0byBn
cm91cHMgb2YgY2xvY2tzLgo+ICsgICAgICAgICAgICAgICAgICAgICAgQkFTSUMgY2xvY2tzIG5l
ZWQgdG8gYmUgZW5hYmxlZCBiZWZvcmUgZW5hYmxpbmcgdGhlCj4gKyAgICAgICAgICAgICAgICAg
ICAgICBjb3JyZXNwb25kaW5nIHBvd2VyIGRvbWFpbi4KPiArICAgICAgICAgICAgICAgICAgICAg
IFNVQlNZUyBjbG9ja3MgbmVlZCB0byBiZSBlbmFibGVkIGJlZm9yZSByZWxlYXNpbmcgdGhlCj4g
KyAgICAgICAgICAgICAgICAgICAgICBidXMgcHJvdGVjdGlvbi4KPiAgICAgICAgIFJlcXVpcmVk
IGNsb2NrcyBmb3IgTVQyNzAxIG9yIE1UNzYyMzogIm1tIiwgIm1mZyIsICJldGhpZiIKPiAgICAg
ICAgIFJlcXVpcmVkIGNsb2NrcyBmb3IgTVQyNzEyOiAibW0iLCAibWZnIiwgInZlbmMiLCAianBn
ZGVjIiwgImF1ZGlvIiwgInZkZWMiCj4gICAgICAgICBSZXF1aXJlZCBjbG9ja3MgZm9yIE1UNjc2
NTogTVVYOiAibW0iLCAibWZnIgo+IEBAIC00Myw2ICs0OCwxNSBAQCBSZXF1aXJlZCBwcm9wZXJ0
aWVzOgo+ICAgICAgICAgUmVxdWlyZWQgY2xvY2tzIGZvciBNVDc2MjIgb3IgTVQ3NjI5OiAiaGlm
X3NlbCIKPiAgICAgICAgIFJlcXVpcmVkIGNsb2NrcyBmb3IgTVQ3NjIzQTogImV0aGlmIgo+ICAg
ICAgICAgUmVxdWlyZWQgY2xvY2tzIGZvciBNVDgxNzM6ICJtbSIsICJtZmciLCAidmVuYyIsICJ2
ZW5jX2x0Igo+ICsgICAgICAgUmVxdWlyZWQgY2xvY2tzIGZvciBNVDgxODM6IEJBU0lDOiAiYXVk
aW8iLCAibWZnIiwgIm1tIiwgImNhbSIsICJpc3AiLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAidnB1IiwgInZwdTEiLCAidnB1MiIsICJ2cHUzIgo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNVQlNZUzogIm1tLTAiLCAibW0tMSIsICJt
bS0yIiwgIm1tLTMiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIm1tLTQiLCAibW0tNSIsICJtbS02IiwgIm1tLTciLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIm1tLTgiLCAibW0tOSIsICJpc3AtMCIsICJpc3AtMSIs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2FtLTAiLCAi
Y2FtLTEiLCAiY2FtLTIiLCAiY2FtLTMiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgImNhbS00IiwgImNhbS01IiwgImNhbS02IiwgInZwdS0wIiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2cHUtMSIsICJ2cHUtMiIs
ICJ2cHUtMyIsICJ2cHUtNCIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAidnB1LTUiCj4KPiAgT3B0aW9uYWwgcHJvcGVydGllczoKPiAgLSB2ZGVjLXN1cHBs
eTogUG93ZXIgc3VwcGx5IGZvciB0aGUgdmRlYyBwb3dlciBkb21haW4KPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9tdDgxODMtcG93ZXIuaCBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvcG93ZXIvbXQ4MTgzLXBvd2VyLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAuLjVjMGM4YzcKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5k
aW5ncy9wb3dlci9tdDgxODMtcG93ZXIuaAo+IEBAIC0wLDAgKzEsMjYgQEAKPiArLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKClRoaXMgbGluZSBzaG91bGQgZW5kIHdpdGggYSAn
Ki8nCgo+ICsgKgoKQW5kIHRoaXMgbGluZSBzdGFydCB3aXRoIGEgJy8nCgoKPiArICogQ29weXJp
Z2h0IChjKSAyMDE4IE1lZGlhVGVrIEluYy4KPiArICogQXV0aG9yOiBXZWl5aSBMdSA8d2VpeWku
bHVAbWVkaWF0ZWsuY29tPgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX0RUX0JJTkRJTkdTX1BPV0VS
X01UODE4M19QT1dFUl9ICj4gKyNkZWZpbmUgX0RUX0JJTkRJTkdTX1BPV0VSX01UODE4M19QT1dF
Ul9ICj4gKwo+ICsjZGVmaW5lIE1UODE4M19QT1dFUl9ET01BSU5fQVVESU8gICAgICAwCj4gKyNk
ZWZpbmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9DT05OICAgICAgIDEKPiArI2RlZmluZSBNVDgxODNf
UE9XRVJfRE9NQUlOX01GR19BU1lOQyAgMgo+ICsjZGVmaW5lIE1UODE4M19QT1dFUl9ET01BSU5f
TUZHICAgICAgICAgICAgICAgIDMKPiArI2RlZmluZSBNVDgxODNfUE9XRVJfRE9NQUlOX01GR19D
T1JFMCAgNAo+ICsjZGVmaW5lIE1UODE4M19QT1dFUl9ET01BSU5fTUZHX0NPUkUxICA1Cj4gKyNk
ZWZpbmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9NRkdfMkQgICAgIDYKPiArI2RlZmluZSBNVDgxODNf
UE9XRVJfRE9NQUlOX0RJU1AgICAgICAgNwo+ICsjZGVmaW5lIE1UODE4M19QT1dFUl9ET01BSU5f
Q0FNICAgICAgICAgICAgICAgIDgKPiArI2RlZmluZSBNVDgxODNfUE9XRVJfRE9NQUlOX0lTUCAg
ICAgICAgICAgICAgICA5Cj4gKyNkZWZpbmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9WREVDICAgICAg
IDEwCj4gKyNkZWZpbmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9WRU5DICAgICAgIDExCj4gKyNkZWZp
bmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9WUFVfVE9QICAgIDEyCj4gKyNkZWZpbmUgTVQ4MTgzX1BP
V0VSX0RPTUFJTl9WUFVfQ09SRTAgIDEzCj4gKyNkZWZpbmUgTVQ4MTgzX1BPV0VSX0RPTUFJTl9W
UFVfQ09SRTEgIDE0Cj4gKwo+ICsjZW5kaWYgLyogX0RUX0JJTkRJTkdTX1BPV0VSX01UODE4M19Q
T1dFUl9IICovCj4gLS0KPiAxLjguMS4xLmRpcnR5Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBM
aW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
