Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A5030DBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGJOljwDVgx5qcJoEu2X6wqR3k5rbsjbYXy8rhgqCWc=; b=rC/YNNAlsr/RLe
	jFHk2fA8tlA2rgKDzlqZMSR9gqJYE6HTPCa9pAJyD/bTo6fOJkwObhHXlnyNxjm5fDMv0KAANMlon
	YsefUX6LVPzgf6DPk7irOU0NpB1ttcNSVa5owllJt5Zt4+0jow0pkFA8L65RlanH0iw9Umlg3szl0
	RSaxuRTpzu6rA72SPrP11Fr/qhAYVxt4cDDTDnortRK2Vg4BeGXRwyD8vZSyYnFV83b+HtTp54xdF
	JOc8mEJMWjliR9JRxiNRQqASZZyByEOImht6YCiu+vimSHYsB/lVhcihJ23Q8JBUvmb3yus9Y22dw
	aFOGx6upHIiiMjsflcSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgFr-0003F8-KH; Fri, 31 May 2019 12:03:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgFj-0003Ej-7x
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:03:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so5906549wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 05:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AXzquUNr/gmEseZn+G+cg2EIpiVBIr3MdbOIQNIK3hY=;
 b=x06Be2cDAzB4UCI64CD8S3VPPlkVbR/HiXRzBxAhTxSiP3eLcwlY+tWLrST/SUMnVl
 3qPWcYrQFAsFbqfscSbOhF6n50HsrHJeuVpwSg+vA17W2OcA/bYNoQzjjalxMwgE9saR
 rAWAgjASyRyp+VZy8xBHYsGL2ojFfabKKdKrzMRmmJraqWB+mC9YNue30yjqPuGyFcps
 s8PODSbKiPzOaFDM2oBwyXeooYVyaWn1iAiAYd0CN7TgkJ0XM3K0g6KqMi2CXL28NzRS
 V3LwWEi/lPeLMrDv3IDn4dK/DY26+ywiTXLlHr4dMArryuGINdZ/+Ut/JM7PYigFcB6k
 5BBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AXzquUNr/gmEseZn+G+cg2EIpiVBIr3MdbOIQNIK3hY=;
 b=UnMjB96LyNAnzc/ScjiNRvkPfMfJfFl7aWGtKpXsUbcr6K8ZhYJ/NAI95+VLrfskN3
 6kEGSnQZBRuM72N0NkmELkYoNL4EHNRCQ6ODEq9gHK5TCwCnJLJyXoGEXpBCEiWgN8wA
 Z5Qom43JB89TPSgrKcaZxnBYF/A+yFOguNME8QVbkB8fouYsnMg9z1c8BZOdNaEs7FFK
 EGCTFTJymRWeeThKbFgD2X9cDd4y0GoicILYYy+PKBhUZ7cqPMxMmV91UIvRdUB5IkFi
 LyHZlDxW1JobBWlsqQR4PQvcgC7sExeBqVN3fmLFKT1VtuUF1+O2O+ivTnUtVKK9Erjx
 w6jQ==
X-Gm-Message-State: APjAAAUgKaAXhvsux0El3+zP+lvkVWuFMGplvBkFXzB1Nrgq3Yo8AkP3
 C2sl3S2IUjlhz9BURBih2quDdFZ0eFOH7g==
X-Google-Smtp-Source: APXvYqzhIFnq2vRMi0vjRp/tMd2VARYw9Wqm0cqFwvD2a2t94e4JzJfY+6MlYhgbNV3ZEBm7vL6yOA==
X-Received: by 2002:a1c:2d83:: with SMTP id t125mr5403629wmt.83.1559304194744; 
 Fri, 31 May 2019 05:03:14 -0700 (PDT)
Received: from [192.168.1.24]
 (amarseille-652-1-291-131.w109-208.abo.wanadoo.fr. [109.208.94.131])
 by smtp.gmail.com with ESMTPSA id p10sm6462801wrw.6.2019.05.31.05.03.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 05:03:14 -0700 (PDT)
