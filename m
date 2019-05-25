Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136B82A6D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Njca1DBT0p9mZX3NogFI8dgyAKK+P8EFmhyCQ5xIQWs=; b=BJn0IXgcjMZw4L
	yYlE1Ia1kCFZYUDy6Uns3EJakjb4C+sPpV8pksxJG907oobS3r6Pv3q/uPWU5NOvSi/LKwiU+9dfK
	7gID98L7b73T4QS3jrivZjUIkZ+SkE4IV5G45WKmBjosgR2sS/c6LYjSBGyVksq7tAJ6bn3+nszwI
	k2Mth947r09MVqMNw025V0tp2gimi8TnIVGfleQQksBDApNvRyfvtLGVIs8bjbnZNlunMLs8T+d8k
	11gQV9/4Z7HIVkm5w3OExWnERDTuLL12keRgUL/JDnU9SQLeuubXl7jTXcOWjQ2E5A32w7bszlqNC
	2UdjGDcLf5b026gZWDHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUch8-00011R-3c; Sat, 25 May 2019 19:51:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUcgz-00010s-UF
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 19:51:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id d9so13092624wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 12:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZcYPCLZRiQ5K7DYB5WujiUGNLt4GcC2QMNo60dWqOik=;
 b=OstiajoXFzr8xn1GWXjVng2KUZPv1FpE26rnp+DZLjVAPoxD7Byqr11XQpCq8jTUzf
 Y1XDFCZ4Pu/99whHMyYu3EXOhEob5zAGVnJ2DS585qYBWvy6RTBDueIFeMMVp3CCFFB+
 6tDXPN8F1GdJDM42tpq66M+t/D3oe2j7klsnZkwmo47Qg+sUNZUcVgZAI1lbcEoMjLOF
 ds+diH1HvlA6W2geXXowspcUfv9Rd8vE1BBgGcJ9Xe6Vdv3ECO5LJI6BINSqAOtxbUHO
 m4+4X0BA6EjZV0FE3b3DL7jxfNuddAdQja7UZ/0o0KLsMMnOqtSYa20L5QXvRII02uHF
 AQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZcYPCLZRiQ5K7DYB5WujiUGNLt4GcC2QMNo60dWqOik=;
 b=GCiaRwsgkr9rB3vLnWsr5Flw0RpTA+9EYjD5FT8yIdCAj7Z2XHekr9l46C+kziQ2LO
 U2RPTsLwu64L8AHPwW/0JMi7aYMqT4b++RjSHARP4d+La8ekPEpFJyrnbbWX+4d07Dke
 u/mCE1mIyW1YWiFPbUcqqSbw804HPwgp8ec7IUQIqu+FhtEp6wcWcv9F1lTdi1LX5Zk6
 rt+5Bb+TjMkhvIg7AYH7RVAfzESOBuIfUFgjRCyTtoITooAvs/OAZafRiirED6IyL2JM
 ooRgcyQLj7ikXVfsMvjwbE8KWhjKrkwp/eC6rXu9umNcNvqHVzPeVunkJ7OPKDOWVLx7
 A3pA==
X-Gm-Message-State: APjAAAXhTQryTJCfyhDDX6zqq9ILrAp9z2tasYeeH80y8ggvFP+BtYDi
 dKw9mh7bLNCjie8+j62fM0reqMj35ENvfQ==
X-Google-Smtp-Source: APXvYqz1Hc3st2m4yyaJ9QXusSb5WMHqrM7kgmyyrpaFPx9sCy5y1AsOTj+npZi0tXjPz1nzPZ0YgA==
X-Received: by 2002:adf:eb09:: with SMTP id s9mr10319702wrn.127.1558813855045; 
 Sat, 25 May 2019 12:50:55 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id t17sm3704510wmj.7.2019.05.25.12.50.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 12:50:53 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, robin.murphy@arm.com
Subject: Re: [linux-sunxi] Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
Date: Sat, 25 May 2019 21:50:51 +0200
Message-ID: <259803076.m90EgR4Zsz@jernej-laptop>
In-Reply-To: <e8618889-9b22-7f9f-7451-3c08a80a0f9b@arm.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <CAC=3edbn1yXih5vP0SwsDkqRB0j5q0c4FL0jhCq9DQ9Wt2-hAA@mail.gmail.com>
 <e8618889-9b22-7f9f-7451-3c08a80a0f9b@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_125057_979740_C91B9C73 
