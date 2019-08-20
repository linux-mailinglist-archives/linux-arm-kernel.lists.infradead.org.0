Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B972C9662A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjm7Himv/e1jvbighr55G3KNNtsn1rGffs1fFLYQhm4=; b=u7n0XGFia5EicV
	LVZBiCO0c+4I6ayQXmeymXiSLwl4/PxlOnfSqGIay8Shkk+tWgETYxgJgzlDklD2y/BvYeXuyLWxM
	nsF4J15Ady7XaUtJcNyL8lPMhc7//UB/1Dp3g9lj85Ja0dAN7MfYbOpz9tGBunzFTa0MsAY4JCot9
	ci5RYg0edXBW0UsY8OShC9ALRnuI39rflIlM1Yq/fYktOwhvwDriVe1ujI3osGLP4JJPWKgnpcaIU
	e4ncSpZCdzdjeHhNRrMQgeh4MKkcZgc55ajfCS8jpgvQqo6kgz2J/rV/H6hxfX64k30+Z061i4nW8
	hdZqFUdaV6QBlDPO/oPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06sD-0002is-Qy; Tue, 20 Aug 2019 16:20:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06s1-0002iU-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566318027; bh=Ur31+ewkQP7gvbR5TMeGYZky/kMp62NibJGT1/dfqKM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=tvP41V/NpdED1yBnNgPzOZVg4qYsZcKimpIlQTgnpQzjxMVWbq9EcgYLJwdSCNp3R
 G2IRR2dUZG4NS44OINYR/oi3IypT/0iBxlISdDmcj28OTZIRbOmsPaccwz/39979EX
 jAjJK5Me4SuNhwsSo9OvUspxepr4iBchNOmp2WlM=
Date: Tue, 20 Aug 2019 18:20:27 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 3/6] net: stmmac: sun8i: Use devm_regulator_get for PHY
 regulator
Message-ID: <20190820162027.7erc2rlvoqasfjk7@core.my.home>
Mail-Followup-To: Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-4-megous@megous.com>
 <20190820153939.GL29991@lunn.ch>
 <20190820154714.2rt4ctovil5ol3u2@core.my.home>
 <20190820155744.GN29991@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820155744.GN29991@lunn.ch>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092030_892684_BAE791C9 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCAwNTo1Nzo0NFBNICswMjAwLCBBbmRyZXcgTHVu
biB3cm90ZToKPiBPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCAwNTo0NzoxNFBNICswMjAwLCBPbmTF
mWVqIEppcm1hbiB3cm90ZToKPiA+IEhpIEFuZHJldywKPiA+IAo+ID4gT24gVHVlLCBBdWcgMjAs
IDIwMTkgYXQgMDU6Mzk6MzlQTSArMDIwMCwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4gPiA+IE9uIFR1
ZSwgQXVnIDIwLCAyMDE5IGF0IDA0OjUzOjQwUE0gKzAyMDAsIG1lZ291c0BtZWdvdXMuY29tIHdy
b3RlOgo+ID4gPiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4g
PiA+IAo+ID4gPiA+IFVzZSBkZXZtX3JlZ3VsYXRvcl9nZXQgaW5zdGVhZCBvZiBkZXZtX3JlZ3Vs
YXRvcl9nZXRfb3B0aW9uYWwgYW5kIHJlbHkKPiA+ID4gPiBvbiBkdW1teSBzdXBwbHkuIFRoaXMg
YXZvaWRzIE5VTEwgY2hlY2tzIGJlZm9yZSByZWd1bGF0b3JfZW5hYmxlL2Rpc2FibGUKPiA+ID4g
PiBjYWxscy4KPiA+ID4gCj4gPiA+IEhpIE9uZHJlago+ID4gPiAKPiA+ID4gV2hhdCBkbyB5b3Ug
bWVhbiBieSBhIGR1bW15IHN1cHBseT8gSSdtIGp1c3QgdHJ5aW5nIHRvIG1ha2Ugc3VyZSB5b3UK
PiA+ID4gYXJlIG5vdCBicmVha2luZyBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eS4KPiA+IAo+ID4g
U29ycnksIEkgbWVhbiBkdW1teSByZWd1bGF0b3IuIFNlZToKPiA+IAo+ID4gaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL3JlZ3VsYXRvci9jb3Jl
LmMjTDE4NzQKPiA+IAo+ID4gT24gc3lzdGVtcyB0aGF0IHVzZSBEVCAoaS5lLiBoYXZlX2Z1bGxf
Y29uc3RyYWludHMoKSA9PSB0cnVlKSwgd2hlbiB0aGUKPiA+IHJlZ3VsYXRvciBpcyBub3QgZm91
bmQgKEVOT0RFViwgbm90IHNwZWNpZmllZCBpbiBEVCksIHJlZ3VsYXRvcl9nZXQgd2lsbCByZXR1
cm4KPiA+IGEgZmFrZSBkdW1teSByZWd1bGF0b3IgdGhhdCBjYW4gYmUgZW5hYmxlZC9kaXNhYmxl
ZCwgYnV0IGRvZXNuJ3QgZG8gYW55dGhpbmcKPiA+IHJlYWwuCj4gCj4gSGkgT25kcmVqCj4gCj4g
QnV0IHdlIGFsc28gZ2FpbiBhIG5ldyB3YXJuaW5nOgo+IAo+IAlkZXZfd2FybihkZXYsCj4gCQkg
IiVzIHN1cHBseSAlcyBub3QgZm91bmQsIHVzaW5nIGR1bW15IHJlZ3VsYXRvclxuIiwKPiAJICAg
ICAgICAgZGV2bmFtZSwgaWQpOwo+IAo+IFRoaXMgcmVndWxhdG9yIGlzIGNsZWFybHkgb3B0aW9u
YWwsIHNvIHRoZXJlIHNob3VsZCBub3QgYmUgYSB3YXJuaW5nLgo+IAo+IE1heWJlIHlvdSBjYW4g
YWRkIGEgbmV3IGdldF90eXBlLCBPUFRJT05BTF9HRVQsIHdoaWNoIGRvZXMgbm90IGlzc3VlCj4g
dGhlIHdhcm5pbmcsIGJ1dCBkb2VzIGdpdmUgYmFjayBhIGR1bW15IHJlZ3VsYXRvci4KCldlIGFs
cmVhZHkgaGFkIGEgaW5mbyBtZXNzYWdlLiBTZWUgbXkgb3RoZXIgZS1tYWlsIHdpdGggdGhlIGRt
ZXNnIG91dHB1dC4KCklNTywgdGhhdCB3YXJuaW5nIGlzIHVzZWZ1bCBkdXJpbmcgZGV2ZWxvcG1l
bnQsIGFuZCBtb3JlIGluZm9ybWF0aXZlIHRoYW4gdGhlCnByZXZpb3VzIG9uZS4KCnJlZ2FyZHMs
CglvLgoKPiBUaGFua3MKPiAJQW5kcmV3Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
