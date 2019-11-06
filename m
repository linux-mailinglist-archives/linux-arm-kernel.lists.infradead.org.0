Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E82F121E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/c0FnJO5FMoHjfR94+bbs3E3vJDh6z98IZUwQH1xQh0=; b=mc4ct7uNdHLgld
	mCPtHiOBv0uV4JF5+HRiMO0BIatll8tyxB8MC9aKIe5J2kIM4OVl+scGmB5xZJtOHyshfNC9Xm+nC
	+P1Y3TJqqpEKWpZoxQwF2DzSDJbS6dY8VRPZdMOdUfdR5rR4lcj+e3Q+w/C1O3D0fqdOpL3lbv6GA
	0oZguXPoWbwehsjQ/hbSGWRr06FB9RVWTPv529XnJsbzylJKmuoHlFPgGhNB+nSGZa7tWMRs3O1gi
	fBoXaeMg1EmI2vpUkxatTWh24TVO4StTV3otfMpU1G68C27PcNILlAkGl1PUvMFR0/cu7NblOlYmd
	XOvHkC0foJrSX14Hv/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHZZ-000733-Fw; Wed, 06 Nov 2019 09:25:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHZQ-00072T-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:25:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so2454100wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 01:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZOJbwXEfRC32OcivT3s1o5LQP4VegomtuiAoRP6hxYA=;
 b=uSdRdcv3jeShjMmF5bqnACHCGtOE8ifA4CsrRxHIqqgtxQ/d12HF2mHz3rwOKh369v
 tu0OtHSk7IUdW2Es8R8/C1tQrVQ4Vz9ziK61IGiwfzCm1pTDWx+/ol0tTetP1VepH4t+
 gxBGHtExamDG8RAVJVOx39ihsTZgO5VX6noiLCwODHjpdcXmGdrZZ/hbzLAOB6PY3Afa
 /UoxdAfjQ/aC+cX1BfChQeM0rO9tTfbhh4f/rPvMD4RkhKDoHTtpr+vpntrP6zPenrmQ
 DkfgNbgc0Q+VWLmyPkeiAPhm57Yy3xjTZWcTEnKQ1qlSRPKTSFXW5AZ/NOk+e4dQwKmZ
 eXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZOJbwXEfRC32OcivT3s1o5LQP4VegomtuiAoRP6hxYA=;
 b=d8lqfjnbZQf48wez6ae9LvCJ7H6wp805CgBJ8qw5p8nbdhVcSWQpnV9qTg2R76bVub
 Z0flRE8ynYlYJ1/hEWukiub655K0iQBzDFrl+cWE8bn0JkT0HHFAN0+ycedwVY0yiCRM
 B9kuG58XD3EYmgbPyID/80NBeQEmaf5eCLp2UD9L4DOyXM/bIGjAhlvhxd+mMV5qa+Bm
 rx8kcv9+b6z3NykNIQcY6KT4L2q1irtq66UWCDzpNIVpCOEwBi19CC7h11oKs8N+KZrg
 W/SDuFTT70cbXOW34VEzqcq+HPqYVDREiQIn6jtX+vAsIYuUXj6agLjeJWLpm3NDSF6H
 yljw==
X-Gm-Message-State: APjAAAWDBgXUJcjQkfICGE3lwtUl+HmIRKrdD7Gi9AZU969+HxITft+e
 gGLbCY9SB1VTULuxL0RKBukS1KGFP5BZvRHM/e8=
X-Google-Smtp-Source: APXvYqwDNQcqlVPCyFV9lSCoMv7rDyFzRgqxYkaCN0CfxqAF1uaJ8P0S7puanFdFxDqIiquTmFnYtsUfsuz3l1taXL0=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr1431731wme.4.1573032342346;
 Wed, 06 Nov 2019 01:25:42 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-2-peron.clem@gmail.com>
 <20191104080359.6kjugbt3yi63ywhb@pengutronix.de>
 <20191105111134.GG3876@gilmour.lan>
 <CAJiuCcc7sQvuPX+FTErXS+_RzUDvbDrB3Z5EX9wE_2EZaex0qw@mail.gmail.com>
 <20191105173208.GA46143@gilmour.lan>
