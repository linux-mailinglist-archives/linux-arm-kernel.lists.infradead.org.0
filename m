Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B721D36DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKWNW4dl3uy8uM1rh+Bq56pLKyi+pJAiamMQlSw/kw4=; b=WXhmXcCXGyOEQj
	oUEwRaM6J0DnKbhGUAJHCWZytqn/WLgwYfLf3aK4q0Y4QdUxl4CLKRnxBLH8RLBNMHR7LDjlWu4Gw
	FVbucYKIMaf2jauMWBuMpDvddyD2zlcrAk5FF6nRMPgVJNiBk5KX3KtGRKyXDBVeGWTDwgV8faxX1
	c2RfOwLGc8ckaC4Q/albCREbfHERFJC4rl9PRzji5QHv8I0uGgQ5wwUMiB8NlJ7KVZEg0UQ9gycFW
	qhfXKR0B8Je6v18jaqxkpzEaHnpCJOaLy8S1q82wh82xFwWGU7MAkWkopF3CZqbs41cENGQLvMPXd
	+U/ChSlvRLWLikpqiKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGzD-0004xR-TV; Thu, 14 May 2020 16:45:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGyf-0004hk-1K; Thu, 14 May 2020 16:45:00 +0000
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CEB82078C;
 Thu, 14 May 2020 16:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589474696;
 bh=g3SxwpF3clkQJALOVOS+tQn/1CGjcxeO8y+OVIVgzLs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MkaHA97B58iZXj6+65p3f1T91JqZkJQzwpNHdo6vPoYYkZlAiJPG9LTjGGEzoD8pA
 qhM7eIfeZx0+oVEiIkdf2DfGSBvBeEu/V7L+uRo4KPVi3shknaHGjcN+BXN1wyhMR6
 j7tKkKLFYkeJvl/kGOseNs3Eyd6ombC2s+cqjtl8=
Received: by mail-ed1-f50.google.com with SMTP id r7so2913738edo.11;
 Thu, 14 May 2020 09:44:55 -0700 (PDT)
X-Gm-Message-State: AOAM532/N35O+7ATJvH9Yif6Mk+7OD38lxwJhK1MBVyf6lTcgeFjmgpc
 nQmVvS7CrXeu5DH0c9Y4LXXxzjTqZ6O7hmvxuw==
X-Google-Smtp-Source: ABdhPJxRZVleyxRQLDDwmHotVve0XmbOf8F5XT0JEZmHvi0qKhWaSF9zIPbdA7Kwd48aNi+JmKkiQ0/Yu2h9DjoweKo=
X-Received: by 2002:a05:6402:1f6:: with SMTP id
 i22mr4855618edy.271.1589474694258; 
 Thu, 14 May 2020 09:44:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
