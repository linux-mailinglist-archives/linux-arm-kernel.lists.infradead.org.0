Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8678A1BC47E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAESl2/r8PAc0CbRUQt6Y0TX9xLcvRg11mnRb/mU+eg=; b=k+8AWC7P8MKzaT
	35ET6pqZpwDw39eFmtJI/ydfBAGp2UbjJK1/8wDkgDnrBX9HSVVQ//ZMnoctGESQpIe6z87fl8m+V
	5n9zGS1srNuDxJA95t8qYFvbK9dbCfzk9iBZOWGnf70mQQ9TmQQaPgZmaMn+HAygXVRsY6tzCr86O
	wY1BCaFIznuSJHVxFdnBL8yzomAGOu3C2yn8DSuuiyRZ13+6DJRdPUy9ZToh5X/H9h4r1Yk3+Hfeg
	5nRjqTStc/3oY7uhdJJJelfrzxTQe5nNTDhD4hVc+hE4j6HdCOa9jwfykl9c+YC3J8rD0TTHNKmrf
	Iie1twEUqkpY96THIHaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSkD-00031k-Af; Tue, 28 Apr 2020 16:06:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSk1-00030U-0j; Tue, 28 Apr 2020 16:05:50 +0000
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 362C121D80;
 Tue, 28 Apr 2020 16:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588089948;
 bh=ha74p5osPq/Fc3CF17rmXyTy7T6X5ysJvW80Tys9jaY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0dbcMJdky6/KE5oqf7xFxKV0nvxCb348kb1V53yMGUJLFKWOd99FZ18n6s9Cczajr
 wdThMp0nDIOERbNXcnSnT6pkavy7nlA3ZNrb6GMRPc/rjX+ChkfWr9ZpJG5/MkQA9t
 W6nkvGowbT6pbDsVK2HQ+a48pjG1aiPKGAaH52XY=
Received: by mail-ed1-f51.google.com with SMTP id l3so16824461edq.13;
 Tue, 28 Apr 2020 09:05:48 -0700 (PDT)
X-Gm-Message-State: AGi0Pua0z3cxxqBj6SMoziYKKlaLX6OTlrNiXKZUmQiHcDfH1nbDL8lA
 mRatLA7rx7YZbCKnF9PETF3Re6mfm1ytOzukCQ==
X-Google-Smtp-Source: APiQypKHSVjOdbrgmCD0Ai4eyQOpggee1czWxlBZjdwbOJTigW/nq8+SgqWYpQTsun99LAQNf5hO0fvn3WJwMJdxsNA=
X-Received: by 2002:aa7:dd95:: with SMTP id g21mr22982067edv.148.1588089946412; 
 Tue, 28 Apr 2020 09:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200420135045.27984-1-yuehaibing@huawei.com>
 <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
 <20200428145507.GQ3456981@phenom.ffwll.local>
In-Reply-To: <20200428145507.GQ3456981@phenom.ffwll.local>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 29 Apr 2020 00:05:34 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-tNGOaKT9tqT7YSf1hWjShCSMaDxmU2vAqNAGMqPTPBQ@mail.gmail.com>
Message-ID: <CAAOTY_-tNGOaKT9tqT7YSf1hWjShCSMaDxmU2vAqNAGMqPTPBQ@mail.gmail.com>
Subject: Re: [PATCH -next] drm/mediatek: Fix Kconfig warning
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, YueHaibing <yuehaibing@huawei.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, 
 Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>, 
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, 
 DRI Development <dri-devel@lists.freedesktop.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090549_105522_BF7D01A1 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiDmlrwgMjAyMOW5tDTmnIgyOOaXpSDpgLHk
