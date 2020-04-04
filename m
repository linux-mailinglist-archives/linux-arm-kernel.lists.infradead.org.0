Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855BA19E58C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njre0cQFoMQkM+Y92EhHcoXgnqcHlemIVUBkdyW4nzQ=; b=hIJjocTwCfHWd+
	CnZ7HmhVJMEccYyA1yuZOqPAlY9MhWbjDpOgAHfqOqeZAS38zIlYqE33BrFvmkWMOdMx7VEJA4Pwv
	wB1B4oavaTn0Dzsm7fXUrQf2B+/jxNWhbwAPAQsTf9ZKGEsuddzPNx7jBxPgP5DguHRdD/OXrR+Cj
	J20mR/Mop55qnHmZ2aq5SktDf3hW26nFEASVAIYJ/GTKj3vT920GanqJag08iWHBHMaQXVPjfr7Ni
	IxrsC0V/7Q9xX5rtJPHOsNmO34qXrBShzpMeC0Lc78ds+CDpd+UuU32vVbUCqqzDgweLpjU6YMDfj
	T+Yf3M1tRLvDgMnZR6Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjlC-0006Uo-Ap; Sat, 04 Apr 2020 14:26:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjl5-0006UN-5N; Sat, 04 Apr 2020 14:26:52 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 750ED2076E;
 Sat,  4 Apr 2020 14:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586010410;
 bh=egczPPyNSD8HotLbj+TT/i75T2plBn3TUuu2sN6zS3k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0gPEeJ+XZvMo8ohcfXsCnVrjc4mLfTuhLWVb9JY8KT6HBybsFj3GDEzTgReIqyPlg
 bGjgamuimp50/9wk1xP/X0Io6aaRIP9n6iFGdicL5C1fKPc+uLS9eq/YLs2Cv9w3XD
 xqlObbAW63zaaqihKH2BAx8FtT8qBv3lF0xWqQpA=
Received: by mail-ed1-f42.google.com with SMTP id c7so5184716edl.2;
 Sat, 04 Apr 2020 07:26:50 -0700 (PDT)
X-Gm-Message-State: AGi0PuZfJmS8cv/0ARvzic3UkGCoT0FTtHEoAdf1F4/kY9txDmRJxJIs
 mUemUv2ylVMvD+9tzTdLmDC9xuyu+/WJBi4X2w==
X-Google-Smtp-Source: APiQypLrvRpYNmxtUseQvy0si5lavrNAXp1+yfoZDCiBxoEPrLj81XDyy9SSoVjVq3f/kN0bZ2YxSrzoA/tO5bkDhYc=
X-Received: by 2002:a50:9f07:: with SMTP id b7mr12066158edf.148.1586010408816; 
 Sat, 04 Apr 2020 07:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-5-jitao.shi@mediatek.com>
