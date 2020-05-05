Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8581C5640
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQYiit7PLqiAB0/qDub53G7x6x/q+iX2SNY8yoQi9sk=; b=KLF78pJVvWLNTQ
	ALv3huDFl0AeOCCd4+NIx/hBJ+0glM8C2JqYwPAMVXKVUq08xxEUXTH2EU6GGsotI06K8o57wbHYO
	KrwvfwooH1ZWpNnjCzEnKPZ2aM45XPT3HBQ88/PvKSD/IASyFCF9ZwKity3oi1m6IJGgk4NSIXn8W
	KjbJbuJx07mNwNTZM2zeFN2LBCs44P0lBe8cUm9DkKjPbJIVY1qgPILOeHNeqi8yTrCzd0h62G+nx
	D385S4ckrQFoHI2Mxe/Et3R1CUbFxf8YJmNOAwt518H9q8Nz5V4lz3UHyaeRFInandQSyxR3plzpN
	o6m0+1OC/tyRh+QoX7ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxGu-0001Qq-U6; Tue, 05 May 2020 13:06:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxGn-0001P7-9U; Tue, 05 May 2020 13:05:58 +0000
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E3D7206D7;
 Tue,  5 May 2020 13:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588683956;
 bh=dvbRX7EeM06dsl2ZOfOT5WBgv/T4PM2ppoNNZuX4hm8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=neqboCczN+Cdz09ZuDmJ5SDMNim2FB9HO7s1Q9yYJ3/NilYj5E454ePytgS+Asq6w
 aoC5r10DK1ND17IpN/vWZNpYfjligx54R/u3Wiew9ALEj/kS/uW1r59UOgv5Ivm9AI
 xbI9Syh3SVWVXuDtwl2GIBYcVCLcnkR2I632xPaI=
Received: by mail-ed1-f41.google.com with SMTP id d16so1693439edq.7;
 Tue, 05 May 2020 06:05:56 -0700 (PDT)
X-Gm-Message-State: AGi0Pube7ncAf3g+2SON+1wdd3JQIZaD+B6tu7DhhhnAkdrXiiSkHYm2
 9+7u6Iyg8UywRmsT0QmCiDmgHRFlM3RtGM9ZzQ==
X-Google-Smtp-Source: APiQypIQFhovoglRSXHegx9gEyfNNxTtVpJjyKZpJgiRmyVTk2jNz+plbrT0C7AXa4PJSMiG3lL/djzaOe3llc15X/Y=
X-Received: by 2002:aa7:dcd7:: with SMTP id w23mr2569139edu.300.1588683954729; 
 Tue, 05 May 2020 06:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
 <20200504141408.60877-2-enric.balletbo@collabora.com>
