Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D11D51FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 21:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAVBGNiEsrl6co3xs4D0nwwTKwBz/VhYrn8l48+nUVU=; b=ud4+oo4DuihTbZ
	hHNjbfrPtgjnrDlIesUfYksQjtn6oxgwpBpCv8IvNOu2zxKxhn3cpQtK8CoWCmVslMnHzSLqP/wT3
	IHkVHvx8s1opflmXrVr7wPjPA0TGtbeHWku1lBpiVvvwEzRuZDzFZRKuCkTC8eJOai5i7uHn+Pka8
	IC68R7R18wa0/OcsW6Tpg9314L3iNFIoPVnHO7Pd8qRnDU6TrglE5Q54sDt8TRNlp7YVOMIfQSvHi
	cmPGvLARyPGDn/hsPTo1PtGv1qJu+rQbf9lREUZQUBaOPuPIL0o6FRtuvVsctxwiFP+J6j8jwsNbC
	2zqusJ2IdQhcX0RW7X2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMtE-0006uG-IO; Sat, 12 Oct 2019 19:17:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMt5-0006tm-KJ
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 19:17:12 +0000
Received: by mail-io1-xd44.google.com with SMTP id h144so28471992iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 12:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nnXOz+PRi58QoHjbu8c9O+WK1XkBB4tTUc2/yDJUsyM=;
 b=nS7hNDn8VxzSjURlBE78kATwaL7qPglBjODaQGeiluWc7L3KMJe9YDZ1nbMjCPg2k1
 NmdpST3hzIfFgjjtm2k71t7RDTL5skpsie5QY7FAslM77IIOl0JgTi9qvN5Effnmvm4F
 QTb+x6j7CdtoOqx0Ko0vBaWDwGLJt3fUamR6zgAoIXZSs+BG6kUPAhNPbypt9dl0GbBi
 6avvmlrRrLi3bU+ixPrRNh7CE6AxmSB4ZJTTTGxLBW8ymbvXkKkbKXHdhMDf3sn6Saua
 tCmiBnq8pNsZV5EM1pikTlxsuxSKlPYCnEuij0vSYKUvTLc171zWgrvQIwYl/pejOLK2
 DmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nnXOz+PRi58QoHjbu8c9O+WK1XkBB4tTUc2/yDJUsyM=;
 b=KUSsbTmdWoUBKTkZSM4xg/4qP7mNnOldo6XCya6qs5jGj6nxGG4Gd4H4k3BYM9+fQ3
 fVz+HzJUXbMlUcZhsJYp4BXrJPphju0nCzItFyaEaSPWA3fwsJow//vdXbW+28lsWMo0
 lxa4HhRs9JRs6apL6uh7dhaQXxTQR6l0pfXCdN9q/2IOtBeoJ6LmxbTkesU8zew5Zvc/
 coi3nTQtS44EN7PE5JSPftTpLkpi0C7BJAn/1JBZjTCPie8mtJ608TMRerowkmqXir4D
 zbFdglcXPeebwuE33N5zYuzPA+OQv9pkIvXRsgJRnEwbI0scKp+QQzA5gG/1fktJjfhN
 ztkw==
X-Gm-Message-State: APjAAAUudlVCxl14iqISzosMwFcFAte6phMgGXH2cGIAFQB8Aj4cp0hm
 ecYcTPd1z8qMVOBdSAV0bJgBQiydzAN6q6XP88o=
X-Google-Smtp-Source: APXvYqxrom5F5F07hOHPrw4GFvS2e6x6PfewZxqWfECjkUV75TnmcPI1mn3HAIFnkC8yXUkttiOV5Yh5LUUXo7eNKzc=
X-Received: by 2002:a02:a11e:: with SMTP id f30mr26789400jag.95.1570907829709; 
 Sat, 12 Oct 2019 12:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
 <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
 <2abf545b-023b-853a-95ef-ce99e1896a5d@web.de>
 <3fd6aa8b-2529-7ff5-3e19-05267101b2a4@web.de>
