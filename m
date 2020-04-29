Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476791BE07F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veTbLB/ES5CjcwBPOH8xrAqIDWghpyfD2VxB4L3B8UA=; b=VOhR9JiUsU9fLl
	/kDtv7O2CRy/3SMTkXKWtBr/e7L/EXIVNNIPYdaBED7iNL7NYRqNAGFNW35ADsPkSGaRJK3SAx0A2
	5H5opdJ5iEdN+XAwspbJQKYEoSqlNmQpidsrhl5Vgtgnoq/1ECh+sB935tMAkM6xN2pwv0L0Qq18T
	HLEZmIcY+LUSch7jaUUpfRBToNlh880thl3rZ46ux+tkIqWzM6bVTbyYWOYg4pEAEXtOiNUmNYxTf
	cnXHsS6sk0UylSrtLGs+LOLOEH2nAwQemUzhjAR9FzYFbHUVfTEQNiL8+qqEnF1ucZuzqM9RcBVyg
	1d8VfpMygOFOAiunmBLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnVn-00019R-Vf; Wed, 29 Apr 2020 14:16:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnVW-00017z-Sx; Wed, 29 Apr 2020 14:16:16 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74B332186A;
 Wed, 29 Apr 2020 14:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588169772;
 bh=RTEeKjUF1paJxifL2yr5+8cCDLpxaByH64rNDTnk/74=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k2JQJ8fpMdmxLGcpMg47+0e4J+hktbo4FqU0UFKJ4IbHu6TLTZ9vHZMac3cIZyjBS
 bqTFMJrMFH/92PkZFdiLNCU5Ck/JVhKH2Bls7kkThGiWwWTG18q1neQ95aatEkGcVZ
 ETk250WB2U1zIwmtoNRomh7rVskItnXAz4fJCy+8=
Received: by mail-ed1-f46.google.com with SMTP id d16so1645517edv.8;
 Wed, 29 Apr 2020 07:16:12 -0700 (PDT)
X-Gm-Message-State: AGi0PubkKiZE36Mt4gidmXi1tV7KIg3VZDjgyyBnIwfWCjhyD5RFhzcv
 xZP0sQIjNaGO1Z4e1ESxkI2zri6qJwyFW4XPkQ==
X-Google-Smtp-Source: APiQypItwtCq5f4ckv/WzvZKMkryr9MF+5+w+xUswDZzzQpddnaUOnlv7PJd7bxb8Txbi68jXzKqiS8LDs7q6NzaYYQ=
X-Received: by 2002:aa7:dd95:: with SMTP id g21mr2635984edv.148.1588169770819; 
 Wed, 29 Apr 2020 07:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200420135045.27984-1-yuehaibing@huawei.com>
 <20200429071337.49528-1-yuehaibing@huawei.com>
In-Reply-To: <20200429071337.49528-1-yuehaibing@huawei.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 29 Apr 2020 22:15:58 +0800
X-Gmail-Original-Message-ID: <CAAOTY__5rwRQhuy4vT8OiAKMM2bQtCb7w5AW9B5rqL+UVdVpsg@mail.gmail.com>
Message-ID: <CAAOTY__5rwRQhuy4vT8OiAKMM2bQtCb7w5AW9B5rqL+UVdVpsg@mail.gmail.com>
Subject: Re: [PATCH v3 -next] drm/mediatek: Fix Kconfig warning
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_071614_963328_75A4F944 
X-CRM114-Status: GOOD (  14.77  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.orc, linux-kernel <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFl1ZUhhaWJpbmc6CgpZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+IOaWvCAy
MDIw5bm0NOaciDI55pelIOmAseS4iSDkuIvljYgzOjE05a+r6YGT77yaCj4KPiBXQVJOSU5HOiB1
bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNVEtfTU1TWVMKPiAgIERlcGVu
ZHMgb24gW25dOiAoQVJDSF9NRURJQVRFSyBbPXldIHx8IENPTVBJTEVfVEVTVCBbPW5dKSAmJiBD
T01NT05fQ0xLX01UODE3M19NTVNZUyBbPW5dCj4gICBTZWxlY3RlZCBieSBbeV06Cj4gICAtIERS
TV9NRURJQVRFSyBbPXldICYmIEhBU19JT01FTSBbPXldICYmIERSTSBbPXldICYmIChBUkNIX01F
RElBVEVLIFs9eV0gfHwgQVJNICYmIENPTVBJTEVfVEVTVCBbPW5dKSAmJiBDT01NT05fQ0xLIFs9
eV0gJiYgSEFWRV9BUk1fU01DQ0MgWz15XSAmJiBPRiBbPXldCj4KPiBNYWtlIERSTV9NRURJQVRF
SyBkZXBlbmQgb24gTVRLX01NU1lTIHRvIGZpeCB0aGlzLgoKUmV2aWV3ZWQtYnk6IENodW4tS3Vh
bmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPgoKPgo+IEZpeGVzOiAyYzc1OGUzMDFlZDkg
KCJzb2MgLyBkcm06IG1lZGlhdGVrOiBNb3ZlIHJvdXRpbmcgY29udHJvbCB0byBtbXN5cyBkZXZp
Y2UiKQo+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4K
PiAtLS0KPiB2MzogbWFrZSBEUk1fTUVESUFURUsgZGVwZW5kcyBvbiBNVEtfTU1TWVMKPiB2Mjog
c2VsZWN0IENPTU1PTl9DTEtfTVQ4MTczX01NU1lTIGluc3RlYWQgb2YgYWRkaW5nIERSTV9NRURJ
QVRFSyBkZXBlbmRlbmN5Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmln
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2NvbmZpZyBiL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnCj4gaW5kZXggYzQyMGY1YTNkMzNiLi5hYTc0YWFj
M2NiY2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvS2NvbmZpZwo+IEBAIC02LDEyICs2LDEyIEBA
IGNvbmZpZyBEUk1fTUVESUFURUsKPiAgICAgICAgIGRlcGVuZHMgb24gQ09NTU9OX0NMSwo+ICAg
ICAgICAgZGVwZW5kcyBvbiBIQVZFX0FSTV9TTUNDQwo+ICAgICAgICAgZGVwZW5kcyBvbiBPRgo+
ICsgICAgICAgZGVwZW5kcyBvbiBNVEtfTU1TWVMKPiAgICAgICAgIHNlbGVjdCBEUk1fR0VNX0NN
QV9IRUxQRVIKPiAgICAgICAgIHNlbGVjdCBEUk1fS01TX0hFTFBFUgo+ICAgICAgICAgc2VsZWN0
IERSTV9NSVBJX0RTSQo+ICAgICAgICAgc2VsZWN0IERSTV9QQU5FTAo+ICAgICAgICAgc2VsZWN0
IE1FTU9SWQo+IC0gICAgICAgc2VsZWN0IE1US19NTVNZUwo+ICAgICAgICAgc2VsZWN0IE1US19T
TUkKPiAgICAgICAgIHNlbGVjdCBWSURFT01PREVfSEVMUEVSUwo+ICAgICAgICAgaGVscAo+IC0t
Cj4gMi4xNy4xCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
