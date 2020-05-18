Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6613C1D7D99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prL0LAQorYJnh2eZTyJO8MWRHCyKIJjECWy7ZloRz60=; b=XVe/3sXZ3W5WWa
	kUw5H3J5BJxkcV3jnbnUynD1LaYGgkv2UuejK6elImWaye6NpVvTNXUhuWcuVVDn0zZc7GHIkEGWY
	b3jwa6zAPuGHGsuVCw1AtJ9hOdk1PVD3Yi5tvpJ5oUuMZ3tghcHZVbWNTI9VMvp2sQoB/ovoCsDt1
	SAE6dOdvTGqNRgiz3Z8KHbxaEWNgYhxajCfkBjjakdV9lhIgM3vYNxDQt9wzjIKs5bEX4bnzpufA6
	rRQ3R22Q3MES30mnqc3IjcvMCPQ8VD156yJxxUAPmiRtXeG6PiShgZJW85TjytjTgbNQjaTO9G1Uw
	JfAWiDDBgyfzvNNQEDdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai97-0001M3-Eh; Mon, 18 May 2020 15:57:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai8v-0001LT-Su; Mon, 18 May 2020 15:57:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id z4so39712wmi.2;
 Mon, 18 May 2020 08:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gh+W4KrBfrTWIjHTbRc07vJVQnhS7W3gVWqnNaNXtV8=;
 b=OFWTSL+bQqslrj47jSH0x9+iGBwndVSxp5+ECtCqHMh/o0Z6n2AkUU0rMO0VGla6Z1
 Ip0eePJ9i5A+36scgXyb2MoFjSx4jRKapgjclom/oMoEz8uCz+EJ2Rr9aopy7NnoNwVe
 MlAJmJYiGxa6QDxftsQqUsBW3nbQ+/vHkaLyxMyz9R7C6KRJrEfVqXgyPGTVPPWNsjlM
 g8kxY7qdrFXnlATNe2BuoIi6KIgz20oVNfyRsnqnf3b76uBpvAVsRK1xPQBpzqBTg/5W
 jYhooJES8DQj4vuJqFcbicIx6hLOEmmE1TYBOVtFMngoMx87w8LMkbRhXkv5WwL00MOS
 VkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=gh+W4KrBfrTWIjHTbRc07vJVQnhS7W3gVWqnNaNXtV8=;
 b=OdmmuF7Rc09mBEJ+mlfyfYX7rm/vC8BlbJzGAgSaMQS0MkDCtjdWTC1kbldXer+cN4
 EM5bt0Uqq+0g87w8mFqaQAHbI+mWsLhgsLh1OT97Ksd+2ciqGl2ormsCSccBd7bBkWWV
 rGZw3xQe+51I841LBc7imrVw2BNLnkBUJy+8uoXWr8kw7Z6Tt7S/MA/k4EjAx1yWyPl5
 fHbZAHVo8dxnBdWLZrh3UXAHJNi33jvf1T3v42GhpX2v/oIOuCQCcFfa4QqYhjBFYFUg
 liAWx+tytEGzUtA9dguoWm+5zwWhIGalIfcdR10VvmYSL+sgPXdZ5Xy/IupyAoBEB7zs
 /PtA==
X-Gm-Message-State: AOAM5302xYMmToju7zdc9WC+0SoOOycAsE8YJWW69gx4TdZt3qKEHO9/
 T9+WEZRwdhWloGGh/eQRTWk=
X-Google-Smtp-Source: ABdhPJy7fLeUKEGfrbDcTHMLEyRn6Q6jMdSZaK1jBJiOWdyUHiE/jIE+Ud0PC5K/aipfdBIfiZ7G7w==
X-Received: by 2002:a1c:6344:: with SMTP id x65mr37795wmb.51.1589817448125;
 Mon, 18 May 2020 08:57:28 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id v131sm17999920wmb.27.2020.05.18.08.57.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 08:57:27 -0700 (PDT)