In-Reply-To: <3fd6aa8b-2529-7ff5-3e19-05267101b2a4@web.de>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sat, 12 Oct 2019 14:16:58 -0500
Message-ID: <CAEkB2ERCGJ6abNXfPNX7nbwkwD7qYTPYjYsNGzZwynn5CbPCzg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/imx: Fix error handling for a kmemdup() call in
 imx_pd_bind()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_121711_668223_63C38055 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>,
 kernel-janitors@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>,
 Peter Senna Tschudin <peter.senna@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Stephen McCamant <smccaman@umn.edu>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBPY3QgMTIsIDIwMTkgYXQgNDowNyBBTSBNYXJrdXMgRWxmcmluZyA8TWFya3VzLkVs
ZnJpbmdAd2ViLmRlPiB3cm90ZToKPgo+IEZyb206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVz
ZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiBEYXRlOiBTYXQsIDEyIE9jdCAyMDE5IDEwOjMwOjIxICsw
MjAwCj4KPiBUaGUgcmV0dXJuIHZhbHVlIGZyb20gYSBjYWxsIG9mIHRoZSBmdW5jdGlvbiDigJxr
bWVtZHVw4oCdIHdhcyBub3QgY2hlY2tlZAo+IGluIHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRp
b24uIFRodXMgYWRkIHRoZSBjb3JyZXNwb25kaW5nIGVycm9yIGhhbmRsaW5nLgo+Cj4gRml4ZXM6
IDE5MDIyYWFhZTY3N2RmYTE3MWE3MTllOWQxZmYwNDgyM2NlNjVhNjUgKCJzdGFnaW5nOiBkcm0v
aW14OiBBZGQgcGFyYWxsZWwgZGlzcGxheSBzdXBwb3J0IikKPiBTaWduZWQtb2ZmLWJ5OiBNYXJr
dXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pbXgvcGFyYWxsZWwtZGlzcGxheS5jIHwgNyArKysrKystCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaW14L3BhcmFsbGVsLWRpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
bXgvcGFyYWxsZWwtZGlzcGxheS5jCj4gaW5kZXggMzU1MThlNWRlMzU2Li4zOWM0Nzk4ZjU2YjYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2lteC9wYXJhbGxlbC1kaXNwbGF5LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaW14L3BhcmFsbGVsLWRpc3BsYXkuYwo+IEBAIC0yMTAsOCAr
MjEwLDEzIEBAIHN0YXRpYyBpbnQgaW14X3BkX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQgKmRhdGEpCj4gICAgICAgICAgICAgICAgIHJldHVybiAt
RU5PTUVNOwo+Cj4gICAgICAgICBlZGlkcCA9IG9mX2dldF9wcm9wZXJ0eShucCwgImVkaWQiLCAm
aW14cGQtPmVkaWRfbGVuKTsKPiAtICAgICAgIGlmIChlZGlkcCkKPiArICAgICAgIGlmIChlZGlk
cCkgewo+ICAgICAgICAgICAgICAgICBpbXhwZC0+ZWRpZCA9IGttZW1kdXAoZWRpZHAsIGlteHBk
LT5lZGlkX2xlbiwgR0ZQX0tFUk5FTCk7Cj4gKyAgICAgICAgICAgICAgIGlmICghaW14cGQtPmVk
aWQpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZtX2tmcmVlKGRldiwgaW14cGQpOwoK
WW91IHNob3VsZCBub3QgdHJ5IHRvIGZyZWUgaW14cGQgaGVyZSBhcyBpdCBpcyBhIHJlc291cmNl
LW1hbmFnZWQKYWxsb2NhdGlvbiB2aWEgZGV2bV9remFsbG9jKCkuIEl0IG1lYW5zIG1lbW9yeSBh
bGxvY2F0ZWQgd2l0aCB0aGlzCmZ1bmN0aW9uIGlzCiBhdXRvbWF0aWNhbGx5IGZyZWVkIG9uIGRy
aXZlciBkZXRhY2guIFNvLCB0aGlzIHBhdGNoIGludHJvZHVjZXMgYSBkb3VibGUtZnJlZS4KCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKyAgICAgICAgICAgICAg
IH0KPiArICAgICAgIH0KPgo+ICAgICAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmco
bnAsICJpbnRlcmZhY2UtcGl4LWZtdCIsICZmbXQpOwo+ICAgICAgICAgaWYgKCFyZXQpIHsKPiAt
LQo+IDIuMjMuMAo+CgoKLS0gCk5hdmlkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