In-Reply-To: <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 15 May 2020 00:44:43 +0800
X-Gmail-Original-Message-ID: <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
Message-ID: <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_094457_142067_D1A63E25 
X-CRM114-Status: GOOD (  33.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMTTml6Ug6YCx5ZubIOS4i+WNiDExOjQy5a+r6YGT77ya
Cj4KPiBIaSBDaHVuLUt1YW5nLAo+Cj4gT24gMTQvNS8yMCAxNjoyOCwgQ2h1bi1LdWFuZyBIdSB3
cm90ZToKPiA+IEhpLCBFbnJpYzoKPiA+Cj4gPiBFbnJpYyBCYWxsZXRibyBTZXJyYSA8ZWJhbGxl
dGJvQGdtYWlsLmNvbT4g5pa8IDIwMjDlubQ15pyIMTTml6Ug6YCx5ZubIOS4iuWNiDEyOjQx5a+r
6YGT77yaCj4gPj4KPiA+PiBIaSBDaHVuLUt1YW5nLAo+ID4+Cj4gPj4gTWlzc2F0Z2UgZGUgRW5y
aWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4gZGVsCj4g
Pj4gZGlhIGR2LiwgMSBkZSBtYWlnIDIwMjAgYSBsZXMgMTc6MjU6Cj4gPj4+Cj4gPj4+IFVzZSB0
aGUgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVscGVyIHRvIGNyZWF0ZSBhIGNvbm5lY3RvciBmb3Ig
cGlwZWxpbmVzCj4gPj4+IHRoYXQgdXNlIGRybV9icmlkZ2UuIFRoaXMgYWxsb3dzIHNwbGl0dGlu
ZyBjb25uZWN0b3Igb3BlcmF0aW9ucyBhY3Jvc3MKPiA+Pj4gbXVsdGlwbGUgYnJpZGdlcyB3aGVu
IG5lY2Vzc2FyeSwgaW5zdGVhZCBvZiBoYXZpbmcgdGhlIGxhc3QgYnJpZGdlIGluCj4gPj4+IHRo
ZSBjaGFpbiBjcmVhdGluZyB0aGUgY29ubmVjdG9yIGFuZCBoYW5kbGluZyBhbGwgY29ubmVjdG9y
IG9wZXJhdGlvbnMKPiA+Pj4gaW50ZXJuYWxseS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTog
RW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiA+
Pj4gQWNrZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiA+Pgo+ID4+IEEg
Z2VudGxlIHBpbmcgb24gdGhpcywgSSB0aGluayB0aGF0IHRoaXMgb25lIGlzIHRoZSBvbmx5IG9u
ZSB0aGF0Cj4gPj4gc3RpbGwgbmVlZHMgYSByZXZpZXcgaW4gdGhlIHNlcmllcy4KPiA+Cj4gPiBU
aGlzIGlzIHdoYXQgSSByZXBseSBpbiBwYXRjaCB2MzoKPiA+Cj4KPiBTb3JyeSBmb3IgbWlzc2lu
ZyB0aGlzLgo+Cj4gPiBJIHRoaW5rIHRoZSBwYW5lbCBpcyB3cmFwcGVkIGludG8gbmV4dF9icmlk
Z2UgaGVyZSwKPiA+Cj4KPiBZZXMsIHlvdSBjYW4gaGF2ZSBmb3IgZXhhbXBsZToKPgo+IDEuIGRy
bV9icmlkZ2UgKG10a19kc2kpIC0+IGRybV9icmlkZ2UgKHBzODY0MCAtIGRzaS10by1lZHApIC0+
IGRybV9wYW5lbF9icmlkZ2UKPiAoZWRwIHBhbmVsKQo+Cj4gb3IgYQo+Cj4gMi4gZHJtX2JyaWRn
ZSAobXRrX2RzaSktPiBkcm1fcGFuZWxfYnJpZGdlIChkc2kgcGFuZWwpCj4KPiBUaGUgX2ZpcnN0
XyBvbmUgaXMgbXkgdXNlIGNhc2UKPgo+ID4gaWYgKHBhbmVsKSB7Cj4KPiBUaGlzIGhhbmRsZXMg
dGhlIHNlY29uZCBjYXNlLCB3aGVyZSB5b3UgYXR0YWNoIGEgZHNpIHBhbmVsLgo+Cj4gPiAgICAg
ZHNpLT5uZXh0X2JyaWRnZSA9IGRldm1fZHJtX3BhbmVsX2JyaWRnZV9hZGQoZGV2LCBwYW5lbCk7
Cj4gPgo+ID4gc28gdGhlIG5leHRfYnJpZGdlIGlzIGEgcGFuZWxfYnJpZGdlLCBpbiBpdHMgYXR0
YWNoIGZ1bmN0aW9uCj4gPiBwYW5lbF9icmlkZ2VfYXR0YWNoKCksCj4gPiBhY2NvcmRpbmcgdG8g
dGhlIGZsYWcgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCBpZiBub3QgZXhpc3QsCj4g
PiBpdCB3b3VsZCBjcmVhdGUgY29ubmVjdG9yIGFuZCBhdHRhY2ggY29ubmVjdG9yIHRvIHBhbmVs
Lgo+ID4KPiA+IEknbSBub3Qgc3VyZSB0aGlzIGZsYWcgd291bGQgZXhpc3Qgb3Igbm90LCBidXQg
Zm9yIGJvdGggY2FzZSwgaXQncyBzdHJhbmdlLgo+ID4gSWYgZXhpc3QsIHlvdSBjcmVhdGUgY29u
bmVjdG9yIGluIHRoaXMgcGF0Y2ggYnV0IG5vIHdoZXJlIHRvIGF0dGFjaAo+ID4gY29ubmVjdG9y
IHRvIHBhbmVsLgo+Cj4gWWVzLCBpbiBmYWN0LCB0aGlzIGlzIHRyYW5zaXRpb25hbCBwYXRjaCBu
ZWVkZWQsIGFzIG9uY2UgSSBjb252ZXJ0ZWQgbXRrX2RwaSwKPiBtdGtfZHNpIGFuZCBtdGtfaGRt
aSB0byB0aGUgbmV3IGRybV9icmlkZ2UgQVBJIHRoZSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0
KCkKPiB3aWxsIGJlIGRvbmUgaW4gbXRrX2RybV9kcnYuIFdlIHdpbGwgbmVlZCB0byBjYWxsIGRy
bV9icmlkZ2VfY29ubmVjdG9yX2luaXQgZm9yCj4gZHBpIGFuZCBkc2kgcGlwZXMgYW5kIHJlbW92
ZSB0aGF0IGNhbGwgZnJvbSBtdGtfZHNpIGFuZCBtdGtfZHBpIGRyaXZlcnMuIFRoZQo+IGdyYXBo
aWMgY29udHJvbGxlciBkcml2ZXIgc2hvdWxkIGNyZWF0ZSBjb25uZWN0b3JzIGFuZCBDUlRDcywg
YXMgZXhhbXBsZSB5b3UgY2FuCj4gdGFrZSBhIGxvb2sgYXQgZHJpdmVycy9ncHUvZHJtL29tYXBk
cm0vb21hcF9kcnYuYwo+CgpJIGhhdmUgc3VjaCBxdWVzdGlvbiBiZWNhdXNlIEkndmUgcmV2aWV3
ZWQgb21hcCdzIGRyaXZlci4gSW4gb21hcCdzCmRyaXZlciwgYWZ0ZXIgaXQgY2FsbCBkcm1fYnJp
ZGdlX2Nvbm5lY3Rvcl9pbml0KCksIGl0IGRvZXMgdGhpczoKCmlmIChwaXBlLT5vdXRwdXQtPnBh
bmVsKSB7CnJldCA9IGRybV9wYW5lbF9hdHRhY2gocGlwZS0+b3V0cHV0LT5wYW5lbCwKICAgICAg
cGlwZS0+Y29ubmVjdG9yKTsKaWYgKHJldCA8IDApCnJldHVybiByZXQ7Cn0KCkluIHRoaXMgcGF0
Y2gsIHlvdSBkb2VzIG5vdCBkbyB0aGlzLgoKPiA+IElmIG5vdCBleGlzdCwgdGhlIG5leHRfYnJp
Z2Ugd291bGQgY3JlYXRlIG9uZSBjb25uZWN0b3IgYW5kIHRoaXMgYnJpZ2UKPiA+IHdvdWxkIGNy
ZWF0ZSBhbm90aGVyIGNvbm5lY3Rvci4KPiA+Cj4gPiBJIHRoaW5rIGluIHlvdXIgY2FzZSwgbXRr
X2RzaSBkb2VzIG5vdCBkaXJlY3RseSBjb25uZWN0IHRvIGEgcGFuZWwsIHNvCj4KPiBFeGFjdGx5
Cj4KPiA+IEkgbmVlZCBhIGV4YWN0IGV4cGxhaW4uIE9yIHNvbWVvbmUgY291bGQgdGVzdCB0aGlz
IG9uIGEKPiA+IGRpcmVjdGx5LWNvbm5lY3QtcGFuZWwgcGxhdGZvcm0uCj4KPiBJIGRvbid0IHRo
aW5rIEkgYW0gYnJlYWtpbmcgdGhpcyB1c2UgY2FzZSBidXQgQUZBSUNTIHRoZXJlIGlzIG5vIHVz
ZXJzIGluCj4gbWFpbmxpbmUgdGhhdCBkaXJlY3RseSBjb25uZWN0IGEgcGFuZWwgdXNpbmcgdGhl
IG1lZGlhdGVrIGRyaXZlci4gQXMgSSBzYWlkIG15Cj4gdXNlIGNhc2UgaXMgdGhlIG90aGVyIHNv
IEkgY2FuJ3QgcmVhbGx5IHRlc3QuIERvIHlvdSBrbm93IGFueW9uZSB0aGF0IGNhbiB0ZXN0IHRo
aXM/CgpJJ20gbm90IHN1cmUgd2hvIGNhbiB0ZXN0IHRoaXMsIGJ1dCBbMV0sIHdoaWNoIGlzIHNl
bnQgYnkgWVQgU2hlbiBpbiBhCnNlcmllcywgaXMgYSBwYXRjaCB0byBzdXBwb3J0IGRzaSBjb21t
YW5kIG1vZGUgc28gZHNpIGNvdWxkIGRpcmVjdGx5CmNvbm5lY3QgdG8gcGFuZWwuCgpbMV0gaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGlu
dXguZ2l0L2NvbW1pdC9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWs/aD12NS43LXJjNSZpZD0yMTg5
ODgxNjgzMWZjNjBjOTJkZDYzNGFiNDMxNmEyNGRhN2ViNGFmCgpJdCdzIGJldHRlciB0aGF0IHNv
bWVvbmUgY291bGQgdGVzdCB0aGlzIGNhc2UsIGJ1dCBpZiBubyBvbmUgd291bGQKdGVzdCB0aGlz
LCBJIGNvdWxkIGFsc28gYWNjZXB0IGEgZ29vZC1sb29rIHBhdGNoLgoKUmVnYXJkcywKQ2h1bi1L
dWFuZy4KCj4KPiBUaGFua3MsCj4gIEVucmljCj4KPiA+Cj4gPiBSZWdhcmRzLAo+ID4gQ2h1bi1L
dWFuZy4KPiA+Cj4gPj4KPiA+PiBUaGFua3MsCj4gPj4gIEVucmljCj4gPj4KPiA+Pj4gLS0tCj4g
Pj4+Cj4gPj4+IENoYW5nZXMgaW4gdjQ6IE5vbmUKPiA+Pj4gQ2hhbmdlcyBpbiB2MzoKPiA+Pj4g
LSBNb3ZlIHRoZSBicmlkZ2UudHlwZSBsaW5lIHRvIHRoZSBwYXRjaCB0aGF0IGFkZHMgZHJtX2Jy
aWRnZSBzdXBwb3J0LiAoTGF1cmVudCBQaW5jaGFydCkKPiA+Pj4KPiA+Pj4gQ2hhbmdlcyBpbiB2
MjogTm9uZQo+ID4+Pgo+ID4+PiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyB8
IDEzICsrKysrKysrKysrKy0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+
ID4+PiBpbmRleCA0ZjNiZDA5NWMxZWUuLjQ3MWZjYWZkZjM0OCAxMDA2NDQKPiA+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+ID4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gPj4+IEBAIC0xNyw2ICsxNyw3IEBACj4gPj4+Cj4g
Pj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4gPj4+ICAjaW5jbHVkZSA8
ZHJtL2RybV9icmlkZ2UuaD4KPiA+Pj4gKyNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZV9jb25uZWN0
b3IuaD4KPiA+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+Cj4gPj4+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9vZi5oPgo+ID4+PiAgI2luY2x1ZGUgPGRybS9kcm1fcGFuZWwuaD4KPiA+Pj4g
QEAgLTE4Myw2ICsxODQsNyBAQCBzdHJ1Y3QgbXRrX2RzaSB7Cj4gPj4+ICAgICAgICAgc3RydWN0
IGRybV9lbmNvZGVyIGVuY29kZXI7Cj4gPj4+ICAgICAgICAgc3RydWN0IGRybV9icmlkZ2UgYnJp
ZGdlOwo+ID4+PiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlICpuZXh0X2JyaWRnZTsKPiA+Pj4g
KyAgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+ID4+PiAgICAgICAgIHN0
cnVjdCBwaHkgKnBoeTsKPiA+Pj4KPiA+Pj4gICAgICAgICB2b2lkIF9faW9tZW0gKnJlZ3M7Cj4g
Pj4+IEBAIC05NzcsMTAgKzk3OSwxOSBAQCBzdGF0aWMgaW50IG10a19kc2lfZW5jb2Rlcl9pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBtdGtfZHNpICpkc2kpCj4gPj4+ICAgICAg
ICAgICovCj4gPj4+ICAgICAgICAgZHNpLT5lbmNvZGVyLnBvc3NpYmxlX2NydGNzID0gMTsKPiA+
Pj4KPiA+Pj4gLSAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHNpLT5lbmNvZGVyLCAm
ZHNpLT5icmlkZ2UsIE5VTEwsIDApOwo+ID4+PiArICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0
YWNoKCZkc2ktPmVuY29kZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwKPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+ID4+
PiAgICAgICAgIGlmIChyZXQpCj4gPj4+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVw
X2VuY29kZXI7Cj4gPj4+Cj4gPj4+ICsgICAgICAgZHNpLT5jb25uZWN0b3IgPSBkcm1fYnJpZGdl
X2Nvbm5lY3Rvcl9pbml0KGRybSwgJmRzaS0+ZW5jb2Rlcik7Cj4gPj4+ICsgICAgICAgaWYgKElT
X0VSUihkc2ktPmNvbm5lY3RvcikpIHsKPiA+Pj4gKyAgICAgICAgICAgICAgIERSTV9FUlJPUigi
VW5hYmxlIHRvIGNyZWF0ZSBicmlkZ2UgY29ubmVjdG9yXG4iKTsKPiA+Pj4gKyAgICAgICAgICAg
ICAgIHJldCA9IFBUUl9FUlIoZHNpLT5jb25uZWN0b3IpOwo+ID4+PiArICAgICAgICAgICAgICAg
Z290byBlcnJfY2xlYW51cF9lbmNvZGVyOwo+ID4+PiArICAgICAgIH0KPiA+Pj4gKyAgICAgICBk
cm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKGRzaS0+Y29ubmVjdG9yLCAmZHNpLT5lbmNvZGVy
KTsKPiA+Pj4gKwo+ID4+PiAgICAgICAgIHJldHVybiAwOwo+ID4+Pgo+ID4+PiAgZXJyX2NsZWFu
dXBfZW5jb2RlcjoKPiA+Pj4gLS0KPiA+Pj4gMi4yNi4yCj4gPj4+Cj4gPj4+Cj4gPj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+IExpbnV4LW1l
ZGlhdGVrIG1haWxpbmcgbGlzdAo+ID4+PiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbWVkaWF0ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
