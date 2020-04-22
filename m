Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA51B3413
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 02:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOHssD8DhoADWdVxM+yXuI5jt2ru3bAn3u2M/UT98SY=; b=VVyKE/49W9DLAw
	anZHeG1ed74BLpSTOOlAtOA/7rTL6M/tcrQJNseqqvi3pI8RKtd+Aa3ImHRtjOhJ08fPunUO2tu+L
	R1TgEuMelFCqWL6FXV9o5kW5LafGoUS/Fj/UtBQYg7IMommBthMsmTbfalEeCmDk9WbRunQ7edxW2
	r0ke2bdauDr92BrLpSDsI283UIkje4yTOK63CeBYWMNPT+jnMIHDl1BevS3b18zLF3dVjDlgT6o5U
	ADr0z5Kg2o91jqA56lvl2kvcQaBsSfgs6gLVMvqjFlvvcfSxcDlQjYwHD09PAsuTfdpbv652H4yl/
	Kyb+igADJmm6k1P2YxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR3RM-0004Kq-N1; Wed, 22 Apr 2020 00:40:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR3RD-0004K7-Dt; Wed, 22 Apr 2020 00:40:29 +0000
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BA3B2071C;
 Wed, 22 Apr 2020 00:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587516026;
 bh=JrE4SFb3uJdJn6w4bpKQFbHrGjxfDltzodlDIbB/g8s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EtgbIUyrKaCGuMhfjQUJP7iDIVSWVQN030NoF/zHtDVjirajFdK7intfO+Efdeqdn
 ZwWKwe+7SuatM6epm7i7rE/Dg3Jp9v5fQY5vaMgbjQx7eX3X9CGN+vqp0bjC1vL034
 tCbc9PDfKupqLgSxRYKWl891P2zFgJWqbvOn30bk=
Received: by mail-ej1-f51.google.com with SMTP id pg17so488132ejb.9;
 Tue, 21 Apr 2020 17:40:26 -0700 (PDT)
X-Gm-Message-State: AGi0PuYLA2NoKszmx8RQ0T1JjmRUG3v6uqcuepxgYZxERdvKx2Iw4ZoD
 mn1o+pBqIqxa92wrWKnFN3UznZ3mgjyriZyj+A==
X-Google-Smtp-Source: APiQypK7cdCKjli8HuUiA28l0aQv0sLbTXWgBnvZw+Qy1aWczSZMJuwiLUBEsh2xe4WaVZor6AsjcT7aHjEYSSesgns=
X-Received: by 2002:a17:906:7717:: with SMTP id q23mr28916ejm.38.1587516024861; 
 Tue, 21 Apr 2020 17:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200311165322.1594233-1-enric.balletbo@collabora.com>
 <20200311165322.1594233-5-enric.balletbo@collabora.com>
 <02290a21-7392-a2cf-576c-215091ec05e8@suse.com>
 <1585177534.26117.4.camel@mtksdaap41>
 <f3c2926a-ef92-b004-9786-5be1645af497@suse.com>
 <1585234277.12089.3.camel@mtksdaap41>
 <73ef0b8e-2802-a047-2a56-936b63d264cb@suse.com>
 <CAAOTY__EV8PHau9CzSiA8up1QAmZxfK2QnaTid0WrNOsn2Xcag@mail.gmail.com>
 <c809233f-6d96-8871-e6a4-b66ed5cc535f@suse.com>
