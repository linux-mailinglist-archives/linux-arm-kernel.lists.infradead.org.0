Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5FC104003
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgma7IZ/D9DwfIWiSyTuC4G3kRDh8JLPCkZWi5eQnE0=; b=pAMzT72JZZN/R6
	YXOYe30P1rwBurmMYV+1oWOaI8CCPcjjvO7wpU2RFlXWpFzSy/046klREKbUsz3t+MRmldKnDG1ub
	lH5XZDAwy2lwty0kBIXvJC+9AKdiuOUlS4NtH/aODUjijakTx3iZuFdCrtluNKU/GTUQAMCAYXBVV
	MXJntt7S1FyDT8WcLD0KiRB4OBhxc4TCbPIXZv6WVrXFVqeEzhJbEu7/B1OZkslNs+t3B4lXbPxre
	VzGGZspBp8knGwZcVQyjvs0vu5lDK9I19iFZgLXgwKJmsDKvt4+JmCZXN86GG68GobYBFYDuVSHVG
	2K7OCRfu+tPWz6V9cq6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSGS-0006In-Ti; Wed, 20 Nov 2019 15:51:32 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSGH-0006GL-06
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:51:23 +0000
Received: by mail-il1-x144.google.com with SMTP id d83so62984ilk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V9ocHos4mEPx/cXUTF0dJh2q+Dfua495g56A4DiYMvM=;
 b=DA3GASR2Yz29peYkU/JxCycyhe0pntz2I8oB4TnZKHaznQQ/3dZagFl7mz/6uQHJW5
 GrRIPKUtWuu9jAaJ2X5b0MVGuDe5OcswfXx1wbPb8m7uCfMIJmc9IPC5IS0lBPUTGROo
 mDAdsl7e6tN7R+gpDhb9im2LWKYDM4jMwbQzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V9ocHos4mEPx/cXUTF0dJh2q+Dfua495g56A4DiYMvM=;
 b=ZbawtBLlg8J0TgQILYWs9L2Gf1WNHw3ECKYlVXBGigSGyh/3R0DMqZRgPtEhy8pg5h
 M9b/3DPn/Mhb0WRBywYSvkYpUH3U+ENXqBRn1kbfFg60+Xk/6W5KpS0CRVeJmycgxL9i
 WOMLILRyh370hiz5sgt1afpMhCeL7QkLgMGLofDejkdOq+SEMUVSxdrGJFBdGNb+DrkZ
 XO+mJHg82ctzKLfqya1v3+ET6ZBnSZIly+RC9IVljgWm8+Q8y36oHqq3xfKLUj+gOOAZ
 2kzzxrGk2j0MMfX4dg4LH4pn3KHikFzzCm3tbnj3veIgTSk84Qmou/ogI9FJPHO5H9Iw
 h2Bg==
X-Gm-Message-State: APjAAAWskst+XJ8s8qoJXPWsB53U6lzuIvBCemVbeCylF6lD+mF8Pw6c
 jtu1qY8SFPBEW1/6E3gMfHcsjtsxF/KfPQE/T4oKyA==
X-Google-Smtp-Source: APXvYqxEiRL48js6ZDjxRjcSKNXQCeEpejajn5en3dkyccGBO7qEMLPuZspPilOntqUDYF2mK0Y10om7k0o+Lm+FniU=
X-Received: by 2002:a92:5d8f:: with SMTP id e15mr4268209ilg.173.1574265079598; 
 Wed, 20 Nov 2019 07:51:19 -0800 (PST)
MIME-Version: 1.0
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-3-jagan@amarulasolutions.com> <1707486.7nrk6WTBgP@diego>
In-Reply-To: <1707486.7nrk6WTBgP@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 20 Nov 2019 21:21:08 +0530
Message-ID: <CAMty3ZC2NzTWq8YPbePRyPdixxMO7mrPZrzagwjrTkhGHGRR=g@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial
 support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_075121_183034_D43DF205 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Tom Cubie <tom@radxa.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA2OjU5IFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBsb29rcyBnb29kIGlu
