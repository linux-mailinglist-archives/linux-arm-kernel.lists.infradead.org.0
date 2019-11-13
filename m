Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBFDFAC79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM3gBbSz1Y4LWJ/ZuJn/7/duS2Z1nIhJ0e3HdXxjAt0=; b=XadfEsKRudl934
	ZSYbD2mq1TfrM2VSy+sl3JOLYeF8K88HA0q+Ub8mJiW6CqUZH7VYHdlUBZTW4CQf1BvGnkSFg9trN
	QZHWkRxXmE0nUyzvZyM0Joe7tAq6M+bV1DLHEfBTYOb/HDaHIy/+thVFuup+SyVl42omDHJP6d7aR
	UC0fjAoppnZK8z5zRuKlm2YUtlu9pqK6/zTonWMkRS3nVU9Bz7GcQ1b1T5999tFMwBBKZ8gNvACtp
	jl11t0MYaOyGufb8o56JKilRVNGst0ldvlCHmZ0f2JuBw9l0dRfNUukkgBNc8BZaA35f+349x4v8B
	16nqNVtXLhsFwK1/hUCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoVZ-0005QO-QJ; Wed, 13 Nov 2019 09:00:13 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoVN-00050a-Nn
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:00:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id m125so1037627qkd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 01:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zriSzR1A7PY8VkXg8BzENfmEpX+OltCL/F/xWpeuul4=;
 b=my0U+qCLomIt6E1rAcdLE1Id6S8BuETSIIYtZIcmh2johk6LY+sQR3OjPubPjNOZQ8
 6NQNnX9pWKlZ9SNfJx5VIdEc09EjWpcwRbHBiPDehzm8+sJMUnGQ74CAgqKMhdkC/VH4
 b1XyxWzrZDwZ3bRb95XyDevdiw+hY/azHEjwrCyWCCuwB1vT2kWfJyP39J6X9zDbTJ+s
 CYquB2V7jcS3H3bMbcuOynmxubakIWY2jmDQ+nt1XaAS4CB5W/aCDQFC1jMbCliAN/ZG
 07AFzKV3bl6HOxccM/iSQ8WklrCXO932AMgXydPNhtOyLKIA29nq16WU2NALw4A/rO+I
 ck+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zriSzR1A7PY8VkXg8BzENfmEpX+OltCL/F/xWpeuul4=;
 b=Kq1OOwSFJIfo4xOAz5vLQs836Pljxk2LUFR/IActh9jkD2p/M4kkONOk+flDw72E55
 o1YAksFGHChnMa4t8m8FUqdqEZRSIzWOi8KVSBf7Nn6UOiZD1FCNWGnBjuJYRsZWEc++
 5TipMY4jRZRANfOXsgVEtLG9Za15dLI5u1TCMVVvBfLKCt7I79YNXayMSZhRsC3Vltxj
 fvUKG1tCl4mW29zvVzlmczrXTRNbJK7B7GyomXdJ5aVqrvf33W2clMCKxWBH9melu1am
 t4WHca1+ANYPT4XE90iGxxT+L/W/jQt88xHI8aBHtaXKwcHhTku6x//2u5DMy+bE9SK6
 Od2A==
X-Gm-Message-State: APjAAAX+6dkDjlcytzJz5sWKG43GXsjUV4n9sKdZDt2x3DlQqxAQQzeB
 A381Y3HU1LR+Nzxezat5jpLfq/JxRJ3njX4s5TujBQ==
X-Google-Smtp-Source: APXvYqwsCmN6s9RnJjvaofrXiIJk06TaVDlS+MgGGZe8uV9Y2XokAVivNi+UmgCV28MIMFtKMGxwIn9ktjfr5qd7u6s=
X-Received: by 2002:ae9:e885:: with SMTP id a127mr1321564qkg.427.1573635599889; 
 Wed, 13 Nov 2019 00:59:59 -0800 (PST)