Subject: Re: [PATCH 1/4] clk/soc: mediatek: mt8183: Bind clock driver from
 platform device
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, matthias.bgg@kernel.org
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
 <CAAOTY_9-_fy4oGTBLPsXkWJ2ihL7k2hzfwiTorit+YkNi_SeMw@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d95bf802-4a9d-9791-cb0b-ba804d649045@gmail.com>
Date: Mon, 18 May 2020 17:57:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY_9-_fy4oGTBLPsXkWJ2ihL7k2hzfwiTorit+YkNi_SeMw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085729_932637_91A4DAF6 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 mtk01761 <wendell.lin@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxOC8wNS8yMDIwIDE3OjMwLCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+IEhpLCBNYXR0aGlh
czoKPiAKPiA8bWF0dGhpYXMuYmdnQGtlcm5lbC5vcmc+IOaWvCAyMDIw5bm0NeaciDE45pelIOmA
seS4gCDkuIvljYg3OjMy5a+r6YGT77yaCj4+Cj4+IEZyb206IE1hdHRoaWFzIEJydWdnZXIgPG1h
dHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4+Cj4+IFRoZSBtbXN5cyBkcml2ZXIgaXMgbm93IHRoZSB0
b3AgbGV2ZWwgZW50cnkgcG9pbnQgZm9yIHRoZSBtdWx0aW1lZGlhCj4+IHN5c3RlbSAobW1zeXMp
LCB3ZSBiaW5kIHRoZSBjbG9jayBkcml2ZXIgYnkgY3JlYXRpbmcgYSBwbGF0Zm9ybSBkZXZpY2Uu
Cj4+IFdlIGFsc28gYmluZCB0aGUgTWVkaWFUZWsgRFJNIGRyaXZlciB3aGljaCBpcyBub3QgeWV0
IGltcGxlbWVudCBhbmQKPj4gdGhlcmVmb3Igd2lsbCBlcnJyb3Igb3V0IGZvciBub3cuCj4gCj4g
WW91IG1heSBuZWVkIHRvIGxldCBDT05GSUdfTVRLX01NU1lTIGRlcGVuZHMgb24KPiBDT05GSUdf
Q09NTU9OX0NMS19NVDgxNzNfTU1TWVMgfHwgQ09ORklHX0NPTU1PTl9DTEtfTVQ4MTgzX01NU1lT
Cj4gCgpUaGF0IHdpbGwgYmUgZml4ZWQgYnk6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTE0Njk1MjEvCgpPdGhlcndpc2UgdGhpcyB3b24ndCBzY2FsZSBhcyB3ZSB3b3VsZCBu
ZWVkIHRvIGFkZCB0aGUgU29DcyB1c2luZyB0aGUgbXRrLW1tc3lzCmRyaXZlciBhbmQgdGhpcyB3
aWxsIGJlIGEgbG90IGlmIG5vdCBhbGwuCgpSZWdhcmRzLApNYXR0aGlhcwoKPiBSZWdhcmRzLAo+
IENodW4tS3VhbmcuCj4gCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1h
dHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4+IC0tLQo+Pgo+PiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsv
Y2xrLW10ODE4My1tbS5jIHwgOSArKy0tLS0tLS0KPj4gIGRyaXZlcnMvc29jL21lZGlhdGVrL210
ay1tbXN5cy5jICAgICB8IDggKysrKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21l
ZGlhdGVrL2Nsay1tdDgxODMtbW0uYyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDgxODMt
bW0uYwo+PiBpbmRleCA3MjBjNjk2YjUwNmQuLjlkNjBlMDk2MTljMSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jCj4+ICsrKyBiL2RyaXZlcnMvY2xr
L21lZGlhdGVrL2Nsay1tdDgxODMtbW0uYwo+PiBAQCAtODQsOCArODQsOSBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IG10a19nYXRlIG1tX2Nsa3NbXSA9IHsKPj4KPj4gIHN0YXRpYyBpbnQgY2xrX210
ODE4M19tbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgewo+PiArICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+ICsgICAgICAgc3RydWN0IGRl
dmljZV9ub2RlICpub2RlID0gZGV2LT5wYXJlbnQtPm9mX25vZGU7Cj4+ICAgICAgICAgc3RydWN0
IGNsa19vbmVjZWxsX2RhdGEgKmNsa19kYXRhOwo+PiAtICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbm9kZSA9IHBkZXYtPmRldi5vZl9ub2RlOwo+Pgo+PiAgICAgICAgIGNsa19kYXRhID0gbXRr
X2FsbG9jX2Nsa19kYXRhKENMS19NTV9OUl9DTEspOwo+Pgo+PiBAQCAtOTUsMTYgKzk2LDEwIEBA
IHN0YXRpYyBpbnQgY2xrX210ODE4M19tbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+PiAgICAgICAgIHJldHVybiBvZl9jbGtfYWRkX3Byb3ZpZGVyKG5vZGUsIG9mX2Nsa19z
cmNfb25lY2VsbF9nZXQsIGNsa19kYXRhKTsKPj4gIH0KPj4KPj4gLXN0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIG9mX21hdGNoX2Nsa19tdDgxODNfbW1bXSA9IHsKPj4gLSAgICAgICB7
IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1tbXN5cyIsIH0sCj4+IC0gICAgICAge30K
Pj4gLX07Cj4+IC0KPj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGNsa19tdDgxODNf
bW1fZHJ2ID0gewo+PiAgICAgICAgIC5wcm9iZSA9IGNsa19tdDgxODNfbW1fcHJvYmUsCj4+ICAg
ICAgICAgLmRyaXZlciA9IHsKPj4gICAgICAgICAgICAgICAgIC5uYW1lID0gImNsay1tdDgxODMt
bW0iLAo+PiAtICAgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfY2xrX210
ODE4M19tbSwKPj4gICAgICAgICB9LAo+PiAgfTsKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c29jL21lZGlhdGVrL210ay1tbXN5cy5jIGIvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lz
LmMKPj4gaW5kZXggY2FjYWZlMjNjODIzLi43ODNjM2RkMDA4YjIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jCj4+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlh
dGVrL210ay1tbXN5cy5jCj4+IEBAIC05Miw2ICs5MiwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IG10a19tbXN5c19kcml2ZXJfZGF0YSBtdDgxNzNfbW1zeXNfZHJpdmVyX2RhdGEgPSB7Cj4+ICAg
ICAgICAgLmNsa19kcml2ZXIgPSAiY2xrLW10ODE3My1tbSIsCj4+ICB9Owo+Pgo+PiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBtdGtfbW1zeXNfZHJpdmVyX2RhdGEgbXQ4MTgzX21tc3lzX2RyaXZlcl9k
YXRhID0gewo+PiArICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxODMtbW0iLAo+PiArfTsK
Pj4gKwo+PiAgc3RhdGljIHVuc2lnbmVkIGludCBtdGtfbW1zeXNfZGRwX21vdXRfZW4oZW51bSBt
dGtfZGRwX2NvbXBfaWQgY3VyLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBlbnVtIG10a19kZHBfY29tcF9pZCBuZXh0LAo+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKmFkZHIpCj4+IEBAIC0zMzksNiAr
MzQzLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX21hdGNoX210a19t
bXN5c1tdID0gewo+PiAgICAgICAgICAgICAgICAgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4
MTczLW1tc3lzIiwKPj4gICAgICAgICAgICAgICAgIC5kYXRhID0gJm10ODE3M19tbXN5c19kcml2
ZXJfZGF0YSwKPj4gICAgICAgICB9LAo+PiArICAgICAgIHsKPj4gKyAgICAgICAgICAgICAgIC5j
b21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1tbXN5cyIsCj4+ICsgICAgICAgICAgICAgICAu
ZGF0YSA9ICZtdDgxODNfbW1zeXNfZHJpdmVyX2RhdGEsCj4+ICsgICAgICAgfSwKPj4gICAgICAg
ICB7IH0KPj4gIH07Cj4+Cj4+IC0tCj4+IDIuMjYuMgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1tZWRpYXRlayBtYWlsaW5n
IGxpc3QKPj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