X-CRM114-Status: GOOD (  28.70  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, Rob Herring <rob.e.herring@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDE2LiBtYWogMjAxOSBvYiAxMzoxOTowNiBDRVNUIGplIFJvYmlu
IE11cnBoeSBuYXBpc2FsKGEpOgo+IE9uIDE2LzA1LzIwMTkgMDA6MjIsIFJvYiBIZXJyaW5nIHdy
b3RlOgo+ID4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgNTowNiBQTSBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPiAKd3JvdGU6Cj4gPj4gSGkgUm9iaW4sCj4gPj4gCj4gPj4g
T24gVHVlLCAxNCBNYXkgMjAxOSBhdCAyMzo1NywgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4gPj4+IE9uIDIwMTktMDUtMTQgMTA6MjIgcG0sIENsw6ltZW50IFDD
qXJvbiB3cm90ZToKPiA+Pj4+IEhpLAo+ID4+Pj4gCj4gPj4+PiBPbiBUdWUsIDE0IE1heSAyMDE5
IGF0IDE3OjE3LCBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiAKd3JvdGU6
Cj4gPj4+Pj4gSGksCj4gPj4+Pj4gCj4gPj4+Pj4gT24gVHVlLCAxNCBNYXkgMjAxOSBhdCAxMjoy
OSwgTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiAKd3JvdGU6Cj4gPj4+
Pj4+IEhpLAo+ID4+Pj4+PiAKPiA+Pj4+Pj4gT24gMTMvMDUvMjAxOSAxNzoxNCwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+Pj4+Pj4+IE9uIFN1biwgTWF5IDEyLCAyMDE5IGF0IDA3OjQ2OjAwUE0g
KzAyMDAsIHBlcm9uLmNsZW1AZ21haWwuY29tIAp3cm90ZToKPiA+Pj4+Pj4+PiBGcm9tOiBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+
IEhpLAo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+IFRoZSBBbGx3aW5uZXIgSDYgaGFzIGEgTWFsaS1U
NzIwIE1QMi4gVGhlIGRyaXZlcnMgYXJlCj4gPj4+Pj4+Pj4gb3V0LW9mLXRyZWUgc28gdGhpcyBz
ZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhlIGR0LWJpbmRpbmdzLgo+ID4+Pj4+Pj4gCj4gPj4+Pj4+
PiBXZSBkbyBoYXZlIGFuIGluLXRyZWUgbWlkZ2FyZCBkcml2ZXIgbm93IChzaW5jZSA1LjIpLiBE
b2VzIHRoaXMKPiA+Pj4+Pj4+IHN0dWZmIHdvcmsKPiA+Pj4+Pj4+IHRvZ2V0aGVyIHdpdGggeW91
ciBkdCBjaGFuZ2VzIGhlcmU/Cj4gPj4+Pj4+IAo+ID4+Pj4+PiBObywgYnV0IGl0IHNob3VsZCBi
ZSBlYXN5IHRvIGFkZC4KPiA+Pj4+PiAKPiA+Pj4+PiBJIHdpbGwgZ2l2ZSBpdCBhIHRyeSBhbmQg
bGV0IHlvdSBrbm93Lgo+ID4+Pj4gCj4gPj4+PiBBZGRlZCB0aGUgYnVzX2Nsb2NrIGFuZCBhIHJh
bXAgZGVsYXkgdG8gdGhlIGdwdV92ZGQgYnV0IHRoZSBkcml2ZXIKPiA+Pj4+IGZhaWwgYXQgcHJv
YmUuCj4gPj4+PiAKPiA+Pj4+IFsgICAgMy4wNTI5MTldIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBj
bG9jayByYXRlID0gNDMyMDAwMDAwCj4gPj4+PiBbICAgIDMuMDU4Mjc4XSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+Pj4+IFsgICAgMy4xNzk3NzJd
IHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFqb3IgMHgxCj4gPj4+
PiBtaW5vciAweDEgc3RhdHVzIDB4MAo+ID4+Pj4gWyAgICAzLjE4NzQzMl0gcGFuZnJvc3QgMTgw
MDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+Pj4+IGlzc3VlczogMDAw
MDAwMDAsMjEwNTQ0MDAKPiA+Pj4+IFsgICAgMy4xOTU1MzFdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1
OiBGZWF0dXJlczogTDI6MHgwNzExMDIwNgo+ID4+Pj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6
MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4+Pj4gSlM6MHg3Cj4g
Pj4+PiBbICAgIDMuMjA3MTc4XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogc2hhZGVyX3ByZXNlbnQ9
MHgzIGwyX3ByZXNlbnQ9MHgxCj4gPj4+PiBbICAgIDMuMjM4MjU3XSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogRmF0YWwgZXJyb3IgZHVyaW5nIEdQVSBpbml0Cj4gPj4+PiBbICAgIDMuMjQ0MTY1XSBw
YW5mcm9zdDogcHJvYmUgb2YgMTgwMDAwMC5ncHUgZmFpbGVkIHdpdGggZXJyb3IgLTEyCj4gPj4+
PiAKPiA+Pj4+IFRoZSBFTk9NRU0gaXMgY29taW5nIGZyb20gInBhbmZyb3N0X21tdV9pbml0Igo+
ID4+Pj4gYWxsb2NfaW9fcGd0YWJsZV9vcHMoQVJNX01BTElfTFBBRSwgJnBmZGV2LT5tbXUtPnBn
dGJsX2NmZywKPiA+Pj4+IAo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHBmZGV2KTsKPiA+Pj4+IAo+ID4+Pj4gV2hpY2ggaXMgZHVlIHRvIGEgY2hlY2sg
aW4gdGhlIHBndGFibGUgYWxsb2MgImNmZy0+aWFzICE9IDQ4Igo+ID4+Pj4gYXJtLWxwYWUgaW8t
cGd0YWJsZTogYXJtX21hbGlfbHBhZV9hbGxvY19wZ3RhYmxlIGNmZy0+aWFzIDMzIGNmZy0+b2Fz
Cj4gPj4+PiA0MAo+ID4+Pj4gCj4gPj4+PiBEUkkgc3RhY2sgaXMgdG90YWxseSBuZXcgZm9yIG1l
LCBjb3VsZCB5b3UgZ2l2ZSBtZSBhIGxpdHRsZSBjbHVlIGFib3V0Cj4gPj4+PiB0aGlzIGlzc3Vl
ID8KPiA+Pj4gCj4gPj4+IEhlaCwgdGhpcyBpcyBwcm9iYWJseSB0aGUgb25lIGJpdCB3aGljaCBk
b2Vzbid0IHJlYWxseSBjb3VudCBhcyAiRFJJCj4gPj4+IHN0YWNrIi4KPiA+Pj4gCj4gPj4+IFRo
YXQncyBtZXJlbHkgYSBzb21ld2hhdC1jb25zZXJ2YXRpdmUgc2FuaXR5IGNoZWNrIC0gSSdtIHBy
ZXR0eSBzdXJlIGl0Cj4gPj4+ICpzaG91bGQqIGJlIGZpbmUgdG8gY2hhbmdlIHRoZSB0ZXN0IHRv
ICJjZmctPmlhcyA+IDQ4IiAoaW8tcGd0YWJsZQo+ID4+PiBpdHNlbGYgb3VnaHQgdG8gY29wZSku
IFlvdSdsbCBqdXN0IGdldCB0byBiZSB0aGUgZmlyc3QgdG8gYWN0dWFsbHkgdGVzdAo+ID4+PiBh
IG5vbi00OC1iaXQgY29uZmlndXJhdGlvbiBoZXJlIDopCj4gPj4gCj4gPj4gVGhhbmtzIGEgbG90
LCB0aGUgcHJvYmUgc2VlbXMgZmluZSBub3cgOikKPiA+PiAKPiA+PiBJIHRyeSB0byBydW4gZ2xt
YXJrMiA6Cj4gPj4gIyBnbG1hcmsyLWVzMi1kcm0KPiA+PiA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPj4gCj4gPj4gICAgICBnbG1hcmsy
IDIwMTcuMDcKPiA+PiAKPiA+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09Cj4gPj4gCj4gPj4gICAgICBPcGVuR0wgSW5mb3JtYXRpb24KPiA+
PiAgICAgIEdMX1ZFTkRPUjogICAgIHBhbmZyb3N0Cj4gPj4gICAgICBHTF9SRU5ERVJFUjogICBw
YW5mcm9zdAo+ID4+ICAgICAgR0xfVkVSU0lPTjogICAgT3BlbkdMIEVTIDIuMCBNZXNhIDE5LjEu
MC1yYzIKPiA+PiAKPiA+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09Cj4gPj4gW2J1aWxkXSB1c2UtdmJvPWZhbHNlOgo+ID4+IAo+ID4+IEJ1
dCBpdCBzZWVtcyB0aGF0IEg2IGlzIG5vdCBzbyBlYXN5IHRvIGFkZCA6KC4KPiA+PiAKPiA+PiBb
ICAzNDUuMjA0ODEzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+ID4+
IFsgIDM0NS4yMDk2MTddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVs
dCBpbiBBUzAgYXQgVkEKPiA+PiAweDAwMDAwMDAwMDI0MDA0MDAKPiA+PiBbICAzNDUuMjA5NjE3
XSBSZWFzb246IFRPRE8KPiA+PiBbICAzNDUuMjA5NjE3XSByYXcgZmF1bHQgc3RhdHVzOiAweDgw
MDAwMkMxCj4gPj4gWyAgMzQ1LjIwOTYxN10gZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZFIEZB
VUxUCj4gPj4gWyAgMzQ1LjIwOTYxN10gZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJBTlNMQVRJT05f
RkFVTFRfTEVWRUwxCj4gPj4gWyAgMzQ1LjIwOTYxN10gYWNjZXNzIHR5cGUgMHgyOiBSRUFECj4g
Pj4gWyAgMzQ1LjIwOTYxN10gc291cmNlIGlkIDB4ODAwMAo+ID4+IFsgIDM0NS43Mjk5NTddIHBh
bmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91dCwganM9MCwKPiA+PiBzdGF0dXM9
MHg4LCBoZWFkPTB4MjQwMDQwMCwgdGFpbD0weDI0MDA0MDAsIHNjaGVkX2pvYj0wMDAwMDAwMDll
MjA0ZGU5Cj4gPj4gWyAgMzQ2LjA1NTg3Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEg
c3RhdHVzPTEKPiA+PiBbICAzNDYuMDYwNjgwXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5k
bGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4gPj4gMHgwMDAwMDAwMDAyQzAwQTAwCj4gPj4g
WyAgMzQ2LjA2MDY4MF0gUmVhc29uOiBUT0RPCj4gPj4gWyAgMzQ2LjA2MDY4MF0gcmF3IGZhdWx0
IHN0YXR1czogMHg4MTAwMDJDMQo+ID4+IFsgIDM0Ni4wNjA2ODBdIGRlY29kZWQgZmF1bHQgc3Rh
dHVzOiBTTEFWRSBGQVVMVAo+ID4+IFsgIDM0Ni4wNjA2ODBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6
IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQo+ID4+IFsgIDM0Ni4wNjA2ODBdIGFjY2VzcyB0eXBl
IDB4MjogUkVBRAo+ID4+IFsgIDM0Ni4wNjA2ODBdIHNvdXJjZSBpZCAweDgxMDAKPiA+PiBbICAz
NDYuNTYxOTU1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTEs
Cj4gPj4gc3RhdHVzPTB4OCwgaGVhZD0weDJjMDBhMDAsIHRhaWw9MHgyYzAwYTAwLCBzY2hlZF9q
b2I9MDAwMDAwMDBiNTVhOWE4NQo+ID4+IFsgIDM0Ni41NzM5MTNdIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4gPj4gWyAgMzQ2LjU3ODcwN10gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+ID4+IDB4MDAwMDAwMDAw
MkMwMEI4MAo+ID4+IFsgIDM0Ni41Nzg3MDddIFJlYXNvbjogVE9ETwo+ID4+IFsgIDM0Ni41Nzg3
MDddIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODAwMDAyQzEKPiA+PiBbICAzNDYuNTc4NzA3XSBkZWNv
ZGVkIGZhdWx0IHN0YXR1czogU0xBVkUgRkFVTFQKPiA+PiBbICAzNDYuNTc4NzA3XSBleGNlcHRp
b24gdHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEKPiA+PiBbICAzNDYuNTc4NzA3
XSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPiA+PiBbICAzNDYuNTc4NzA3XSBzb3VyY2UgaWQgMHg4
MDAwCj4gPj4gWyAgMzQ3LjA3Mzk0N10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hlZCB0
aW1lb3V0LCBqcz0wLAo+ID4+IHN0YXR1cz0weDgsIGhlYWQ9MHgyYzAwYjgwLCB0YWlsPTB4MmMw
MGI4MCwgc2NoZWRfam9iPTAwMDAwMDAwY2Y2YWY4ZTgKPiA+PiBbICAzNDcuMTA0MTI1XSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+ID4+IFsgIDM0Ny4xMDg5MzBdIHBh
bmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPiA+
PiAweDAwMDAwMDAwMDI4MDA5MDAKPiA+PiBbICAzNDcuMTA4OTMwXSBSZWFzb246IFRPRE8KPiA+
PiBbICAzNDcuMTA4OTMwXSByYXcgZmF1bHQgc3RhdHVzOiAweDgxMDAwMkMxCj4gPj4gWyAgMzQ3
LjEwODkzMF0gZGVjb2RlZCBmYXVsdG4gdGhpIHN0YXR1czogU0xBVkUgRkFVTFQKPiA+PiBbICAz
NDcuMTA4OTMwXSBleGNlcHRpb24gdHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEK
PiA+PiBbICAzNDcuMTA4OTMwXSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPiA+PiBbICAzNDcuMTA4
OTMwXSBzb3VyY2UgaWQgMHg4MTAwCj4gPj4gWyAgMzQ3LjYxNzk1MF0gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBqcz0xLAo+ID4+IHN0YXR1cz0weDgsIGhlYWQ9MHgy
ODAwOTAwLCB0YWlsPTB4MjgwMDkwMCwgc2NoZWRfam9iPTAwMDAwMDAwOTMyNWZkYjcKPiA+PiBb
ICAzNDcuNjI5OTAyXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+ID4+
IFsgIDM0Ny42MzQ2OTZdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVs
dCBpbiBBUzAgYXQgVkEKPiA+PiAweDAwMDAwMDAwMDI4MDBBODAKPiA+IAo+ID4gSXMgdGhpcyAz
MiBvciA2NCBiaXQgdXNlcnNwYWNlPyBJIHRoaW5rIDY0LWJpdCBkb2VzIG5vdCB3b3JrIHdpdGgK
PiA+IFQ3eHguIFlvdSBtaWdodCBuZWVkIHRoaXNbMV0uCj4gCj4gWyBPb29oLi4uIHRoYXQgbWFr
ZXMgVDYyMCBhY3R1YWxseSBkbyBzdHVmZiB3aXRob3V0IGZhbGxpbmcgb3Zlcgo+IGRlcmVmZXJl
bmNpbmcgVkEgMCBzb21ld2hlcmUgaGFsZndheSB0aHJvdWdoIHRoZSBqb2IgY2hhaW4gOkQKPiAK
PiBJIHNoYWxsIGNvbnRpbnVlIHRvIHBsYXkuLi4gXQo+IAo+ID4gWW91IG1heSBhbHNvIGJlIHRo
ZSBmaXJzdCB0byB0cnkgVDcyMCwKPiA+IHNvIGl0IGNvdWxkIGJlIHNvbWV0aGluZyBlbHNlLgo+
IAo+IEkgd2FzIGV4cGVjdGluZyB0byBzZWUgYSBzaW1pbGFyIGJlaGF2aW91ciB0byBteSBUNjIw
ICh3aGljaCBJIG5vdwo+IGFzc3VtZSB3YXMgZG93biB0byA2NC1iaXQgam9iIGRlc2NyaXB0b3Jz
IHNvcnQtb2YtYnV0LW5vdC1xdWl0ZSB3b3JraW5nKQo+IGJ1dCB0aGlzIGRvZXMgbG9vayBhIGJp
dCBtb3JlIGZ1bmRhbWVudGFsIC0gdGhlIGZhY3QgdGhhdCBpdCdzIGEgbGV2ZWwgMQo+IGZhdWx0
IHdpdGggVkEgPT0gaGVhZCA9PSB0YWlsIHN1Z2dlc3RzIHRvIG1lIHRoYXQgdGhlIE1NVSBjYW4n
dCBzZWUgdGhlCj4gcGFnZSB0YWJsZXMgYXQgYWxsIHRvIHRyYW5zbGF0ZSBhbnl0aGluZy4gSSBy
ZWFsbHkgaG9wZSB0aGF0IHRoZSBINiBHUFUKPiBpbnRlZ3JhdGlvbiBkb2Vzbid0IHN1ZmZlciBm
cm9tIHRoZSBzYW1lIERNQSBvZmZzZXQgYXMgdGhlIEFsbHdpbm5lcgo+IGRpc3BsYXkgcGlwZWxp
bmUgc3R1ZmYsIGJlY2F1c2UgdGhhdCB3b3VsZCBiZSBhIHJlYWwgcGFpbiB0byBzdXBwb3J0IGlu
Cj4gaW8tcGd0YWJsZS4KCkRNQSBvZmZzZXQgaXMgcHJlc2VudCBvbmx5IG9uIGVhcmx5IFNvQ3Mg
d2l0aCBERTEuIERFMiBhbmQgREUzICh1c2VkIG9uIEg2KSAKaGF2ZSBubyBvZmZzZXQuCgpCZXN0
IHJlZ2FyZHMsCkplcm5lagoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
