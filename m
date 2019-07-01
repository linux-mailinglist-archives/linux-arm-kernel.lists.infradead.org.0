Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830CE5B759
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQaNHCK68drgr5ABxoRX6on7MyNtbAKGo7g4+63bBw4=; b=AhYO0X734abftZ
	k64VxtOplynkJRAHkjuZ14Tkl+fHK1aPMfmFsoxkWX+107rTYtDkAqVXg9s268k4EUHOAw9wIG346
	v69gk0MZTlngPzrZ/mqtE86KrQ0F6t5ZweOkuldFLKdlynYDyjreWufarV4QoAgSpG1gm6nnz06Ch
	1sx5az6acqvIE4QBk1DaHfZAT0Jb+KTk/21LL7HEH4Hq6485EsYruHbyRMvQ3b1y8vs2qYIoNzDdX
	hQoh64Y6ohn+DbKyka/aJI4xtLmQKjXwFZa1VAuhZSflWOthx6aRtD4/7vYRj0LFimnN3sMyLT6vr
	rBJTo834dRhoZ3smzyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhs97-0005L9-3l; Mon, 01 Jul 2019 08:58:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhs8p-00058y-Ne
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:58:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so12846179wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 01:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FkQEgRa1Q7AoxU/pFds5Q9WWQKlWlBD/242OAkYOSgI=;
 b=zA9rW5V/ZvJ9Yo5tzaLc749Oe3hyxmwTdw1avTqM8scEm0uBdBtn6BIdEZoAkkjt77
 6DmqY69PGEwZRYtMDsxhRHja24VmHyWj5tgZu6XD5BCJQb2OpA31zTLP3IXAWH5NCpno
 29SxMUDinv1YW89RLFtgVoZqJN7MCx4iTXUsOuwteKK2HMsEQwUAD9Pfqu+07qKA+LO4
 nPviW7JEsUK3S8cBNkM9QDz3L+KPElULBizz+t3Wb3+zJOyeyQYAPeR7a3KPMXv9k1NA
 nwUlaCk3G1fHFJufpvSPTj2RNwrsRzQ656RTrhXdFLDFUVRs/IeU4ujQJNUFZkwU6O0X
 KBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FkQEgRa1Q7AoxU/pFds5Q9WWQKlWlBD/242OAkYOSgI=;
 b=Cl+VuPWwjW3ZXFrzcibZZGZhKIX77I3ksKhBs5kAM1ip0RWKwmG//eV90cRiPU4Ljd
 3Q1rCFHcKTHNIJFGDr5uPjyCF2khdnB+kZ8We5g4i9mTRDI2eq4d/YkEEJrDKpOtBTif
 2B4hEn8rm4NExSK2t4IN5I2a3j+0AIWMPOLk9JniOsYQVEaOgMS64yP/HVcbZIDrhCQd
 BOY4e0L4m51aTk5hCDiinZ0frqj3/xloR11LB11gmcJ+xHe80g3+7m7Ejim3KxvynDMR
 e04rqpziE2XqSofsuNMRRm2YAomvygdb2fkOvC6shBbkeEZUZ4l2PPsAOyFqE46RDkdW
 QOlA==
X-Gm-Message-State: APjAAAWCKmMwyL3D3eJiL9lRBs0/jssdux8NuCU1hE/TT8Pap7VqoFZd
 XVXKVEpgsqgJ9XhJzwrExHBzzQ==
X-Google-Smtp-Source: APXvYqzzjcvjzRgwx6AYDHlvUhhovTApUzAEGV0COxeIQhi7KNO1JjKctEOX/s2gjmpClEVROdn6lg==
X-Received: by 2002:adf:f1d2:: with SMTP id z18mr17251018wro.262.1561971505031; 
 Mon, 01 Jul 2019 01:58:25 -0700 (PDT)
Received: from [192.168.0.41] (247.233.95.92.rev.sfr.net. [92.95.233.247])
 by smtp.googlemail.com with ESMTPSA id a2sm21878074wmj.9.2019.07.01.01.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 01:58:24 -0700 (PDT)
Subject: Re: [PATCH V3 1/5] clocksource: timer-of: Support getting clock
 frequency from DT