In-Reply-To: <c809233f-6d96-8871-e6a4-b66ed5cc535f@suse.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 22 Apr 2020 08:40:13 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8Nyu3AckQf==aKuiGZQ6t7xsKhCrwoa0oxq5qySOo_KQ@mail.gmail.com>
Message-ID: <CAAOTY_8Nyu3AckQf==aKuiGZQ6t7xsKhCrwoa0oxq5qySOo_KQ@mail.gmail.com>
Subject: Re: [PATCH v12 4/5] soc / drm: mediatek: Move routing control to
 mmsys device
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_174028_035682_BDDFA701 
X-CRM114-Status: GOOD (  25.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, matthias.bgg@kernel.org,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Seiya Wang <seiya.wang@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, sean.wang@mediatek.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Houlong Wei <houlong.wei@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 CK Hu <ck.hu@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE1hdHRoaWFzOgoKTWF0dGhpYXMgQnJ1Z2dlciA8bWJydWdnZXJAc3VzZS5jb20+IOaWvCAy
MDIw5bm0NOaciDIx5pelIOmAseS6jCDkuIvljYg1OjMx5a+r6YGT77yaCj4KPgo+Cj4gT24gNC8x
Ni8yMCA2OjIyIFBNLCBDaHVuLUt1YW5nIEh1IHdyb3RlOgo+ID4gSGksIE1hdHRoaWFzOgo+ID4K
PiA+IE1hdHRoaWFzIEJydWdnZXIgPG1icnVnZ2VyQHN1c2UuY29tPiDmlrwgMjAyMOW5tDPmnIgy
NuaXpSDpgLHlm5sg5LiL5Y2IMTE6NDXlr6vpgZPvvJoKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiAy
Ni8wMy8yMDIwIDE1OjUxLCBDSyBIdSB3cm90ZToKPiA+Pj4gSGksIE1hdHRoaWFzOgo+ID4+Pgo+
ID4+PiBPbiBUaHUsIDIwMjAtMDMtMjYgYXQgMTI6NTQgKzAxMDAsIE1hdHRoaWFzIEJydWdnZXIg
d3JvdGU6Cj4gPj4+PiBIaSBDSywKPiA+Pj4+Cj4gPj4+PiBPbiAyNi8wMy8yMDIwIDAwOjA1LCBD
SyBIdSB3cm90ZToKPiA+Pj4+PiBIaSwgTWF0dGhpYXM6Cj4gPj4+Pj4KPiA+Pj4+PiBPbiBXZWQs
IDIwMjAtMDMtMjUgYXQgMTc6MTYgKzAxMDAsIE1hdHRoaWFzIEJydWdnZXIgd3JvdGU6Cj4gPj4+
Pj4+Cj4gPj4+Pj4+IE9uIDExLzAzLzIwMjAgMTc6NTMsIEVucmljIEJhbGxldGJvIGkgU2VycmEg
d3JvdGU6Cj4gPj4+Pj4+PiBQcm92aWRlIGEgbXRrX21tc3lzX2RkcF9jb25uZWN0KCkgYW5kIG10
a19tbXN5c19kaXNjb25uZWN0KCkgZnVuY3Rpb25zIHRvCj4gPj4+Pj4+PiByZXBsYWNlIG10a19k
ZHBfYWRkX2NvbXBfdG9fcGF0aCgpIGFuZCBtdGtfZGRwX3JlbW92ZV9jb21wX2Zyb21fcGF0aCgp
Lgo+ID4+Pj4+Pj4gVGhvc2UgZnVuY3Rpb25zIHdpbGwgYWxsb3cgRFJNIGRyaXZlciBhbmQgb3Ro
ZXJzIHRvIGNvbnRyb2wgdGhlIGRhdGEKPiA+Pj4+Pj4+IHBhdGggcm91dGluZy4KPiA+Pj4+Pj4+
Cj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5i
YWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+ID4+Pj4+Pj4gUmV2aWV3ZWQtYnk6IE1hdHRoaWFzIEJy
dWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gPj4+Pj4+PiBSZXZpZXdlZC1ieTogQ0sg
SHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4KPiA+Pj4+Pj4+IEFja2VkLWJ5OiBDSyBIdSA8Y2suaHVA
bWVkaWF0ZWsuY29tPgo+ID4+Pj4+Pgo+ID4+Pj4+PiBUaGlzIHBhdGNoIGRvZXMgbm90IGFwcGx5
IGFnYWluc3QgdjUuNi1yYzEuCj4gPj4+Pj4+IFBsZWFzZSByZWJhc2UgYXMgdGhpcyBpcyBhIHF1
aXRlIGJpZyBwYXRjaCBhbmQgaXQgd29uJ3QgYmUgZWFzeSB0byBkbyB0aGF0IGJ5IGhhbmQuCj4g
Pj4+Pj4KPiA+Pj4+PiBJIHRoaW5rIHRoaXMgcGF0Y2ggZGVwZW5kcyBvbiBbMV0gd2hpY2ggaGFz
IGJlZW4gYWNrZWQgYnkgbWUgYW5kIEkgaGF2ZQo+ID4+Pj4+IG5vdCBwaWNrZWQgaXQuIFRoZSBz
aW1wbGUgd2F5IGlzIHRoYXQgeW91IHBpY2sgWzFdIGZpcnN0IGFuZCB0aGVuIHBpY2sKPiA+Pj4+
PiB0aGlzIHNlcmllcy4KPiA+Pj4+Pgo+ID4+Pj4+IFsxXQo+ID4+Pj4+IGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTE0MDYyMjcvCj4gPj4+Pj4KPiA+Pj4+Cj4gPj4+PiBZb3Ug
d291bGQgbmVlZCB0byBwcm92aWRlIGEgc3RhYmxlIHRhZyBmb3IgbWUgdGhhdCBJIGNhbiBtZXJn
ZSBpbnRvIG15IHRyZWUuIFlvdQo+ID4+Pj4gY2FuIGFsc28gdHJ5IHRvIG1lcmdlIG15IGZvci1u
ZXh0IFsxXSB3aGljaCBoYXMgdGhlIG5ld2VzdCB2ZXJzaW9uIGZyb20gRW5yaWMuCj4gPj4+PiBJ
ZiB5b3Ugc2VlIGFueSBtZXJnZSBjb25mbGljdCwgdGhlbiB3ZSBoYXZlIHRvIGRvIHNvbWV0aGlu
ZyBhYm91dCBpdCA6KQo+ID4+Pj4KPiA+Pj4+IFJlZ2FyZHMsCj4gPj4+PiBNYXR0aGlhcwo+ID4+
Pj4KPiA+Pj4+IFsxXQo+ID4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvbWF0dGhpYXMuYmdnL2xpbnV4LmdpdC9sb2cvP2g9Zm9yLW5leHQKPiA+Pj4+
Cj4gPj4+Cj4gPj4+IFlvdSBoYXZlIGFwcGxpZWQgdGhpcyBzZXJpZXMsIHNvIEkgd291bGQgbm90
IGFwcGx5IG90aGVyIHBhdGNoZXMgd2hpY2gKPiA+Pj4gd291bGQgY29uZmxpY3Qgd2l0aCB0aGlz
IHNlcmllcy4gQWZ0ZXIgdGhpcyBzZXJpZXMgbGFuZCBvbiBtYWluIHN0cmVhbQo+ID4+PiAod2lz
aCBpdCBoYXBwZW4gaW4gdGhpcyBtZXJnZSB3aW5kb3cpLCBJIHdvdWxkIHJlYmFzZSBvdGhlciBw
YXRjaCBvbgo+ID4+PiBtYWluIHN0cmVhbS4KPiA+Pj4KPiA+Pgo+ID4+IEkgaGF2ZW4ndCAoeWV0
KSBzZW5kIHRoZSBwdWxsIHJlcXVlc3QuIElmIHlvdSB3YW50IHRvIGJyaW5nIGluIHlvdXIgcGF0
Y2hlcyBpbgo+ID4+IHY1LjcgYXMgd2VsbCB3ZSBjYW4gZmluZCBhIHNvbHV0aW9uIHRvIHRoYXQu
IFNoYWxsIEkgcHJvdmlkZSB5b3Ugd2l0aCBhIHN0YWJsZQo+ID4+IGJyYW5jaCB3aGljaCB5b3Ug
Y2FuIG1lcmdlPyBUaGlzIHdheSB5b3UgY2FuIGFkZCBhbGwgeW91ciBwYXRjaGVzIGluIHRoZSBw
dWxsCj4gPj4gcmVxdWVzdCBhcyB3ZWxsIGFuZCB3ZSBkb24ndCBoYXZlIHRvIHdhaXQgZm9yIHY1
LjggdG8gZ2V0IHRoaW5ncyBpbnRvIG1haW5saW5lLgo+ID4+Cj4gPj4gTGV0IG1lIGtub3cgYW5k
IEknbGwgcHJvdmlkZSB5b3Ugd2l0aCBhIHN0YWJsZSBicmFuY2guCj4gPgo+ID4gVGhpcyBzZXJp
ZXMgaXMgaW4gbGludXgtbmV4dCBidXQgZG9lcyBub3QgaW4gbWFpbiBzdHJlYW0uIFNvIHdvdWxk
IHlvdQo+ID4gcGxlYXNlIHByb3ZpZGUgYSBzdGFibGUgYnJhbmNoIHNvIEkgY291bGQgcHVsbCB0
aGlzIHNlcmllcz8KPiA+Cj4KPiBQbGVhc2UgZmluZCB0aGUgcHVsbCByZXF1ZXN0IGJlbG93Ogo+
Cj4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVjNzUx
Mzc0ZjVmMWZjYWZlZTZiM2YzMTM2Ogo+Cj4gICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEyIDEy
OjM1OjU1IC0wNzAwKQo+Cj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
Cj4KPgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21h
dHRoaWFzLmJnZy9saW51eC5naXQvCj4gdGFncy92NS43LW5leHQtZHJtLXN0YWJsZQo+Cj4gZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDY2N2M3NjkyNDZiMDFjNTNhZDA5MjVkNjAzZDJh
MjUzMWFiZDNlZjI6Cj4KPiAgIHNvYyAvIGRybTogbWVkaWF0ZWs6IEZpeCBtZWRpYXRlay1kcm0g
ZGV2aWNlIHByb2JpbmcgKDIwMjAtMDQtMTMKPiAxMzowMToxNiArMDIwMCkKPgo+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhICgzKToKPiAgICAgICBkdC1iaW5kaW5nczogbWVkaWF0
ZWs6IFVwZGF0ZSBtbXN5cyBiaW5kaW5nIHRvIHJlZmxlY3QgaXQgaXMgYQo+IHN5c3RlbSBjb250
cm9sbGVyCj4gICAgICAgc29jIC8gZHJtOiBtZWRpYXRlazogTW92ZSByb3V0aW5nIGNvbnRyb2wg
dG8gbW1zeXMgZGV2aWNlCj4gICAgICAgc29jIC8gZHJtOiBtZWRpYXRlazogRml4IG1lZGlhdGVr
LWRybSBkZXZpY2UgcHJvYmluZwo+Cj4gTWF0dGhpYXMgQnJ1Z2dlciAoMik6Cj4gICAgICAgZHJt
L21lZGlhdGVrOiBPbWl0IHdhcm5pbmcgb24gcHJvYmUgZGVmZXJzCj4gICAgICAgY2xrIC8gc29j
OiBtZWRpYXRlazogTW92ZSBtdDgxNzMgTU1TWVMgdG8gcGxhdGZvcm0gZHJpdmVyCj4KPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRpYXRlayxtbXN5
cy50eHQgfCAgIDcgKy0tCj4gIGRyaXZlcnMvY2xrL21lZGlhdGVrL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsrKwo+ICBkcml2ZXJzL2Nsay9tZWRp
YXRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSAr
Cj4gIGRyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDgxNzMtbW0uYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMTQ2Cj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE3
My5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMDQKPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3BfY29sb3IuYyAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgNSArKy0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKystCj4gIGRyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZGlzcF9yZG1hLmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICsr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAxMgo+ICsrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2NydGMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE5Cj4gKysrKy0tLS0K
PiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZGRwLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAyNTkKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZGRwLmggICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2Rydi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQ1Cj4gKysr
KysrKysrKy0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYu
aCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RzaS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOAo+
ICsrKy0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgIDQgKy0KPiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvS2NvbmZp
ZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDgKPiArKysrCj4gIGRy
aXZlcnMvc29jL21lZGlhdGVrL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAzMzcKPiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRlay9tdGstbW1zeXMuaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAyMAo+ICsrKysrKysrKwo+ICAyMSBmaWxlcyBjaGFuZ2VkLCA1OTIg
aW5zZXJ0aW9ucygrKSwgNDExIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE3My1tbS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmgKClB1bGxlZCBpbnRvIG1lZGlhdGVr
LWRybS1uZXh0IFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVr
LWRybS1uZXh0CgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+Cj4KPiA+IFJlZ2FyZHMsCj4gPiBD
aHVuLUt1YW5nLgo+ID4KPiA+Pgo+ID4+IFJlZ2FyZHMsCj4gPj4gTWF0dGhpYXMKPiA+Pgo+ID4+
PiBSZWdhcmRzLAo+ID4+PiBDSwo+ID4+Pgo+ID4+Pj4+IFJlZ2FyZHMsCj4gPj4+Pj4gQ0sKPiA+
Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+PiBSZWdhcmRzLAo+ID4+Pj4+PiBNYXR0aGlhcwo+ID4+Pj4+
Pgo+ID4+Pj4+Pj4gLS0tCj4gPj4+Pj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
