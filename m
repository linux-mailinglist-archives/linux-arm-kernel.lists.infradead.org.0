Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AD01D9AE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orFBv/fMFN7t7WyKRzt6h9DWqFUVaCEKNdan+gZCWkk=; b=cXBTke1f0XdXiY
	lOqN1nb9kz1CdBwhbFUpLRauK1nXzh9xLzLuWL93B+wF/7d9sbVxB7qaY/E0Q9544Xx72o3LQPDCJ
	XxRxqPJQ282hEDTBirIcQ2sV8B1z2jBz0FLvRDZxLl+unxINfGTvt/DhbSBIJv1n1G//T68QxaFD6
	vc03Ai8I7VIollywzLiVB7PGeWos/8rCTGTHs0w8EJcRH22YSDqzt2+p5IT61eNTycefzFV/4384J
	8y0GqVQuFcCQ6rr79AkQsNqVkPc7STDGz1FpP06u+cBd1OJIBjpgbLHxAOG5Rh7OX76I5ILZf++8K
	/GMyVLi7P0wkpnoahEHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3va-0000kG-Nz; Tue, 19 May 2020 15:13:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3vQ-0000jD-Fe; Tue, 19 May 2020 15:13:01 +0000
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB7AB20849;
 Tue, 19 May 2020 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589901180;
 bh=Qtbu//gwpsRgyyl9L3XkraCEI0EULn3K3RbouB9xCeQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jpt+oYEr/qLu8YKDUQL8P9cwVuslDQk/015dkdkhmsDRvEfaZtFD4uA1yKlYIYne8
 y47NLk9GyDnv+rTz3Jeuatg8RFxszmBvD4CUBHFaLvXDWHBGCz6HCGmaM6g1RiVCJp
 2AeoGrgrAa+hzL2tngLpK22kKiZ60Pq1WRzfandA=
Received: by mail-ed1-f43.google.com with SMTP id h16so11783985eds.5;
 Tue, 19 May 2020 08:12:59 -0700 (PDT)
X-Gm-Message-State: AOAM532bO8zdjdQyKr7tD8klN7UdqAvdpx+/ui32MW2Fb4+fhse69Zhv
 u8nsOIYlsBk5wYbkoGT3JRV1CXb+DlER4Aqg1g==
X-Google-Smtp-Source: ABdhPJyFxb862sEE7yUUw8vzjALBePQs+s7LW5KIAbQcfYVO9A/nJbgo93p98Hnk05Kl1tbTOxD4nL6FFB/3FC4K5Eo=
X-Received: by 2002:a50:e1c5:: with SMTP id m5mr12614504edl.47.1589901178288; 
 Tue, 19 May 2020 08:12:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200519094045.2447940-1-enric.balletbo@collabora.com>