IGdlbmVyYWwsIGp1c3Qgc29tZSBzbWFsbCB0aGluZ3MgYmVsb3c6Cj4KPiBBbSBNaXR0d29jaCwg
MjAuIE5vdmVtYmVyIDIwMTksIDEyOjM5OjIwIENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiBW
TUFSQyBSSzMzOTlQcm8gU09NIGlzIGEgc3RhbmRhcmQgU01BUkMgU09NIGRlc2lnbiB3aXRoCj4g
PiBSb2NrY2hpcCBSSzMzOTlQcm8gU29DLCB3aGljaCBpcyBkZXNpZ25lZCBieSBWYW1ycy4KPiA+
Cj4gPiBTcGVjaWZpY2F0aW9uOgo+ID4gLSBSb2NrY2hpcCBSSzMzOTlQcm8KPiA+IC0gUE1JQzog
Uks4MDktMwo+ID4gLSBTRCBzbG90LCAxNkdpQiBlTU1DCj4gPiAtIDJ4VVNCLTIuMCwgMXhVU0Iz
LjAKPiA+IC0gVVNCLUMgZm9yIHBvd2VyIHN1cHBseQo+ID4gLSBFdGhlcm5ldCwgUENJZQo+ID4g
LSBIRE1JLCBNSVBJLURTSS9DU0ksIGVEUAo+ID4KPiA+IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9y
IFZNQVJDIFJLMzM5OVBybyBTT00sIHRoaXMgd291bGQgdXNlCj4gPiB3aXRoIGFzc29jaWF0ZWQg
Y2FycmllciBib2FyZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5
cHJvLXZtYXJjLXNvbS5kdHNpICAgICB8IDMzOSArKysrKysrKysrKysrKysrKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMzM5IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1h
cmMtc29tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFy
Yy1zb20uZHRzaQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAw
MC4uZGRmNmViYzlmYmUzCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFyYy1zb20uZHRzaQo+ID4gQEAgLTAsMCArMSwz
MzkgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkK
PiA+ICsvKgo+ID4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBGdXpob3UgUm9ja2NoaXAgRWxlY3Ry
b25pY3MgQ28uLCBMdGQKPiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgVmFtcnMgTGltaXRlZAo+
ID4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBBbWFydWxhIFNvbHV0aW9ucyhJbmRpYSkKPiA+ICsg
Ki8KPiA+ICsKPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gPiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4KPiA+ICsjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvcHdtL3B3bS5oPgo+ID4gKwo+ID4gKy8gewo+ID4gKyAgICAgY29tcGF0aWJsZSA9
ICJ2YW1ycyxyazMzOTlwcm8tdm1hcmMtc29tIiwgInJvY2tjaGlwLHJrMzM5OXBybyI7Cj4gPiAr
Cj4gPiArICAgICBjbGtpbl9nbWFjOiBleHRlcm5hbC1nbWFjLWNsb2NrIHsKPiA+ICsgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPiArICAgICAgICAgICAgIGNsb2Nr
LWZyZXF1ZW5jeSA9IDwxMjUwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICBjbG9jay1vdXRwdXQt
bmFtZXMgPSAiY2xraW5fZ21hYyI7Cj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDww
PjsKPiA+ICsgICAgIH07Cj4gPiArCj4gPiArICAgICB2Y2M1djBfc3lzOiB2Y2M1djAtc3lzLXJl
Z3VsYXRvciB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVk
IjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3N5cyI7Cj4gPiAr
ICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiArICAgICAgICAgICAgIHJlZ3Vs
YXRvci1ib290LW9uOwo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDw1MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
NTAwMDAwMD47Cj4KPiBJcyB2Y2M1djBfc3lzIHJlYWxseSB0aGUgdG9wbW9zdCByZWd1bGF0b3Ig
Z2V0dGluZyB0aGUgb3V0c2lkZQo+IHBvd2VyLXN1cHBseT8KClRoYW5rcyBmb3IgcG9pbnRpbmcg
dGhpcywgSSBmb3Jnb3QgdG8gY2hlY2sgdGhlIHZpbiBzdXBwbHkgaW4gY2Fycmllcgpib2FyZCBz
Y2hlbWF0aWNzLCB5ZXMgaXQgaXMgVkNDMTJWX0RDSU4gKHdpdGggNVYgdG8gMjRWIHJhbmdlKSBs
aWtlCnJvY2stcGktNC4gV2lsbCB1cGRhdGUgdGhlIHNhbWUuCgo+Cj4KPiA+ICsgICAgIH07Cj4g
PiArCj4gPiArICAgICB2Y2NfbGFuOiB2Y2MzdjMtcGh5LXJlZ3VsYXRvciB7Cj4gPiArICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ICsgICAgICAgICAgICAg
cmVndWxhdG9yLW5hbWUgPSAidmNjX2xhbiI7Cj4KPiB2Y2NfbGFuIC8gdmNjX3BoeSBpcyBtb3N0
bHkgY29taW5nIGZyb20gdGhlIHZlbmRvciBic3AgaW4gc29tZSB3YXkKPiBhbmQgd2lsbCBiZSBu
YW1lZCBkaWZmZXJlbnRseSBpbiBzY2hlbWF0aWNzIC4uLiBhbHNvIGl0IHNob3VsZCBiZSBjb25u
ZWN0ZWQKPiB0byB0aGUgcmVndWxhdG9yIHRyZWUuCgpJbmZhY3QgYnNwIG5hbWVkIHRoaXMgYXMg
dmNjX3BoeSwgSSBnb3QgdGhlIHZjY19sYW4gZnJvbSBzY2hlbWF0aWNzWzFdCnBhZ2UgMTYuIFll
cyBpdCBpcyB1c2luZyBWQ0NJT18zVjNfUzAgKFNXT1VUMiBmcm9tIHJlZ3VsYXRvciB0cmVlKSwg
SQp3aWxsIG1hcmsgdGhpcyByZWd1bGF0b3IuCgo+Cj4gWy4uLl0KPgo+ID4gKyZ0c2FkYyB7Cj4g
PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArCj4gPiArICAgICAvKiB0c2h1dCBtb2RlIDA6
Q1JVIDE6R1BJTyAqLwo+Cj4gSSB0aGluayB3ZSBjYW4gbGl2ZSB3aXRob3V0IHRoZSBhZGRpdGlv
bmFsIGNvbW1lbnRzIGZvciBwcm9wZXJ0aWVzIDotKQoKVHJ1ZSwgSSBoYXZlIHJldXNlZCBpdCBm
cm9tIHJvY2stcGktNCB0aG91Z2h0IHRoYXQgaXQgd291bGQgY29tcGF0aWJsZQp3aXRoIG9sZC4g
d2lsbCByZW1vdmUuCgpbMV0gaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9ja3BpbjEwL2RvY3MvaHcv
Vk1BUkNfUkszMzk5UHJvX3NjaF9WMS4xXzIwMTkwNjE5LnBkZgoKSmFnYW4uCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
