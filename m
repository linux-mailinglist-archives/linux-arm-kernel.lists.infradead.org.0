Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750621D6048
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 12:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz8YJos+ec8L3MIWa0Ef3H9zIMNpFlx+eRkpQ1QLbzA=; b=qN9CylJYGPYPn/
	xkCvBJ/rokfBqPcCqpwXqQyAw8JjkvBSDbWk/WaYKfLSlbJfQWK+qawj2QiW4ZeIvtbHWwczCY/5k
	3eg/DWRNBlqTH/vqsD90BmPoVh4ev+PT1yLE5iYbvHCUO77v+ULLNHgtqZcWk/gcB5N/F9S/a7tdh
	XiBzkEAp/iEDKtt4guLn7FIDcvasCza+fEFhGI+bxN5XGiYAJucagbcYgXu4QrJOzftNQV3O3Coss
	GFgjIS6By6K7QyamkjKo47HWenQxL1py0H5FhckbgwzyWyZl/e8umDl8V9cMTI8bspOEhvV4mFC2Q
	aDMLKkPUo5vplEJszlZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZtmf-0002Ed-RM; Sat, 16 May 2020 10:11:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZtmW-0002EF-Rn; Sat, 16 May 2020 10:11:02 +0000
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BC74207D5;
 Sat, 16 May 2020 10:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589623860;
 bh=XU1twUeDe4eMoZ1m0cNMv2o1iM76zQrLkGTJXb+AACA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LhLCJDAL0fNfflOdG/9eckydIkq/pxQDSPOuvwX2xtZX0YydzN3q+55SdL8jLFUJf
 9RFxrNQ7lpHFyhXzSJRzOeZTuQ5IwkfulkNxFAP9r70s3VqSETeNtGSQnf8qpsVq7r
 pBbyqUDkqjoBFDx0njrJ1jdquUCSkHkP7WPi+1Ec=
Received: by mail-ej1-f49.google.com with SMTP id l21so4422503eji.4;
 Sat, 16 May 2020 03:11:00 -0700 (PDT)
X-Gm-Message-State: AOAM533+tWzA6IZMq3N59SkgCsIrYCpn3J+R1HJhvqlIJWLjCCL/NDEx
 UWS7lNn9jpGNDw2gzzUEoy3450kqXJLjURbhXg==
X-Google-Smtp-Source: ABdhPJwvZ8w+iX3fL8kbrpnlBQ7nXKFx8Y1EtQ19L0cdysqc+LfEj/7Pb+OD711IvGi1JSb1fwswDRnCiVSuKx6RNVU=
X-Received: by 2002:a17:906:7717:: with SMTP id
 q23mr6957899ejm.38.1589623858510; 
 Sat, 16 May 2020 03:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
 <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
 <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