In-Reply-To: <20200519094045.2447940-1-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 19 May 2020 23:12:46 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-m67cCrrgb=Ot9gnj22Ks3qDCDFQhELMA=m0xSB9mwWQ@mail.gmail.com>
Message-ID: <CAAOTY_-m67cCrrgb=Ot9gnj22Ks3qDCDFQhELMA=m0xSB9mwWQ@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: mtk_mt8173_hdmi_phy: Remove unnused const
 variables
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_081300_557089_B45DC198 
X-CRM114-Status: GOOD (  12.50  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyIMTnml6Ug6YCx5LqMIOS4i+WNiDU6NDDlr6vpgZPvvJoK
Pgo+IFRoZXJlIGFyZSBzb21lIGBzdGF0aWMgY29uc3QgdThgIHZhcmlhYmxlcyB0aGF0IGFyZSBu
b3QgdXNlZCwgdGhpcwo+IHRyaWdnZXJzIGEgd2FybmluZyBidWlsZGluZyB3aXRoIGBtYWtlIFc9
MWAsIGl0IGlzIHNhZmUgdG8gcmVtb3ZlIHRoZW0sCj4gc28gZG8gaXQgYW5kIG1ha2UgdGhlIGNv
bXBpbGVyIG1vcmUgaGFwcHkuCj4KClJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3Vh
bmcuaHVAa2VybmVsLm9yZz4KCj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJy
YSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiAtLS0KPgo+ICAuLi4vZ3B1L2RybS9t
ZWRpYXRlay9tdGtfbXQ4MTczX2hkbWlfcGh5LmMgICAgfCA0OCAtLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0OCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE3M19oZG1pX3BoeS5jIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19tdDgxNzNfaGRtaV9waHkuYwo+IGluZGV4IDFjMzU3NTM3MjIzMC4u
ODI3YjkzNzg2ZmFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
bXQ4MTczX2hkbWlfcGh5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210
ODE3M19oZG1pX3BoeS5jCj4gQEAgLTEwNyw1NCArMTA3LDYgQEAKPiAgI2RlZmluZSBSR1NfSERN
SVRYXzVUMV9FREcgICAgICAgICAgICAgKDB4ZiA8PCA0KQo+ICAjZGVmaW5lIFJHU19IRE1JVFhf
UExVR19UU1QgICAgICAgICAgICBCSVQoMCkKPgo+IC1zdGF0aWMgY29uc3QgdTggUFJFRElWWzNd
WzRdID0gewo+IC0gICAgICAgezB4MCwgMHgwLCAweDAsIDB4MH0sICAgLyogMjdNaHogKi8KPiAt
ICAgICAgIHsweDEsIDB4MSwgMHgxLCAweDF9LCAgIC8qIDc0TWh6ICovCj4gLSAgICAgICB7MHgx
LCAweDEsIDB4MSwgMHgxfSAgICAvKiAxNDhNaHogKi8KPiAtfTsKPiAtCj4gLXN0YXRpYyBjb25z
dCB1OCBUWERJVlszXVs0XSA9IHsKPiAtICAgICAgIHsweDMsIDB4MywgMHgzLCAweDJ9LCAgIC8q
IDI3TWh6ICovCj4gLSAgICAgICB7MHgyLCAweDEsIDB4MSwgMHgxfSwgICAvKiA3NE1oeiAqLwo+
IC0gICAgICAgezB4MSwgMHgwLCAweDAsIDB4MH0gICAgLyogMTQ4TWh6ICovCj4gLX07Cj4gLQo+
IC1zdGF0aWMgY29uc3QgdTggRkJLU0VMWzNdWzRdID0gewo+IC0gICAgICAgezB4MSwgMHgxLCAw
eDEsIDB4MX0sICAgLyogMjdNaHogKi8KPiAtICAgICAgIHsweDEsIDB4MCwgMHgxLCAweDF9LCAg
IC8qIDc0TWh6ICovCj4gLSAgICAgICB7MHgxLCAweDAsIDB4MSwgMHgxfSAgICAvKiAxNDhNaHog
Ki8KPiAtfTsKPiAtCj4gLXN0YXRpYyBjb25zdCB1OCBGQktESVZbM11bNF0gPSB7Cj4gLSAgICAg
ICB7MTksIDI0LCAyOSwgMTl9LCAgICAgICAvKiAyN01oeiAqLwo+IC0gICAgICAgezE5LCAyNCwg
MTQsIDE5fSwgICAgICAgLyogNzRNaHogKi8KPiAtICAgICAgIHsxOSwgMjQsIDE0LCAxOX0gICAg
ICAgIC8qIDE0OE1oeiAqLwo+IC19Owo+IC0KPiAtc3RhdGljIGNvbnN0IHU4IERJVkVOWzNdWzRd
ID0gewo+IC0gICAgICAgezB4MiwgMHgxLCAweDEsIDB4Mn0sICAgLyogMjdNaHogKi8KPiAtICAg
ICAgIHsweDIsIDB4MiwgMHgyLCAweDJ9LCAgIC8qIDc0TWh6ICovCj4gLSAgICAgICB7MHgyLCAw
eDIsIDB4MiwgMHgyfSAgICAvKiAxNDhNaHogKi8KPiAtfTsKPiAtCj4gLXN0YXRpYyBjb25zdCB1
OCBIVFBMTEJQWzNdWzRdID0gewo+IC0gICAgICAgezB4YywgMHhjLCAweDgsIDB4Y30sICAgLyog
MjdNaHogKi8KPiAtICAgICAgIHsweGMsIDB4ZiwgMHhmLCAweGN9LCAgIC8qIDc0TWh6ICovCj4g
LSAgICAgICB7MHhjLCAweGYsIDB4ZiwgMHhjfSAgICAvKiAxNDhNaHogKi8KPiAtfTsKPiAtCj4g
LXN0YXRpYyBjb25zdCB1OCBIVFBMTEJDWzNdWzRdID0gewo+IC0gICAgICAgezB4MiwgMHgzLCAw
eDMsIDB4Mn0sICAgLyogMjdNaHogKi8KPiAtICAgICAgIHsweDIsIDB4MywgMHgzLCAweDJ9LCAg
IC8qIDc0TWh6ICovCj4gLSAgICAgICB7MHgyLCAweDMsIDB4MywgMHgyfSAgICAvKiAxNDhNaHog
Ki8KPiAtfTsKPiAtCj4gLXN0YXRpYyBjb25zdCB1OCBIVFBMTEJSWzNdWzRdID0gewo+IC0gICAg
ICAgezB4MSwgMHgxLCAweDAsIDB4MX0sICAgLyogMjdNaHogKi8KPiAtICAgICAgIHsweDEsIDB4
MiwgMHgyLCAweDF9LCAgIC8qIDc0TWh6ICovCj4gLSAgICAgICB7MHgxLCAweDIsIDB4MiwgMHgx
fSAgICAvKiAxNDhNaHogKi8KPiAtfTsKPiAtCj4gIHN0YXRpYyBpbnQgbXRrX2hkbWlfcGxsX3By
ZXBhcmUoc3RydWN0IGNsa19odyAqaHcpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBtdGtfaGRtaV9w
aHkgKmhkbWlfcGh5ID0gdG9fbXRrX2hkbWlfcGh5KGh3KTsKPiAtLQo+IDIuMjYuMgo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
