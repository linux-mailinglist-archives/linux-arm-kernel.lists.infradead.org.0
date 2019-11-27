Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AEC10B62A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gLYtgVTaiBPEYQWZj/6X4cOavTjqP70o09E+7J0l39Q=; b=cp7l0YArau012RqxWpmRe82sV7
	L24gBEHDjPPo5eFYigFDcU6XHGpDUQ53yRHets86nn433OBmcHtlWkaXC1goy4jcnxmPZqHG0Ss78
	K2RF+XQvMHsTNSi2DHAJ79xLiyYeztKPJYF2tyl/PVA/IkiFiRWvSORdFyedY+QV1ARhdplKEi/Vm
	qkPliUshivzxA/0HZtwwKjZqY80YjOou/kIRraaq+9mdAmjbOyVVlqOhxbzhMuSVqo72xt5W/EuHr
	NefvObv3DuWmFtNlIOcb01Gu5besIvOGaiainQuwM5EUiDEw8XDFHFXwHaL/5baUSitdS1fWa9CWi
	vsUXWdMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2RR-0005hO-8D; Wed, 27 Nov 2019 18:53:33 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2RF-0005h2-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:53:23 +0000
Received: by mail-oi1-x243.google.com with SMTP id l136so5430198oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=B7OdfyOfsvItvmaN0rYdNSg9G6SH0O4NS8qdePNGNsM=;
 b=N8vdY+vlJAQhjge4fCNhfz2W4+03pESQoSCgv88q2OlHXMyNb5KgDwo52mHKSK/4D5
 6+Ro8/dh5tdnzYBZTchIotY9Bliv0l+waCLXOhRzpqsPOwOfJlqMq6KAiDGTIHWIdxy4
 eNFZ4R6HMfsm//Y86ousrjQwK6cIajqJTjbWJSLMEreAY3VyYzy+6EX76/JpzO0N9mUa
 Ab3bg3doy/GnWBRHtoUin/0E0lzjBm/Q4jbyMuBVqasrsTA2zfyJm4+70JjmIu/m5PYe
 wBg3FPSV5rUVFe08TNISjx6zOXlxDNo6VChINu5JHQVzCx+Dskm3IBMiG0DbNWuTJM1S
 jTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=B7OdfyOfsvItvmaN0rYdNSg9G6SH0O4NS8qdePNGNsM=;
 b=nuuUuQnSn7aTcRounGHrEDwCT2Os4MNEHblmYvc9OgofrO+DX3C3CSuwgLiTidNwq6
 lFHluTqdJsnCgUs2jnKWwdVyF+0BUeOTNby8hOWiOHmxecq9JXZHsA/jaMha00Qn8xaO
 lwkc2rLGikAnPugHWU5kGsivzncalqCRj9Tyg087b04xF1sINGlTqIEtEKNFw9o8sTSI
 IYZqih0i3K2Cnkhud5erLRcIzhK6CNI8zlqjEBxMlBqiSeaJMqkhWZ26QM/VQignknqr
 hDyhzUy0wYpDk+m4D8JVzL68ikJ6tGjEHwklOpXUsv/9nKkMOSzXozxpWnixbETKHjLc
 HYRw==
X-Gm-Message-State: APjAAAUNwv2Al3a5unkKbggN3V115qlsWcr4Ci3nNew6brVt1kbjEeSo
 11fJc/m31nwNjzzfjSErZi1Mw9BdTdAo18Oaffw=
X-Google-Smtp-Source: APXvYqx+wTrJMMEAadlR2TvpMsiJs6MouGSI7S70yGV387JqMw+U7ZdD2Kjv46qQTOWW6lu42qDvJ/n1yjP4CpNThoM=
X-Received: by 2002:aca:5883:: with SMTP id m125mr5055567oib.145.1574880800897; 
 Wed, 27 Nov 2019 10:53:20 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
 <20191127180743.ww5npenlg2urxtjn@core.my.home>
