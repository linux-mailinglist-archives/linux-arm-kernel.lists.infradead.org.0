Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9785082B8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8yAXBxInHBY0MwVngQsIxbk4ZiWqy3uqRV4Go5CRI0=; b=JS1jW4WC8+aChU
	JFODF855gKwiInmyrxGSLZV6wGUFU/OmmvJ1tXrzKFQAe7xcnpSGPVKuINfF2DV0jV9jafX33wmjF
	ooyBFaX9t+ZPTt4HVMpvTHhkOn0ydsmM9UbK7N2pZKPDeahhgKNOXdzSRbuWJhm3kKuEo2vzPczhX
	Hyfy5oBa3CkqXv12LdRIjH7KyhaCnnHS/K3A5DOvAdx/xR82gQkidltvjv17ehaL/KGs3jC45SGlE
	vb9xbGUtSwwoeUdJf2nOWBPzRQlrOaNGIgYBaUkwCH8G8NScSBudbKpmWDpdCe+CPB3acwO+rOg00
	xJi+WVnLjTKuLu41Uk8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husrn-0000jb-5B; Tue, 06 Aug 2019 06:22:39 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husre-0000iu-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:22:32 +0000
Received: by mail-ed1-f68.google.com with SMTP id s49so46424134edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 23:22:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=31ueH4xeu7Xw4wz+WZeX4tVZdv/T52Sgk7fLVWTqQcw=;
 b=I+zvr5T3mQZ+9TCxURQAFm5A5hF+zgFfLmyZRhCOjGNjocdMcFqfAquj7qeM9INEGy
 rh9+zl3/BVS7yzPK0my7bJLcytDmNelJnfR42d6bAc9qmxKDJULorn+HnsrK9BfgBf4t
 DkmzRX5X/940HxD67ltsoBT6P+KR1DF9+JOBKugTzN8CCgdu8ffSdqh5BowEkINetVdF
 9/IWnp6zIbB0cikwsC546Os9XrITkx24wLsI7L015PlxxVxzUBTxPjaAeivNy2OG2Nhe
 Y68FtEscPp/k7aHnWL2M7cqfAvQMlPptddubPYrlabc5ifRBVpf+wfIYpTxll2YMUCdS
 y9GQ==
X-Gm-Message-State: APjAAAUoXqjlzd2gVK7+wnL30TbTWmSaITVygEgCCcf24H6lLCKTHN0m
 g5lxgUnx9zfbtKpE/cmzpnyZl3DA9CY=
X-Google-Smtp-Source: APXvYqxnGiK8ACMUGyhXSE5Q8FeYTVh9QVxB/+plsSVHU+dBN6IRffkgyyTmqpfM3OR0YSgkztvPbw==
X-Received: by 2002:a17:906:4d89:: with SMTP id
 s9mr1573278eju.160.1565072547678; 
 Mon, 05 Aug 2019 23:22:27 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id h10sm20576029ede.93.2019.08.05.23.22.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 23:22:27 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 207so76927087wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 23:22:26 -0700 (PDT)
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr2565217wmh.125.1565072546430; 
 Mon, 05 Aug 2019 23:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <2092329.vleAuWJ0xl@jernej-laptop>
 <20190731122953.2u3iabd6gkn7jv7k@flea> <1589203.0AjJVEASy3@jernej-laptop>