MIME-Version: 1.0
References: <20191017124159.13869-1-benjamin.gaignard@st.com>
 <63f96a2f-78c0-21ae-781b-e52068f57103@st.com>
 <6597f899-f049-02dc-de59-07a0f23a88b8@st.com>
 <d0c1af15-a647-8d80-81c9-fc07b926856c@roeck-us.net>
In-Reply-To: <d0c1af15-a647-8d80-81c9-fc07b926856c@roeck-us.net>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Wed, 13 Nov 2019 09:59:48 +0100
Message-ID: <CA+M3ks633VNnc9UPDVq9w68pc3EPcff69UxvsggfUvtRCUJwVw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: watchdog: Convert stm32 watchdog bindings to
 json-schema
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_010001_964995_45CDD28D 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAxNyBvY3QuIDIwMTkgw6AgMTU6MzEsIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNr
LXVzLm5ldD4gYSDDqWNyaXQgOgo+Cj4gT24gMTAvMTcvMTkgNjoxNyBBTSwgQmVuamFtaW4gR0FJ
R05BUkQgd3JvdGU6Cj4gPgo+ID4gT24gMTAvMTcvMTkgMzowNiBQTSwgQWxleGFuZHJlIFRvcmd1
ZSB3cm90ZToKPiA+PiBIaSBCZW5qYW1pbgo+ID4+Cj4gPj4gT24gMTAvMTcvMTkgMjo0MSBQTSwg
QmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPj4+IENvbnZlcnQgdGhlIFNUTTMyIHdhdGNoZG9n
IGJpbmRpbmcgdG8gRFQgc2NoZW1hIGZvcm1hdCB1c2luZyBqc29uLXNjaGVtYQo+ID4+Pgo+ID4+
PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3Qu
Y29tPgo+ID4+PiAtLS0KPiA+Pj4gICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cv
c3Qsc3RtMzItaXdkZy50eHQgfCAyNiAtLS0tLS0tLS0tLQo+ID4+PiAgICAuLi4vYmluZGluZ3Mv
d2F0Y2hkb2cvc3Qsc3RtMzItaXdkZy55YW1sICAgICAgICAgICB8IDU0Cj4gPj4+ICsrKysrKysr
KysrKysrKysrKysrKysKPiA+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCsp
LCAyNiBkZWxldGlvbnMoLSkKPiA+Pj4gICAgZGVsZXRlIG1vZGUgMTAwNjQ0Cj4gPj4+IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zdCxzdG0zMi1pd2RnLnR4dAo+
ID4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQKPiA+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcueWFtbAo+ID4+Pgo+ID4+PiBkaWZmIC0t
Z2l0Cj4gPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0
LHN0bTMyLWl3ZGcudHh0Cj4gPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcudHh0Cj4gPj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAo+ID4+PiBpbmRleCBkOGY0NDMwYjBhMTMuLjAwMDAwMDAwMDAwMAo+ID4+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzItaXdkZy50eHQK
PiA+Pj4gKysrIC9kZXYvbnVsbAo+ID4+PiBAQCAtMSwyNiArMCwwIEBACj4gPj4+IC1TVE0zMiBJ
bmRlcGVuZGVudCBXYXRjaERvRyAoSVdERykKPiA+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+ID4+PiAtCj4gPj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ID4+PiAtLSBj
b21wYXRpYmxlOiBTaG91bGQgYmUgZWl0aGVyOgo+ID4+PiAtICAtICJzdCxzdG0zMi1pd2RnIgo+
ID4+PiAtICAtICJzdCxzdG0zMm1wMS1pd2RnIgo+ID4+PiAtLSByZWc6IFBoeXNpY2FsIGJhc2Ug
YWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlcnMgc2V0IGZvciB0aGUKPiA+Pj4gZGV2
aWNlCj4gPj4+IC0tIGNsb2NrczogUmVmZXJlbmNlIHRvIHRoZSBjbG9jayBlbnRyeSBsc2kuIEFk
ZGl0aW9uYWwgcGNsayBjbG9jayBlbnRyeQo+ID4+PiAtICBpcyByZXF1aXJlZCBvbmx5IGZvciBz
dCxzdG0zMm1wMS1pd2RnLgo+ID4+PiAtLSBjbG9jay1uYW1lczogTmFtZSBvZiB0aGUgY2xvY2tz
IHVzZWQuCj4gPj4+IC0gICJsc2kiIGZvciBzdCxzdG0zMi1pd2RnCj4gPj4+IC0gICJsc2kiLCAi
cGNsayIgZm9yIHN0LHN0bTMybXAxLWl3ZGcKPiA+Pj4gLQo+ID4+PiAtT3B0aW9uYWwgUHJvcGVy
dGllczoKPiA+Pj4gLS0gdGltZW91dC1zZWM6IFdhdGNoZG9nIHRpbWVvdXQgdmFsdWUgaW4gc2Vj
b25kcy4KPiA+Pj4gLQo+ID4+PiAtRXhhbXBsZToKPiA+Pj4gLQo+ID4+PiAtaXdkZzogd2F0Y2hk
b2dANDAwMDMwMDAgewo+ID4+PiAtICAgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzItaXdkZyI7Cj4g
Pj4+IC0gICAgcmVnID0gPDB4NDAwMDMwMDAgMHg0MDA+Owo+ID4+PiAtICAgIGNsb2NrcyA9IDwm
Y2xrX2xzaT47Cj4gPj4+IC0gICAgY2xvY2stbmFtZXMgPSAibHNpIjsKPiA+Pj4gLSAgICB0aW1l
b3V0LXNlYyA9IDwzMj47Cj4gPj4+IC19Owo+ID4+PiBkaWZmIC0tZ2l0Cj4gPj4+IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcueWFtbAo+
ID4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zdCxzdG0z
Mi1pd2RnLnlhbWwKPiA+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+Pj4gaW5kZXggMDAwMDAw
MDAwMDAwLi5lZGVjOTZkNTNlNmIKPiA+Pj4gLS0tIC9kZXYvbnVsbAo+ID4+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzItaXdkZy55YW1s
Cj4gPj4+IEBAIC0wLDAgKzEsNTQgQEAKPiA+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4+PiArJVlBTUwgMS4yCj4gPj4+ICst
LS0KPiA+Pj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvd2F0Y2hkb2cvc3Qs
c3RtMzItaXdkZy55YW1sIwo+ID4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21l
dGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPj4+ICsKPiA+Pj4gK3RpdGxlOiBTVE1pY3JvZWxlY3Ry
b25pY3MgU1RNMzIgSW5kZXBlbmRlbnQgV2F0Y2hEb0cgKElXREcpIGJpbmRpbmdzCj4gPj4+ICsK
PiA+Pj4gK21haW50YWluZXJzOgo+ID4+PiArICAtIFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZl
cnRyZUBzdC5jb20+Cj4gPj4KPiA+PiBZYW5uaWNrIGlzIHN0aWxsIHdvcmtpbmcgb24gdGhpcyBk
cml2ZXIgPwo+ID4KPiA+IFRoYXQgaXMgYSBnb29kIHF1ZXN0aW9uLgo+ID4KPiA+IFJvYiwgY2Fu
IHdlIHVzZSB0aGUgU1RNMzIgZGVkaWNhdGVkIG1haWxpbmcgbGlzdCBhZGRyZXNzIGZvciB0aGlz
Cj4gPiBtYWludGVuZXJzIGZpZWxkID8KPiA+Cj4gPiBtYWludGFpbmVyczoKPiA+Cj4gPiAtIGxp
bnV4IFNUTTMyIDxsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tPgo+ID4K
Pgo+Cj4gSSdkIHJhdGhlciB3b25kZXIgd2hvIGlzIGdvaW5nIHRvIG1haW50YWluIHRoaXMgc2Vj
b25kYXJ5IGRpc3RyaWJ1dGVkCj4gbWFpbnRhaW5lcnMgbGlzdCwgYnV0IEkgZ3Vlc3MgdGhhdCBp
cyBhIGRpZmZlcmVudCBxdWVzdGlvbi4KPgoKR2VudGxlIHBpbmcgdG8gcmV2aWV3ZXJzIG9uIHRo
aXMgcGF0Y2guCgpUaGFua3MsCkJlbmphbWluCgo+IEd1ZW50ZXIKPgo+ID4gUmVnYXJkcywKPiA+
Cj4gPiBCZW5qYW1pbgo+ID4KPiA+Pgo+ID4+PiArCj4gPj4+ICthbGxPZjoKPiA+Pj4gKyAgLSAk
cmVmOiAid2F0Y2hkb2cueWFtbCMiCj4gPj4+ICsKPiA+Pj4gK3Byb3BlcnRpZXM6Cj4gPj4+ICsg
IGNvbXBhdGlibGU6Cj4gPj4+ICsgICAgZW51bToKPiA+Pj4gKyAgICAgIC0gc3Qsc3RtMzItaXdk
Zwo+ID4+PiArICAgICAgLSBzdCxzdG0zMm1wMS1pd2RnCj4gPj4+ICsKPiA+Pj4gKyAgcmVnOgo+
ID4+PiArICAgIG1heEl0ZW1zOiAxCj4gPj4+ICsKPiA+Pj4gKyAgY2xvY2tzOgo+ID4+PiArICAg
IGl0ZW1zOgo+ID4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogTG93IHNwZWVkIGNsb2NrCj4gPj4+
ICsgICAgICAtIGRlc2NyaXB0aW9uOiBPcHRpb25hbCBwZXJpcGhlcmFsIGNsb2NrCj4gPj4+ICsg
ICAgbWluSXRlbXM6IDEKPiA+Pj4gKyAgICBtYXhJdGVtczogMgo+ID4+PiArCj4gPj4+ICsgIGNs
b2NrLW5hbWVzOgo+ID4+PiArICAgIGl0ZW1zOgo+ID4+PiArICAgICAgZW51bXM6IFsgbHNpLCBw
Y2xrIF0KPiA+Pj4gKyAgICBtaW5JdGVtczogMQo+ID4+PiArICAgIG1heEl0ZW1zOiAyCj4gPj4+
ICsKPiA+Pj4gK3JlcXVpcmVkOgo+ID4+PiArICAtIGNvbXBhdGlibGUKPiA+Pj4gKyAgLSByZWcK
PiA+Pj4gKyAgLSBjbG9ja3MKPiA+Pj4gKyAgLSBjbG9jay1uYW1lcwo+ID4+PiArCj4gPj4+ICtl
eGFtcGxlczoKPiA+Pj4gKyAgLSB8Cj4gPj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Ns
b2NrL3N0bTMybXAxLWNsa3MuaD4KPiA+Pj4gKyAgICB3YXRjaGRvZ0A1YTAwMjAwMCB7Cj4gPj4+
ICsgICAgICBjb21wYXRpYmxlID0gInN0LHN0bTMybXAxLWl3ZGciOwo+ID4+PiArICAgICAgcmVn
ID0gPDB4NWEwMDIwMDAgMHg0MDA+Owo+ID4+PiArICAgICAgY2xvY2tzID0gPCZyY2MgSVdERzI+
LCA8JnJjYyBDS19MU0k+Owo+ID4+PiArICAgICAgY2xvY2stbmFtZXMgPSAicGNsayIsICJsc2ki
Owo+ID4+PiArICAgICAgdGltZW91dC1zZWMgPSA8MzI+Owo+ID4+PiArICAgIH07Cj4gPj4+ICsK
PiA+Pj4gKy4uLgo+ID4+ID4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
