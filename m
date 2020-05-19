Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B0A1D8C29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ugob7fe17PKn03zbmBQsS3INb2DspYV7DlIusu9S3/8=; b=LY4Ssp2X/xBdIS
	TgTGG/ZrTPdTdBH1fKGH+yh6hH+dQtB3A1Y4+GF/mJ2fKHCzK9T9mw9NBos1kX3Nr/C0AYZnpokmC
	eiY/gnGQrMoLffmZKMy/KPtfGy39WaER5H/cGzBWlbmkFUvhbpRvXr9pGsxB4oHXiJG8DimpQ2JeL
	c276U0b+Oc6e4oqO8nhV2h9yYNPcBP3PitmOOKanwjLiZxNawC2l2fMoOJopSRtrZD3jcwaEQTJAI
	IAYYlAjq9r85FlmnpRKWuJ+78ToedydmInUrJ4JdxVMpUeICbAL5pdT3ZLu+HhDA/YqdLhnxJUXHS
	LBssG/eyudu8QarY1joQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaq1U-0005kV-GR; Tue, 19 May 2020 00:22:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaq1G-0005jj-Vd; Tue, 19 May 2020 00:22:08 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E0AB20853;
 Tue, 19 May 2020 00:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589847725;
 bh=g14ia4R/MlJCgjjI1CPZovenYiTPpOxMurU5Q6xAhV8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RMnWWKEDEOa7d4MqZSvd+VL2WtFCoUJS3sibERn35zxbVXBG18iqjeodCHyp1j17/
 B/8FIlWQOzc89/UVJ6xuIQLbwvuK+9W9Fl975qvNGbHVRJ4QPITXzbIm2nVZp6gOVI
 g/qGiq1JTy9m+K2qolNQ6u6LvYN83VVqzccxXyZU=
Received: by mail-ed1-f46.google.com with SMTP id bs4so10117546edb.6;
 Mon, 18 May 2020 17:22:05 -0700 (PDT)
X-Gm-Message-State: AOAM533zuS54yC8zi2ncbLRTMGZ+RjANM7YVhZxcI9apPGE3zRZA/14l
 JeyhOk3n3i4KgPjEOT7Y1fHdiBpWGZShQBcyhQ==
X-Google-Smtp-Source: ABdhPJx+skw/MeJ3+/JBBRrVmsUNMgkIciffFMGkZ9YBxY4v3ANZ8nRmbvWJakhk9m+fEqIUGB7FPOsGePlUN7VVuE0=
X-Received: by 2002:a50:fd0c:: with SMTP id i12mr4299711eds.48.1589847723893; 
 Mon, 18 May 2020 17:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
 <CAAOTY_9-_fy4oGTBLPsXkWJ2ihL7k2hzfwiTorit+YkNi_SeMw@mail.gmail.com>
 <d95bf802-4a9d-9791-cb0b-ba804d649045@gmail.com>
