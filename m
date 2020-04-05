Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4026319EB2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 14:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MBuvSrW6kBznYqmisx3+hnzE2SSn0lXlr5EyNLur3/k=; b=MsDWwPwR792QTM
	en6uZWhENHRuE8sJqOACozNt+oNnUMyVhpkAJ3tQmhYOCGRoTdYmxyaMcsTR3IJFY54YiP+x1DzlN
	Ybx2rnJN0gA0tWnUJ3X0J+EtSSBlV6xhViZLR8JhvA6lgOwhi6iCJ9BWWy1v3dLB6ZaRR8FbCtgYv
	0gEh9BKe7cgqws83OtyrdHVPb6KH1IFIODZnaqegwfFDFxZdP8BOdzMtUl2+cmonc5HBF2vznD6Y+
	gVPVcXd4W6TCwMEGuUxau3v04JszO3XyksYc2wy3MCTpxjARtHBrfhDV2in5QVH81sWdCHhB2h+5m
	l2Y7LO5fBvIgVsk0PRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL4Eq-0007t5-3h; Sun, 05 Apr 2020 12:18:56 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL4Ej-0007sH-L9
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 12:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586089106;
 bh=Q5RSUdBxAuq3Pu0Is6KAfaOaMHcgrkIjqfGuQ0cJiDQ=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=KAubVv0AbUBupdEPKPoBx5XCZ+3/7aejCVkTn72IyJfm43BmImSN6UfNHIyM48XkE
 zuEfz3eyRMcNC5XNrzIZMMj6s2sHxSftKMAHqPQvAhoO7zdvHcMQdSpQTfcrhwKCBj
 IBfgwL/EvtyFU4YqoQ4c2hzu1S+Cu6BNF6wApebI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Mcni1-1jcK8G2zkv-00Hzf2; Sun, 05
 Apr 2020 14:18:25 +0200
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] drm/exynos: Delete an error message in three functions
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <57b725ed-f705-b5e1-0da6-3d16801c7c85@web.de>
Date: Sun, 5 Apr 2020 14:18:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:yxAjxBa23Kh2Wy8xweg0fTEFSRuPTdylWTMCAmjl+mPFViWxPlf
 8G83QYVy9DM4gpO5u+mfNtzKMsXZDCHQTLHW9ou14NopyXBpmehBoGKyZedWr+pMylO8vEI
 /ABdguiqIeJNipLfgzXBHwC42CTqihzIbdf21FdV+eZpX9ghftIj62DbUMWMSUsRxJGanCr
 XHLHXaQ06FxEPK4kMKDrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ss7mf0/IfsU=:WSCB+Y5HH0fDrGkZEbykLM
 QM/rKmMpUSe4F/cPiqw20uRU0YqP53IWhLXFVeHexb4P4aZK0a0eGH2izX2Di25xPYy665B5b
 ERUhYEyR+HxytGtngKILyA9OYeZVlVfFwg8QJdN9sBEpzlY5CWZuDoreZzzdFo3iiqoalpVkh
 OjHWmpf/CZvjNVe+PDiSoa+M2tVEIXnUOAb1XNOWw7qrr0lyee39kdYC5aPj+WrULIX7/wNSE
 vq6qxHqiEDhboIDlLPZYh8hZqSJJ1AXxvt/Nd2VUGZewGiIg8howyNnOJ3vl2z4QscXPy9Q/a
 RlSW2LE41fX/uq9OvxdJDPTbLWUV7H7b2FvvS7IgjpqNjDWRJLjj1X9aubmotIpqC+ON4xpIy
 KPv925EHV2+KgOeNvzYw04u3vQeX5lrMAKOXB3qfmQvMWjPpxhb7ZSGtJ3307xFipdKgS4L0z
 lDfP30r53TuPfsPLOgGO07rRzos4iQmEn4R06b15lBZDnpVaK8fOM9XxTYVhsqG25IgiNw/5d
 jLUdK0k+pshdoFLiUxhSzmXNog8vTdHHMoGvisK29K0dbKL0AVoZS2hu1TVJXMT3KrXfP96vp
 QkU4uX/CvKIdB4cNU4xTMO0r86TkCAaMM0/9DMgCsZrcKxGIAivx3Br2zyeyms/0F/eT3QacZ
 ucC+Jl3IdZYHbyy9jWX2i7lpps0t6c0+W0FUubPSB8i2OcgmmGzC4gDD0KMfML88IVllXbw4n
 8qXx/jorJ5rjl1iO+08bdNBkwWkzSh3PLJfuU6+uqNbGhTZeQCaWvnmNMYHuc33MlZEmkaOWH
 hDStB95DQV4KWMVCiKncjSFnqtkNrh6s70w4AAWmer+jbX1LLJY8CNDMRNxzDglWhrsKyyugB
 Z3HC+YNkPftL6YnXM6rXR2ClnAN5se0uVJ7eJ4hm3dxvXYVk8X6n12BYFAi5k4lkUzFTj/bUy
 k4ipbiiMBg+OJ0NWFMYKmWwLWZ4rNipN6xsfCGJmIuGuAbtgNXuapSGWT6wt9icMBWOuI5t0y
 BfcoEGRjFLC42FAKdDaf2bNi1Ljxa6Jj7U3gVCT+y3PsQJ+bLQUd3oURXgNLlhd77fvl0bgR0
 aTnKLlWOAfxIwhLs3BF3w/tmMIFfIiRpxtNvZJkI8mkT6DFEXpEZH4Fg97FtTyeDf3Iwca8BL
 Vdt3zd0GaPOGvjADqKpkjNoeii34vCfOQ8qixZ3EXM/ogyAKG+hWo/L4yUjRKlK84tIngBlIw
 nVUJSC5igMn5IutvE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_051849_986325_4E87BDE3 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTdW4sIDUgQXByIDIwMjAgMTQ6MTA6MDkgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IHJlZHVuZGFu