To: Anson.Huang@nxp.com, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190628033041.8513-1-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <17a7bde4-e5e0-a746-52a5-1075ce263152@linaro.org>
Date: Mon, 1 Jul 2019 10:58:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190628033041.8513-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_015827_782884_9B7BCEC2 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEFuc29uLAoKdGhhbmtzIGZvciB0YWtpbmcgY2FyZSBvZiBhZGRpbmcgdGhlIGNsb2NrLWZy
ZXF1ZW5jeSBoYW5kbGluZyBpbiB0aGUKdGltZXItb2YuCgpPbiAyOC8wNi8yMDE5IDA1OjMwLCBB
bnNvbi5IdWFuZ0BueHAuY29tIHdyb3RlOgo+IEZyb206IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFu
Z0BueHAuY29tPgo+IAo+IE1vcmUgYW5kIG1vcmUgcGxhdGZvcm1zIHVzZSBwbGF0Zm9ybSBkcml2
ZXIgbW9kZWwgZm9yIGNsb2NrIGRyaXZlciwKPiBzbyB0aGUgY2xvY2sgZHJpdmVyIGlzIE5PVCBy
ZWFkeSBkdXJpbmcgdGltZXIgaW5pdGlhbGl6YXRpb24gcGhhc2UsCj4gaXQgd2lsbCBjYXVzZSB0
aW1lciBpbml0aWFsaXphdGlvbiBmYWlsZWQuCj4gCj4gVG8gc3VwcG9ydCB0aG9zZSBwbGF0Zm9y
bXMgd2l0aCB1cHBlciBzY2VuYXJpbywgaW50cm9kdWNpbmcgYSBuZXcKPiBmbGFnIFRJTUVSX09G
X0NMT0NLX0ZSRVFVRU5DWSB3aGljaCBpcyBtdXR1YWxseSBleGNsdXNpdmUgd2l0aAo+IFRJTUVS
X09GX0NMT0NLIGZsYWcgdG8gc3VwcG9ydCBnZXR0aW5nIHRpbWVyIGNsb2NrIGZyZXF1ZW5jeSBm
cm9tCj4gRFQsIHRoZW4gb2ZfY2xrIG9wZXJhdGlvbnMgY2FuIGJlIHNraXBwZWQuCj4gCj4gVXNl
ciBuZWVkcyB0byBzZWxlY3QgZWl0aGVyIFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSBvciBUSU1F
Ul9PRl9DTE9DSwo+IGZsYWcgaWYgd2FudCB0byB1c2UgdGltZXItb2YgZHJpdmVyIHRvIGluaXRp
YWxpemUgdGhlIGNsb2NrIHJhdGUsCj4gYW5kIHRoZSBjb3JyZXNwb25kaW5nIGNsb2NrIG5hbWUg
b3IgcHJvcGVydHkgbmFtZSBuZWVkcyB0byBiZSBzcGVjaWZpZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gLS0tCj4gTmV3IHBhdGNoOgo+
IAktIEFkZCBuZXcgZmxhZyBvZiBUSU1FUl9PRl9DTE9DS19GUkVRVUVOQ1ksIG11dHVhbGx5IGV4
Y2x1c2l2ZSB3aXRoIFRJTUVSX09GX0NMT0NLLCB0byBzdXBwb3J0Cj4gCSAgZ2V0dGluZyBjbG9j
ayBmcmVxdWVuY3kgZnJvbSBEVCBkaXJlY3RseTsKPiAJLSBBZGQgcHJvcF9uYW1lIHRvIG9mX3Rp
bWVyX2NsayBzdHJ1Y3R1cmUsIGlmIHVzaW5nIFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSBmbGFn
LCB1c2VyIG5lZWRzCj4gCSAgdG8gcGFzcyB0aGUgcHJvcGVydHkgbmFtZSBmb3IgdGltZXItb2Yg
ZHJpdmVyIHRvIGdldCBjbG9jayBmcmVxdWVuY3kgZnJvbSBEVCwgdGhpcyBpcyB0byBhdm9pZAo+
IAkgIHRoZSBjb3VwbGUgb2YgdGltZXItb2YgZHJpdmVyIGFuZCBEVCwgc28gdGltZXItb2YgZHJp
dmVyIGRvZXMgTk9UIHVzZSBhIGZpeGVkIHByb3BlcnR5IG5hbWUuCj4gLS0tCj4gIGRyaXZlcnMv
Y2xvY2tzb3VyY2UvdGltZXItb2YuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gIGRy
aXZlcnMvY2xvY2tzb3VyY2UvdGltZXItb2YuaCB8ICA4ICsrKysrLS0tCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1l
ci1vZi5jCj4gaW5kZXggODA1NDIyOC4uYzkxYThiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Ns
b2Nrc291cmNlL3RpbWVyLW9mLmMKPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9m
LmMKPiBAQCAtMTYxLDYgKzE2MSwyMSBAQCBzdGF0aWMgX19pbml0IGludCB0aW1lcl9vZl9iYXNl
X2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtz
dGF0aWMgX19pbml0IGludCB0aW1lcl9vZl9jbGtfZnJlcXVlbmN5X2luaXQoc3RydWN0IGRldmlj
ZV9ub2RlICpucCwKPiArCQkJCQkgICAgICBzdHJ1Y3Qgb2ZfdGltZXJfY2xrICpvZl9jbGspCj4g
K3sKPiArCWludCByZXQ7Cj4gKwl1MzIgcmF0ZTsKPiArCj4gKwlyZXQgPSBvZl9wcm9wZXJ0eV9y
ZWFkX3UzMihucCwgb2ZfY2xrLT5wcm9wX25hbWUsICZyYXRlKTsKPiArCWlmICghcmV0KSB7Cj4g
KwkJb2ZfY2xrLT5yYXRlID0gcmF0ZTsKPiArCQlvZl9jbGstPnBlcmlvZCA9IERJVl9ST1VORF9V
UChyYXRlLCBIWik7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiAgaW50IF9f
aW5pdCB0aW1lcl9vZl9pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIHN0cnVjdCB0aW1lcl9v
ZiAqdG8pCj4gIHsKPiAgCWludCByZXQgPSAtRUlOVkFMOwo+IEBAIC0xNzgsNiArMTkzLDExIEBA
IGludCBfX2luaXQgdGltZXJfb2ZfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBzdHJ1Y3Qg
dGltZXJfb2YgKnRvKQo+ICAJCWlmIChyZXQpCj4gIAkJCWdvdG8gb3V0X2ZhaWw7Cj4gIAkJZmxh
Z3MgfD0gVElNRVJfT0ZfQ0xPQ0s7Cj4gKwl9IGVsc2UgaWYgKHRvLT5mbGFncyAmIFRJTUVSX09G
X0NMT0NLX0ZSRVFVRU5DWSkgewo+ICsJCXJldCA9IHRpbWVyX29mX2Nsa19mcmVxdWVuY3lfaW5p
dChucCwgJnRvLT5vZl9jbGspOwo+ICsJCWlmIChyZXQpCj4gKwkJCWdvdG8gb3V0X2ZhaWw7Cj4g
KwkJZmxhZ3MgfD0gVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZOwo+ICAJfQoKLyogUHJlLWNvbmRp
dGlvbiAqLwoKaWYgKHRvLT5mbGFncyAmIChUSU1FUl9PRl9DTE9DSyB8IFRJTUVSX09GX0NMT0NL
X0ZSRVFVRU5DWSkpCglyZXR1cm4gLUVJTlZBTDsKClsgLi4uIF0KCmlmICh0by0+ZmxhZ3MgJiBU
SU1FUl9PRl9DTE9DSykgewp9CgppZiAodG8tPmZsYWdzICYgVElNRVJfT0ZfQ0xPQ0tfRlJFUVVF
TkNZKSB7Cn0KCj4gIAlpZiAodG8tPmZsYWdzICYgVElNRVJfT0ZfSVJRKSB7Cj4gQEAgLTIwMSw2
ICsyMjEsOSBAQCBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpu
cCwgc3RydWN0IHRpbWVyX29mICp0bykKPiAgCWlmIChmbGFncyAmIFRJTUVSX09GX0NMT0NLKQo+
ICAJCXRpbWVyX29mX2Nsa19leGl0KCZ0by0+b2ZfY2xrKTsKPiAgCj4gKwlpZiAoZmxhZ3MgJiBU
SU1FUl9PRl9DTE9DS19GUkVRVUVOQ1kpCj4gKwkJdG8tPm9mX2Nsay5yYXRlID0gMDsKPiArCj4g
IAlpZiAoZmxhZ3MgJiBUSU1FUl9PRl9CQVNFKQo+ICAJCXRpbWVyX29mX2Jhc2VfZXhpdCgmdG8t
Pm9mX2Jhc2UpOwo+ICAJcmV0dXJuIHJldDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3Nv
dXJjZS90aW1lci1vZi5oIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5oCj4gaW5kZXgg
YTU0NzhmMy4uZjFhMDgzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVy
LW9mLmgKPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmgKPiBAQCAtNCw5ICs0
LDEwIEBACj4gIAo+ICAjaW5jbHVkZSA8bGludXgvY2xvY2tjaGlwcy5oPgo+ICAKPiAtI2RlZmlu
ZSBUSU1FUl9PRl9CQVNFCTB4MQo+IC0jZGVmaW5lIFRJTUVSX09GX0NMT0NLCTB4Mgo+IC0jZGVm
aW5lIFRJTUVSX09GX0lSUQkweDQKPiArI2RlZmluZSBUSU1FUl9PRl9CQVNFCQkJMHgxCj4gKyNk
ZWZpbmUgVElNRVJfT0ZfQ0xPQ0sJCQkweDIKPiArI2RlZmluZSBUSU1FUl9PRl9JUlEJCQkweDQK
PiArI2RlZmluZSBUSU1FUl9PRl9DTE9DS19GUkVRVUVOQ1kJMHg4Cj4gIAo+ICBzdHJ1Y3Qgb2Zf
dGltZXJfaXJxIHsKPiAgCWludCBpcnE7Cj4gQEAgLTI2LDYgKzI3LDcgQEAgc3RydWN0IG9mX3Rp
bWVyX2Jhc2Ugewo+ICBzdHJ1Y3Qgb2ZfdGltZXJfY2xrIHsKPiAgCXN0cnVjdCBjbGsgKmNsazsK
PiAgCWNvbnN0IGNoYXIgKm5hbWU7Cj4gKwljb25zdCBjaGFyICpwcm9wX25hbWU7CgpGb3IgdGhl
IG1vbWVudCwga2VlcCBpdCBoYXJkY29kZWQgd2l0aCAiY2xvY2stZnJlcXVlbmN5IiBkaXJlY3Rs
eSBpbiB0aGUKZnVuY3Rpb24uCgo+ICAJaW50IGluZGV4Owo+ICAJdW5zaWduZWQgbG9uZyByYXRl
Owo+ICAJdW5zaWduZWQgbG9uZyBwZXJpb2Q7Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8u
b3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpG
b2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFj
ZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
