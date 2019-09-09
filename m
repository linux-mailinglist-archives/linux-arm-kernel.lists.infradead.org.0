Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94983AD439
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 09:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khmw4UP1spf8Vl3E8ZSAH9gCZEX8+g8Sd1mlHko7QQY=; b=rQV/ulA+JxOuXd
	S+5xl5NFYsxM14OO+czQrvrkHE/yHH42PteMZThKWAk3SUhf24DqC56CCunl4oz2ahPTAQRKeMNnP
	+f+iA7zOOVdB9EKZefbB64sx1vvTdk2desx5stXjE5e5KlfI9uge64bJhczuG3t/6wg1TRScrnHAT
	zlHul0TPQT7vpOROekuaM4kswKKuH5Ib456UtgWcsTlwzabSoloP8BZ29LjZ/5HlIFmBHKocXlm2b
	DhauWMd4e8HelVlF3jNdHi4EuJaja1Ko8VgDb1wR35qjIejMPwZybWjPdfUIkVk2Wr+56CTl6a6jI
	2MDclHW2VK2alN77CaXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EV6-0005lW-PG; Mon, 09 Sep 2019 07:54:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EUt-0005l6-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 07:54:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x897rGEC046111;
 Mon, 9 Sep 2019 02:53:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568015596;
 bh=PJzWMa6p8MTEkwFPcIePn/KpuFAu5Gxuc4FeHI2OLsU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=sPytFT56SwsM5xY3ut6akJIHVkQyNKskE6ehkQbXhhNt5mmb00dC5deHY0Eed85rU
 bC4kwhmnL+tpRHv85gLv8SP1erEvicU7ieKjzoHTgD+2/yZviUUik4DbBOgzafH3hv
 bro35PT7KUAabAqhz7mnosZfwnIPBmppHPNH0cGI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x897rGZQ085681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Sep 2019 02:53:16 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 02:53:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 02:53:15 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x897rCrV088897;
 Mon, 9 Sep 2019 02:53:12 -0500
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Bartosz Golaszewski <brgl@bgdev.pl>, Arnd Bergmann <arnd@arndb.de>
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
 <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
 <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
 <CAMpxmJX7osgdzx1Lc=627RpHZDs+ha8a6=AnhaQJ5HkLVp-xKg@mail.gmail.com>
 <CAK8P3a0+kfDbGrcFi5TLxNNpoOM6u6KRW+PaLFNSQJ9BTxX=-w@mail.gmail.com>
 <CAMRc=Mdsfbh1nF1a23Anig=w42s7=WzS3Uz7KK1P1aRNP2kFvg@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <d579c29c-6e30-8e2f-cbc0-0c4820ed6a72@ti.com>
Date: Mon, 9 Sep 2019 13:23:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=Mdsfbh1nF1a23Anig=w42s7=WzS3Uz7KK1P1aRNP2kFvg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_005403_689783_65361EC5 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDkvMTkgNzowMSBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBzb2IuLCA3
IHdyeiAyMDE5IG8gMTA6MjEgQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gbmFwaXNhxYIo
YSk6Cj4+Cj4+IE9uIFdlZCwgQXVnIDI4LCAyMDE5IGF0IDk6NTUgQU0gQmFydG9zeiBHb2xhc3pl
d3NraQo+PiA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4+PiDFm3IuLCAyOCBz
aWUgMjAxOSBvIDA5OjQ0IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNvbT4gbmFwaXNhxYIoYSk6
Cj4+Pgo+Pj4gQWN0dWFsbHkgSSB0ZXN0ZWQgdGhpcyB3aXRob3V0IHRoZSBjbG9ja3NvdXJjZSBj
b252ZXJzaW9uIGFuZCBpdCB3b3Jrcwo+Pj4gLSB0aGUgcHJldmlvdXMgZHJpdmVyIHN0aWxsIHNl
bGVjdHMgcmVsZXZhbnQgY29uZmlnIG9wdGlvbnMuIEJ1dCBJCj4+PiB0aGluayB5b3UncmUgcmln
aHQgLSBpdCdzIHdvcnRoIHBpY2tpbmcgdXAgYWxsIHRoZSBidWcgZml4ZXMgZnJvbSB0aGlzCj4+
PiBzZXJpZXMgYW5kIHRoZW4gbWVyZ2luZyB0aGUgcmVzdCBvbmNlIGRtMzY1IGlzc3VlIGlzIGZp
eGVkLgo+Pgo+PiBJIGp1c3QgaGFkIGFub3RoZXIgbG9vayBhdCB0aGUgc2VyaWVzIGFuZCBmb3Vu
ZCB0aGF0IHRoZSBkcml2ZXIgZml4ZXMKPj4gKHBhdGNoZXMgMSBhbmQgMikgYXJlIHF1ZXVlZCBp
biBsaW51eC1uZXh0LCBhbmQgcGF0Y2ggMyB3YXMgbWVyZ2VkLgo+Pgo+PiBJZiB5b3UgbGlrZSwg
SSBjb3VsZCBwdXQgdGhlIHJlbWFpbmluZyB0d28gcGF0Y2hlcyBpbnRvIHRoZSBhcm0vbGF0ZSBi
cmFuY2gKPj4gYW5kIHNlbmQgdGhhdCBhZnRlciB0aGUgbWVkaWEgYW5kIHN0YWdpbmcgdHJlZXMg
YXJlIG1lcmdlZCBpbnRvIG1haW5saW5lLgo+Pgo+PiAgICAgICBBcm5kCj4gCj4gU3VyZSEgTWFr
ZXMgc2Vuc2UuCj4gCj4gU2VraGFyOiB0aGlzIHNlcmllcyBkb2Vzbid0IGJyZWFrIGN1cnJlbnQg
bWFpbmxpbmUgKGkuZS4gd2l0aG91dCB0aGUKPiBjbG9ja3NvdXJjZSBzZXJpZXMpIHNvIEkgdGhp
bmsgd2UncmUgc2FmZSBldmVuIGZvciBkbTM2NS4KClllcywgSSBib290L05GUyB0ZXN0ZWQgdGhl
IHR3byBwYXRjaGVzIGFwcGxpZWQgb24gbGF0ZXN0IGxpbnV4LW5leHQgb24Kb24gYWxsIDYgRGFW
aW5jaSBTb0NzLgoKSSBoYXZlIGFja2VkIHRoZSBwYXRjaGVzIGluIGNhc2UgQXJuZCB3aWxsIGFw
cGx5IHRoZW0gZGlyZWN0bHkgdG8gQVJNLVNvQy4KClRoYW5rcywKU2VraGFyCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