In-Reply-To: <20200331082725.81048-5-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 4 Apr 2020 22:26:37 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8vpzfKeyxVxXOVC7mDpw+QGGOX+8fJaQg5WduvndEmoA@mail.gmail.com>
Message-ID: <CAAOTY_8vpzfKeyxVxXOVC7mDpw+QGGOX+8fJaQg5WduvndEmoA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm/mediatek: config mipitx impedance with
 calibration data
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_072651_245886_78E25985 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
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
tDPmnIgzMeaXpSDpgLHkuowg5LiL5Y2INDoyOOWvq+mBk++8mgo+Cj4gUmVhZCBjYWxpYnJhdGlv
biBkYXRhIGZyb20gbnZtZW0sIGFuZCBjb25maWcgbWlwaXR4IGltcGVkYW5jZSB3aXRoCj4gY2Fs
aWJyYXRpb24gZGF0YSB0byBtYWtlIHN1cmUgdGhlaXIgaW1wZWRhbmNlIGFyZSAxMDBvaG0uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKaXRhbyBTaGkgPGppdGFvLnNoaUBtZWRpYXRlay5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbXQ4MTgzX21pcGlfdHguYyB8IDU3ICsr
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMKPiBpbmRl
eCBlNGNjOTY3NzUwY2IuLjBmODdjZDNkMWQ3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMKPiBAQCAtNSw2ICs1LDggQEAKPiAgICovCj4K
PiAgI2luY2x1ZGUgIm10a19taXBpX3R4LmgiCj4gKyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25z
dW1lci5oPgo+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+Cj4gICNkZWZpbmUgTUlQSVRYX0xB
TkVfQ09OICAgICAgICAgICAgICAgIDB4MDAwYwo+ICAjZGVmaW5lIFJHX0RTSV9DUEhZX1QxRFJW
X0VOICAgICAgICAgICBCSVQoMCkKPiBAQCAtMjgsNiArMzAsNyBAQAo+ICAjZGVmaW5lIE1JUElU
WF9QTExfQ09ONCAgICAgICAgICAgICAgICAweDAwM2MKPiAgI2RlZmluZSBSR19EU0lfUExMX0lC
SUFTICAgICAgICAgICAgICAgKDMgPDwgMTApCj4KPiArI2RlZmluZSBNSVBJVFhfRDJQX1JUQ09E
RSAgICAgIDB4MDEwMAo+ICAjZGVmaW5lIE1JUElUWF9EMl9TV19DVExfRU4gICAgMHgwMTQ0Cj4g
ICNkZWZpbmUgTUlQSVRYX0QwX1NXX0NUTF9FTiAgICAweDAyNDQKPiAgI2RlZmluZSBNSVBJVFhf
Q0tfQ0tNT0RFX0VOICAgIDB4MDMyOAo+IEBAIC0xMDgsNiArMTExLDU4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgY2xrX29wcyBtdGtfbWlwaV90eF9wbGxfb3BzID0gewo+ICAgICAgICAgLnJlY2Fs
Y19yYXRlID0gbXRrX21pcGlfdHhfcGxsX3JlY2FsY19yYXRlLAo+ICB9Owo+Cj4gK3N0YXRpYyB2
b2lkIG10a19taXBpX3R4X2NvbmZpZ19jYWxpYnJhdGlvbl9kYXRhKHN0cnVjdCBtdGtfbWlwaV90
eCAqbWlwaV90eCkKPiArewo+ICsgICAgICAgdTMyICpidWY7Cj4gKyAgICAgICB1MzIgcnRfY29k
ZVs1XTsKPiArICAgICAgIGludCBpLCBqOwo+ICsgICAgICAgc3RydWN0IG52bWVtX2NlbGwgKmNl
bGw7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtaXBpX3R4LT5kZXY7Cj4gKyAgICAg
ICBzaXplX3QgbGVuOwo+ICsKPiArICAgICAgIGNlbGwgPSBudm1lbV9jZWxsX2dldChkZXYsICJj
YWxpYnJhdGlvbi1kYXRhIik7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGNlbGwpKSB7Cj4gKyAgICAg
ICAgICAgICAgIGRldl9pbmZvKGRldiwgIm52bWVtX2NlbGxfZ2V0IGZhaWxcbiIpOwo+ICsgICAg
ICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgYnVmID0gKHUzMiAq
KW52bWVtX2NlbGxfcmVhZChjZWxsLCAmbGVuKTsKPiArCj4gKyAgICAgICBudm1lbV9jZWxsX3B1
dChjZWxsKTsKPiArCj4gKyAgICAgICBpZiAoSVNfRVJSKGJ1ZikpIHsKPiArICAgICAgICAgICAg
ICAgZGV2X2luZm8oZGV2LCAiY2FuJ3QgZ2V0IGRhdGFcbiIpOwo+ICsgICAgICAgICAgICAgICBy
ZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaWYgKGxlbiA8IDMgKiBzaXplb2YodTMy
KSkgewo+ICsgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYsICJpbnZhbGlkIGNhbGlicmF0aW9u
IGRhdGFcbiIpOwo+ICsgICAgICAgICAgICAgICBrZnJlZShidWYpOwo+ICsgICAgICAgICAgICAg
ICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgcnRfY29kZVswXSA9ICgoYnVmWzBd
ID4+IDYgJiAweDFmKSA8PCA1KSB8IChidWZbMF0gPj4gMTEgJiAweDFmKTsKPiArICAgICAgIHJ0
X2NvZGVbMV0gPSAoKGJ1ZlsxXSA+PiAyNyAmIDB4MWYpIDw8IDUpIHwgKGJ1ZlswXSA+PiAxICYg
MHgxZik7Cj4gKyAgICAgICBydF9jb2RlWzJdID0gKChidWZbMV0gPj4gMTcgJiAweDFmKSA8PCA1
KSB8IChidWZbMV0gPj4gMjIgJiAweDFmKTsKPiArICAgICAgIHJ0X2NvZGVbM10gPSAoKGJ1Zlsx
XSA+PiA3ICYgMHgxZikgPDwgNSkgfCAoYnVmWzFdID4+IDEyICYgMHgxZik7Cj4gKyAgICAgICBy
dF9jb2RlWzRdID0gKChidWZbMl0gPj4gMjcgJiAweDFmKSA8PCA1KSB8IChidWZbMV0gPj4gMiAm
IDB4MWYpOwoKV2h5IG5vdCBqdXN0IHNhdmUgcnRfY29kZSBpbiBudm1lbSBhbmQgeW91IGRvbid0
IG5lZWQgdG8gdHJhbnNsYXRlIGhlcmU/CklmIHlvdSBuZWVkIHRvIGRvIHNvLCBwbGVhc2UgYWRk
IGRlc2NyaXB0aW9uIGZvciB0aGlzLgoKUmVnYXJkcywKQ2h1bi1LdWFuZy4KCgo+ICsKPiArICAg
ICAgIGZvciAoaSA9IDA7IGkgPCA1OyBpKyspIHsKPiArICAgICAgICAgICAgICAgaWYgKChydF9j
b2RlW2ldICYgMHgxZikgPT0gMCkKPiArICAgICAgICAgICAgICAgICAgICAgICBydF9jb2RlW2ld
IHw9IDB4MTA7Cj4gKwo+ICsgICAgICAgICAgICAgICBpZiAoKHJ0X2NvZGVbaV0gPj4gNSAmIDB4
MWYpID09IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcnRfY29kZVtpXSB8PSAweDEwIDw8
IDU7Cj4gKwo+ICsgICAgICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwgMTA7IGorKykKPiArICAg
ICAgICAgICAgICAgICAgICAgICBtdGtfbWlwaV90eF91cGRhdGVfYml0cyhtaXBpX3R4LAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlQSVRYX0QyUF9SVENPREUgKiAoaSArIDEp
ICsgaiAqIDQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLCBydF9jb2RlW2ld
ID4+IGogJiAxKTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBrZnJlZShidWYpOwo+ICt9Cj4g
Kwo+ICBzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9wb3dlcl9vbl9zaWduYWwoc3RydWN0IHBoeSAq
cGh5KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHggPSBwaHlfZ2V0
X2RydmRhdGEocGh5KTsKPiBAQCAtMTMwLDYgKzE4NSw4IEBAIHN0YXRpYyB2b2lkIG10a19taXBp
X3R4X3Bvd2VyX29uX3NpZ25hbChzdHJ1Y3QgcGh5ICpwaHkpCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBSR19EU0lfSFNUWF9MRE9fUkVGX1NFTCwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIChtaXBpX3R4LT5taXBpdHhfZHJpdmUgLSAzMDAwKSAvIDIwMCA8PCA2
KTsKPgo+ICsgICAgICAgbXRrX21pcGlfdHhfY29uZmlnX2NhbGlicmF0aW9uX2RhdGEobWlwaV90
eCk7Cj4gKwo+ICAgICAgICAgbXRrX21pcGlfdHhfc2V0X2JpdHMobWlwaV90eCwgTUlQSVRYX0NL
X0NLTU9ERV9FTiwgRFNJX0NLX0NLTU9ERV9FTik7Cj4gIH0KPgo+IC0tCj4gMi4yMS4wCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
