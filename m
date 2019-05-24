Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5360A2980C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqexFXPoi4pmbhVy77GlYIJnGKIuhNG0eg6k2Pe7PKI=; b=P8FPtUirtsVV1a
	fc+ASv/X9I/g7fRr0hk25fDVA7Hwq/ZRjsmqBC7pmzVPpVufDya25svUSwdJhmA3v+oeUyYArQyOQ
	CIbfwiNUu3EL4wCxRxLfIe6ciqrCHp2XhD+3y6JrnxR+41z6KHnDpPTQ0SdZb2iN4k6D7S9BJ6yPd
	vVwpammZdrLYqC3Tg/uLBmgUJl+fa9SAKkzAm+ReUyWqnjzKgmP3g1E5LN6VchegFift10cmn4s3h
	7478wZ7mMvXJeiRMn9fkOtFz9roFV8nEhOnXdY8EOteqbV+CM2F72NK7T1/RaCU7AXH4EDizTpo/k
	Lnc5iEEyT7do2iGL/mjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9KO-00013V-N6; Fri, 24 May 2019 12:29:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9KH-000139-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:29:35 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4F1021841
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 12:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558700972;
 bh=kkMeV3Qa9ZecFjYtXsmMBNygjCqjuPUH0BPe7UWSBes=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rGljGda+WHDyJKj+CRGvm+n+fq0a+B/CHmlvdieBNDIC10WNowElnWEy/8HeY5Rzj
 uxotR1JsdPOU2qe9SaLSPmGgsT5x0EnsIhuBQg9b7SWHkOyiS/BvYvCfqkenmRmf/w
 vntu/FhMELK1PgnZRm8g+z8aP8Yc4y5luv33kPj0=
Received: by mail-qk1-f176.google.com with SMTP id p18so7261696qkk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 05:29:32 -0700 (PDT)
X-Gm-Message-State: APjAAAXHf1TRoncAtAMViIKBadtg47MlewXZFLVwskDMY67hV1MbEmIE
 Y85xNWhvL0oLzkD7h3H4sk1m33m1VC458QDrHw==
X-Google-Smtp-Source: APXvYqx2xqDEadQisTg7b1WEJZG9w2R5BeEk8IqwCYl56O2Vztp67RVbSkkhCGkdjSKdSi//kWMqFU8vKJEKBHTFnr4=
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr64976477qts.110.1558700971929; 
 Fri, 24 May 2019 05:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435708872A4DBA92561C772597000@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB5863FA1CE6D1E40F11B2E5008F000@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB4357072E079BDD8D1866595797020@AM6PR04MB4357.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4357072E079BDD8D1866595797020@AM6PR04MB4357.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 24 May 2019 07:29:20 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+evXqKKyXLFbE+9o8X5BA9NWmcjvZ9-Y1Y7-pwcu8nJg@mail.gmail.com>
