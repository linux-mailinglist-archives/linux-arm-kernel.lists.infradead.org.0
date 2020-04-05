Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DA19EC97
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 18:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmDpl8XohXCK6pkyQvwDjE4COA/VITq+W0X8CKczFkM=; b=JBHqWFVffffhIS
	W7qlrVNosK2RcOVErsYUXSIAxR2ecMzEzPK92kjmZAhf5dCYzAwB4/JhnkI60nVi5BrxgbxwXb3NT
	zG0sqwnWnJBaGd2GsUseo7HZxcOUa6bqELd/x0MI5mVVgw9fPWvsJAnxYFN/d6O3QoBLZVcpf6Hb8
	/dGP9lyQ8V1DPlYAzqpM+9PjSdIDcrDPByntm/2CIlK4Jx3v8cC7Xvu6VZ6DT2awCFg0akanMTV+W
	REMLBV0lPVcQ4QqxChr9TTZ7gNwDXqRw3kR/4tOK/y0Dwl+u+mPQvteLqjUAtHzhWXkYL3ZYytClU
	eXir8JA0OYkxsWolcKzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL87i-0002Qh-G7; Sun, 05 Apr 2020 16:27:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL87d-0002PS-04; Sun, 05 Apr 2020 16:27:46 +0000
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5244E2075A;
 Sun,  5 Apr 2020 16:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586104058;
 bh=87r5HiwV250TQH/hXNaopHedMN2Y4ebyXBOwB1uf87s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0uL/iuu+DPJe3hArpFNmH8g3sP52h2w4dF5t09k1v3CrPdfKPoQKTfgvJcjovoA32
 B+EUftAQ0AjBlefdQfqvusqMf7jZrybIP9c6M1PmkZtel1YqtJI27zpYNEDqqW2+rj
 /hW9yYf2bLOL3IOwhZAtOZREdTI3pvVfcw5Kccxs=
Received: by mail-ed1-f45.google.com with SMTP id z65so15935892ede.0;
 Sun, 05 Apr 2020 09:27:38 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ/RyJ83de9lDbTZIV0aOYeEvk08n5aqPbHnVgj+RlwczV5kN/G
 O7E01ILw0JGwlhObhS2uGj3pbUbv3+/Gk+WEtA==
X-Google-Smtp-Source: APiQypJxhl3q1HZOKp0nuBjPykK5XzlvVbUY1lgbpYwIUm7Q3QtRq37rV5b91lqpWxHI2giZOD89RTYhXF9pKbTigvc=
X-Received: by 2002:aa7:c544:: with SMTP id s4mr16354259edr.271.1586104056683; 
 Sun, 05 Apr 2020 09:27:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-5-jitao.shi@mediatek.com>
 <CAAOTY_8vpzfKeyxVxXOVC7mDpw+QGGOX+8fJaQg5WduvndEmoA@mail.gmail.com>
 <1586093949.10544.4.camel@mszsdaap41>
