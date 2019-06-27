Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2B157D50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Rcm36f24bCVbQmgbJf2uVlz7dZZ27BxKE852JUzmGo=; b=jav6uP2gGU6Dpp
	nOcHlFDlIS1UWloeogVPX84IWRgv5SUcvm3rQGAiqSTMj67Ucxn1cn7qffsCC24GT8eYiABS2G4gA
	tpFSx7oAPnGM1aLqB8CJPYVtzJGIoroaPBXaOozNvrnJxi/MpqB7bmYtKMRSow4+/YoWML3Op95o/
	fEOIFkgBZA5GJhWqWNsDw08CoNtZqYK+71vaL83gnq1bf/4tGSsCCDj0X8/YV7fMFsZ1AY5MnxTac
	LjHWWrVowogmmNX8fPDdfq47A974vuQ9gTURzXBY62z2rk5BVHkzG1b/TqRTwC2o1a3Ttgt3gNkYH
	MRBNSRtf9yMjQOGYHIIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgP1W-0005x8-O7; Thu, 27 Jun 2019 07:40:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgP1E-0005wa-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:40:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so1282805wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 00:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/CusHUsM6XBNBHQs7MdEGbKPt4N56lsbxJiB8DbM+Z0=;
 b=ZfY73UsMmYZTZ2IIzZqyeoW3A47H0VdM45mnwO6/FEXr5+5BtJVHRSJ1voTQIb7jB1
 dMJg3oTHwqtDy/ky1rX86bB4DVIetXwUx+n/UJO2uw9pY+5Fn1bTZsxYthM2M0Zin1tm
 +pUZ1Md2wrkEqr/cQm3qfCgF4ZAY0+M4N8gi6hj54wGbz0uzYYFJJZuPw3mNulbgNVcn
 7e4Rg+o7J4qQwLe2HSxhFJER1qjgbuaZV4SLyR2RgtCH05C/aNf/uz5wn+blxi6+9+g6
 ss59sET0yCb+LUPAEWa2CifGp/oUGoulOFzEWREf/ok+o+LpVg3PMtSEJ+usQhYgvOmm
 8lbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/CusHUsM6XBNBHQs7MdEGbKPt4N56lsbxJiB8DbM+Z0=;
 b=BVYTx/K6AqNc4qwT5Wz12NUTjP5iF2jtab06Cp0KyaJD2myqGUZ04LKfK8cGr31HAn
 qj/CvwHbMa1h07KqgWrcmebgWLAOOwTVO0CLFTmr+HQLQ4ZWSB6ALnm6+ZeuHeaetMjz
 aZfBZmkyThW6hG6b3dvPhs3ebelw2L/K3WDLfvTHshxNMzQNNtLMshJlSDAj70lVQUvV
 mS9NATo6SviSzpzeWliU0v9slYksVXl+DA8Mv/WmQuY0Y3MSI6OciobRUYp24tijg5/p
 BdbHCvujrgqrd84FYuuBhsDlCqcai7pRk+pBiFEroR1/V8J4dIB+kYHTJEQJQ3kuhTRr
 JMmQ==
X-Gm-Message-State: APjAAAXTJISTZaPjwbbKgKG2jUK8Z7GwvmHlWRADpNs0TCLr5Z+qmpAB
 EwpYlH/+ksnZSPxK8FmTayLiVWCAdGJVNsaMn2M=
X-Google-Smtp-Source: APXvYqwEX7xmuzgZaxM1cTe6YGW6FKOn1KskW1Shqf2w0aTgNW3SDIZUqgip+czOjj7Yuoue0KQMw3jRSKKqFQPLI/s=
X-Received: by 2002:adf:db12:: with SMTP id s18mr1535921wri.335.1561621231319; 
 Thu, 27 Jun 2019 00:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
 <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
 <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
 <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
