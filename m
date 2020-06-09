Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE691F3A4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCH870lasX+Eiz98J2Kt8prRqtYzXBUod2dXOubHV2E=; b=bpHk60vs6Y5DfR
	Bd1RVobq4EP9mkmUW6XvOLsThryj7bC1KDzNM4g2zLeF4xl4UxIyz4A+xaC8FRagD37KIa+D+rC21
	4oGd3/8Hc3uSqKSGOg644kBZfG0ZzPaK7vJPfgkQYAdw4xleJDos8AaC40g/r6qU2Pm+7Gk9jIceq
	rJJLn2HRsjRYIu8APm/cB0AayTE6SpX+JZxWu5VxF8xcPJu8DwgKOSUueDvSnO2FkjAWCunkAQVLk
	hV9iW/ZcAOqRUu/mHTofEaeYU4hTp+1lxmgReLyy6XHW4239/4Z4qDn2PsZULo44QQic8NMdz1wTB
	4NRGNdKQYysDyqzKrFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicwk-0007fw-9k; Tue, 09 Jun 2020 12:01:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicwV-0007eX-HZ; Tue, 09 Jun 2020 12:01:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so21021903wro.1;
 Tue, 09 Jun 2020 05:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MVpJuiC3RrQ8+gucd3VH4JYrNdHZIlwvK5NMkSBKU38=;
 b=TpD8O7gUFAvhy+he7qzcMct+X/lUjtSBra1AuvbHSyB2Bj9VrJtIpymMQ8iUuyEvK/
 iMXUqDDux4OqDsuw3ujulq+/9Tlbz5QwBOfbAzz9ZE4r+hc2D8pJuDV0nWXeDmCBNZWI
 cfUSwULZxeZA+wf5sDXPSa3iBtuVhjaWoq25U2+Hgv6t4wbDEug/lZtLJ+cJ0klwQ4jn
 7tbMb00y4G7tCjaVBhwZCdagEeYbZOGV84uZ+ga51VuWVTUn9XduqJD10/2AY34rd9UQ
 xgbT2dSXyT0hWoGbesZ/GfTUOf0aiohT13M5NP5sVcHSFl6yPxb1snQDQYpLIo5/ANw2
 n1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=MVpJuiC3RrQ8+gucd3VH4JYrNdHZIlwvK5NMkSBKU38=;
 b=ER3PD+HZYu05DW4BlR3Ash+CEwnbrlMwb33wmWxl9XfAc04I1iEr5Y7KBGXyVf2KCe
 wBsVhouoG8VlVZ8cGt10vfVbONMvImU+yhQWVJ9DgDVErmz/wpRUU2a102nCrnGkkReg
 jXR1yUCMkvofGxqxXUCGOM40ZzXj0+k/HqWNUM1LpocaZnef/xnEBzEk9gsK3uRPAwlN
 GR5/vp7/yZzegiw7H9fZxde243XtWl6P2RORlXG9JKAAm74psMeo47teVDs365BjthXg
 p4LcDtQl3H79D5Z5KZrzClZYb/JFlf/kLKBExflhRuXexnn0up5tyhEn7VOc56VMOjMq
 CUvw==
X-Gm-Message-State: AOAM531J4Lw3htiZiPA0GB4FaZSTy4XY8ITDUgs/yWV7Ve6xYOhTn7k4
 gvSB4dI99ZFx89yuUh29/Vp3DytH
X-Google-Smtp-Source: ABdhPJw5/hDu5+yYjIOCqDyz4Lgn0ZoVAYH1K0NGtBn+kisYmaeD9CAs1jjK9VgdvR21EVn5i9BaEw==
X-Received: by 2002:adf:a491:: with SMTP id g17mr4311121wrb.132.1591704081382; 
 Tue, 09 Jun 2020 05:01:21 -0700 (PDT)
Received: from ziggy.stardust ([213.195.114.138])
 by smtp.gmail.com with ESMTPSA id l1sm3443763wrb.31.2020.06.09.05.01.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 05:01:20 -0700 (PDT)
Subject: Re: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add
 driver name
To: Gene Chen <gene.chen.richtek@gmail.com>, Lee Jones <lee.jones@linaro.org>
References: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200608192829.GG4106@dell>
 <CAE+NS36mxw-FpQhJ4qV=_+r2CXVi_PaGaZo2m3jXAGFuOO252Q@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1db40ad0-faf4-2a4a-8514-fed59d5053f7@gmail.com>
Date: Tue, 9 Jun 2020 14:01:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAE+NS36mxw-FpQhJ4qV=_+r2CXVi_PaGaZo2m3jXAGFuOO252Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_050123_603716_AEA4C72F 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Gene Chen <gene_chen@richtek.com>, linux-kernel@vger.kernel.org,
 cy_huang@richtek.com, linux-mediatek@lists.infradead.org,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8wNi8yMDIwIDEzOjQzLCBHZW5lIENoZW4gd3JvdGU6Cj4gTGVlIEpvbmVzIDxsZWUu