Subject: Re: Panfrost impossible to probe without opp table
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
Date: Fri, 31 May 2019 14:03:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_050319_335994_8FDD4EA8 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh+dt@kernel.org>, ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVG9tZXUsCgpPbiAzMS8wNS8yMDE5IDEzOjU5LCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gT24g
V2VkLCAyOSBNYXkgMjAxOSBhdCAyMzoyOSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBJIGhhdmUgcmViYXNlIG15IGtlcm5lbCBv
biBsYXRlc3QgNS4yLXJjMiwgYW5kIG15IHBhbmZyb3N0IGRyaXZlciBpcwo+PiBubyBtb3JlIHBy
b2JpbmcuCj4+Cj4+IFRoZSBpc3N1ZSBpcyBjb21pbmcgZnJvbSBmMzYxN2I0NDlkMGJjZjNiNWQ4
MGE5N2Y1MTQ5OGRjZjc0NjNjZjdlCj4+ICAgICBkcm0vcGFuZnJvc3Q6IFNlbGVjdCBkZXZmcmVx
Cj4+Cj4+ICAgICBDdXJyZW50bHksIHRoZXJlIGlzIHNvbWUgbG9naWMgZm9yIHRoZSBkcml2ZXIg
dG8gd29yayB3aXRob3V0IGRldmZyZXEuCj4+ICAgICBIb3dldmVyLCB0aGUgZHJpdmVyIGFjdHVh
bGx5IGZhaWxzIHRvIHByb2JlIGlmICFDT05GSUdfUE1fREVWRlJFUS4KPj4KPj4gICAgIEZpeCB0
aGlzIGJ5IHNlbGVjdGluZyBkZXZmcmVxLCBhbmQgZHJvcCB0aGUgYWRkaXRpb25hbCBjaGVja3MK
Pj4gICAgIGZvciBkZXZmcmVxLgo+Pgo+PiBJdCBzZWVtcyB0aGF0IHdpdGggdGhpcyBjb21taXQg
dGhlIE9QUCB0YWJsZSBpcyBub3cgbWFuZGF0b3J5Lgo+PiBpcyBpdCBpbnRlbnRpb25hbD8KPiAK
PiBIaSBDbMOpbWVudCwKPiAKPiBkZXZmcmVxIHN1cHBvcnQgaXMgaW50ZW50aW9uYWxseSByZXF1
aXJlZC4gSSBnb3QgYSBINjQgYm9hcmQgd2hpY2ggSSdtCj4gdXNpbmcgdG8gYWRkIFQ3MjAgc3Vw
cG9ydCB0byBQYW5mcm9zdC4KCm9wZXJhdGluZy1wb2ludHMtdjIgYW5kIGNsb2NrcyBhcmUgb3B0
aW9uYWwsIGRldmZyZXEgc2hvdWxkIGJlIG9wdGlvbmFsLAp0aGlzIHdhcyB0aGUgZGVmYXVsdCBi
ZWhhdmlvdXIgb2YgdGhlIGZpcnN0IGFwcGxpZWQgdmVyc2lvbi4KCkFtbG9naWMgZHQgZG9lcyBu
b3QgaGF2ZSBvcGVyYXRpbmctcG9pbnRzLXYyLCBhbmQgZGV2ZnJlcSB3b24ndCBiZSBzdXBwb3J0
ZWQKc29vbi4KCk5laWwKCj4gCj4gT25jZSBJJ20gYWJsZSB0byB0ZXN0IHRoZSBHUFUgcHJvcGVy
bHkgYWxvbmcgd2l0aCBmcmVxdWVuY3kgc2NhbGluZywgSQo+IHdpbGwgcGluZyB5b3Ugc28geW91
IGNhbiByZXRlc3QgYW5kIHJlc3VibWl0Lgo+IAo+IFRoYW5rcywKPiAKPiBUb21ldQo+IAo+PiBB
Y3R1YWxseQo+PiBbICAgIDMuMDQ2MjM3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sgcmF0
ZSA9IDQzMjAwMDAwMAo+PiBbICAgIDMuMDUxNTkzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVz
X2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPj4gWyAgICAzLjA5NjAxMl0gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPj4gbWlub3IgMHgxIHN0YXR1cyAw
eDAKPj4gWyAgICAzLjEwMzY4Ml0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAw
MDAwMCwxMDMwOWU0MCwKPj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+PiBbICAgIDMuMTEx
Nzg5XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKPj4gU2hh
ZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFT
OjB4Zgo+PiBKUzoweDcKPj4gWyAgICAzLjEyMzQzNV0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IHNo
YWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4MQo+PiBbICAgIDMuMTMwNDA1XSBwYW5mcm9z
dCAxODAwMDAwLmdwdTogRmF0YWwgZXJyb3IgZHVyaW5nIGRldmZyZXEgaW5pdAo+Pgo+PiBXaXRo
IGNvbW1pdCByZXZlcnRlZAo+PiBbICAgIDMuMDM4MjM2XSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
Y2xvY2sgcmF0ZSA9IDQzMjAwMDAwMAo+PiBbICAgIDMuMDQzNTkzXSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPj4gWyAgICAzLjA4Nzk5NF0gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPj4gbWlub3IgMHgx
IHN0YXR1cyAweDAKPj4gWyAgICAzLjA5NTY1OF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1
cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+PiBb
ICAgIDMuMTAzNzYzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmVhdHVyZXM6IEwyOjB4MDcxMTAy
MDYKPj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAw
MDAyODIxIEFTOjB4Zgo+PiBKUzoweDcKPj4gWyAgICAzLjExNTQxMF0gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4MQo+PiBbICAgIDMuMTIyNzk4
XSBbZHJtXSBJbml0aWFsaXplZCBwYW5mcm9zdCAxLjAuMCAyMDE4MDkwOCBmb3IKPj4gMTgwMDAw
MC5ncHUgb24gbWlub3IgMAo+Pgo+Pgo+PiBUaGFua3MsCj4+IENsw6ltZW50Cj4+Cj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