In-Reply-To: <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 27 Jun 2019 10:40:19 +0300
Message-ID: <CAEnQRZCjp9dUt0JTjhN0CnV0+Xzc+q1EHCnJn_TNOQoUWZBTsg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_004032_952286_385E8779 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PHNuaXA+Cgo+ID4gPiA+ICsgIG1ib3hlczoKPiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4g
PiA+ICsgICAgICBMaXN0IG9mIHBoYW5kbGUgb2YgMiBNVSBjaGFubmVscyBmb3IgVFhEQiwgMiBN
VSBjaGFubmVscyBmb3IgUlhEQgo+ID4gPiA+ICsgICAgICAoc2VlIG1haWxib3gvZnNsLG11LnR4
dCkKPiA+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+Cj4gPiA+IFNob3VsZCBiZSA0Pwo+ID4K
PiA+IEFjdHVhbGx5IGlzIGp1c3QgYSBsaXN0IHdpdGggMSBpdGVtLiBJIHRoaW5rIGlzIHRoZSB0
ZXJtaW5vbG9neToKPiA+Cj4gPiBZb3UgY2FuIGhhdmUgYW4gZXhhbXBsZSBoZXJlIG9mIHRoZSBt
Ym94ZXMgZGVmaW5lZCBmb3IgU0NVLgo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xp
bnV4L2Jsb2IvbWFzdGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRz
aSNMMTIzCj4KPiBtYm94ZXMgPSA8JmxzaW9fbXUxIDAgMAo+ICZsc2lvX211MSAwIDEKPiAmbHNp
b19tdTEgMCAyCj4gJmxzaW9fbXUxIDAgMwo+ICZsc2lvX211MSAxIDAKPiAmbHNpb19tdTEgMSAx
Cj4gJmxzaW9fbXUxIDEgMgo+ICZsc2lvX211MSAxIDMKPiAmbHNpb19tdTEgMyAzPjsKPgo+IExv
Z2ljYWxseSwgdGhpcyBpcyA5IGVudHJpZXMgYW5kIGVhY2ggZW50cnkgaXMgMyBjZWxscyAoIG9y
IHBoYW5kbGUKPiBwbHVzIDIgY2VsbHMpLiBNb3JlIGJlbG93Li4uCgpPay4uCgo+Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsgIG1ib3gtbmFtZXMKPgo+IEFsc28sIG1pc3NpbmcgYSAnOicgaGVyZS4gVGhp
cyB3b24ndCBidWlsZC4gTWFrZSBzdXJlIHlvdSBidWlsZCB0aGlzCj4gKG1ha2UgZHRfYmluZGlu
Z19jaGVjaykuIFNlZQo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS93cml0aW5nLXNjaGVtYXMu
bWQuCj4KRml4ZWQgaW4gdjIuIEF3ZXNvbWUhCgpJIHRob3VnaHQgdGhhdCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZHNwL2ZzbCxkc3BfaXBjLnlhbWwKaXMgcHVyZWx5IGRlY29y
YXRpdmUgYW5kIHVzZWQgYXMgYW4gZXhhbXBsZS4gQnV0IGl0J3MgYWN0dWFsbHkgdGhlIHNjaGVt
YSBmb3IKdGhlIG5ld2x5IHlhbWwgZHRzLCByaWdodD8KClVzZWQgbWFrZSBkdF9iaW5kaW5nX2No
ZWNrIGV2ZXJ5dGhpbmcgbG9va3MgT0sgbm93LgoKPiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+
ID4gPiA+ICsgICAgICBNYWlsYm94ZXMgbmFtZXMKPiA+ID4gPiArICAgIGFsbE9mOgo+ID4gPiA+
ICsgICAgICAtICRyZWY6ICIvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmci
Cj4gPiA+Cj4gPiA+IE5vIG5lZWQgZm9yIHRoaXMsICcqLW5hbWVzJyBhbHJlYWR5IGhhcyBhIGRl
ZmluZWQgdHlwZS4KPiA+IFNvLCBzaG91bGQgSSByZW1vdmUgdGhlIGFib3ZlIHR3byBsaW5lcyA/
Cj4KPiBBY3R1YWxseSwgYWxsIDQuIFRoZXJlJ3Mgbm8gbmVlZCB0byBkZXNjcmliZSB3aGF0ICdt
Ym94LW5hbWVzJyBpcy4KPgo+ID4gPiA+ICsgICAgICAtIGVudW06IFsgInR4ZGIwIiwgInR4ZGIx
IiwgInJ4ZGIwIiwgInJ4ZGIxIiBdCj4gPiA+Cj4gPiA+IFNob3VsZCBiZSBhbiAnaXRlbXMnIGxp
c3Qgd2l0aCA0IGVudHJpZXM/Cj4gPgo+ID4gTGV0IG1lIGJldHRlciByZWFkIHRoZSB5YW1sIHNw
ZWMuIEJ1dCAiaXRlbXMiIGxpc3QgaW5kZWVkIHNvdW5kcyBiZXR0ZXIuCj4KPiBXaGF0IHlvdSBz
aG91bGQgZW5kIHVwIHdpdGggaXM6Cj4KPiBpdGVtczoKPiAgIC0gY29uc3Q6IHR4ZGIwCj4gICAt
IGNvbnN0OiB0eGRiMQo+ICAgLSBjb25zdDogcnhkYjAKPiAgIC0gY29uc3Q6IHJ4ZGIxCj4KPiBU
aGlzIGlzIHNheWluZyB5b3UgaGF2ZSA0IHN0cmluZ3MgaW4gdGhlIGxpc3RlZCBvcmRlci4gVGhl
IGVudW0geW91Cj4gaGFkIHdvdWxkIGJlIGEgc2luZ2xlIHN0cmluZyBvZiBvbmUgb2YgdGhlIDQg
dmFsdWVzLgo+Ckkgc2VlISBUaGFua3MuCgo+ID4gPiA+ICtyZXF1aXJlZDoKPiA+ID4gPiArICAt
IGNvbXBhdGlibGUKPiA+ID4gPiArICAtIG1ib3hlcwo+ID4gPiA+ICsgIC0gbWJveC1uYW1lcwo+
ID4gPgo+ID4gPiBUaGlzIHNlZW1zIGluY29tcGxldGUuIEhvdyBkb2VzIG9uZSBib290IHRoZSBE
U1A/IExvYWQgZmlybXdhcmU/IE5vCj4gPiA+IHJlc291cmNlcyB0aGF0IExpbnV4IGhhcyB0byBt
YW5hZ2UuIFNoYXJlZCBtZW1vcnk/Cj4gPgo+ID4gVGhpcyBpcyBvbmx5IHRoZSBJUEMgbWFpbGJv
eGVzIHVzZWQgYnkgRFNQIHRvIGNvbW11bmljYXRlIHdpdGggTGludXguIFRoZQo+ID4gbG9hZGlu
ZyBvZiB0aGUgZmlybXdhcmUsIHRoZSByZXNvdXJjZXMgbmVlZGVkIHRvIGJlIG1hbmFnZWQgYnkg
TGludXgsIGV0Ywo+ID4gYXJlIHBhcnQgb2YgdGhlIERTUCBub2RlLgo+Cj4gWW91IHNob3VsZCBq
dXN0IGFkZCB0aGUgbWFpbGJveGVzIHRvIHRoZSBEU1Agbm9kZSB0aGVuLiBJIHN1cHBvc2UgeW91
Cj4gZGlkbid0IGJlY2F1c2UgeW91IHdhbnQgMiBkcml2ZXJzPyBJZiBzbywgdGhhdCdzIHRoZSBP
UydzIHByb2JsZW0gYW5kCj4gbm90IHBhcnQgb2YgRFQuIEEgTGludXggZHJpdmVyIGNhbiBpbnN0
YW50aWF0ZSBkZXZpY2VzIGZvciBvdGhlcgo+IGRyaXZlcnMuCgpZZXMsIEkgd2FudCB0aGUgRFNQ
IElQQyBkcml2ZXIgdG8gYmUgc2VwYXJhdGVkLiBBbmQgdGhlbiB0aGUgU09GIExpbnV4CmRyaXZl
ciB0aGF0IG5lZWRzCnRvIGNvbW11bmljYXRlIHdpdGggRFNQIGp1c3QgZ2V0cyBhIGhhbmRsZSB0
byBEU1AgSVBDIGRyaXZlciBhbmQgZG9lcwp0aGUgY29tbXVuaWNhdGlvbi4KCmR0cyByZWxldmFu
dCBub2RlcyBsb29rIGxpa2UgdGhpcyBub3c6CgrCuyAgICAgICBkc3BfaXBjOiBkc3BfaXBjIHsK
wrsgICAgICAgwrsgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OHF4cC1kc3AiOwrCuyAgICAg
ICDCuyAgICAgICBtYm94LW5hbWVzID0gInR4ZGIwIiwgInR4ZGIxIiwKwrsgICAgICAgwrsgICAg
ICAgwrsgICAgICAgICAgICAicnhkYjAiLCAicnhkYjEiOwrCuyAgICAgICDCuyAgICAgICBtYm94
ZXMgPSA8JmxzaW9fbXUxMyAyIDA+LArCuyAgICAgICDCuyAgICAgICDCuyAgICAgICAgPCZsc2lv
X211MTMgMiAxPiwKwrsgICAgICAgwrsgICAgICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDMgMD4s
CsK7ICAgICAgIMK7ICAgICAgIMK7ICAgICAgICA8JmxzaW9fbXUxMyAzIDE+OwrCuyAgICAgICB9
OwoKwrsgICAgICAgYWRtYV9kc3A6IGRzcEA1OTZlODAwMCB7CsK7ICAgICAgIMK7ICAgICAgIGNv
bXBhdGlibGUgPSAiZnNsLGlteDhxeHAtc29mLWRzcCI7CsK7ICAgICAgIMK7ICAgICAgIHJlZyA9
IDwweDU5NmU4MDAwIDB4ODgwMDA+OwrCuyAgICAgICDCuyAgICAgICByZXNlcnZlZC1yZWdpb24g
PSA8JmRzcF9yZXNlcnZlZD47CsK7ICAgICAgIMK7ICAgICAgIGlwYyA9IDwmZHNwX2lwYz47CsK7
ICAgICAgIH07CgpZb3VyIHN1Z2dlc3RvbiB3b3VsZCBiZSB0byBoYXZlIHNvbWV0aGluZyBsaWtl
IHRoaXM6CgrCuyAgICAgICBhZG1hX2RzcDogZHNwQDU5NmU4MDAwIHsKwrsgICAgICAgwrsgICAg
ICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OHF4cC1zb2YtZHNwIjsKwrsgICAgICAgwrsgICAgICAg
cmVnID0gPDB4NTk2ZTgwMDAgMHg4ODAwMD47CsK7ICAgICAgIMK7ICAgICAgIHJlc2VydmVkLXJl
Z2lvbiA9IDwmZHNwX3Jlc2VydmVkPjsKwrsgICAgICAgICAgICAgICAgbWJveC1uYW1lcyA9ICJ0
eGRiMCIsICJ0eGRiMSIsCsK7ICAgICAgIMK7ICAgICAgIMK7ICAgICAgICAgICAgInJ4ZGIwIiwg
InJ4ZGIxIjsKwrsgICAgICAgwrsgICAgICAgbWJveGVzID0gPCZsc2lvX211MTMgMiAwPiwKwrsg
ICAgICAgwrsgICAgICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDIgMT4sCsK7ICAgICAgIMK7ICAg
ICAgIMK7ICAgICAgICA8JmxzaW9fbXUxMyAzIDA+LArCuyAgICAgICDCuyAgICAgICDCuyAgICAg
ICAgPCZsc2lvX211MTMgMyAxPjsKwrsgICAgICAgfTsKCk5vdCBzdXJlIGV4YWN0bHkgaG93IHRv
IGluc3RhbnRpYXRlIElQQyBEU1AgZHJpdmVyIHRoZW4uCgpJIGFscmVhZHkgaGF2ZSBwcmVwYXJl
ZCB2MiB3aXRoIG1vc3Qgb2YgeW91ciBmZWVkYmFjayBpbmNvcnBvcmF0ZWQsCmJ1dCBub3QgdGhp
cyBsYXRlc3QKY2hhbmdlIHdpdGggbW92aW5nIG1ib3hlcyBpbnNpZGUgZHNwIGRyaXZlci4KCk1v
cmUgdGhhbiB0aGF0IEkgaGF2ZSBmb2xsb3dlZCB0aGUgbW9kZWwgb2YgU0NGVyBJUEMgYW5kIGhh
dmluZyB0bwpkaWZmZXJlbnQgYXBwcm9hY2gKZm9yIHNpbWlsYXIgSVBDIG1lY2hhbmlzbSBpcyBh
IGxpdHRsZSBiaXQgY29uZnVzaW5nLgoKQW55aG93LCB3aWxsIHRyeSB0byBhZGRyZXNzIHlvdXIg
ZnVydGhlciBmZWVkYmFjaywgd2lsbCBzZW5kIHYyIG5vdyB0bwpoYXZlIG1vcmUgZmVlZGJhY2sg
ZnJvbQpPbGVrc2lqLgoKdGhhbmtzLApEYW5pZWwuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
