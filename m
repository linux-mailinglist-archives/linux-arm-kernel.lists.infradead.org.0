Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC0C13C66D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBdksMbZqnrRaztpNs5r7CxCjIcZQJoLteEWlLDXC00=; b=mIeQm6ar1FKCjf
	WFedMLlhxVadLfrBPbVve0HNtmQd6QzhQmO0rk1A9yzK3Ida/ui1QJbDJNosNHk5XdffJ4fqF5uHm
	nNhKD7AJT/0tOmPD6neBsOKu9nomO2CyPh0QC2OZn5RD7KweoeaagHHaMAdii5rNYvtDM22QJyVdk
	aj2HlSlosU6u9cQcyrW9fxsIUvs5DLw+zfHVASqwvb+ddSuZ8s9f1YSef3iRQjB7SPlkxK7VqFms3
	jPimVcbqrccqQ9zDdiHPDxJnYYDYYhtn6xFzEmcret0u6PuVsagvVsqa8eG9fwrT3pgY7OdRu+Hz7
	Iq1ECsW0jqLZLg2kPlxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjvz-00006W-Uk; Wed, 15 Jan 2020 14:46:15 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjvn-00005l-FO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:46:07 +0000
Received: by mail-qv1-xf44.google.com with SMTP id f16so7446010qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ko4hPD0/HEbdUKAawr5GytPY5+uuzohUC9C8Ie0pz5Y=;
 b=GVPgqToKKsfItZLuncCcSCSiOOOzQELgjl02vuItdydovRi/jjLbd/JOQo1GG4/yi2
 SeI9ZjprOgMKRIqo9huTpzNqF7fL+KVTS3i0LVMRcZWtFXsuoTH1d+mnp4oUwZ91znVL
 2OHiDYrQRvpZehPTyzx8sm/zicwctaDhOyEpjsTmC1ZVASnj1enNLjgJ+9ZwbCs/4D2D
 +7QHAEV4Bk/ilsjfNS3qd7c06P8I3Ddy+qX+z5amLDnZTN3DYFzIIG+dymoK+TGLTqT2
 qLwosPpHMEipV0Z/Za3iUlyG7qll3GFOaCRZUqLUxD0FGhP7hiRZmQjf3rr8U1K2a5cg
 QhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ko4hPD0/HEbdUKAawr5GytPY5+uuzohUC9C8Ie0pz5Y=;
 b=DbcZb0pIl1vw4xz5T/EsxwfECFnt/jqEmyOj5bAwVpr6Xn2ntvxhY+NJ4gXsV//Wr5
 Z5PG+BxrRMyajCct8srAXRrK67GjYbVf2d9Y98A74IjYVjxcOAHhDuLko4BsAAKd2WE5
 5aTj7DF4H1c7tOhHnXKYRqz4fZ93tH91XKiRzdPYCO9Wkw+9/98jY9PcRbaxB7BtyLx1
 TGO8h+d3iVEf6Xm7QJ3GsKnMPAhSlNP8m9rsvszs5OnFXFFq8q/6E1TwiCdsiMRNUVGP
 oqGHZctZDg+BQp7YN/b/840VdAnGqRi8lWNS9NMIq0Agc7tLMBtwhJwccipn1g8m9T2Z
 Xw8g==
X-Gm-Message-State: APjAAAUu2n0HWxf4EeKRu4zpZKcJaSPNDqSzPe4oQSLjzniXFI6VVvkA
 2ooxRp2Ty5jxaDPvtS9w9atrdLZiJ0WH4sV53Xyu1Q==
X-Google-Smtp-Source: APXvYqxgx6sXyHqoMMdfsNegXLpS1jy2niaBHXeY33uGOlo7Pj2t0SYiM0IhcMd7OZOMaoVhZLN3+9MglvL1EXIOjJc=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr21437572qvp.210.1579099561838; 
 Wed, 15 Jan 2020 06:46:01 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-2-benjamin.gaignard@st.com>
 <20200115143521.GA15099@bogus>