dCBtZXNzYWdlcyBmb3IgdGhlIGV4Y2VwdGlvbiBoYW5kbGluZyBpbiB0aGUKY2FsbGluZyBmdW5j
dGlvbnMuCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNp
LmMgICAgIHwgNCArLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fcm90YXRv
ci5jIHwgNCArLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fc2NhbGVyLmMg
IHwgNCArLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNpLmMKaW5kZXggZTA4MGFhOTIz
MzhjLi5hMDBjNmRkMTZjOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5
bm9zX2RybV9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNp
LmMKQEAgLTE4MTMsMTAgKzE4MTMsOCBAQCBzdGF0aWMgaW50IGV4eW5vc19kc2lfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl9CgogCWRzaS0+aXJxID0gcGxhdGZvcm1fZ2V0
X2lycShwZGV2LCAwKTsKLQlpZiAoZHNpLT5pcnEgPCAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiZmFp
bGVkIHRvIHJlcXVlc3QgZHNpIGlycSByZXNvdXJjZVxuIik7CisJaWYgKGRzaS0+aXJxIDwgMCkK
IAkJcmV0dXJuIGRzaS0+aXJxOwotCX0KCiAJaXJxX3NldF9zdGF0dXNfZmxhZ3MoZHNpLT5pcnEs
IElSUV9OT0FVVE9FTik7CiAJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShkZXYsIGRz
aS0+aXJxLCBOVUxMLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3Nf
ZHJtX3JvdGF0b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9yb3RhdG9y
LmMKaW5kZXggZGFmYTg3YjgyMDUyLi4yZDk0YWZiYTAzMWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9yb3RhdG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2V4eW5vcy9leHlub3NfZHJtX3JvdGF0b3IuYwpAQCAtMjkzLDEwICsyOTMsOCBAQCBzdGF0aWMg
aW50IHJvdGF0b3JfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJu
IFBUUl9FUlIocm90LT5yZWdzKTsKCiAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsK
LQlpZiAoaXJxIDwgMCkgewotCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgaXJxXG4iKTsK
KwlpZiAoaXJxIDwgMCkKIAkJcmV0dXJuIGlycTsKLQl9CgogCXJldCA9IGRldm1fcmVxdWVzdF9p
cnEoZGV2LCBpcnEsIHJvdGF0b3JfaXJxX2hhbmRsZXIsIDAsIGRldl9uYW1lKGRldiksCiAJCQkg
ICAgICAgcm90KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2Ry
bV9zY2FsZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9zY2FsZXIuYwpp
bmRleCA5M2M0M2M4ZDkxNGUuLmNlMTg1NzEzOGY4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2V4eW5vcy9leHlub3NfZHJtX3NjYWxlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX2RybV9zY2FsZXIuYwpAQCAtNTAyLDEwICs1MDIsOCBAQCBzdGF0aWMgaW50IHNj
YWxlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gUFRSX0VS
UihzY2FsZXItPnJlZ3MpOwoKIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwotCWlm
IChpcnEgPCAwKSB7Ci0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCBpcnFcbiIpOworCWlm
IChpcnEgPCAwKQogCQlyZXR1cm4gaXJxOwotCX0KCiAJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVh
ZGVkX2lycShkZXYsIGlycSwgTlVMTCwJc2NhbGVyX2lycV9oYW5kbGVyLAogCQkJCQlJUlFGX09O
RVNIT1QsICJkcm1fc2NhbGVyIiwgc2NhbGVyKTsKLS0KMi4yNi4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
