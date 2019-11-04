Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C2FEDAE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRB8IQ8lheBesk0SFujgcm76sTaD30/fFEUTYnlhsv4=; b=Pxl982gQzRQUNY
	DdezTDiikcnefBwkoorR6ZffpJAZEZnrQDy8ZS8RpGu1XCec48eK6lQKk1Uy+2Ar0dApVABTqWZkI
	tUC2o//GT7z8STp9uuic8jQcdQe4isC+pCQiSGi6pY112nLuL3+N3yBl8rKbKdj10ZcokHTzv6Z91
	N1b5dQek+bs6Pv6+Xsd4pPb9CHX9UxIEa0sX3xAIveGIKjhbGKCRPKVqACYGFUE1C9GkCkB9eAaFH
	H4TnbDiZr+go5FeTS1GN1R4zvpo/4AhOq4eEo3rfuL7is9xWtkG1oRRWjvoVGUCFmaJJuR6LPXTCR
	hjPy0zxt0KAgIF/r7rqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYBd-0006lo-L8; Mon, 04 Nov 2019 08:58:09 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYBU-0006l4-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:58:02 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CD2471FFB8;
 Mon,  4 Nov 2019 09:57:54 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id B16231FF3E;
 Mon,  4 Nov 2019 09:57:54 +0100 (CET)
Subject: Re: [PATCH 1/1] net: ethernet: stmmac: fix warning when w=1 option is
 used during build
To: Christophe Roullier <christophe.roullier@st.com>,
 netdev <netdev@vger.kernel.org>
References: <20191104083438.8288-1-christophe.roullier@st.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <78d0c14a-fde0-72ca-e3bb-844b3a8ecac6@free.fr>
Date: Mon, 4 Nov 2019 09:57:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104083438.8288-1-christophe.roullier@st.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov  4 09:57:54 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_005800_685211_99A3C834 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, alexandre.torgue@st.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMTEvMjAxOSAwOTozNCwgQ2hyaXN0b3BoZSBSb3VsbGllciB3cm90ZToKCj4gVGhpcyBw
YXRjaCBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nOgo+IAo+IHdhcm5pbmc6IHZhcmlhYmxlIOKA
mHJldOKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+ICAg
aW50IHZhbCwgcmV0OwoKRldJVywgSSBiZWxpZXZlIHRoZSBjb21taXQgc3VtbWFyeSAoaS5lLiB0
aGUgc3ViamVjdCkgc2hvdWxkIGJlIGFzIHNwZWNpZmljCmFzIHBvc3NpYmxlIGluIHRoZSBmZXcg
Y2hhcmFjdGVycyBhbGxvd2VkLiBJbiBwYXJ0aWN1bGFyLCBpdCBzaG91bGQgbWVudGlvbgovd2hh
dC8gd2FzIGNoYW5nZWQuCgpUaGVuIHRoZSBjb21taXQgbWVzc2FnZSB3b3VsZCBwcm92aWRlIG1v
cmUgaW5mb3JtYXRpb24gYWJvdXQgL3doeS8gaXQgd2FzCmNoYW5nZWQsIGFuZCBwZXJoYXBzIGhv
dyBpdCBjYW1lIHRvIGJlIGRpc2NvdmVyZWQuCgpGb3IgZXhhbXBsZToKCm5ldDogZXRoZXJuZXQ6
IHN0bW1hYzogZHJvcCB1bnVzZWQgdmFyaWFibGUgaW4gc3RtMzJtcDFfc2V0X21vZGUoKQoKQnVp
bGRpbmcgd2l0aCBXPTEgKGNmLiBzY3JpcHRzL01ha2VmaWxlLmV4dHJhd2Fybikgb3V0cHV0czoK
d2FybmluZzogdmFyaWFibGUgJ3JldCcgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNl
dC12YXJpYWJsZV0KCkRyb3AgdGhlIHVudXNlZCAncmV0JyB2YXJpYWJsZS4KCgo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jIHwgNiArKystLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtc3RtMzIu
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0bTMyLmMKPiBp
bmRleCA0ZWYwNDFiZGY2YTEuLjU5NWFmMmVjODlmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtc3RtMzIuYwo+IEBAIC0xNzUsNyArMTc1
LDcgQEAgc3RhdGljIGludCBzdG0zMm1wMV9zZXRfbW9kZShzdHJ1Y3QgcGxhdF9zdG1tYWNlbmV0
X2RhdGEgKnBsYXRfZGF0KQo+ICB7Cj4gIAlzdHJ1Y3Qgc3RtMzJfZHdtYWMgKmR3bWFjID0gcGxh
dF9kYXQtPmJzcF9wcml2Owo+ICAJdTMyIHJlZyA9IGR3bWFjLT5tb2RlX3JlZzsKPiAtCWludCB2
YWwsIHJldDsKPiArCWludCB2YWw7Cj4gIAo+ICAJc3dpdGNoIChwbGF0X2RhdC0+aW50ZXJmYWNl
KSB7Cj4gIAljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUk6Cj4gQEAgLTIxMSw4ICsyMTEsOCBA
QCBzdGF0aWMgaW50IHN0bTMybXAxX3NldF9tb2RlKHN0cnVjdCBwbGF0X3N0bW1hY2VuZXRfZGF0
YSAqcGxhdF9kYXQpCj4gIAl9Cj4gIAo+ICAJLyogTmVlZCB0byB1cGRhdGUgUE1DQ0xSUiAoY2xl
YXIgcmVnaXN0ZXIpICovCj4gLQlyZXQgPSByZWdtYXBfd3JpdGUoZHdtYWMtPnJlZ21hcCwgcmVn
ICsgU1lTQ0ZHX1BNQ0NMUlJfT0ZGU0VULAo+IC0JCQkgICBkd21hYy0+b3BzLT5zeXNjZmdfZXRo
X21hc2spOwo+ICsJcmVnbWFwX3dyaXRlKGR3bWFjLT5yZWdtYXAsIHJlZyArIFNZU0NGR19QTUND
TFJSX09GRlNFVCwKPiArCQkgICAgIGR3bWFjLT5vcHMtPnN5c2NmZ19ldGhfbWFzayk7Cj4gIAo+
ICAJLyogVXBkYXRlIFBNQ1NFVFIgKHNldCByZWdpc3RlcikgKi8KPiAgCXJldHVybiByZWdtYXBf
dXBkYXRlX2JpdHMoZHdtYWMtPnJlZ21hcCwgcmVnLAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