In-Reply-To: <20200115143521.GA15099@bogus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Wed, 15 Jan 2020 15:45:51 +0100
Message-ID: <CA+M3ks7FGZ9TMO0=yXrhZph1Cn1GQ+2-tM7SnDrRDXVoCjrTjA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: Add STM32 Low Power Timer bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_064603_577575_D4A53C45 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 pascal paillet <p.paillet@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWVyLiAxNSBqYW52LiAyMDIwIMOgIDE1OjM1LCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPiBhIMOpY3JpdCA6Cj4KPiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwMzo1MzozMVBNICsw
MTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IERvY3VtZW50IFNUTTMyIExvdyBQb3dl
ciBiaW5kaW5ncy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3RpbWVyL3N0
LHN0bTMyLWxwLXRpbWVyLnlhbWwgICAgICAgICAgfCA0NCArKysrKysrKysrKysrKysrKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3N0LHN0bTMyLWxw
LXRpbWVyLnlhbWwKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3RpbWVyL3N0LHN0bTMyLWxwLXRpbWVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbAo+ID4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2EwNDBiOTZkYzQ3Cj4gPiAt
LS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dGltZXIvc3Qsc3RtMzItbHAtdGltZXIueWFtbAo+Cj4gVXNlIHRoZSBjb21wYXRpYmxlIGZvciB0
aGUgZmlsZW5hbWUuCgppdCB3aWxsIGJlIGluIHYyCgo+Cj4gPiBAQCAtMCwwICsxLDQ0IEBACj4g
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1
c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy90aW1lci9zdCxzdG0zMi1scC10aW1lci55YW1sIwo+ID4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3Rp
dGxlOiBTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzIgTG93IFBvd2VyIDE2IGJpdHMgdGltZXJzIGJp
bmRpbmdzCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+Cj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+ICsg
IGNvbXBhdGlibGU6Cj4gPiArICAgIGNvbnN0OiBzdCxzdG0zMi1scHRpbWVyLWNsa2V2ZW50Cj4K
PiAnY2xrZXZlbnQnIGlzIGEgaC93IG5hbWU/IFNlZW1zIHJlZHVuZGFudCBhbmQgYWJ1c2luZyBj
b21wYXRpYmxlIHRvCj4gYmluZCB0byBhIHNwZWNpZmljIExpbnV4IGRyaXZlci4KCk5vIGJ1dCBz
dCxzdG0zMi1scHRpbWVyIGNvbXBhdGlibGUgaXMgYWxyZWFkeSB1c2VkIGZvciBhbm90aGVyIGRy
aXZlcgpUaGUgaGFyZHdhcmUgYmxvY2sgY2FuIGltcGxlbWVudCBtdWx0aXBsZSBmZWF0dXJlcyBi
dXQgbm90IGFsbCBhdCB0aGUgc2FtZSB0aW1lCnNvIEkgdHJ5IHRvIGRpc3Rpbmd1aXNoIHRoZW0g
d2l0aCB0aGUgY29tcGF0aWJsZS4KSW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UgSSB3b3VsZCBsaWtl
IHRhZyBpdCBhcyBhIGNsb2NrIGV2ZW50IGRyaXZlci4KCj4KPiA+ICsKPiA+ICsgIHJlZzoKPiA+
ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIG1heEl0
ZW1zOiAxCj4gPiArCj4gPiArICBjbG9ja3M6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4g
PiArcmVxdWlyZWQ6Cj4gPiArICAtIGNvbXBhdGlibGUKPiA+ICsgIC0gcmVnCj4gPiArICAtIGlu
dGVycnVwdHMKPiA+ICsgIC0gY2xvY2tzCj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6
IGZhbHNlCj4gPiArCj4gPiArZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiA+ICsgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3N0bTMybXAxLWNsa3MuaD4KPiA+ICsgICAgY2xrZXZl
bnQ6IGNsa2V2ZW50QDQwMDA5MDAwIHsKPgo+IHRpbWVyQC4uLgoKT0sKCj4KPiA+ICsgICAgICBj
b21wYXRpYmxlID0gInN0LHN0bTMyLWxwdGltZXItY2xrZXZlbnQiOwo+ID4gKyAgICAgIHJlZyA9
IDwweDQwMDA5MDAwIDB4NDAwPjsKPiA+ICsgICAgICBjbG9ja3MgPSA8JnJjYyBMUFRJTTFfSz47
Cj4gPiArICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDkzIElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+ID4gKyAgICB9Owo+ID4gKwo+ID4gKy4uLgo+ID4gLS0KPiA+IDIuMTUuMAo+ID4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