uowg5LiL5Y2IMTA6NTXlr6vpgZPvvJoKPgo+IE9uIFN1biwgQXByIDI2LCAyMDIwIGF0IDA0OjIw
OjM5UE0gKzA4MDAsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gPiBIaSwgWXVlSGFpYmluZzoKPiA+
Cj4gPiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+IOaWvCAyMDIw5bm0NOaciDIw
5pelIOmAseS4gCDkuIvljYgxMDowNOWvq+mBk++8mgo+ID4gPgo+ID4gPiBXQVJOSU5HOiB1bm1l
dCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNVEtfTU1TWVMKPiA+ID4gICBEZXBl
bmRzIG9uIFtuXTogKEFSQ0hfTUVESUFURUsgWz15XSB8fCBDT01QSUxFX1RFU1QgWz1uXSkgJiYg
Q09NTU9OX0NMS19NVDgxNzNfTU1TWVMgWz1uXQo+ID4gPiAgIFNlbGVjdGVkIGJ5IFt5XToKPiA+
ID4gICAtIERSTV9NRURJQVRFSyBbPXldICYmIEhBU19JT01FTSBbPXldICYmIERSTSBbPXldICYm
IChBUkNIX01FRElBVEVLIFs9eV0gfHwgQVJNICYmIENPTVBJTEVfVEVTVCBbPW5dKSAmJiBDT01N
T05fQ0xLIFs9eV0gJiYgSEFWRV9BUk1fU01DQ0MgWz15XSAmJiBPRiBbPXldCj4gPiA+Cj4gPiA+
IEFkZCBtaXNzaW5nIGRlcGVuZGN5IENPTU1PTl9DTEtfTVQ4MTczX01NU1lTIHRvIGZpeCB0aGlz
Lgo+ID4KPiA+IEZyb20gdGhlIGNvZGUgcmVsYXRpb25zaGlwLCBtZWRpYXRlayBkcm0gaGFzIHJl
bGF0aW9uIHdpdGggbWVkaWF0ZWsKPiA+IG1tc3lzLCBhbmQgbWVkaWF0ZWsgbW1zeXMgaGFzIHJl
bGF0aW9uIHdpdGggbWVkYWl0ZWsgY2xvY2suCj4gPiBTbyBJIHRoaW5rIGl0J3MgYmV0dGVyIHRo
YXQgQ09ORklHX01US19NTVNZUyBzZWxlY3QKPiA+IENPTkZJR19DT01NT05fQ0xLX01UODE3M19N
TVNZUy4KPgo+IHNlbGVjdCBpcyB2ZXJ5IHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIGFuZCBzaG91bGQg
b25seSBiZSB1c2VkIGZvciBLY29uZmlnCj4gc3ltYm9scyBub3QgdmlzaWJsZSB0byB1c2Vycy4K
Ck9rYXksIG1heWJlIHRoZSBiZXR0ZXIgc29sdXRpb24gaXMgdGhhdCBEUk1fTUVESUFURUsgZGVw
ZW5kIG9uIE1US19NTVNZUy4KClJlZ2FyZHMsCkNodW4tS3VhbmcuCgo+IC1EYW5pZWwKPgo+ID4K
PiA+IFJlZ2FyZHMsCj4gPiBDaHVuLUt1YW5nLgo+ID4KPiA+ID4KPiA+ID4gRml4ZXM6IDJjNzU4
ZTMwMWVkOSAoInNvYyAvIGRybTogbWVkaWF0ZWs6IE1vdmUgcm91dGluZyBjb250cm9sIHRvIG1t
c3lzIGRldmljZSIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdA
aHVhd2VpLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2Nv
bmZpZyB8IDEgKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2NvbmZpZyBiL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnCj4gPiA+IGluZGV4IGM0MjBmNWEzZDMzYi4uNGQ5
YjU1NDBkZTY4IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2Nv
bmZpZwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2NvbmZpZwo+ID4gPiBA
QCAtNiw2ICs2LDcgQEAgY29uZmlnIERSTV9NRURJQVRFSwo+ID4gPiAgICAgICAgIGRlcGVuZHMg
b24gQ09NTU9OX0NMSwo+ID4gPiAgICAgICAgIGRlcGVuZHMgb24gSEFWRV9BUk1fU01DQ0MKPiA+
ID4gICAgICAgICBkZXBlbmRzIG9uIE9GCj4gPiA+ICsgICAgICAgZGVwZW5kcyBvbiBDT01NT05f
Q0xLX01UODE3M19NTVNZUwo+ID4gPiAgICAgICAgIHNlbGVjdCBEUk1fR0VNX0NNQV9IRUxQRVIK
PiA+ID4gICAgICAgICBzZWxlY3QgRFJNX0tNU19IRUxQRVIKPiA+ID4gICAgICAgICBzZWxlY3Qg
RFJNX01JUElfRFNJCj4gPiA+IC0tCj4gPiA+IDIuMTcuMQo+ID4gPgo+ID4gPgo+Cj4gLS0KPiBE
YW5pZWwgVmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