In-Reply-To: <20191127180743.ww5npenlg2urxtjn@core.my.home>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 27 Nov 2019 10:52:55 -0800
Message-ID: <CA+E=qVeXhutfeJ6m8fuokzy8aRmNqWWyRGn0Lbtv_9hNCXzSeg@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Maxime Ripard <mripard@kernel.org>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>, 
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Amit Kucheria <amit.kucheria@verdurent.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-linux <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_105321_683604_CE0B1F51 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTA6MDcgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDY6
NDQ6MzRQTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IE9uIFR1
ZSwgTm92IDI2LCAyMDE5IGF0IDA5OjI5OjMwUE0gLTA4MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdy
b3RlOgo+ID4gPiBGcm9tOiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+Cj4gPiA+
Cj4gPiA+IHN1bjhpLXRoZXJtYWwgZHJpdmVyIHN1cHBvcnRzIHRoZXJtYWwgc2Vuc29yIGluIHdp
ZGUgcmFuZ2Ugb2YgQWxsd2lubmVyCj4gPiA+IFNvQ3MuIEFkZCBZQU1MIHNjaGVtYSBmb3IgaXRz
IGJpbmRpbmdzLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5ndGFvIExpIDx0aW55Lndp
bmR6ekBnbWFpbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZhc2lseSBLaG9ydXpoaWNrIDxh
bmFyc291bEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgLi4uL3RoZXJtYWwvYWxsd2lubmVy
LHN1bjhpLWE4M3QtdGhzLnlhbWwgICAgIHwgMTAzICsrKysrKysrKysrKysrKysrKwo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEwMyBpbnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1
bjhpLWE4M3QtdGhzLnlhbWwKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1
bjhpLWE4M3QtdGhzLnlhbWwKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5lNjIyZjBhNGJlOTAKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9hbGx3aW5uZXIsc3Vu
OGktYTgzdC10aHMueWFtbAo+ID4gPiBAQCAtMCwwICsxLDEwMyBAQAo+ID4gPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ID4gPiArJVlBTUwgMS4yCj4gPiA+ICstLS0KPiA+
ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdGhlcm1hbC9hbGx3aW5uZXIs
c3VuOGktYTgzdC10aHMueWFtbCMKPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gPiArCj4gPiA+ICt0aXRsZTogQWxsd2lubmVy
IFNVTjhJIFRoZXJtYWwgQ29udHJvbGxlciBEZXZpY2UgVHJlZSBCaW5kaW5ncwo+ID4gPiArCj4g
PiA+ICttYWludGFpbmVyczoKPiA+ID4gKyAgLSBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFp
bC5jb20+Cj4gPiA+ICsKPiA+ID4gK3Byb3BlcnRpZXM6Cj4gPiA+ICsgIGNvbXBhdGlibGU6Cj4g
PiA+ICsgICAgb25lT2Y6Cj4gPiA+ICsgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuOGktYTgz
dC10aHMKPiA+ID4gKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW44aS1oMy10aHMKPiA+ID4g
KyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW44aS1yNDAtdGhzCj4gPiA+ICsgICAgICAtIGNv
bnN0OiBhbGx3aW5uZXIsc3VuNTBpLWE2NC10aHMKPiA+ID4gKyAgICAgIC0gY29uc3Q6IGFsbHdp
bm5lcixzdW41MGktaDUtdGhzCj4gPiA+ICsgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNTBp
LWg2LXRocwo+ID4gPiArCj4gPiA+ICsgIHJlZzoKPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4g
PiArCj4gPiA+ICsgIGludGVycnVwdHM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+
ID4gPiArICByZXNldHM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+ID4gPiArICBj
bG9ja3M6Cj4gPiA+ICsgICAgbWluSXRlbXM6IDEKPiA+ID4gKyAgICBtYXhJdGVtczogMgo+ID4g
PiArCj4gPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gPiArICAgIGFueU9mOgo+ID4gPiArICAgICAg
LSBpdGVtczoKPiA+ID4gKyAgICAgICAgLSBjb25zdDogYnVzCj4gPiA+ICsgICAgICAgIC0gY29u
c3Q6IG1vZAo+ID4gPiArICAgICAgLSBpdGVtczoKPiA+ID4gKyAgICAgICAgLSBjb25zdDogYnVz
Cj4gPgo+ID4gVGhpcyBjYW4gYmU6Cj4gPgo+ID4gY2xvY2stbmFtZXM6Cj4gPiAgIG1pbkl0ZW1z
OiAxCj4KPiBBZGRpdGlvbmFsbHksIG1pbkl0ZW1zIHNob3VsZCBiZSAwLCBzaW5jZSBBODNUIGRv
ZXNuJ3QgaGF2ZSBidXMgY2xvY2svcmVzZXQuIEFuZAo+IHRoZW4gdGhlcmUgc2hvdWxkIGJlIGEg
c3BlY2lhbCBjYXNlIGZvciBBODNUIHRvbyB3aXRoIG1pbi9tYXhJdGVtcyA9IDAgZm9yIGJvdGgK
PiByZXNldHMgYW5kIGNsb2Nrcy4KClRoYXQncyB3aHkgSSByZW1vdmVkIGNsb2NrcywgY2xvY2st
bmFtZXMgYW5kIHJlc2V0cyBmcm9tIHJlcXVpcmVkCnByb3BlcnRpZXMuIElmIHRoZXkncmUgcHJl
c2VudCBtaW4vbWF4SXRlbXMgc2hvdWxkIGJlIDEgYW5kIDIKYWNjb3JkaW5nbHkuCgo+IHJlZ2Fy
ZHMsCj4gICAgICAgICBvLgo+Cj4gPiAgIG1heEl0ZW1zOiAyCj4gPiAgIGl0ZW1zOgo+ID4gICAg
IC0gY29uc3Q6IGJ1cwo+ID4gICAgIC0gY29uc3Q6IG1vZAo+ID4KPiA+IEFuZCB0aGUgbGVuZ3Ro
IHNob3VsZCBiZSBjaGVja2VkIGJhc2VkIG9uIHRoZSBjb21wYXRpYmxlIHZhbHVlLCB3aXRoCj4g
PiBzb21ldGhpbmcgbGlrZQo+ID4KPiA+IGlmOgo+ID4gICBwcm9wZXJ0aWVzOgo+ID4gICAgIGNv
bXBhdGlibGU6Cj4gPiAgICAgICBjb250YWluczoKPiA+ICAgICAgICAgY29uc3Q6IGFsbHdpbm5l
cixzdW41MGktaDYtdGhzCj4gPgo+ID4gdGhlbjoKPiA+ICAgcHJvcGVydGllczoKPiA+ICAgICBj
bG9ja3M6Cj4gPiAgICAgICBtYXhJdGVtczogMQo+ID4KPiA+ICAgICBjbG9jay1uYW1lczoKPiA+
ICAgICAgIG1heEl0ZW1zOiAxCj4gPgo+ID4gZWxzZToKPiA+ICAgcHJvcGVydGllczoKPiA+ICAg
ICBjbG9ja3M6Cj4gPiAgICAgICBtYXhJdGVtczogMgo+ID4KPiA+ICAgICBjbG9jay1uYW1lczoK
PiA+ICAgICAgIG1heEl0ZW1zOiAyCj4gPgo+ID4gPiArCj4gPiA+ICsgICcjdGhlcm1hbC1zZW5z
b3ItY2VsbHMnOgo+ID4gPiArICAgIGVudW06IFsgMCwgMSBdCj4gPiA+ICsgICAgZGVzY3JpcHRp
b246IHwKPiA+ID4gKyAgICAgIERlZmluaXRpb24gZGVwZW5kcyBvbiBzb2MgdmVyc2lvbjoKPiA+
ID4gKwo+ID4gPiArICAgICAgRm9yICJhbGx3aW5uZXIsc3VuOGktaDMtdGhzIiwKPiA+ID4gKyAg
ICAgIHZhbHVlIG11c3QgYmUgMC4KPiA+ID4gKyAgICAgIEZvciBhbGwgb3RoZXIgY29tcGF0aWJs
ZXMKPiA+ID4gKyAgICAgIHZhbHVlIG11c3QgYmUgMS4KPiA+Cj4gPiBUaGlzIHNob3VsZCBiZSBj
aGVja2VkIHVzaW5nIGFuIGlmIGFzIHdlbGwuCj4gPgo+ID4gPiArCj4gPiA+ICsgIG52bWVtLWNl
bGxzOgo+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAg
ICAtIGRlc2NyaXB0aW9uOiBDYWxpYnJhdGlvbiBkYXRhIGZvciB0aGVybWFsIHNlbnNvcnMKPiA+
Cj4gPiBZb3UgY2FuIGRyb3AgdGhlIGl0ZW1zIGFuZCBqdXN0IG1vdmUgdGhlIGRlc2NyaXB0aW9u
IHVwIG9uZSBsZXZlbCwKPiA+IHVuZGVyIG52bWVtLWNlbGxzCj4gPgo+ID4gPiArCj4gPiA+ICsg
IG52bWVtLWNlbGwtbmFtZXM6Cj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAgICAtIGNvbnN0
OiBjYWxpYnJhdGlvbgo+ID4KPiA+IERpdHRvIGZvciB0aGUgY29uc3QKPiA+Cj4gPiA+ICsKPiA+
ID4gK3JlcXVpcmVkOgo+ID4gPiArICAtIGNvbXBhdGlibGUKPiA+ID4gKyAgLSByZWcKPiA+ID4g
KyAgLSBpbnRlcnJ1cHRzCj4gPiA+ICsgIC0gJyN0aGVybWFsLXNlbnNvci1jZWxscycKPiA+Cj4g
PiBXaGV0aGVyIGNsb2NrcywgY2xvY2stbmFtZXMgYW5kIHJlc2V0cyBhcmUgdGhlcmVzaG91bGQg
YmUgY2hlY2sgdXNpbmcKPiA+IGFuIGlmIHN0YXRlbWVudCBhcyB3ZWxsLgo+ID4KPiA+ID4gKwo+
ID4gPiArZXhhbXBsZXM6Cj4gPiA+ICsgIC0gfAo+ID4gPiArICAgIHRoc19hODN0OiB0aHNAMWYw
NDAwMCB7Cj4gPgo+ID4gWW91IGRvbid0IG5lZWQgdGhlIGxhYmVsIGF0IGFsbCwgYW5kIHRoZSBu
b2RlIG5hbWUgc2hvdWxkIGJlCj4gPiB0ZW1wZXJhdHVyZS1zZW5zb3IgYWNjb3JkaW5nIHRvIHRo
ZSBEVCBzcGVjLCBub3QgdGhzLiBUaGlzIGFwcGxpZXMgdG8KPiA+IGFsbCB5b3UgZXhhbXBsZXMu
Cj4gPgo+ID4gPiArICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGktYTgzdC10
aHMiOwo+ID4gPiArICAgICAgICAgcmVnID0gPDB4MDFmMDQwMDAgMHgxMDA+Owo+ID4gPiArICAg
ICAgICAgaW50ZXJydXB0cyA9IDwwIDMxIDA+Owo+ID4gPiArICAgICAgICAgbnZtZW0tY2VsbHMg
PSA8JnRoc19jYWxpYnJhdGlvbj47Cj4gPiA+ICsgICAgICAgICBudm1lbS1jZWxsLW5hbWVzID0g
ImNhbGlicmF0aW9uIjsKPiA+ID4gKyAgICAgICAgICN0aGVybWFsLXNlbnNvci1jZWxscyA9IDwx
PjsKPiA+ID4gKyAgICB9Owo+ID4KPiA+IE5ldyBsaW5lLgo+ID4KPiA+IFRoYW5rcyEKPiA+IE1h
eGltZQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
