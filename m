Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2246E1C17B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKako02bwnuy6iDhdh9CUZ/G/jdyRxL6/FVr36mdrcM=; b=p3fYDtCj4eq1DX
	bIzXBrmmwG8fTqIj8anQe+fF4OE3rCahBSwtK5RSJ4zOQtK7WXbsQZvoT9s6xr++xKRHYrhJpW3wp
	9kJ/3qETc1SaKCVIPUK0pL2DsWkzo9JyOVPasucCc2Tdm5bWMk6dClzwaF6uGsXabVdPBDP5PB4mj
	OhN6Ff2puaDiodfYQLbPC+j4ATDb/kfztAJZ/0Blr8T/JDUbu1kYVWa1XchgPUS81jMXTXz8/lMIs
	VYab3m2PV7eSwvs4Ag0KWwpWNNhNfzFwlMRMMoNkLHe/hN0N6S9Pndk9LiI3+3OiQWoEbKrwchEbX
	N7sQpqZ0roE9lumW64lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWd6-0006a1-A3; Fri, 01 May 2020 14:27:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWcv-0006YU-Dt; Fri, 01 May 2020 14:26:56 +0000
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1B662173E;
 Fri,  1 May 2020 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588343213;
 bh=GWJwkvt0+8TQNxyG05ofo9WUCas5EChknR0I2IxYgog=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=J6GWbaettKOvk+oK9TnS51EkolS6QgEhWLhlRy8UMkMDxWBHVuBv0+IIaYp3/dbh3
 HltRsMIZPGLN1o4ykQmmop96R4hv/4qpB/f5wZtLIdF6am4OujLdcpaQk45OAm3HnP
 29dXCjiaGEX2RTL6bdKguIrkBNsgDAXISfnoZx/o=
Received: by mail-ed1-f44.google.com with SMTP id a8so7390388edv.2;
 Fri, 01 May 2020 07:26:52 -0700 (PDT)
X-Gm-Message-State: AGi0PuYn/w1tHV1EJ8RAmBv4o7o7gutLGIlBOFesy0hzOMFS3yIScLwb
 91ID6GbbpzoLqWjXgNEM7G8HRzulZ3+VjtJ4Hw==
X-Google-Smtp-Source: APiQypJN7wZ4G/nD2HBUrq+csPQL5onomudMxtaCzeqVlUIAwpqC80OOjadus0NF19FGaH+HaaWVunxmRN799sICD4s=
X-Received: by 2002:aa7:dcd7:: with SMTP id w23mr3810850edu.300.1588343211141; 
 Fri, 01 May 2020 07:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
 <20200417150614.2631786-8-enric.balletbo@collabora.com>
In-Reply-To: <20200417150614.2631786-8-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 1 May 2020 22:26:37 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8uWP80ZMO5ZQGLJ5YLFZcmGjZwc33Hi_oXsCPj5Yr89A@mail.gmail.com>
Message-ID: <CAAOTY_8uWP80ZMO5ZQGLJ5YLFZcmGjZwc33Hi_oXsCPj5Yr89A@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_072654_613962_38BE4378 
X-CRM114-Status: GOOD (  18.22  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMTfml6Ug6YCx5LqUIOS4i+WNiDExOjA25a+r6YGT77ya
Cj4KPiBVc2UgdGhlIGRybV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlciB0byBjcmVhdGUgYSBjb25u
ZWN0b3IgZm9yIHBpcGVsaW5lcwo+IHRoYXQgdXNlIGRybV9icmlkZ2UuIFRoaXMgYWxsb3dzIHNw
bGl0dGluZyBjb25uZWN0b3Igb3BlcmF0aW9ucyBhY3Jvc3MKPiBtdWx0aXBsZSBicmlkZ2VzIHdo
ZW4gbmVjZXNzYXJ5LCBpbnN0ZWFkIG9mIGhhdmluZyB0aGUgbGFzdCBicmlkZ2UgaW4KPiB0aGUg
Y2hhaW4gY3JlYXRpbmcgdGhlIGNvbm5lY3RvciBhbmQgaGFuZGxpbmcgYWxsIGNvbm5lY3RvciBv
cGVyYXRpb25zCj4gaW50ZXJuYWxseS4KPgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJv
IGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4KPiBDaGFuZ2Vz
IGluIHYzOgo+IC0gTW92ZSB0aGUgYnJpZGdlLnR5cGUgbGluZSB0byB0aGUgcGF0Y2ggdGhhdCBh
ZGRzIGRybV9icmlkZ2Ugc3VwcG9ydC4gKExhdXJlbnQgUGluY2hhcnQpCj4KPiBDaGFuZ2VzIGlu
IHYyOiBOb25lCj4KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyB8IDEzICsr
KysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
IGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+IGluZGV4IDE1NzA5N2M2M2Iy
My4uODVmNzZiMDFhZTRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gQEAg
LTE3LDYgKzE3LDcgQEAKPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4g
ICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2Vf
Y29ubmVjdG9yLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+Cj4gICNpbmNsdWRl
IDxkcm0vZHJtX29mLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX3BhbmVsLmg+Cj4gQEAgLTE4Myw2
ICsxODQsNyBAQCBzdHJ1Y3QgbXRrX2RzaSB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2VuY29kZXIg
ZW5jb2RlcjsKPiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlIGJyaWRnZTsKPiAgICAgICAgIHN0
cnVjdCBkcm1fYnJpZGdlICpuZXh0X2JyaWRnZTsKPiArICAgICAgIHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3I7Cj4gICAgICAgICBzdHJ1Y3QgcGh5ICpwaHk7Cj4KPiAgICAgICAgIHZv
aWQgX19pb21lbSAqcmVnczsKPiBAQCAtOTc3LDEwICs5NzksMTkgQEAgc3RhdGljIGludCBtdGtf
ZHNpX2VuY29kZXJfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgbXRrX2RzaSAq
ZHNpKQo+ICAgICAgICAgICovCj4gICAgICAgICBkc2ktPmVuY29kZXIucG9zc2libGVfY3J0Y3Mg
PSAxOwo+Cj4gLSAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHNpLT5lbmNvZGVyLCAm
ZHNpLT5icmlkZ2UsIE5VTEwsIDApOwo+ICsgICAgICAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2go
JmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJpZGdlLCBOVUxMLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SKTsKPiAgICAgICAgIGlm
IChyZXQpCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2NsZWFudXBfZW5jb2RlcjsKPgo+ICsg
ICAgICAgZHNpLT5jb25uZWN0b3IgPSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KGRybSwgJmRz
aS0+ZW5jb2Rlcik7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+Y29ubmVjdG9yKSkgewo+ICsg
ICAgICAgICAgICAgICBEUk1fRVJST1IoIlVuYWJsZSB0byBjcmVhdGUgYnJpZGdlIGNvbm5lY3Rv
clxuIik7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZHNpLT5jb25uZWN0b3IpOwo+
ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVwX2VuY29kZXI7Cj4gKyAgICAgICB9Cj4g
KyAgICAgICBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKGRzaS0+Y29ubmVjdG9yLCAmZHNp
LT5lbmNvZGVyKTsKPiArCgpJJ20gbm90IHZlcnkgY2xlYXIgYWJvdXQgaG93IGJyaWdlLWNvbm5l
Y3RvciB3b3JrcywgYnV0IHdoeSBjb25uZWN0b3IKZG9lcyBub3QgYXR0YWNoIHRvIHBhbmVsPwoK
UmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4gICAgICAgICByZXR1cm4gMDsKPgo+ICBlcnJfY2xlYW51
cF9lbmNvZGVyOgo+IC0tCj4gMi4yNS4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