In-Reply-To: <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 16 May 2020 18:10:46 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-w0V0iQgjZ0n26KKs_MdB-im9+LC2EDTmGo0wMG9p_Vw@mail.gmail.com>
Message-ID: <CAAOTY_-w0V0iQgjZ0n26KKs_MdB-im9+LC2EDTmGo0wMG9p_Vw@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_031100_943812_D59042F2 
X-CRM114-Status: GOOD (  31.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMTXml6Ug6YCx5LqUIOS4iuWNiDE6MzXlr6vpgZPvvJoK
Pgo+IEhpIGFnYWluLAo+Cj4gT24gMTQvNS8yMCAxOToxMiwgRW5yaWMgQmFsbGV0Ym8gaSBTZXJy
YSB3cm90ZToKPiA+IEhpIENodW4tS3VhbmcsCj4gPgo+ID4gT24gMTQvNS8yMCAxODo0NCwgQ2h1
bi1LdWFuZyBIdSB3cm90ZToKPiA+PiBIaSwgRW5yaWM6Cj4gPj4KPiA+PiBFbnJpYyBCYWxsZXRi
byBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPiDmlrwgMjAyMOW5tDXmnIgx
NOaXpSDpgLHlm5sg5LiL5Y2IMTE6NDLlr6vpgZPvvJoKPiA+Pj4KPiA+Pj4gSGkgQ2h1bi1LdWFu
ZywKPiA+Pj4KPiA+Pj4gT24gMTQvNS8yMCAxNjoyOCwgQ2h1bi1LdWFuZyBIdSB3cm90ZToKPiA+
Pj4+IEhpLCBFbnJpYzoKPiA+Pj4+Cj4gPj4+PiBFbnJpYyBCYWxsZXRibyBTZXJyYSA8ZWJhbGxl
dGJvQGdtYWlsLmNvbT4g5pa8IDIwMjDlubQ15pyIMTTml6Ug6YCx5ZubIOS4iuWNiDEyOjQx5a+r
6YGT77yaCj4gPj4+Pj4KPiA+Pj4+PiBIaSBDaHVuLUt1YW5nLAo+ID4+Pj4+Cj4gPj4+Pj4gTWlz
c2F0Z2UgZGUgRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3Jh
LmNvbT4gZGVsCj4gPj4+Pj4gZGlhIGR2LiwgMSBkZSBtYWlnIDIwMjAgYSBsZXMgMTc6MjU6Cj4g
Pj4+Pj4+Cj4gPj4+Pj4+IFVzZSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyIHRvIGNy
ZWF0ZSBhIGNvbm5lY3RvciBmb3IgcGlwZWxpbmVzCj4gPj4+Pj4+IHRoYXQgdXNlIGRybV9icmlk
Z2UuIFRoaXMgYWxsb3dzIHNwbGl0dGluZyBjb25uZWN0b3Igb3BlcmF0aW9ucyBhY3Jvc3MKPiA+
Pj4+Pj4gbXVsdGlwbGUgYnJpZGdlcyB3aGVuIG5lY2Vzc2FyeSwgaW5zdGVhZCBvZiBoYXZpbmcg
dGhlIGxhc3QgYnJpZGdlIGluCj4gPj4+Pj4+IHRoZSBjaGFpbiBjcmVhdGluZyB0aGUgY29ubmVj
dG9yIGFuZCBoYW5kbGluZyBhbGwgY29ubmVjdG9yIG9wZXJhdGlvbnMKPiA+Pj4+Pj4gaW50ZXJu
YWxseS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBT
ZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiA+Pj4+Pj4gQWNrZWQtYnk6IFNh
bSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiA+Pj4+Pgo+ID4+Pj4+IEEgZ2VudGxlIHBp
bmcgb24gdGhpcywgSSB0aGluayB0aGF0IHRoaXMgb25lIGlzIHRoZSBvbmx5IG9uZSB0aGF0Cj4g
Pj4+Pj4gc3RpbGwgbmVlZHMgYSByZXZpZXcgaW4gdGhlIHNlcmllcy4KPiA+Pj4+Cj4gPj4+PiBU
aGlzIGlzIHdoYXQgSSByZXBseSBpbiBwYXRjaCB2MzoKPiA+Pj4+Cj4gPj4+Cj4gPj4+IFNvcnJ5
IGZvciBtaXNzaW5nIHRoaXMuCj4gPj4+Cj4gPj4+PiBJIHRoaW5rIHRoZSBwYW5lbCBpcyB3cmFw
cGVkIGludG8gbmV4dF9icmlkZ2UgaGVyZSwKPiA+Pj4+Cj4gPj4+Cj4gPj4+IFllcywgeW91IGNh
biBoYXZlIGZvciBleGFtcGxlOgo+ID4+Pgo+ID4+PiAxLiBkcm1fYnJpZGdlIChtdGtfZHNpKSAt
PiBkcm1fYnJpZGdlIChwczg2NDAgLSBkc2ktdG8tZWRwKSAtPiBkcm1fcGFuZWxfYnJpZGdlCj4g
Pj4+IChlZHAgcGFuZWwpCj4gPj4+Cj4gPj4+IG9yIGEKPiA+Pj4KPiA+Pj4gMi4gZHJtX2JyaWRn
ZSAobXRrX2RzaSktPiBkcm1fcGFuZWxfYnJpZGdlIChkc2kgcGFuZWwpCj4gPj4+Cj4gPj4+IFRo
ZSBfZmlyc3RfIG9uZSBpcyBteSB1c2UgY2FzZQo+ID4+Pgo+ID4+Pj4gaWYgKHBhbmVsKSB7Cj4g
Pj4+Cj4gPj4+IFRoaXMgaGFuZGxlcyB0aGUgc2Vjb25kIGNhc2UsIHdoZXJlIHlvdSBhdHRhY2gg
YSBkc2kgcGFuZWwuCj4gPj4+Cj4gPj4+PiAgICAgZHNpLT5uZXh0X2JyaWRnZSA9IGRldm1fZHJt
X3BhbmVsX2JyaWRnZV9hZGQoZGV2LCBwYW5lbCk7Cj4gPj4+Pgo+ID4+Pj4gc28gdGhlIG5leHRf
YnJpZGdlIGlzIGEgcGFuZWxfYnJpZGdlLCBpbiBpdHMgYXR0YWNoIGZ1bmN0aW9uCj4gPj4+PiBw
YW5lbF9icmlkZ2VfYXR0YWNoKCksCj4gPj4+PiBhY2NvcmRpbmcgdG8gdGhlIGZsYWcgRFJNX0JS
SURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCBpZiBub3QgZXhpc3QsCj4gPj4+PiBpdCB3b3VsZCBj
cmVhdGUgY29ubmVjdG9yIGFuZCBhdHRhY2ggY29ubmVjdG9yIHRvIHBhbmVsLgo+ID4+Pj4KPiA+
Pj4+IEknbSBub3Qgc3VyZSB0aGlzIGZsYWcgd291bGQgZXhpc3Qgb3Igbm90LCBidXQgZm9yIGJv
dGggY2FzZSwgaXQncyBzdHJhbmdlLgo+ID4+Pj4gSWYgZXhpc3QsIHlvdSBjcmVhdGUgY29ubmVj
dG9yIGluIHRoaXMgcGF0Y2ggYnV0IG5vIHdoZXJlIHRvIGF0dGFjaAo+ID4+Pj4gY29ubmVjdG9y
IHRvIHBhbmVsLgo+ID4+Pgo+ID4+PiBZZXMsIGluIGZhY3QsIHRoaXMgaXMgdHJhbnNpdGlvbmFs
IHBhdGNoIG5lZWRlZCwgYXMgb25jZSBJIGNvbnZlcnRlZCBtdGtfZHBpLAo+ID4+PiBtdGtfZHNp
IGFuZCBtdGtfaGRtaSB0byB0aGUgbmV3IGRybV9icmlkZ2UgQVBJIHRoZSBkcm1fYnJpZGdlX2Nv
bm5lY3Rvcl9pbml0KCkKPiA+Pj4gd2lsbCBiZSBkb25lIGluIG10a19kcm1fZHJ2LiBXZSB3aWxs
IG5lZWQgdG8gY2FsbCBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0IGZvcgo+ID4+PiBkcGkgYW5k
IGRzaSBwaXBlcyBhbmQgcmVtb3ZlIHRoYXQgY2FsbCBmcm9tIG10a19kc2kgYW5kIG10a19kcGkg
ZHJpdmVycy4gVGhlCj4gPj4+IGdyYXBoaWMgY29udHJvbGxlciBkcml2ZXIgc2hvdWxkIGNyZWF0
ZSBjb25uZWN0b3JzIGFuZCBDUlRDcywgYXMgZXhhbXBsZSB5b3UgY2FuCj4gPj4+IHRha2UgYSBs
b29rIGF0IGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZHJ2LmMKPiA+Pj4KPiA+Pgo+ID4+
IEkgaGF2ZSBzdWNoIHF1ZXN0aW9uIGJlY2F1c2UgSSd2ZSByZXZpZXdlZCBvbWFwJ3MgZHJpdmVy
LiBJbiBvbWFwJ3MKPiA+PiBkcml2ZXIsIGFmdGVyIGl0IGNhbGwgZHJtX2JyaWRnZV9jb25uZWN0
b3JfaW5pdCgpLCBpdCBkb2VzIHRoaXM6Cj4gPj4KPiA+PiBpZiAocGlwZS0+b3V0cHV0LT5wYW5l
bCkgewo+ID4+IHJldCA9IGRybV9wYW5lbF9hdHRhY2gocGlwZS0+b3V0cHV0LT5wYW5lbCwKPiA+
PiAgICAgICBwaXBlLT5jb25uZWN0b3IpOwo+ID4+IGlmIChyZXQgPCAwKQo+ID4+IHJldHVybiBy
ZXQ7Cj4gPj4gfQo+ID4+Cj4gPj4gSW4gdGhpcyBwYXRjaCwgeW91IGRvZXMgbm90IGRvIHRoaXMu
Cj4gPj4KPiA+Cj4gPiBJIHNlZSwgc28geWVzLCBJIGFtIHByb2JhYmx5IG1pc3NpbmcgY2FsbCBk
cm1fcGFuZWxfYXR0YWNoIGluIGNhc2UgdGhlcmUgaXMgYQo+ID4gZGlyZWN0IHBhbmVsIGF0dGFj
aGVkLiBUaGFua3MgZm9yIHBvaW50aW5nIGl0Lgo+ID4KPiA+IEknbGwgc2VuZCBhIG5ldyB2ZXJz
aW9uIGFkZGluZyB0aGUgZHJtX3BhbmVsX2F0dGFjaCBjYWxsLgo+ID4KPgo+IFdhaXQsIHNob3Vs
ZG4ndCBwYW5lbCBiZSBhdHRhY2hlZCBvbiB0aGUgY2FsbCBvZiBtdGtfZHNpX2JyaWRnZV9hdHRh
Y2ggYXMKPiBuZXh0X2JyaWRnZSBwb2ludHMgdG8gYSBicmlkZ2Ugb3IgYSBwYW5lbD8KPgo+IHN0
YXRpYyBpbnQgbXRrX2RzaV9icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Us
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFj
aF9mbGFncyBmbGFncykKPiB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX2RzaSAqZHNpID0gYnJpZGdl
X3RvX2RzaShicmlkZ2UpOwo+Cj4gICAgICAgICAvKiBBdHRhY2ggdGhlIHBhbmVsIG9yIGJyaWRn
ZSB0byB0aGUgZHNpIGJyaWRnZSAqLwo+ICAgICAgICAgcmV0dXJuIGRybV9icmlkZ2VfYXR0YWNo
KGJyaWRnZS0+ZW5jb2RlciwgZHNpLT5uZXh0X2JyaWRnZSwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAmZHNpLT5icmlkZ2UsIGZsYWdzKTsKPiB9Cj4KPiBPciBJIGFtIGNvbnRp
bnVpbmcgbWlzdW5kZXJzdGFuZGluZyBhbGwgdGhpcz8KPgoKTXkgcG9pbnQgaXM6IHdoZW4gZG8g
eW91IGF0dGFjaCBwYW5lbCB0byBhIGNvbm5lY3Rvcj8KSW4gdGhpcyBwYXRjaCwKCnJldCA9IGRy
bV9icmlkZ2VfYXR0YWNoKCZkc2ktPmVuY29kZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX0JSSURHRV9BVFRBQ0hfTk9f
Q09OTkVDVE9SKTsKCml0IHdvdWxkIGNhbGwgaW50byBtdGtfZHNpX2JyaWRnZV9hdHRhY2goKSB3
aXRoCkRSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiwgYW5kIGNhbGwgaW50byBwYW5lbF9i
cmlkZ2VfYXR0YWNoKCkKd2l0aCBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IuCklmIHlv
dSBkb2VzIG5vdCBwYXNzIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUiBpbnRvCnBhbmVs
X2JyaWRnZV9hdHRhY2goKSwgaXQgd291bGQgY3JlYXRlIGEgY29ubmVjdG9yIGFuZCBhdHRhY2gg
cGFuZWwgdG8KdGhhdCBjb25uZWN0b3IuCkFuZCB5b3UgcGFzcyBEUk1fQlJJREdFX0FUVEFDSF9O
T19DT05ORUNUT1IgaW50bwpwYW5lbF9icmlkZ2VfYXR0YWNoKCksIHNvIEkgdGhpaW5rIHlvdSBu
ZWVkIHRvIGNyZWF0ZSBjb25uZWN0b3IgYW5kCmF0dGFjaCBwYW5lbCB0byB0aGF0IGNvbm5lY3Rv
ciBieSB5b3Vyc2VsZiAodGhpcyBpcyB3aGF0IG9tYXAgZG9lcykuCgpSZWdhcmRzLApDaHVuLUt1
YW5nLgoKPiA+Pj4+IElmIG5vdCBleGlzdCwgdGhlIG5leHRfYnJpZ2Ugd291bGQgY3JlYXRlIG9u
ZSBjb25uZWN0b3IgYW5kIHRoaXMgYnJpZ2UKPiA+Pj4+IHdvdWxkIGNyZWF0ZSBhbm90aGVyIGNv
bm5lY3Rvci4KPiA+Pj4+Cj4gPj4+PiBJIHRoaW5rIGluIHlvdXIgY2FzZSwgbXRrX2RzaSBkb2Vz
IG5vdCBkaXJlY3RseSBjb25uZWN0IHRvIGEgcGFuZWwsIHNvCj4gPj4+Cj4gPj4+IEV4YWN0bHkK
PiA+Pj4KPiA+Pj4+IEkgbmVlZCBhIGV4YWN0IGV4cGxhaW4uIE9yIHNvbWVvbmUgY291bGQgdGVz
dCB0aGlzIG9uIGEKPiA+Pj4+IGRpcmVjdGx5LWNvbm5lY3QtcGFuZWwgcGxhdGZvcm0uCj4gPj4+
Cj4gPj4+IEkgZG9uJ3QgdGhpbmsgSSBhbSBicmVha2luZyB0aGlzIHVzZSBjYXNlIGJ1dCBBRkFJ
Q1MgdGhlcmUgaXMgbm8gdXNlcnMgaW4KPiA+Pj4gbWFpbmxpbmUgdGhhdCBkaXJlY3RseSBjb25u
ZWN0IGEgcGFuZWwgdXNpbmcgdGhlIG1lZGlhdGVrIGRyaXZlci4gQXMgSSBzYWlkIG15Cj4gPj4+
IHVzZSBjYXNlIGlzIHRoZSBvdGhlciBzbyBJIGNhbid0IHJlYWxseSB0ZXN0LiBEbyB5b3Uga25v
dyBhbnlvbmUgdGhhdCBjYW4gdGVzdCB0aGlzPwo+ID4+Cj4gPj4gSSdtIG5vdCBzdXJlIHdobyBj
YW4gdGVzdCB0aGlzLCBidXQgWzFdLCB3aGljaCBpcyBzZW50IGJ5IFlUIFNoZW4gaW4gYQo+ID4+
IHNlcmllcywgaXMgYSBwYXRjaCB0byBzdXBwb3J0IGRzaSBjb21tYW5kIG1vZGUgc28gZHNpIGNv
dWxkIGRpcmVjdGx5Cj4gPj4gY29ubmVjdCB0byBwYW5lbC4KPiA+Pgo+ID4+IFsxXSBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5n
aXQvY29tbWl0L2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlaz9oPXY1LjctcmM1JmlkPTIxODk4ODE2
ODMxZmM2MGM5MmRkNjM0YWI0MzE2YTI0ZGE3ZWI0YWYKPiA+Pgo+ID4+IEl0J3MgYmV0dGVyIHRo
YXQgc29tZW9uZSBjb3VsZCB0ZXN0IHRoaXMgY2FzZSwgYnV0IGlmIG5vIG9uZSB3b3VsZAo+ID4+
IHRlc3QgdGhpcywgSSBjb3VsZCBhbHNvIGFjY2VwdCBhIGdvb2QtbG9vayBwYXRjaC4KPiA+Pgo+
ID4+IFJlZ2FyZHMsCj4gPj4gQ2h1bi1LdWFuZy4KPiA+Pgo+ID4+Pgo+ID4+PiBUaGFua3MsCj4g
Pj4+ICBFbnJpYwo+ID4+Pgo+ID4+Pj4KPiA+Pj4+IFJlZ2FyZHMsCj4gPj4+PiBDaHVuLUt1YW5n
Lgo+ID4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IFRoYW5rcywKPiA+Pj4+PiAgRW5yaWMKPiA+Pj4+Pgo+
ID4+Pj4+PiAtLS0KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQ2hhbmdlcyBpbiB2NDogTm9uZQo+ID4+Pj4+
PiBDaGFuZ2VzIGluIHYzOgo+ID4+Pj4+PiAtIE1vdmUgdGhlIGJyaWRnZS50eXBlIGxpbmUgdG8g
dGhlIHBhdGNoIHRoYXQgYWRkcyBkcm1fYnJpZGdlIHN1cHBvcnQuIChMYXVyZW50IFBpbmNoYXJ0
KQo+ID4+Pj4+Pgo+ID4+Pj4+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4gPj4+Pj4+Cj4gPj4+Pj4+
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgMTMgKysrKysrKysrKysrLQo+
ID4+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiA+Pj4+Pj4KPiA+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gPj4+Pj4+IGlu
ZGV4IDRmM2JkMDk1YzFlZS4uNDcxZmNhZmRmMzQ4IDEwMDY0NAo+ID4+Pj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPiA+Pj4+Pj4gQEAgLTE3LDYgKzE3LDcgQEAKPiA+Pj4+
Pj4KPiA+Pj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4KPiA+Pj4+Pj4g
ICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgo+ID4+Pj4+PiArI2luY2x1ZGUgPGRybS9kcm1f
YnJpZGdlX2Nvbm5lY3Rvci5oPgo+ID4+Pj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fbWlwaV9kc2ku
aD4KPiA+Pj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX29mLmg+Cj4gPj4+Pj4+ICAjaW5jbHVkZSA8
ZHJtL2RybV9wYW5lbC5oPgo+ID4+Pj4+PiBAQCAtMTgzLDYgKzE4NCw3IEBAIHN0cnVjdCBtdGtf
ZHNpIHsKPiA+Pj4+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX2VuY29kZXIgZW5jb2RlcjsKPiA+Pj4+
Pj4gICAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSBicmlkZ2U7Cj4gPj4+Pj4+ICAgICAgICAgc3Ry
dWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+ID4+Pj4+PiArICAgICAgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3I7Cj4gPj4+Pj4+ICAgICAgICAgc3RydWN0IHBoeSAqcGh5Owo+
ID4+Pj4+Pgo+ID4+Pj4+PiAgICAgICAgIHZvaWQgX19pb21lbSAqcmVnczsKPiA+Pj4+Pj4gQEAg
LTk3NywxMCArOTc5LDE5IEBAIHN0YXRpYyBpbnQgbXRrX2RzaV9lbmNvZGVyX2luaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRybSwgc3RydWN0IG10a19kc2kgKmRzaSkKPiA+Pj4+Pj4gICAgICAgICAg
Ki8KPiA+Pj4+Pj4gICAgICAgICBkc2ktPmVuY29kZXIucG9zc2libGVfY3J0Y3MgPSAxOwo+ID4+
Pj4+Pgo+ID4+Pj4+PiAtICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNoKCZkc2ktPmVuY29k
ZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwgMCk7Cj4gPj4+Pj4+ICsgICAgICAgcmV0ID0gZHJtX2Jy
aWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJpZGdlLCBOVUxMLAo+ID4+Pj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5F
Q1RPUik7Cj4gPj4+Pj4+ICAgICAgICAgaWYgKHJldCkKPiA+Pj4+Pj4gICAgICAgICAgICAgICAg
IGdvdG8gZXJyX2NsZWFudXBfZW5jb2RlcjsKPiA+Pj4+Pj4KPiA+Pj4+Pj4gKyAgICAgICBkc2kt
PmNvbm5lY3RvciA9IGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQoZHJtLCAmZHNpLT5lbmNvZGVy
KTsKPiA+Pj4+Pj4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+Y29ubmVjdG9yKSkgewo+ID4+Pj4+
PiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJVbmFibGUgdG8gY3JlYXRlIGJyaWRnZSBjb25u
ZWN0b3JcbiIpOwo+ID4+Pj4+PiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihkc2ktPmNv
bm5lY3Rvcik7Cj4gPj4+Pj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVwX2VuY29k
ZXI7Cj4gPj4+Pj4+ICsgICAgICAgfQo+ID4+Pj4+PiArICAgICAgIGRybV9jb25uZWN0b3JfYXR0
YWNoX2VuY29kZXIoZHNpLT5jb25uZWN0b3IsICZkc2ktPmVuY29kZXIpOwo+ID4+Pj4+PiArCj4g
Pj4+Pj4+ICAgICAgICAgcmV0dXJuIDA7Cj4gPj4+Pj4+Cj4gPj4+Pj4+ICBlcnJfY2xlYW51cF9l
bmNvZGVyOgo+ID4+Pj4+PiAtLQo+ID4+Pj4+PiAyLjI2LjIKPiA+Pj4+Pj4KPiA+Pj4+Pj4KPiA+
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
Pj4+Pj4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+IExpbnV4LW1lZGlhdGVr
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+Pj4+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo+ID4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