In-Reply-To: <1586093949.10544.4.camel@mszsdaap41>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 6 Apr 2020 00:27:24 +0800
X-Gmail-Original-Message-ID: <CAAOTY_83pE=+WFJe3Jb8uk-8ToS_j4XN=LDLs+e_7DoYzrjdUA@mail.gmail.com>
Message-ID: <CAAOTY_83pE=+WFJe3Jb8uk-8ToS_j4XN=LDLs+e_7DoYzrjdUA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm/mediatek: config mipitx impedance with
 calibration data
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_092745_081883_277FE5F5 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDTmnIg15pelIOmAseaXpSDkuIvljYg5OjM55a+r6YGT77yaCj4KPgo+IE9uIFNhdCwgMjAyMC0w
NC0wNCBhdCAyMjoyNiArMDgwMCwgQ2h1bi1LdWFuZyBIdSB3cm90ZToKPiA+IEhpLCBKaXRhbzoK
PiA+Cj4gPiBKaXRhbyBTaGkgPGppdGFvLnNoaUBtZWRpYXRlay5jb20+IOaWvCAyMDIw5bm0M+ac
iDMx5pelIOmAseS6jCDkuIvljYg0OjI45a+r6YGT77yaCj4gPiA+Cj4gPiA+IFJlYWQgY2FsaWJy
YXRpb24gZGF0YSBmcm9tIG52bWVtLCBhbmQgY29uZmlnIG1pcGl0eCBpbXBlZGFuY2Ugd2l0aAo+
ID4gPiBjYWxpYnJhdGlvbiBkYXRhIHRvIG1ha2Ugc3VyZSB0aGVpciBpbXBlZGFuY2UgYXJlIDEw
MG9obS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRhby5zaGlAbWVk
aWF0ZWsuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
bXQ4MTgzX21pcGlfdHguYyB8IDU3ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMKPiA+ID4gaW5kZXggZTRjYzk2Nzc1MGNiLi4w
Zjg3Y2QzZDFkN2QgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfbXQ4MTgzX21pcGlfdHguYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX210ODE4M19taXBpX3R4LmMKPiA+ID4gQEAgLTUsNiArNSw4IEBACj4gPiA+ICAgKi8KPiA+
ID4KPiA+ID4gICNpbmNsdWRlICJtdGtfbWlwaV90eC5oIgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4
L252bWVtLWNvbnN1bWVyLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gPgo+
ID4gPiAgI2RlZmluZSBNSVBJVFhfTEFORV9DT04gICAgICAgICAgICAgICAgMHgwMDBjCj4gPiA+
ICAjZGVmaW5lIFJHX0RTSV9DUEhZX1QxRFJWX0VOICAgICAgICAgICBCSVQoMCkKPiA+ID4gQEAg
LTI4LDYgKzMwLDcgQEAKPiA+ID4gICNkZWZpbmUgTUlQSVRYX1BMTF9DT040ICAgICAgICAgICAg
ICAgIDB4MDAzYwo+ID4gPiAgI2RlZmluZSBSR19EU0lfUExMX0lCSUFTICAgICAgICAgICAgICAg
KDMgPDwgMTApCj4gPiA+Cj4gPiA+ICsjZGVmaW5lIE1JUElUWF9EMlBfUlRDT0RFICAgICAgMHgw
MTAwCj4gPiA+ICAjZGVmaW5lIE1JUElUWF9EMl9TV19DVExfRU4gICAgMHgwMTQ0Cj4gPiA+ICAj
ZGVmaW5lIE1JUElUWF9EMF9TV19DVExfRU4gICAgMHgwMjQ0Cj4gPiA+ICAjZGVmaW5lIE1JUElU
WF9DS19DS01PREVfRU4gICAgMHgwMzI4Cj4gPiA+IEBAIC0xMDgsNiArMTExLDU4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgY2xrX29wcyBtdGtfbWlwaV90eF9wbGxfb3BzID0gewo+ID4gPiAgICAg
ICAgIC5yZWNhbGNfcmF0ZSA9IG10a19taXBpX3R4X3BsbF9yZWNhbGNfcmF0ZSwKPiA+ID4gIH07
Cj4gPiA+Cj4gPiA+ICtzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9jb25maWdfY2FsaWJyYXRpb25f
ZGF0YShzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHgpCj4gPiA+ICt7Cj4gPiA+ICsgICAgICAg
dTMyICpidWY7Cj4gPiA+ICsgICAgICAgdTMyIHJ0X2NvZGVbNV07Cj4gPiA+ICsgICAgICAgaW50
IGksIGo7Cj4gPiA+ICsgICAgICAgc3RydWN0IG52bWVtX2NlbGwgKmNlbGw7Cj4gPiA+ICsgICAg
ICAgc3RydWN0IGRldmljZSAqZGV2ID0gbWlwaV90eC0+ZGV2Owo+ID4gPiArICAgICAgIHNpemVf
dCBsZW47Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBjZWxsID0gbnZtZW1fY2VsbF9nZXQoZGV2LCAi
Y2FsaWJyYXRpb24tZGF0YSIpOwo+ID4gPiArICAgICAgIGlmIChJU19FUlIoY2VsbCkpIHsKPiA+
ID4gKyAgICAgICAgICAgICAgIGRldl9pbmZvKGRldiwgIm52bWVtX2NlbGxfZ2V0IGZhaWxcbiIp
Owo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiArICAgICAgIH0KPiA+ID4gKwo+
ID4gPiArICAgICAgIGJ1ZiA9ICh1MzIgKiludm1lbV9jZWxsX3JlYWQoY2VsbCwgJmxlbik7Cj4g
PiA+ICsKPiA+ID4gKyAgICAgICBudm1lbV9jZWxsX3B1dChjZWxsKTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgIGlmIChJU19FUlIoYnVmKSkgewo+ID4gPiArICAgICAgICAgICAgICAgZGV2X2luZm8o
ZGV2LCAiY2FuJ3QgZ2V0IGRhdGFcbiIpOwo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+
ID4gPiArICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgIGlmIChsZW4gPCAzICogc2l6ZW9m
KHUzMikpIHsKPiA+ID4gKyAgICAgICAgICAgICAgIGRldl9pbmZvKGRldiwgImludmFsaWQgY2Fs
aWJyYXRpb24gZGF0YVxuIik7Cj4gPiA+ICsgICAgICAgICAgICAgICBrZnJlZShidWYpOwo+ID4g
PiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiArICAgICAgIH0KPiA+ID4gKwo+ID4gPiAr
ICAgICAgIHJ0X2NvZGVbMF0gPSAoKGJ1ZlswXSA+PiA2ICYgMHgxZikgPDwgNSkgfCAoYnVmWzBd
ID4+IDExICYgMHgxZik7Cj4gPiA+ICsgICAgICAgcnRfY29kZVsxXSA9ICgoYnVmWzFdID4+IDI3
ICYgMHgxZikgPDwgNSkgfCAoYnVmWzBdID4+IDEgJiAweDFmKTsKPiA+ID4gKyAgICAgICBydF9j
b2RlWzJdID0gKChidWZbMV0gPj4gMTcgJiAweDFmKSA8PCA1KSB8IChidWZbMV0gPj4gMjIgJiAw
eDFmKTsKPiA+ID4gKyAgICAgICBydF9jb2RlWzNdID0gKChidWZbMV0gPj4gNyAmIDB4MWYpIDw8
IDUpIHwgKGJ1ZlsxXSA+PiAxMiAmIDB4MWYpOwo+ID4gPiArICAgICAgIHJ0X2NvZGVbNF0gPSAo
KGJ1ZlsyXSA+PiAyNyAmIDB4MWYpIDw8IDUpIHwgKGJ1ZlsxXSA+PiAyICYgMHgxZik7Cj4gPgo+
ID4gV2h5IG5vdCBqdXN0IHNhdmUgcnRfY29kZSBpbiBudm1lbSBhbmQgeW91IGRvbid0IG5lZWQg
dG8gdHJhbnNsYXRlIGhlcmU/Cj4gPiBJZiB5b3UgbmVlZCB0byBkbyBzbywgcGxlYXNlIGFkZCBk
ZXNjcmlwdGlvbiBmb3IgdGhpcy4KPiA+Cj4gPiBSZWdhcmRzLAo+ID4gQ2h1bi1LdWFuZy4KPiA+
Cj4KPiBIaSBDaHVuLUt1YW5nLAo+Cj4gVGhlIGNhbGlicmF0aW9uIGRhdGEgaXMgZmxhc2hlZCBp
biByb20gd2hlbiB0aGUgSUMgRlQgdGVzdAo+IEFuZCB0aGUgZGF0YSBzdHJ1Y3QgY2FuJ3QgYmUg
c3RvcmVkIGFnYWluCgpPSywgaXQgbG9va3MgbGlrZSB0aGlzIHRyYW5zdGF0aW9uIGlzIG5lY2Vz
c2FyeS4KSWYgaXQncyBmaXhlZCwgSSB3b3VsZCBsaWtlIHRvIGdldCB0aGUgcnRfY29kZSB3aGVu
IHByb2JlIG9yIHNvbWV3aGVyZQppbml0aWFsaXphdGlvbi4KClJlZ2FyZHMsCkNodW4tS3Vhbmcu
Cgo+Cj4gQmVzdCBSZWdhcmRzCj4gSkl0YW8KPiA+Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBmb3Ig
KGkgPSAwOyBpIDwgNTsgaSsrKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBpZiAoKHJ0X2NvZGVb
aV0gJiAweDFmKSA9PSAwKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBydF9jb2RlW2ld
IHw9IDB4MTA7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIGlmICgocnRfY29kZVtpXSA+
PiA1ICYgMHgxZikgPT0gMCkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcnRfY29kZVtp
XSB8PSAweDEwIDw8IDU7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIGZvciAoaiA9IDA7
IGogPCAxMDsgaisrKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWlwaV90eF91
cGRhdGVfYml0cyhtaXBpX3R4LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IE1JUElUWF9EMlBfUlRDT0RFICogKGkgKyAxKSArIGogKiA0LAo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDEsIHJ0X2NvZGVbaV0gPj4gaiAmIDEpOwo+ID4gPiArICAgICAg
IH0KPiA+ID4gKwo+ID4gPiArICAgICAgIGtmcmVlKGJ1Zik7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+
ID4gIHN0YXRpYyB2b2lkIG10a19taXBpX3R4X3Bvd2VyX29uX3NpZ25hbChzdHJ1Y3QgcGh5ICpw
aHkpCj4gPiA+ICB7Cj4gPiA+ICAgICAgICAgc3RydWN0IG10a19taXBpX3R4ICptaXBpX3R4ID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPiA+IEBAIC0xMzAsNiArMTg1LDggQEAgc3RhdGljIHZv
aWQgbXRrX21pcGlfdHhfcG93ZXJfb25fc2lnbmFsKHN0cnVjdCBwaHkgKnBoeSkKPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSR19EU0lfSFNUWF9MRE9fUkVGX1NFTCwKPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAobWlwaV90eC0+bWlwaXR4X2RyaXZl
IC0gMzAwMCkgLyAyMDAgPDwgNik7Cj4gPiA+Cj4gPiA+ICsgICAgICAgbXRrX21pcGlfdHhfY29u
ZmlnX2NhbGlicmF0aW9uX2RhdGEobWlwaV90eCk7Cj4gPiA+ICsKPiA+ID4gICAgICAgICBtdGtf
bWlwaV90eF9zZXRfYml0cyhtaXBpX3R4LCBNSVBJVFhfQ0tfQ0tNT0RFX0VOLCBEU0lfQ0tfQ0tN
T0RFX0VOKTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4yMS4wCj4gPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IGRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKPiA+ID4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4g
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