In-Reply-To: <20191105173208.GA46143@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 6 Nov 2019 10:25:31 +0100
Message-ID: <CAJiuCcdQzXScxu=nOP6HaKyFK6Q--gvQubNR8wezTVvPctVf7w@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_012544_994523_E5FCA600 
X-CRM114-Status: GOOD (  25.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIDUgTm92IDIwMTkgYXQgMTg6MzIsIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIE5vdiAwNSwgMjAxOSBhdCAwMTozNDozN1BN
ICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBPbiBUdWUsIDUgTm92IDIwMTkgYXQg
MTI6MTEsIE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IEhpIENsZW1lbnQsIFV3ZSwKPiA+ID4KPiA+ID4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQg
MDk6MDM6NTlBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiA+ID4gT24gU3Vu
LCBOb3YgMDMsIDIwMTkgYXQgMDk6MzM6MjhQTSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3Rl
Ogo+ID4gPiA+ID4gRnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0
Pgo+ID4gPiA+ID4KPiA+ID4gPiA+IEg2IFBXTSBibG9jayBpcyBiYXNpY2FsbHkgdGhlIHNhbWUg
YXMgQTIwIFBXTSwgZXhjZXB0IHRoYXQgaXQgYWxzbyBoYXMKPiA+ID4gPiA+IGJ1cyBjbG9jayBh
bmQgcmVzZXQgbGluZSB3aGljaCBuZWVkcyB0byBiZSBoYW5kbGVkIGFjY29yZGluZ2x5Lgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00g
c3BlY2lmaWNzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3Jh
YmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENs
w6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ICAuLi4vYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwgfCA0NSAr
KysrKysrKysrKysrKysrKystCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3
bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIs
c3VuNGktYTEwLXB3bS55YW1sCj4gPiA+ID4gPiBpbmRleCAwYWM1MmY4M2E1OGMuLmJmMzZlYTUw
OWYzMSAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbAo+ID4gPiA+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3
bS55YW1sCj4gPiA+ID4gPiBAQCAtMzAsMTMgKzMwLDQ2IEBAIHByb3BlcnRpZXM6Cj4gPiA+ID4g
PiAgICAgICAgLSBpdGVtczoKPiA+ID4gPiA+ICAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVy
LHN1bjUwaS1oNS1wd20KPiA+ID4gPiA+ICAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1
bjVpLWExMy1wd20KPiA+ID4gPiA+ICsgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNTBpLWg2
LXB3bQo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgIHJlZzoKPiA+ID4gPiA+ICAgICAgbWF4SXRlbXM6
IDEKPiA+ID4gPiA+Cj4gPiA+ID4gPiAtICBjbG9ja3M6Cj4gPiA+ID4gPiArICAjIEV2ZW4gdGhv
dWdoIGl0IG9ubHkgYXBwbGllcyB0byBzdWJzY2hlbWFzIHVuZGVyIHRoZSBjb25kaXRpb25hbHMs
Cj4gPiA+ID4gPiArICAjIG5vdCBsaXN0aW5nIHRoZW0gaGVyZSB3aWxsIHRyaWdnZXIgYSB3YXJu
aW5nIGJlY2F1c2Ugb2YgdGhlCj4gPiA+ID4gPiArICAjIGFkZGl0aW9uYWxzUHJvcGVydGllcyBz
ZXQgdG8gZmFsc2UuCj4gPiA+ID4gPiArICBjbG9ja3M6IHRydWUKPiA+ID4gPiA+ICsgIGNsb2Nr
LW5hbWVzOiB0cnVlCj4gPiA+ID4gPiArICByZXNldHM6Cj4gPiA+ID4gPiAgICAgIG1heEl0ZW1z
OiAxCj4gPiA+ID4gPgo+ID4gPiA+ID4gKyAgaWY6Cj4gPiA+ID4gPiArICAgIHByb3BlcnRpZXM6
Cj4gPiA+ID4gPiArICAgICAgY29tcGF0aWJsZToKPiA+ID4gPiA+ICsgICAgICAgIGNvbnRhaW5z
Ogo+ID4gPiA+ID4gKyAgICAgICAgICBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20KPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ICsgIHRoZW46Cj4gPiA+ID4gPiArICAgIHByb3BlcnRpZXM6Cj4g
PiA+ID4gPiArICAgICAgY2xvY2tzOgo+ID4gPiA+ID4gKyAgICAgICAgaXRlbXM6Cj4gPiA+ID4g
PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IE1vZHVsZSBDbG9jawo+ID4gPiA+ID4gKyAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBCdXMgQ2xvY2sKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAg
ICBjbG9jay1uYW1lczoKPiA+ID4gPiA+ICsgICAgICAgIGl0ZW1zOgo+ID4gPiA+ID4gKyAgICAg
ICAgICAtIGNvbnN0OiBtb2QKPiA+ID4gPiA+ICsgICAgICAgICAgLSBjb25zdDogYnVzCj4gPiA+
ID4gPiArCj4gPiA+ID4gPiArICAgIHJlcXVpcmVkOgo+ID4gPiA+ID4gKyAgICAgIC0gY2xvY2st
bmFtZXMKPiA+ID4gPiA+ICsgICAgICAtIHJlc2V0cwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAg
ZWxzZToKPiA+ID4gPiA+ICsgICAgcHJvcGVydGllczoKPiA+ID4gPiA+ICsgICAgICBjbG9ja3M6
Cj4gPiA+ID4gPiArICAgICAgICBtYXhJdGVtczogMQo+ID4gPiA+ID4gKwo+ID4gPiA+Cj4gPiA+
ID4gSSBndWVzcyB0aGlzIGh1bmsgc2F5cyAiSWYgdGhpcyBpcyBhIGFsbHdpbm5lcixzdW41MGkt
aDYtcHdtLCBhIG1vZCBhbmQKPiA+ID4gPiBidXMgY2xvY2sgaXMgcmVxdWlyZWQuIiwgcmlnaHQ/
Cj4gPiA+ID4KPiA+ID4gPiBJIHdvbmRlciBpZiBpdCBpcyBzZW5zaWJsZSB0byByZXF1aXJlIGEg
Y2xvY2stbmFtZXMgcHJvcGVydHkgaW4gdGhlIGVsc2UKPiA+ID4gPiBicmFuY2gsIHRvby4gVGhp
cyB3b3VsZCBtYWtlIGl0IG9idmlvdXMgaWYgdGhlIGNsb2NrIHRoZXJlIGNvcnJlc3BvbmRzCj4g
PiA+ID4gdG8gdGhlICJtb2QiIG9yIHRoZSAiYnVzIiBjbG9jayBvbiBINi4gKEkgZ3Vlc3MgaXQn
cyAibW9kIi4pCj4gPiA+Cj4gPiA+IFRoaXMgY2FuIGJlIGRvbmUgYSBiaXQgZGlmZmVyZW50bHkg
YW5kIGNvdWxkIGFkZHJlc3MgeW91ciBjb25jZXJucwo+ID4gPgo+ID4gPiBTb21ldGhpbmcgbGlr
ZQo+ID4gPgo+ID4gPiBwcm9wZXJ0aWVzOgo+ID4gPiAgIC4uLgo+ID4gPgo+ID4gPiAgIGNsb2Nr
czoKPiA+ID4gICAgIG1pbkl0ZW1zOiAxCj4gPiA+ICAgICBtYXhJdGVtczogMgo+ID4gPiAgICAg
aXRlbXM6Cj4gPiA+ICAgICAgIC0gZGVzY3JpcHRpb246IEJ1cyBDbG9jawo+ID4gPiAgICAgICAt
IGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKPiA+ID4KPiA+ID4gcmVxdWlyZWQ6Cj4gPiA+ICAg
LSBjbG9ja3MKPiA+ID4KPiA+ID4gaWY6Cj4gPiA+ICAgLi4uCj4gPiA+Cj4gPiA+IHRoZW46Cj4g
PiA+ICAgcHJvcGVydGllczoKPiA+ID4gICAgIGNsb2NrczoKPiA+ID4gICAgICAgbWF4SXRlbXM6
IDIKPiA+Cj4gPiBIZXJlIHdlIHNob3VsZCBzZXQgbWluSXRlbXMgdG8gMiByaWdodCA/Cj4gPiBz
byBNYXggPSBNaW4gPSAyCj4KPiBJdCdzIGRvbmUgYXV0b21hdGljYWxseSBieSB0aGUgdG9vbGlu
ZyB3aGVuIHRoZSBvdGhlciBpcyBtaXNzaW5nLgoKT2sgdGhhbmtzLApJIHdpbGwgdXBkYXRlIGlu
IHY0LgoKUmVnYXJkcywKQ2zDqW1lbnQKCj4KPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