In-Reply-To: <20200504141408.60877-2-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 5 May 2020 21:05:41 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8bOAW-8-8v-=S2qBrdG-dSAjf9WMWON+VHk4EKrQG7XQ@mail.gmail.com>
Message-ID: <CAAOTY_8bOAW-8-8v-=S2qBrdG-dSAjf9WMWON+VHk4EKrQG7XQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/mediatek: mtk_dpi: Rename bridge to next_bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_060557_367533_5A412FBF 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyINOaXpSDpgLHkuIAg5LiL5Y2IMTA6MTTlr6vpgZPvvJoK
Pgo+IFRoaXMgaXMgcmVhbGx5IGEgY29zbWV0aWMgY2hhbmdlIGp1c3QgdG8gbWFrZSBhIGJpdCBt
b3JlIHJlYWRhYmxlIHRoZQo+IGNvZGUgYWZ0ZXIgY29udmVydCB0aGUgZHJpdmVyIHRvIGRybV9i
cmlkZ2UuIFRoZSBicmlkZ2UgdmFyaWFibGUgbmFtZQo+IHdpbGwgYmUgdXNlZCBieSB0aGUgZW5j
b2RlciBkcm1fYnJpZGdlLCBhbmQgdGhlIGNoYWluZWQgYnJpZGdlIHdpbGwgYmUKPiBuYW1lZCBu
ZXh0X2JyaWRnZS4KClJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2Vy
bmVsLm9yZz4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJp
Yy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHBpLmMgfCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMKPiBp
bmRleCA3ZmJmYTk1YmFiMDkuLjcxMTIxMjVkYzNkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kcGkuYwo+IEBAIC02MSw3ICs2MSw3IEBAIGVudW0gbXRrX2RwaV9vdXRfY29sb3JfZm9y
bWF0IHsKPiAgc3RydWN0IG10a19kcGkgewo+ICAgICAgICAgc3RydWN0IG10a19kZHBfY29tcCBk
ZHBfY29tcDsKPiAgICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciBlbmNvZGVyOwo+IC0gICAgICAg
c3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZTsKPiArICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlICpu
ZXh0X2JyaWRnZTsKPiAgICAgICAgIHZvaWQgX19pb21lbSAqcmVnczsKPiAgICAgICAgIHN0cnVj
dCBkZXZpY2UgKmRldjsKPiAgICAgICAgIHN0cnVjdCBjbGsgKmVuZ2luZV9jbGs7Cj4gQEAgLTYw
Nyw3ICs2MDcsNyBAQCBzdGF0aWMgaW50IG10a19kcGlfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKPiAgICAgICAgIC8qIEN1cnJlbnRs
eSBEUEkwIGlzIGZpeGVkIHRvIGJlIGRyaXZlbiBieSBPVkwxICovCj4gICAgICAgICBkcGktPmVu
Y29kZXIucG9zc2libGVfY3J0Y3MgPSBCSVQoMSk7Cj4KPiAtICAgICAgIHJldCA9IGRybV9icmlk
Z2VfYXR0YWNoKCZkcGktPmVuY29kZXIsIGRwaS0+YnJpZGdlLCBOVUxMLCAwKTsKPiArICAgICAg
IHJldCA9IGRybV9icmlkZ2VfYXR0YWNoKCZkcGktPmVuY29kZXIsIGRwaS0+bmV4dF9icmlkZ2Us
IE5VTEwsIDApOwo+ICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICBkZXZfZXJy
KGRldiwgIkZhaWxlZCB0byBhdHRhY2ggYnJpZGdlOiAlZFxuIiwgcmV0KTsKPiAgICAgICAgICAg
ICAgICAgZ290byBlcnJfY2xlYW51cDsKPiBAQCAtNzQ3LDExICs3NDcsMTEgQEAgc3RhdGljIGlu
dCBtdGtfZHBpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICB9
Cj4KPiAgICAgICAgIHJldCA9IGRybV9vZl9maW5kX3BhbmVsX29yX2JyaWRnZShkZXYtPm9mX25v
ZGUsIDAsIDAsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVM
TCwgJmRwaS0+YnJpZGdlKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBOVUxMLCAmZHBpLT5uZXh0X2JyaWRnZSk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+Cj4gLSAgICAgICBkZXZfaW5mbyhkZXYsICJGb3VuZCBi
cmlkZ2Ugbm9kZTogJXBPRlxuIiwgZHBpLT5icmlkZ2UtPm9mX25vZGUpOwo+ICsgICAgICAgZGV2
X2luZm8oZGV2LCAiRm91bmQgYnJpZGdlIG5vZGU6ICVwT0ZcbiIsIGRwaS0+bmV4dF9icmlkZ2Ut
Pm9mX25vZGUpOwo+Cj4gICAgICAgICBjb21wX2lkID0gbXRrX2RkcF9jb21wX2dldF9pZChkZXYt
Pm9mX25vZGUsIE1US19EUEkpOwo+ICAgICAgICAgaWYgKGNvbXBfaWQgPCAwKSB7Cj4gLS0KPiAy
LjI2LjIKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