In-Reply-To: <d95bf802-4a9d-9791-cb0b-ba804d649045@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 19 May 2020 08:21:50 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9-LhAnDXNFVipNUDBvBy43JbL2NVVSBnMwRJUw+gjADw@mail.gmail.com>
Message-ID: <CAAOTY_9-LhAnDXNFVipNUDBvBy43JbL2NVVSBnMwRJUw+gjADw@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk/soc: mediatek: mt8183: Bind clock driver from
 platform device
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_172207_066781_CDA182DE 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>, matthias.bgg@kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 mtk01761 <wendell.lin@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE1hdHRoaWFzOgoKTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4g
5pa8IDIwMjDlubQ15pyIMTjml6Ug6YCx5LiAIOS4i+WNiDExOjU35a+r6YGT77yaCj4KPgo+Cj4g
T24gMTgvMDUvMjAyMCAxNzozMCwgQ2h1bi1LdWFuZyBIdSB3cm90ZToKPiA+IEhpLCBNYXR0aGlh
czoKPiA+Cj4gPiA8bWF0dGhpYXMuYmdnQGtlcm5lbC5vcmc+IOaWvCAyMDIw5bm0NeaciDE45pel
IOmAseS4gCDkuIvljYg3OjMy5a+r6YGT77yaCj4gPj4KPiA+PiBGcm9tOiBNYXR0aGlhcyBCcnVn
Z2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+ID4+Cj4gPj4gVGhlIG1tc3lzIGRyaXZlciBp
cyBub3cgdGhlIHRvcCBsZXZlbCBlbnRyeSBwb2ludCBmb3IgdGhlIG11bHRpbWVkaWEKPiA+PiBz
eXN0ZW0gKG1tc3lzKSwgd2UgYmluZCB0aGUgY2xvY2sgZHJpdmVyIGJ5IGNyZWF0aW5nIGEgcGxh
dGZvcm0gZGV2aWNlLgo+ID4+IFdlIGFsc28gYmluZCB0aGUgTWVkaWFUZWsgRFJNIGRyaXZlciB3
aGljaCBpcyBub3QgeWV0IGltcGxlbWVudCBhbmQKPiA+PiB0aGVyZWZvciB3aWxsIGVycnJvciBv
dXQgZm9yIG5vdy4KPiA+Cj4gPiBZb3UgbWF5IG5lZWQgdG8gbGV0IENPTkZJR19NVEtfTU1TWVMg
ZGVwZW5kcyBvbgo+ID4gQ09ORklHX0NPTU1PTl9DTEtfTVQ4MTczX01NU1lTIHx8IENPTkZJR19D
T01NT05fQ0xLX01UODE4M19NTVNZUwo+ID4KPgo+IFRoYXQgd2lsbCBiZSBmaXhlZCBieToKPiBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExNDY5NTIxLwo+Cj4gT3RoZXJ3aXNl
IHRoaXMgd29uJ3Qgc2NhbGUgYXMgd2Ugd291bGQgbmVlZCB0byBhZGQgdGhlIFNvQ3MgdXNpbmcg
dGhlIG10ay1tbXN5cwo+IGRyaXZlciBhbmQgdGhpcyB3aWxsIGJlIGEgbG90IGlmIG5vdCBhbGwu
CgpJIGZvcmdvdCB0aGF0IHBhdGNoLCBzbyBmb3IgdGhpcyBwYXRjaCwKClJldmlld2VkLWJ5OiBD
aHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KCj4KPiBSZWdhcmRzLAo+IE1h
dHRoaWFzCj4KPiA+IFJlZ2FyZHMsCj4gPiBDaHVuLUt1YW5nLgo+ID4KPiA+Pgo+ID4+IFNpZ25l
ZC1vZmYtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gPj4g
LS0tCj4gPj4KPiA+PiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jIHwgOSAr
Ky0tLS0tLS0KPiA+PiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMgICAgIHwgOCAr
KysrKysrKwo+ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10
ODE4My1tbS5jIGIvZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jCj4gPj4gaW5k
ZXggNzIwYzY5NmI1MDZkLi45ZDYwZTA5NjE5YzEgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9j
bGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jCj4gPj4gKysrIGIvZHJpdmVycy9jbGsvbWVkaWF0
ZWsvY2xrLW10ODE4My1tbS5jCj4gPj4gQEAgLTg0LDggKzg0LDkgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBtdGtfZ2F0ZSBtbV9jbGtzW10gPSB7Cj4gPj4KPiA+PiAgc3RhdGljIGludCBjbGtfbXQ4
MTgzX21tX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gIHsKPiA+PiAr
ICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPj4gKyAgICAgICBzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPnBhcmVudC0+b2Zfbm9kZTsKPiA+PiAgICAgICAg
IHN0cnVjdCBjbGtfb25lY2VsbF9kYXRhICpjbGtfZGF0YTsKPiA+PiAtICAgICAgIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqbm9kZSA9IHBkZXYtPmRldi5vZl9ub2RlOwo+ID4+Cj4gPj4gICAgICAgICBj
bGtfZGF0YSA9IG10a19hbGxvY19jbGtfZGF0YShDTEtfTU1fTlJfQ0xLKTsKPiA+Pgo+ID4+IEBA
IC05NSwxNiArOTYsMTAgQEAgc3RhdGljIGludCBjbGtfbXQ4MTgzX21tX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gICAgICAgICByZXR1cm4gb2ZfY2xrX2FkZF9wcm92
aWRlcihub2RlLCBvZl9jbGtfc3JjX29uZWNlbGxfZ2V0LCBjbGtfZGF0YSk7Cj4gPj4gIH0KPiA+
Pgo+ID4+IC1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBvZl9tYXRjaF9jbGtfbXQ4
MTgzX21tW10gPSB7Cj4gPj4gLSAgICAgICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4
My1tbXN5cyIsIH0sCj4gPj4gLSAgICAgICB7fQo+ID4+IC19Owo+ID4+IC0KPiA+PiAgc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgY2xrX210ODE4M19tbV9kcnYgPSB7Cj4gPj4gICAgICAg
ICAucHJvYmUgPSBjbGtfbXQ4MTgzX21tX3Byb2JlLAo+ID4+ICAgICAgICAgLmRyaXZlciA9IHsK
PiA+PiAgICAgICAgICAgICAgICAgLm5hbWUgPSAiY2xrLW10ODE4My1tbSIsCj4gPj4gLSAgICAg
ICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX2Nsa19tdDgxODNfbW0sCj4gPj4g
ICAgICAgICB9LAo+ID4+ICB9Owo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL21l
ZGlhdGVrL210ay1tbXN5cy5jIGIvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMKPiA+
PiBpbmRleCBjYWNhZmUyM2M4MjMuLjc4M2MzZGQwMDhiMiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlh
dGVrL210ay1tbXN5cy5jCj4gPj4gQEAgLTkyLDYgKzkyLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10ODE3M19tbXN5c19kcml2ZXJfZGF0YSA9IHsKPiA+
PiAgICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxNzMtbW0iLAo+ID4+ICB9Owo+ID4+Cj4g
Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10ODE4M19tbXN5
c19kcml2ZXJfZGF0YSA9IHsKPiA+PiArICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxODMt
bW0iLAo+ID4+ICt9Owo+ID4+ICsKPiA+PiAgc3RhdGljIHVuc2lnbmVkIGludCBtdGtfbW1zeXNf
ZGRwX21vdXRfZW4oZW51bSBtdGtfZGRwX2NvbXBfaWQgY3VyLAo+ID4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gbXRrX2RkcF9jb21wX2lkIG5leHQsCj4g
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50
ICphZGRyKQo+ID4+IEBAIC0zMzksNiArMzQzLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIG9mX21hdGNoX210a19tbXN5c1tdID0gewo+ID4+ICAgICAgICAgICAgICAgICAu
Y29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxNzMtbW1zeXMiLAo+ID4+ICAgICAgICAgICAgICAg
ICAuZGF0YSA9ICZtdDgxNzNfbW1zeXNfZHJpdmVyX2RhdGEsCj4gPj4gICAgICAgICB9LAo+ID4+
ICsgICAgICAgewo+ID4+ICsgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxt
dDgxODMtbW1zeXMiLAo+ID4+ICsgICAgICAgICAgICAgICAuZGF0YSA9ICZtdDgxODNfbW1zeXNf
ZHJpdmVyX2RhdGEsCj4gPj4gKyAgICAgICB9LAo+ID4+ICAgICAgICAgeyB9Cj4gPj4gIH07Cj4g
Pj4KPiA+PiAtLQo+ID4+IDIuMjYuMgo+ID4+Cj4gPj4KPiA+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdAo+ID4+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+PiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
