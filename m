Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF27E6D35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqhfh9JNsaOSDPts9lZT4KI7x225ubfBJoSISjYyRG8=; b=icIn/zKobqWqtY
	RuDB497gEielurF3eN/QbL0k7gV4kyU8lWCRwVuaKtZ24gKZQhhiTLPRwAaf69SEH/dvU979hBEOf
	fCh3BumvejwMt5sdxdH5BpB7VzDTn5GgkI/myLNm9y1wS4J68DtL9w/XBELQpPHnQpZbu8N60Zebp
	Uod0xR8ahKVaoGqrcPrHdtcrLVA2gHs5aZJGtMr5pmSL17uC+Pan2PPPaz/49dZkmJtA7RF0d6hY4
	AGLCjJ/HpVf38GHl31SynIjeDdM+seEHf+F7rkCK/6FtQowB0YbTdCIQ6UAjbIkwtybOPQ7TOaIYF
	j0qadS/+w0hBlGeuerNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzQ0-0001TS-4L; Mon, 28 Oct 2019 07:26:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzPk-0001Sx-7A
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:26:09 +0000
Received: by mail-wr1-x441.google.com with SMTP id t16so8674282wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=prOUiXWox/HxcvkYayavW/DPYzCaQqxoI6+PqjFxCYA=;
 b=cgaUkrlIhdeeD6Cr0srOiQYG2moclNeX5Rk4Pj9PNQXrjeDFRJLjMQHfnJFaW5MRmb
 J8FpiXXSoyqXJMjsuZjb0XVlpjOIhXyz50C1fEgZn1H+9TeDr8OvpzmXF4QFfYPX/xZN
 lvMKXCOpCqeQlsItZ5ZMSm/v/6GS0zDMTw6VgFMgb3kgE6bQPB/dfrSxMkYkp8TnXZS+
 OvlpmsL3/GeKh0YEwxw9s2gIgIURXg+a/rnjqYX+/HWiH9EncmjtbAfyQj+IdZ3hZ2Me
 SbBtPTrdMMSjZBMk8QdmIulBbYOA8ntvrW5+8CBZFxlU2HrKq5BlUWQcciUdqTpsCeoQ
 sYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=prOUiXWox/HxcvkYayavW/DPYzCaQqxoI6+PqjFxCYA=;
 b=PPEQ5GFnzOw1OIPq1SAUK1LOJbt2orcViyy0nv3WpnwdQvh/oxkVYJ6G5TN7Jzlr68
 9CtS2BITPhZKxYX/4yP4CcpYoz6kUUitWhZF7RI/pIrhWCVgWYTiUp19vpqa7PmYLfi9
 ptL6MSWQbwG/krWHMPK0+IMiWLcE1NfmcisUKGtBB8i0fNhQpJXJvq0V8Hlm2Y1cH9Uq
 EBCJM73mB50tif+Ec4m3HWUZqHU586OmiRDpTbpypU6BNpSGXg99aKMQuGU3aWQtloJA
 gEDJKLcpOQ2qoEoTY7Yg+QT8tsDWTYINQE65qRJaIJ4GfMOwBBIS3r7qtOvhIZhUljZV
 7nFg==
X-Gm-Message-State: APjAAAVI0YFMRu1Vt2btJrvk49o4gQc7vBRpM4ildwFT50KyJJpsNGiT
 JnqoPlb7bBqHaTwEumSJJlWL/Z6M7T0ysHRQe7+EGQ==
X-Google-Smtp-Source: APXvYqyfzXWBMruTRKGFX7mb8TpqkJiSawEwAPZNoZw6IfN/Mq1SjsqIvS9fvXPjlzp4nr8LWBSdM9R4jvbt9JQjffc=
X-Received: by 2002:adf:8289:: with SMTP id 9mr14647210wrc.0.1572247566613;
 Mon, 28 Oct 2019 00:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191019022048.28065-1-richard.henderson@linaro.org>
 <20191019022048.28065-2-richard.henderson@linaro.org>
 <20191024113239.GC4300@lakrids.cambridge.arm.com>
 <CAKv+Gu9uoJk8iqGASP3KvZK+4GMo=5ckD5DSzdOAmCJuOQNiUA@mail.gmail.com>
 <6e75d7b9-1c30-adab-bb74-1aaaa4e98ad4@linaro.org>
 <CAKv+Gu8A7vF0MQgVn6H2=Pjimnv0UUZt=1sce7aHr9BJ05_vzw@mail.gmail.com>