In-Reply-To: <1589203.0AjJVEASy3@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 6 Aug 2019 14:22:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v66D4-QvWYPXE=rf6Zv93X1LjnxUgpk+5wdAL_b7MM3vaA@mail.gmail.com>
Message-ID: <CAGb2v66D4-QvWYPXE=rf6Zv93X1LjnxUgpk+5wdAL_b7MM3vaA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane
 functionality
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_232230_404583_7122BBE5 
X-CRM114-Status: GOOD (  33.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Christopher Obbard <chris@64studio.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Code Kipper <codekipper@gmail.com>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxOjMyIFBNIEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNr
cmFiZWNAZ21haWwuY29tPiB3cm90ZToKPgo+IERuZSBzcmVkYSwgMzEuIGp1bGlqIDIwMTkgb2Ig
MTQ6Mjk6NTMgQ0VTVCBqZSBNYXhpbWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4gPiBPbiBUdWUsIEp1
bCAzMCwgMjAxOSBhdCAwNzo1NzoxMFBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4g
PiA+IERuZSB0b3JlaywgMDQuIGp1bmlqIDIwMTkgb2IgMTE6Mzg6NDQgQ0VTVCBqZSBDb2RlIEtp
cHBlciBuYXBpc2FsKGEpOgo+ID4gPiA+IE9uIFR1ZSwgNCBKdW4gMjAxOSBhdCAxMTowMiwgQ2hy
aXN0b3BoZXIgT2JiYXJkIDxjaHJpc0A2NHN0dWRpby5jb20+Cj4gd3JvdGU6Cj4gPiA+ID4gPiBP
biBUdWUsIDQgSnVuIDIwMTkgYXQgMDk6NDMsIENvZGUgS2lwcGVyIDxjb2Rla2lwcGVyQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1ZSwgNCBKdW4gMjAxOSBhdCAwOTo1OCwgTWF4
aW1lIFJpcGFyZAo+ID4gPiA+ID4gPiA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KPiA+ID4K
PiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gT24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDc6NDc6
MzJQTSArMDIwMCwgY29kZWtpcHBlckBnbWFpbC5jb20KPiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+
IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4gPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gPiA+IFRoZSBpMnMgYmxvY2sgc3VwcG9ydHMgbXVsdGktbGFuZSBpMnMg
b3V0cHV0IGhvd2V2ZXIgdGhpcwo+ID4gPiA+ID4gPiA+ID4gZnVuY3Rpb25hbGl0eQo+ID4gPiA+
ID4gPiA+ID4gaXMgb25seSBwb3NzaWJsZSBpbiBlYXJsaWVyIFNvQ3Mgd2hlcmUgdGhlIHBpbnMg
YXJlIGV4cG9zZWQgYW5kCj4gPiA+ID4gPiA+ID4gPiBmb3IKPiA+ID4gPiA+ID4gPiA+IHRoZSBp
MnMgYmxvY2sgdXNlZCBmb3IgSERNSSBhdWRpbyBvbiB0aGUgbGF0ZXIgU29Dcy4KPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBUbyBlbmFibGUgdGhpcyBmdW5jdGlvbmFsaXR5LCBhbiBv
cHRpb25hbCBwcm9wZXJ0eSBoYXMgYmVlbgo+ID4gPiA+ID4gPiA+ID4gYWRkZWQgdG8KPiA+ID4g
PiA+ID4gPiA+IHRoZSBiaW5kaW5ncy4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+IEknZCBsaWtlIHRvIGhhdmUgTWFyaydzIGlucHV0IG9uIHRo
aXMsIGJ1dCBJJ20gcmVhbGx5IHdvcnJpZWQKPiA+ID4gPiA+ID4gPiBhYm91dAo+ID4gPiA+ID4g
PiA+IHRoZSBpbnRlcmFjdGlvbiB3aXRoIHRoZSBwcm9wZXIgVERNIHN1cHBvcnQuCj4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiBPdXIgZnVuZGFtZW50YWwgaXNzdWUgaXMgdGhhdCB0aGUgY29u
dHJvbGxlciBjYW4gaGF2ZSB1cCB0byA4Cj4gPiA+ID4gPiA+ID4gY2hhbm5lbHMsIGJ1dCBlaXRo
ZXIgb24gNCBsaW5lcyAoaW5zdGVhZCBvZiAxKSwgb3IgOCBjaGFubmVscyBvbiAxCj4gPiA+ID4g
PiA+ID4gKGxpa2UgcHJvcGVyIFRETSkgKG9yIGFueSBjb21iaW5hdGlvbiBiZXR3ZWVuIHRoZSB0
d28sIGJ1dCB0aGF0Cj4gPiA+ID4gPiA+ID4gc2hvdWxkCj4gPiA+ID4gPiA+ID4gYmUgcHJldHR5
IHJhcmUpLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJIHVuZGVyc3RhbmQuLi5tYXliZSB0aGUg
VERNIG5lZWRzIHRvIGJlIGV4dGVuZGVkIHRvIHN1cHBvcnQgdGhpcyB0bwo+ID4gPiA+ID4gPiBj
b25zaWRlciBjaGFubmVsIG1hcHBpbmcgYW5kIG11bHRpcGxlIHRyYW5zZmVyIGxpbmVzLiBJIHdh
cyB0aGlua2luZwo+ID4gPiA+ID4gPiBhYm91dCB0aGUgbGF0ZXIgd2hlbiBzb21lb25lIHdhcyBy
ZXF1ZXN0aW5nIHN1cHBvcnQgb24gSUlSQyBhIHdoaWxlCj4gPiA+ID4gPiA+IGFnbywgSSB0aG91
Z2h0IG1hc2tpbmcgbWlnaHQgb2YgYmVlbiBhIHNvbHV0aW9uLiBUaGVzZSBjYW4gd2FpdCBhcwo+
ID4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+ID4gb25seSBjb25zdW1lciBhdCB0aGUgbW9tZW50IGlz
IExpYnJlRUxFQyBhbmQgd2UgY2FuIHBhdGNoIGl0IHRoZXJlLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IEhpIE1hcmN1cywKPiA+ID4gPiA+Cj4gPiA+ID4gPiBGV0lXLCB0aGUgVEkgTWNBU1AgZHJpdmVy
IGhhcyBzdXBwb3J0IGZvciBURE0gJiAoaSB0aGluaz8pIG11bHRpcGxlCj4gPiA+ID4gPiB0cmFu
c2ZlciBsaW5lcyB3aGljaCBhcmUgY2FsbGVkIHNlcmlhbGl6ZXJzLgo+ID4gPiA+ID4gTWF5YmUg
dGhpcyBjYW4gaGVscCB3aXRoIGluc3BpcmF0aW9uPwo+ID4gPiA+ID4gc2VlCj4gPiA+ID4gPiBo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9s
aW51eC5naXQvdHJlCj4gPiA+ID4gPiBlL3MKPiA+ID4gPiA+IG91bmQvc29jL3RpL2RhdmluY2kt
bWNhc3AuYyBzYW1wbGUgRFRTOgo+ID4gPiA+ID4KPiA+ID4gPiA+ICZtY2FzcDAgewo+ID4gPiA+
ID4KPiA+ID4gPiA+ICAgICAjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+ID4gPiA+ID4gICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+ID4gPiA+ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ID4gPiA+ID4gICAgIHBpbmN0cmwtMCA9IDwmbWNhc3AwX3BpbnM+Owo+ID4gPiA+ID4KPiA+ID4g
PiA+ICAgICBvcC1tb2RlID0gPDA+Owo+ID4gPiA+ID4gICAgIHRkbS1zbG90cyA9IDw4PjsKPiA+
ID4gPiA+ICAgICBzZXJpYWwtZGlyID0gPAo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgICAgICAgMiAw
IDEgMAo+ID4gPiA+ID4gICAgICAgICAwIDAgMCAwCj4gPiA+ID4gPiAgICAgICAgIDAgMCAwIDAK
PiA+ID4gPiA+ICAgICAgICAgMCAwIDAgMAo+ID4gPiA+ID4gICAgID4KPiA+ID4gPiA+ICAgICA+
Owo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgICB0eC1udW0tZXZ0ID0gPDE+Owo+ID4gPiA+ID4gICAg
IHJ4LW51bS1ldnQgPSA8MT47Cj4gPiA+ID4gPgo+ID4gPiA+ID4gfTsKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBDaGVlcnMhCj4gPiA+ID4KPiA+ID4gPiBUaGFua3MsIHRoaXMgbG9va3MgZ29vZC4KPiA+
ID4KPiA+ID4gSSB3b3VsZCByZWFsbHkgbGlrZSB0byBzZWUgdGhpcyBpc3N1ZSByZXNvbHZlZCwg
YmVjYXVzZSBIRE1JIGF1ZGlvIHN1cHBvcnQKPiA+ID4gaW4gbWFpbmxpbmUgTGludXggZm9yIHRo
b3NlIFNvQ3MgaXMgbG9uZyBvdmVyZHVlLgo+ID4gPgo+ID4gPiBIb3dldmVyLCB0aGVyZSBpcyBh
IHBvc3NpYmlsaXR5IHRvIHN0aWxsIGFkZCBIRE1JIGF1ZGlvIHN1cG9ydCAoc3RlcmVvCj4gPiA+
IG9ubHkpIGV2ZW4gaWYgdGhpcyBpc3N1ZSBpcyBub3QgY29tcGxldGVseSBzb2x2ZWQuIElmIHdl
IGFncmVlIHRoYXQKPiA+ID4gY29uZmlndXJhdGlvbiBvZiBjaGFubmVscyB3b3VsZCBiZSBzb2x2
ZWQgd2l0aCBhZGRpdGlvbmFsIHByb3BlcnR5IGFzCj4gPiA+IENocmlzdG9waGVyIHN1Z2dlc3Rl
ZCwgc3VwcG9ydCBmb3IgPjIgY2hhbm5lbHMgY2FuIGJlIGxlZnQgZm9yIGEgbGF0ZXIKPiA+ID4g
dGltZSB3aGVuIHN1cHBvcnQgZm9yIHRoYXQgcHJvcGVydHkgd291bGQgYmUgaW1wbGVtZW50ZWQu
IEN1cnJlbnRseSwKPiA+ID4gc3RlcmVvIEhETUkgYXVkaW8gc3VwcG9ydCBjYW4gYmUgYWRkZWQg
d2l0aCBhIGZldyBwYXRjaGVzLgo+ID4gPgo+ID4gPiBJIHRoaW5rIGFsbCBJMlMgY29yZXMgYXJl
IHJlYWxseSB0aGUgc2FtZSwgbm8gbWF0dGVyIGlmIGludGVybmFsbHkKPiA+ID4gY29ubmVjdGVk
IHRvIEhETUkgY29udHJvbGxlciBvciByb3V0ZWQgdG8gcGlucywgc28gaXQgd291bGQgbWFrZSBz
ZW5zZSB0bwo+ID4gPiB1c2Ugc2FtZSBjb21wYXRpYmxlIGZvciBhbGwgb2YgdGhlbS4gSXQncyBq
dXN0IHRoYXQgdGhvc2UgSTJTIGNvcmVzIHdoaWNoCj4gPiA+IGFyZSByb3V0ZWQgdG8gcGlucyBj
YW4gdXNlIG9ubHkgb25lIGxhbmUgYW5kID4yIGNoYW5uZWxzIGNhbiBiZSB1c2VkIG9ubHkKPiA+
ID4gaW4gVERNIG1vZGUgb2Ygb3BlcmF0aW9uLCBpZiBJIHVuZGVyc3RhbmQgdGhpcyBjb3JyZWN0
bHkuCj4gPiA+Cj4gPiA+IE5ldyBwcm9wZXJ0eSB3b3VsZCBoYXZlIHRvIGJlIG9wdGlvbmFsLCBz
byBpdCdzIG9taXNzaW9uIHdvdWxkIHJlc3VsdCBpbgo+ID4gPiBzYW1lIGNoYW5uZWwgY29uZmln
dXJhdGlvbiBhcyBpdCBpcyBhbHJlYWR5IHByZXNlbnQsIHRvIHByZXNlcnZlCj4gPiA+IGNvbXBh
dGliaWxpdHkgd2l0aCBvbGQgZGV2aWNlIHRyZWVzLiBBbmQgdGhpcyBtb2RlIGlzIGFscmVhZHkg
c3VmZmljaWVudAo+ID4gPiBmb3Igc3RlcmVvIEhETUkgYXVkaW8gc3VwcG9ydC4KPiA+Cj4gPiBZ
ZWFoLCBpdCBsb29rcyBsaWtlIGEgZ29vZCBwbGFuLgo+ID4KPiA+ID4gU2lkZSBub3RlOiBIRE1J
IGF1ZGlvIHdpdGggY3VycmVudCBzdW40aS1pMnMgZHJpdmVyIGhhcyBhIGRlbGF5IChhYm91dCBh
Cj4gPiA+IHNlY29uZCksIHN1cHBvc2VkbHkgYmVjYXVzZSBEVyBIRE1JIGNvbnRyb2xsZXIgYXV0
b21hdGljYWxseSBnZW5lcmF0ZXMgQ1RTCj4gPiA+IHZhbHVlIGJhc2VkIG9uIEkyUyBjbG9jayAo
YXV0byBDVFMgdmFsdWUgZ2VuZXJhdGlvbiBpcyBlbmFibGVkIHBlcgo+ID4gPiBEZXNpZ25XYXJl
IHJlY29tZW5kYXRpb24gZm9yIERXIEhETUkgSTJTIGludGVyZmFjZSkuCj4gPgo+ID4gSXMgdGhh
dCBhIGNvbnN0YW50IGRlbGF5IGR1cmluZyB0aGUgYXVkaW8gcGxheWJhY2ssIG9yIG9ubHkgYXQg
c3RhcnR1cD8KPgo+IEkgdGhpbmsgaXQncyBqdXN0IGF0IHN0YXJ0dXAsIGUuZy4gaWYgeW91J3Jl
IHdhdGNoaW5nIG1vdmllLCBhdWRpbyBpcyBpbiBzeW5jLAo+IGl0J3MganVzdCB0aGF0IGZpcnN0
IHNlY29uZCBvciBzbyBpcyBzaWxlbnQuCj4KPiA+Cj4gPiA+IEkyUyBkcml2ZXIgZnJvbSBCU1Ag
TGludXggc29sdmVzIHRoYXQgYnkgaGF2aW5nIEkyUyBjbG9jayBvdXRwdXQKPiA+ID4gZW5hYmxl
ZCBhbGwgdGhlIHRpbWUuIFNob3VsZCB0aGlzIGJlIGZsYWdnZWQgd2l0aCBzb21lIGFkZGl0aW9u
YWwKPiA+ID4gcHJvcGVydHkgaW4gRFQ/Cj4gPgo+ID4gSSdkIHNheSB0aGF0IGlmIHRoZSBjb2Rl
YyBoYXMgdGhhdCByZXF1aXJlbWVudCwgdGhlbiBpdCBzaG91bGQgYmUKPiA+IGJldHdlZW4gdGhl
IGNvZGVjIGFuZCB0aGUgREFJLCB0aGUgRFQgZG9lc24ndCByZWFsbHkgaGF2ZSBhbnl0aGluZyB0
bwo+ID4gZG8gd2l0aCB0aGlzLgo+Cj4gT2ssIGJ1dCBob3cgdG8gY29tbXVuaWNhdGUgdGhhdCBm
YWN0IHRvIEkyUyBkcml2ZXIgdGhlbj8gQlNQIGRyaXZlciBzb2x2ZXMKPiB0aGF0IGJ5IHVzaW5n
IGRpZmZlcmVudCBjb21wYXRpYmxlLCBidXQgYXMgSSBzYWlkIGJlZm9yZSwgSTJTIGNvcmVzIGFy
ZSBub3QKPiByZWFsbHkgZGlmZmVyZW50LCBzbyB0aGlzIHNlZW1zIHdyb25nLgoKTWF5YmUgd2Ug
Y291bGQgbWFrZSB0aGUgRFctSERNSSBJMlMgZHJpdmVyIHJlcXVpcmUgdGhlIEkyUyBjbG9jayBi
ZSBvbiBhbGwKdGhlIHRpbWU/IFlvdSB3b3VsZG4ndCBuZWVkIGFueSBjaGFuZ2VzIHRvIHRoZSBE
VC4KCkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