Message-ID: <CAL_Jsq+evXqKKyXLFbE+9o8X5BA9NWmcjvZ9-Y1Y7-pwcu8nJg@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
To: Chuanhua Han <chuanhua.han@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_052933_928205_80CC7B52 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ying Zhang <ying.zhang22455@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgNDo0OCBBTSBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhh
bkBueHAuY29tPiB3cm90ZToKPgo+IEhpLCBSb2IgSGVycmluZwo+Cj4gPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogTGVvIExpCj4gPiBTZW50OiAyMDE55bm0NeaciDIy5pel
IDE0OjUwCgoKPiA+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICB3ZG9nMDogd2F0Y2hkb2dA
MjNjMDAwMCB7Cj4gPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImZzbCxsczEwMjhhLXdkdCIsCj4gPiA+ID4gImZzbCxpbXgyMS13ZHQiOwo+ID4gPiA+
ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDIzYzAwMDAgMHgw
IDB4MTAwMDA+Owo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDU5Cj4gPiA+ID4gPiA+IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4g
PiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0
IDE+Owo+ID4gPiA+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgYmlnLWVuZGlhbjsK
PiA+ID4gPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgY2x1c3RlcjFfY29yZTBfd2F0Y2hk
b2c6IHdkdEBjMDAwMDAwIHsKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBLZWVwICd3
YXRjaGRvZycgYXMgdGhlIG5vZGUgbmFtZSwKPiA+ID4gPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIg
cmVwbGF5Cj4gPiA+ID4gPiA+ID4gRG8geW91IG1lYW4gcmVwbGFjZSB0aGUg4oCYd2R04oCZIHdp
dGgg4oCYd2F0Y2hkb2figJk/Cj4gPiA+ID4gPiA+ID4gYW5kIGtlZXAgbm9kZXMgc29ydCBpbiB1
bml0LWFkZHJlc3MuCj4gPiA+ID4gPiA+ID4gV2hhdCBkb2VzIHRoaXMgbWVhbj8KPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gVGhhdCBtZWFucyBvcmRlciB0aGUgbm9kZXMgYnkgdGhlIGFkZHJlc3Nl
cyAoZS5nLiBjMDAwMDAwLAo+ID4gPiA+ID4gPiBjMDEwMDAwKQo+ID4gPiA+ID4gVGhlIGN1cnJl
bnQgb3JkZXIgaXMgY29ycmVjdO+8iFRoZSBmaXJzdCBpcyBjMDAwMDAwLCB0aGVuIGMwMDAwMDDv
vIkuCj4gPiA+ID4KPiA+ID4gPiBCdXQgdGhleSBhcmUgYWRkZWQgYWZ0ZXIgZ3Bpb0AyMzIwMDAw
IGFuZCBiZWZvcmUgc2F0YUAzMjAwMDAwLgo+ID4gPiBJIGNoYW5nZWQgYW5kIG1hZGUgdGhlIHNl
Y29uZCB2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgYnV0IEkgZm91bmQgdGhlCj4gPiA+IGZvbGxvd2lu
ZyBlcnJvciB3aGVuIEkgZXhlY3V0ZWQgLi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwgeHh4LnBhdGNo
IHRvCj4gPiA+IGNoZWNrIHRoZSBwYXRjaDoKPiA+ID4KPiA+ID4gV0FSTklORzogRFQgY29tcGF0
aWJsZSBzdHJpbmcgdmVuZG9yICJhcm0iIGFwcGVhcnMgdW4tZG9jdW1lbnRlZCAtLQo+ID4gPiBj
aGVjayAuL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMu
dHh0Cj4gPiA+ICM0MzogRklMRTogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxz
MTAyOGEuZHRzaTozNTE6Cj4gPiA+ICsgY29tcGF0aWJsZSA9ICJhcm0sc3A4MDUiLCAiYXJtLHBy
aW1lY2VsbCI7Cj4gPiA+Cj4gPiA+IEhvd2V2ZXIsIHRoZXJlIGlzIG5vIHZlbmRvci1wcmVmaXhl
cy50eHQgZmlsZSBpbiB0aGUKPiA+ID4gLi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvIGRpcmVjdG9yeSwgb25seSB2ZW5kb3ItCj4gPiA+IHByZWZpeGVzLnlhbWwuCj4gPiA+IE1v
cmVvdmVyLCB0aGVyZSBhcmUg4oCYYXJt4oCZIHZlbmRvcnMgaW4gdmVuZG9yLXByZWZpeGVzLnlh
bWwuCj4gPgo+ID4gQWRkZWQgUm9iIEhlcnJpbmcgdG8gdGhlIHRocmVhZC4KPiA+Cj4gPiA+IFJl
cXVlc3QgaGVscO+8jHRoYW5rcwo+IEhvdyBjYW4gSSBzb2x2ZSB0aGlzIHBhdGNoIGNoZWNrIGVy
cm9yPyBBc2sgZm9yIGhlbHAsIHRoYW5rIHlvdSEKCklnbm9yZSBpdC4gQSBmaXggdG8gY2hlY2tw
YXRjaC5wbCBpcyBwZW5kaW5nLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