In-Reply-To: <CAKv+Gu8A7vF0MQgVn6H2=Pjimnv0UUZt=1sce7aHr9BJ05_vzw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 28 Oct 2019 08:26:04 +0100
Message-ID: <CAKv+Gu8URysq6JUrXRSix=zW32JkzwkANUwoowU12PjRCOR9Pw@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002608_288921_4F0458F6 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxOTo0MCwgQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1
dmVsQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxMzozOCwg
UmljaGFyZCBIZW5kZXJzb24KPiA8cmljaGFyZC5oZW5kZXJzb25AbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gMTAvMjQvMTkgMTo1NyBQTSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4gPiA+
Pj4gKwo+ID4gPj4+ICsjaWZkZWYgQ09ORklHX0FSQ0hfUkFORE9NCj4gPiA+Pj4gKwo+ID4gPj4+
ICsvKgo+ID4gPj4+ICsgKiBOb3RlIHRoYXQgdGhlc2UgdHdvIGludGVyZmFjZXMsIHJhbmRvbSBh
bmQgcmFuZG9tX3NlZWQsIGFyZSBzdHJvbmdseQo+ID4gPj4+ICsgKiB0aWVkIHRvIHRoZSBJbnRl
bCBpbnN0cnVjdGlvbnMgUkRSQU5EIGFuZCBSRFNFRUQuICBSRFNFRUQgaXMgdGhlCj4gPiA+Pj4g
KyAqICJlbmhhbmNlZCIgdmVyc2lvbiBhbmQgaGFzIHN0cm9uZ2VyIGd1YXJhbnRlZXMuICBUaGUg
QVJNdjguNS1STkcKPiA+ID4+PiArICogaW5zdHJ1Y3Rpb24gUk5EUiBjb3JyZXNwb25kcyB0byBS
RFNFRUQsIHRodXMgd2UgcHV0IG91ciBpbXBsZW1lbnRhdGlvbgo+ID4gPj4+ICsgKiBpbnRvIHRo
ZSByYW5kb21fc2VlZCBzZXQgb2YgZnVuY3Rpb25zLgo+ID4gPj4+ICsgKgo+ID4gPgo+ID4gPiBJ
cyB0aGF0IGFjY3VyYXRlPyBUaGUgQVJNIEFSTSBzYXlzIHRoYXQgUk5EUiBpcyBiYWNrZWQgYnkg
YSBEUkJHIHdoaWNoCj4gPiA+Cj4gPiA+ICIiCj4gPiA+IC4uLmlzIHJlc2VlZGVkIGFmdGVyIGFu
IElNUExFTUVOVEFUSU9OIERFRklORUQgbnVtYmVyIG9mIHJhbmRvbQo+ID4gPiBudW1iZXJzIGhh
cyBiZWVuIGdlbmVyYXRlZCBhbmQgcmVhZAo+ID4gPiB1c2luZyB0aGUgUk5EUiByZWdpc3Rlci4K
PiA+ID4gIiIiCj4gPiA+Cj4gPiA+IHdoaWNoIG1lYW5zIHRoYXQgeW91IGNhbm5vdCByZWx5IG9u
IHRoaXMgcmVzZWVkaW5nIHRvIHRha2UgcGxhY2UgYXQgYWxsLgo+ID4gPgo+ID4gPiBTbyB0aGUg
d2F5IEkgcmVhZCB0aGlzLCBSTkRSIH49IFJEUkFORCBhbmQgUk5EUlJTIH49IFJEU0VFRCwgYW5k
IHdlCj4gPiA+IHNob3VsZCB3aXJlIHVwIHRoZSBmdW5jdGlvbnMgYmVsb3cgYWNjb3JkaW5nbHku
Cj4gPgo+ID4gTm8sIHRoYXQgcmVhZGluZyBpcyBub3QgY29ycmVjdCwgYW5kIGlzIGV4YWN0bHkg
d2hhdCBJIHdhcyB0cnlpbmcgdG8gZXhwbGFpbiBpbgo+ID4gdGhhdCBwYXJhZ3JhcGguCj4gPgo+
ID4gUk5EUiB+PSBSRFNFRUQuCj4gPgo+ID4gSXQncyBhIG1hdHRlciBvZiBzdGFuZGFyZHMgY29u
Zm9ybWFuY2U6Cj4gPgo+ID4gUkRSQU5EOiBOSVNUIFNQODAwLTkwQS4KPiA+Cj4gPiBSRFNFRUQ6
IE5JU1QgU1A4MDAtOTBCLAo+ID4gICAgICAgICBOSVNUIFNQODAwLTkwQy4KPiA+Cj4gPiBSTkRS
OiAgIE5JU1QgU1A4MDAtOTBBIFJldiAxLAo+ID4gICAgICAgICBOSVNUIFNQODAwLTkwQiwKPiA+
ICAgICAgICAgTklTVCBTUDgwMC0yMiwKPiA+ICAgICAgICAgRklQUyAxNDAtMiwKPiA+ICAgICAg
ICAgQlNJIEFJUy0zMSwKPiA+ICAgICAgICAgTklTVCBTUDgwMC05MEMuCj4gPgo+Cj4gVGhhdCBp
cyBub3Qgd2hhdCB0aGUgQVJNIEFSTSBzYXlzIChEREkwNDg3RS5hIEsxMi4xKToKPgo+IFRoZSAq
VFJORyogdGhhdCBzZWVkcyB0aGUgRFJCRyB0aGF0IGJhY2tzIGJvdGggUk5EUiBhbmQgUk5EUlJT
IHNob3VsZCBjb25mb3JtIHRvCj4KPiDigKIgVGhlIE5JU1QgU1A4MDAtOTBCIHN0YW5kYXJkLgo+
IOKAoiBUaGUgTklTVCBTUDgwMC0yMiBzdGFuZGFyZC4KPiDigKIgVGhlIEZJUFMgMTQwLTIgc3Rh
bmRhcmQuCj4g4oCiIFRoZSBCU0kgQUlTLTMxIHN0YW5kYXJkLgo+Cj4gVGhpcyBEUkJHIGl0c2Vs
ZiBzaG91bGQgY29uZm9ybSB0byBOSVNUIFNQODAwLTkwQSBSZXYgMSwgYW5kIGlzCj4gcmVzZWVk
ZWQgYXQgYW4gaW1wbGVtZW50YXRpb24gZGVmaW5lZCByYXRlIHdoZW4gUk5EUiBpcyB1c2VkLCBv
ciBldmVyeQo+IHRpbWUgd2hlbiBSTkRSUlMgaXMgdXNlZC4KPgo+IFNvIHRoZSBvdXRwdXQgb2Yg
dGhlIFRSTkcgaXRzZWxmIGlzIG5vdCBhY2Nlc3NpYmxlIGRpcmVjdGx5LCBhbmQgYm90aAo+IFJO
RFIgYW5kIFJORFJSUyByZXR1cm4gb3V0cHV0IGdlbmVyYXRlZCBieSBhIERSQkcuIE5JU1QgU1A4
MDAtOTBBCj4gc3VnZ2VzdHMgYSBtaW5pbXVtIHNlZWQgc2l6ZSBvZiA0NDAgYml0cywgc28gdXNp
bmcgUk5EUlJTIHRvIGdlbmVyYXRlCj4gNjQtYml0IHNlZWRzIGlzIHJlYXNvbmFibGUsCgpUaGlz
IGlzbid0IDEwMCUgYWNjdXJhdGUsIGJ1dCB0aGUgcG9pbnQgaXMgdGhhdCBOSVNUIFNQODAwLTkw
QSBkZWZpbmVzCnNlZWQgc2l6ZXMgZm9yIGFsbCBEUkJHcyB0aGF0IGV4Y2VlZCA2NCBiaXRzLCBh
bmQgc28gdGFraW5nIGF0IG1vc3QgNjQKYml0cyBvZiBvdXRwdXQgZnJvbSBhIERSQkcgc2VlZGVk
IHdpdGggNjQrIGJpdHMgb2YgdHJ1ZSBlbnRyb3B5IGlzIGEKcmVhc29uYWJsZSBhcHByb3hpbWF0
aW9uIG9mIHVzaW5nIHRoZSBzZWVkIGRpcmVjdGx5LiBUaGUgZG93bnNpZGUsIG9mCmNvdXJzZSwg
aXMgdGhhdCB5b3UgbmVlZCB0byBjYWxsIHRoZSBpbnN0cnVjdGlvbiBtdWx0aXBsZSB0aW1lcyB0
byBnZXQKYSBzZWVkIG9mIHRoZSBtYW5kYXRlZCBzaXplLCBhbmQgc28gZnJvbSBhIGNlcnRpZmlj
YXRpb24gUE9WLCB0aGlzIG1heQpzdGlsbCBiZSBwcm9ibGVtYXRpYy4KCkkgYnJvdWdodCB0aGlz
IHVwIHNvbWUgdGltZSBhZ28sIGFuZCBzdWdnZXN0ZWQgdGhhdCB3ZSBzaG91bGQgaGF2ZSBvbmUK
aW5zdHJ1Y3Rpb24gdG8gcHJvZHVjZSBzdHJvbmcgZW50cm9weSwgYW5kIG9uZSBpbnN0cnVjdGlv
biB0byByZXR1cm4KdGhlIG91dHB1dCBvZiB0aGUgRFJCRywgd2l0aCB0aGUgYWJpbGl0eSB0byBz
ZXQgdGhlIHNlZWQgZXhwbGljaXRseSwKd2hpY2ggd291bGQgYWxsb3cgdGhlIHRydWUgZW50cm9w
eSBmcm9tIHRoZSBmaXJzdCBpbnN0cnVjdGlvbiB0byBiZQptaXhlZCB3aXRoIGlucHV0IGZyb20g
YW5vdGhlciBzb3VyY2UsIGluIG9yZGVyIHRvIG1pdGlnYXRlIHRoZSB0cnVzdAppc3N1ZXMgdGhh
dCBhZmZlY3QgUkRSQU5EL1JEU0VFRC4KCgo+IGV2ZW4gdGhvdWdoIGl0IGNvbWVzIGZyb20gYSBE
UkJHLiBCdXQgUk5EUgo+IGlzIGRlZmluaXRlbHkgbm90IGVxdWl2YWxlbnQgdG8gUkRTRUVELgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
