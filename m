Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007441E08FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSjeseve/+aPhdYHFREvNy+aW66voPBRam5VAz+S+dg=; b=lyRldWgRJMHF4V
	dpyUKOUUOI7Nh/YD00KUF3bKQFh/Wlp6/1qeYrJxJ0UXOCUvSnhG2lzNvjsigOgljEtTM4Vb4YeEo
	txWSwtLTHkC8Qh0ui/o69t3o1yqXEE/JvbopZEk4GMObJfLcFB7vnRCOgInc3cCLzOIHBFQmhJyuP
	Wx/hMCi/d4esEL57dGWfAsGHxohBA95zmn64VcQHh3sRB52zl27K3AxOdaTBE8NND9soj59GO7z8Q
	z9VNI3EIdQEnzvD8PvWQmvKwcR9e3Msc867kYtPyCOTcX5KDYdc7UAXI51EkJf8zW/f6H3i2GX7iU
	UDcO77tnwoh0I+rwoVRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8d7-0004Zw-RO; Mon, 25 May 2020 08:38:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8ch-0004Ol-V0; Mon, 25 May 2020 08:38:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so16366044wru.0;
 Mon, 25 May 2020 01:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UZc2CH7pYyilAZluOYrqPrd3fThr3CQF2GU6qOuf958=;
 b=j1x4s/d/vYUHXNDISjfenVtcRXyslFeM/mHGEeqNdM6uFniX82gFWwzpGlLV+trQ+D
 l9rtwW5h2Ocytd3xMPpKZikPdbU0qu+6rb4G8mxtx9r4uz3S4S6l2VNnw6e43ESSucxl
 seBdHzwqUdihswjhFFdag3R07LkpjoiRcYe30XUrL4ez/BkPXINC/om7pTikw/Ar+tEs
 VBU84Gn6ptax/TiJNbuT+kBIrjUHM3fOZg3q6QKIj1hW0taszwIv+j8L22tiTU9rpofv
 a3GOQ8d1x8DOd2JIn2+moc5ePLWsHCyab7XTji4ZZSnnOesoZ58mgRVrfLmMWqJuKcBH
 chLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=UZc2CH7pYyilAZluOYrqPrd3fThr3CQF2GU6qOuf958=;
 b=o8iIjIFDd8ZIeM4hfFSaJl/ZXGjvmoZcmpKM2dZAyEr4GLY5pI6kXrjh4LYLls0eSy
 sUktODWKgWLXu5Htt7CpJ+WZiQ8tCNE7DpStyP62YLEG5+JwzMaAOIQfJyDqmJcQRjF/
 pqmrfqkfWrtbEpnJgBzH2hf62iwgFvhymDToYmfZ1+fvgyVFIAcS9omdOU5jK2d8dFLD
 6p4er2ZsHgizVPnxZqQMnStFuKHqEsVaka8/BwCQ1ujnwYMqQIYYn5FVYEWqNeG3O5PO
 rO9SLnS9BBHU//Idfz0Q6FT/mQMEOfUOTzjDzo6I53eqqF4y0bxHgxhWLgOWn09qGYlJ
 8TXA==
X-Gm-Message-State: AOAM530PvRO2tiE3q6+kgESqm5SgRmIZwwgMxTtQng8flHISs/WHBc+Z
 vpq1uy7xMLf8Q0YdGF87w+nJyHBT
X-Google-Smtp-Source: ABdhPJyOwGjWDbZt0YJ3qKFaSDOEfMwhQWk2pD5R3+EVszk8SMSf8yYMdX6wwjpCZZNEgNLd9AGxaA==
X-Received: by 2002:a5d:4b88:: with SMTP id b8mr14340946wrt.341.1590395893420; 
 Mon, 25 May 2020 01:38:13 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id f2sm8898785wrg.17.2020.05.25.01.38.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 01:38:12 -0700 (PDT)
Subject: Re: [PATCH v5 10/13] soc: mediatek: cmdq: export finalize function
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-11-git-send-email-dennis-yc.hsieh@mediatek.com>
 <5d6b61b2-23c9-647f-fa22-73e779010bd8@gmail.com>
 <CAAOTY___HNcRPr8Jq-wNPO_G9pLVjf2D7ezbpPcGbXVNYy1_nA@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e487573a-2252-cd52-3a3d-c271f67fcb9a@gmail.com>
Date: Mon, 25 May 2020 10:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY___HNcRPr8Jq-wNPO_G9pLVjf2D7ezbpPcGbXVNYy1_nA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_013816_017532_0F1E1F1A 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
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
 Daniel Vetter <daniel@ffwll.ch>, wsd_upstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 HS Liao <hs.liao@mediatek.com>, Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Houlong Wei <houlong.wei@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyNS8wNS8yMDIwIDAyOjIzLCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+IEhpLCBNYXR0aGlh
czoKPiAKPiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPiDmlrwgMjAy
MOW5tDXmnIgxN+aXpSDpgLHml6Ug5LiK5Y2IMjoyMuWvq+mBk++8mgo+Pgo+Pgo+Pgo+PiBPbiAw
OC8wMy8yMDIwIDExOjUyLCBEZW5uaXMgWUMgSHNpZWggd3JvdGU6Cj4+PiBFeHBvcnQgZmluYWxp
emUgZnVuY3Rpb24gdG8gY2xpZW50IHdoaWNoIGhlbHBzIGFwcGVuZCBlb2MgYW5kIGp1bXAKPj4+
IGNvbW1hbmQgdG8gcGt0LiBMZXQgY2xpZW50IGRlY2lkZSBjYWxsIGZpbmFsaXplIG9yIG5vdC4K
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEZW5uaXMgWUMgSHNpZWggPGRlbm5pcy15Yy5oc2llaEBt
ZWRpYXRlay5jb20+Cj4+PiBSZXZpZXdlZC1ieTogQ0sgSHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4K
Pj4+IC0tLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYyB8IDEg
Kwo+Pj4gIGRyaXZlcnMvc29jL21lZGlhdGVrL210ay1jbWRxLWhlbHBlci5jICB8IDcgKystLS0t
LQo+Pj4gIGluY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL210ay1jbWRxLmggICB8IDggKysrKysr
KysKPj4+ICAzIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Ny
dGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYwo+Pj4gaW5kZXgg
MGRmY2QxNzg3ZTY1Li43ZGFhYWJjMjZlYjEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2NydGMuYwo+Pj4gQEAgLTQ5MCw2ICs0OTAsNyBAQCBzdGF0aWMgdm9pZCBt
dGtfZHJtX2NydGNfaHdfY29uZmlnKHN0cnVjdCBtdGtfZHJtX2NydGMgKm10a19jcnRjKQo+Pj4g
ICAgICAgICAgICAgICBjbWRxX3BrdF9jbGVhcl9ldmVudChjbWRxX2hhbmRsZSwgbXRrX2NydGMt
PmNtZHFfZXZlbnQpOwo+Pj4gICAgICAgICAgICAgICBjbWRxX3BrdF93ZmUoY21kcV9oYW5kbGUs
IG10a19jcnRjLT5jbWRxX2V2ZW50KTsKPj4+ICAgICAgICAgICAgICAgbXRrX2NydGNfZGRwX2Nv
bmZpZyhjcnRjLCBjbWRxX2hhbmRsZSk7Cj4+PiArICAgICAgICAgICAgIGNtZHFfcGt0X2ZpbmFs
aXplKGNtZHFfaGFuZGxlKTsKPj4+ICAgICAgICAgICAgICAgY21kcV9wa3RfZmx1c2hfYXN5bmMo
Y21kcV9oYW5kbGUsIGRkcF9jbWRxX2NiLCBjbWRxX2hhbmRsZSk7Cj4+PiAgICAgICB9Cj4+PiAg
I2VuZGlmCj4+Cj4+IFRoaXMgc2hvdWxkIGJlIGEgaW5kZXBlbmRlbnQgcGF0Y2guCj4+IE90aGVy
IHRoZW4gdGhhdCBwYXRjaCBsb29rcyBnb29kLgo+IAo+IEFwcGx5IG9ubHkgZHJtIHBhcnQgb3Ig
b25seSBjbWRxIGhlbHByIHBhcnQsIGl0IHdvdWxkIGJlIGFibm9ybWFsLgoKUmlnaHQgaXQgd291
bGQgYnJlYWsgRFJNIGRyaXZlciAoaWYgb25seSBhcHBsaWVkIHRvIGNtZHEpIG9yIGNvbXBpbGF0
aW9uIGlmIG9ubHkKYXBwbGllZCB0byBEUk0uCgo+IFNoYWxsIHdlIHNlcGVyYXRlIHRoaXMgcGF0
Y2g/CgpBZnRlciB0aGlua2luZyB0d2ljZSwgSSB0aGluayB3ZSBjYW4gbGVhdmUgaXQgYXMgaXQg
aXMuIElmIHlvdSBwcm92aWRlIHlvdXIKQWNrZWQtYnkgSSBjYW4gdGFrZSBpdCB0aG9ydWdoIG15
IHRyZWUsIGlmIHRoYXQncyBPSyBmb3IgeW91LgoKUmVnYXJkcywKTWF0dGhpYXMKCj4gT3Igc2Vw
ZXJhdGUgaXQgYnV0IG1ha2Ugc3VyZSB0aGVzZSB0d28gcGF0Y2hlcyBiZSBpbiB0aGUgc2FtZSB0
cmVlPwo+IAo+IFJlZ2FyZHMsCj4gQ2h1bi1LdWFuZy4KPiAKPj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3NvYy9tZWRpYXRlay9tdGstY21kcS1oZWxwZXIuYyBiL2RyaXZlcnMvc29jL21lZGlh
dGVrL210ay1jbWRxLWhlbHBlci5jCj4+PiBpbmRleCBhOWViYmFiYjc0MzkuLjU5YmMxMTY0YjQx
MSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1jbWRxLWhlbHBlci5j
Cj4+PiArKysgYi9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstY21kcS1oZWxwZXIuYwo+Pj4gQEAg
LTM3Miw3ICszNzIsNyBAQCBpbnQgY21kcV9wa3RfYXNzaWduKHN0cnVjdCBjbWRxX3BrdCAqcGt0
LCB1MTYgcmVnX2lkeCwgdTMyIHZhbHVlKQo+Pj4gIH0KPj4+ICBFWFBPUlRfU1lNQk9MKGNtZHFf
cGt0X2Fzc2lnbik7Cj4+Pgo+Pj4gLXN0YXRpYyBpbnQgY21kcV9wa3RfZmluYWxpemUoc3RydWN0
IGNtZHFfcGt0ICpwa3QpCj4+PiAraW50IGNtZHFfcGt0X2ZpbmFsaXplKHN0cnVjdCBjbWRxX3Br
dCAqcGt0KQo+Pj4gIHsKPj4+ICAgICAgIHN0cnVjdCBjbWRxX2luc3RydWN0aW9uIGluc3QgPSB7
IHswfSB9Owo+Pj4gICAgICAgaW50IGVycjsKPj4+IEBAIC0zOTIsNiArMzkyLDcgQEAgc3RhdGlj
IGludCBjbWRxX3BrdF9maW5hbGl6ZShzdHJ1Y3QgY21kcV9wa3QgKnBrdCkKPj4+Cj4+PiAgICAg
ICByZXR1cm4gZXJyOwo+Pj4gIH0KPj4+ICtFWFBPUlRfU1lNQk9MKGNtZHFfcGt0X2ZpbmFsaXpl
KTsKPj4+Cj4+PiAgc3RhdGljIHZvaWQgY21kcV9wa3RfZmx1c2hfYXN5bmNfY2Ioc3RydWN0IGNt
ZHFfY2JfZGF0YSBkYXRhKQo+Pj4gIHsKPj4+IEBAIC00MjYsMTAgKzQyNyw2IEBAIGludCBjbWRx
X3BrdF9mbHVzaF9hc3luYyhzdHJ1Y3QgY21kcV9wa3QgKnBrdCwgY21kcV9hc3luY19mbHVzaF9j
YiBjYiwKPj4+ICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3MgPSAwOwo+Pj4gICAgICAgc3RydWN0
IGNtZHFfY2xpZW50ICpjbGllbnQgPSAoc3RydWN0IGNtZHFfY2xpZW50ICopcGt0LT5jbDsKPj4+
Cj4+PiAtICAgICBlcnIgPSBjbWRxX3BrdF9maW5hbGl6ZShwa3QpOwo+Pj4gLSAgICAgaWYgKGVy
ciA8IDApCj4+PiAtICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4+PiAtCj4+PiAgICAgICBwa3Qt
PmNiLmNiID0gY2I7Cj4+PiAgICAgICBwa3QtPmNiLmRhdGEgPSBkYXRhOwo+Pj4gICAgICAgcGt0
LT5hc3luY19jYi5jYiA9IGNtZHFfcGt0X2ZsdXNoX2FzeW5jX2NiOwo+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL210ay1jbWRxLmggYi9pbmNsdWRlL2xpbnV4L3Nv
Yy9tZWRpYXRlay9tdGstY21kcS5oCj4+PiBpbmRleCBmZWMyOTJhYWM4M2MuLjk5ZTc3MTU1Zjk2
NyAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL210ay1jbWRxLmgK
Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvc29jL21lZGlhdGVrL210ay1jbWRxLmgKPj4+IEBAIC0y
MTMsNiArMjEzLDE0IEBAIGludCBjbWRxX3BrdF9wb2xsX21hc2soc3RydWN0IGNtZHFfcGt0ICpw
a3QsIHU4IHN1YnN5cywKPj4+ICAgKi8KPj4+ICBpbnQgY21kcV9wa3RfYXNzaWduKHN0cnVjdCBj
bWRxX3BrdCAqcGt0LCB1MTYgcmVnX2lkeCwgdTMyIHZhbHVlKTsKPj4+Cj4+PiArLyoqCj4+PiAr
ICogY21kcV9wa3RfZmluYWxpemUoKSAtIEFwcGVuZCBFT0MgYW5kIGp1bXAgY29tbWFuZCB0byBw
a3QuCj4+PiArICogQHBrdDogICAgIHRoZSBDTURRIHBhY2tldAo+Pj4gKyAqCj4+PiArICogUmV0
dXJuOiAwIGZvciBzdWNjZXNzOyBlbHNlIHRoZSBlcnJvciBjb2RlIGlzIHJldHVybmVkCj4+PiAr
ICovCj4+PiAraW50IGNtZHFfcGt0X2ZpbmFsaXplKHN0cnVjdCBjbWRxX3BrdCAqcGt0KTsKPj4+
ICsKPj4+ICAvKioKPj4+ICAgKiBjbWRxX3BrdF9mbHVzaF9hc3luYygpIC0gdHJpZ2dlciBDTURR
IHRvIGFzeW5jaHJvbm91c2x5IGV4ZWN1dGUgdGhlIENNRFEKPj4+ICAgKiAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGFja2V0IGFuZCBjYWxsIGJhY2sgYXQgdGhlIGVuZCBvZiBkb25lIHBhY2tl
dAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