am9uZXNAbGluYXJvLm9yZz4g5pa8IDIwMjDlubQ25pyIOeaXpSDpgLHkuowg5LiK5Y2IMzoyOOWv
q+mBk++8mgo+Pgo+PiBPbiBNb24sIDA4IEp1biAyMDIwLCBHZW5lIENoZW4gd3JvdGU6Cj4+Cj4+
PiBGcm9tOiBHZW5lIENoZW4gPGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPj4+Cj4+PiBhY2NpZGVu
dGFsbHkgcmVtb3ZlIGRyaXZlciBuYW1lIHdoZW4KPj4+IHJlcGxhY2UgcHJvYmUgYnkgcHJvYmVf
bmV3IGluIGFkZCBtdDYzNjAgbWZkIGRyaXZlciBwYXRjaCB2NAo+Pj4KPj4+IFsgIDEyMS4yNDMw
MTJdIEVBWDogYzJhOGJjNjQgRUJYOiAwMDAwMDAwMCBFQ1g6IDAwMDAwMDAwIEVEWDogMDAwMDAw
MDAKPj4+IFsgIDEyMS4yNDMwMTJdIEVTSTogYzJhOGJjNzkgRURJOiAwMDAwMDAwMCBFQlA6IGU1
NGJkZWE4IEVTUDogZTU0YmRlYTAKPj4+IFsgIDEyMS4yNDMwMTJdIERTOiAwMDdiIEVTOiAwMDdi
IEZTOiAwMDAwIEdTOiAwMDAwIFNTOiAwMDY4IEVGTEFHUzogMDAwMTAyODYKPj4+IFsgIDEyMS4y
NDMwMTJdIENSMDogODAwNTAwMzMgQ1IyOiAwMDAwMDAwMCBDUjM6IDAyZWMzMDAwIENSNDogMDAw
MDA2YjAKPj4+IFsgIDEyMS4yNDMwMTJdIENhbGwgVHJhY2U6Cj4+PiBbICAxMjEuMjQzMDEyXSAg
a3NldF9maW5kX29iaisweDNkLzB4YzAKPj4+IFsgIDEyMS4yNDMwMTJdICBkcml2ZXJfZmluZCsw
eDE2LzB4NDAKPj4+IFsgIDEyMS4yNDMwMTJdICBkcml2ZXJfcmVnaXN0ZXIrMHg0OS8weDEwMAo+
Pj4gWyAgMTIxLjI0MzAxMl0gID8gaTJjX2Zvcl9lYWNoX2RldisweDM5LzB4NTAKPj4+IFsgIDEy
MS4yNDMwMTJdICA/IF9fcHJvY2Vzc19uZXdfYWRhcHRlcisweDIwLzB4MjAKPj4+IFsgIDEyMS4y
NDMwMTJdICA/IGNodF93Y19kcml2ZXJfaW5pdCsweDExLzB4MTEKPj4+IFsgIDEyMS4yNDMwMTJd
ICBpMmNfcmVnaXN0ZXJfZHJpdmVyKzB4MzAvMHg4MAo+Pj4gWyAgMTIxLjI0MzAxMl0gID8gaW50
ZWxfbHBzc19wY2lfZHJpdmVyX2luaXQrMHgxNi8weDE2Cj4+PiBbICAxMjEuMjQzMDEyXSAgbXQ2
MzYwX3BtdV9kcml2ZXJfaW5pdCsweGYvMHgxMQo+Pj4gWyAgMTIxLjI0MzAxMl0gIGRvX29uZV9p
bml0Y2FsbCsweDMzLzB4MWEwCj4+PiBbICAxMjEuMjQzMDEyXSAgPyBwYXJzZV9hcmdzKzB4MWVi
LzB4M2QwCj4+PiBbICAxMjEuMjQzMDEyXSAgPyBfX21pZ2h0X3NsZWVwKzB4MzEvMHg5MAo+Pj4g
WyAgMTIxLjI0MzAxMl0gID8ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMGEvMHgxN2YKPj4+IFsg
IDEyMS4yNDMwMTJdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDEyYy8weDE3Zgo+Pj4gWyAgMTIx
LjI0MzAxMl0gID8gcmVzdF9pbml0KzB4MTEwLzB4MTEwCj4+PiBbICAxMjEuMjQzMDEyXSAga2Vy
bmVsX2luaXQrMHhiLzB4MTAwCj4+PiBbICAxMjEuMjQzMDEyXSAgPyBzY2hlZHVsZV90YWlsX3dy
YXBwZXIrMHg5LzB4Ywo+Pj4gWyAgMTIxLjI0MzAxMl0gIHJldF9mcm9tX2ZvcmsrMHgxOS8weDI0
Cj4+PiBbICAxMjEuMjQzMDEyXSBNb2R1bGVzIGxpbmtlZCBpbjoKPj4+IFsgIDEyMS4yNDMwMTJd
IENSMjogMDAwMDAwMDAwMDAwMDAwMAo+Pj4gWyAgMTIxLjI0MzAxMl0gcmFuZG9tOiBnZXRfcmFu
ZG9tX2J5dGVzIGNhbGxlZCBmcm9tIGluaXRfb29wc19pZCsweDNhLzB4NDAgd2l0aCBjcm5nX2lu
aXQ9MAo+Pj4gWyAgMTIxLjI0MzAxMl0gLS0tWyBlbmQgdHJhY2UgMzhhODAzNDAwZjFhMmJlZSBd
LS0tCj4+PiBbICAxMjEuMjQzMDEyXSBFSVA6IHN0cmNtcCsweDExLzB4MzAKPj4KPj4gSG93IGRp
ZCB0aGlzIGRyaXZlciBldmVyIHdvcmsgZm9yIHlvdT8KPj4KPiAKPiBpIGFzayBteSBjb3dvcmtl
ciBoZWxwIG1lIHZlcmlmeS4KPiBpIHdpbGwgY2hlY2sgdGhlIHBhdGNoIG15c2VsZiwgc2luY2Vy
ZWx5IGFwb2xvZ2llcyBmb3IgdGhpcy4KPiAKCkJUVyBmb3Igd2hpY2ggU29DIHRoaXMgUE1JQyBp
cyB1c2VkIGZvcj8KTWF5YmUgaXQgd291bGQgYmUgdXNlZnVsIHRvIGhhdmUgc29tZSBkZXZlbG9w
bWVudCBIVyB0byBiZSBhYmxlIHRvIHZlcmlmeSBwYXRjaGVzLgoKUmVnYXJkcywKTWF0dGhpYXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
