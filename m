Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEA4CF109
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 05:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1N117OrLvaEwWrsQHgxr0ob28wZT9iaHsR3RfqejWo=; b=rh1IUyo9C9Qq1s
	YaNjdkrkGkOnsvSyHAD3kZyC9hDZueIRs589wMUv2S6BNxB6Q485urzUmvSfPIQzkx2YJxxwvuStg
	lDyAV5mrtx++iuIQ/pFJgur2/6jyvX8+ePg0+k7f1TOhk42ZOA4WVpedGxgDcmtKVKdPOm4sWI9Yn
	5u3kSJ77d5t4X6DoBZTQ/iBDiWtNWhEMZSfoxJMSyCKUzhj+iyakvTSV8p1EJ4brWwcO5I8/t8TAo
	UlN1DYy+xBpPJpR7oDaRzkeE/nbIcjXYOjCrNF966tsrQezHnmPh/kksNCYRjD4t7v71MaJeSeUbj
	o5V6eaOZrVGXKJB/lOjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHfpk-00021g-Uj; Tue, 08 Oct 2019 03:06:44 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHfpd-00021B-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 03:06:39 +0000
Received: from [199.195.250.187] (port=44434 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iHfpT-0005zL-KF; Tue, 08 Oct 2019 04:06:32 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 1316F82924;
 Tue,  8 Oct 2019 03:06:14 +0000 (UTC)
Date: Tue, 08 Oct 2019 11:06:07 +0800
In-Reply-To: <20191007115148.vlu2ptmrfyng4p3r@gilmour>
References: <20191006160303.24413-1-icenowy@aosc.io>
 <20191006160303.24413-2-icenowy@aosc.io>
 <20191007115148.vlu2ptmrfyng4p3r@gilmour>
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/3] drm/sun4i: dsi: Fix video start delay computation
To: linux-arm-kernel@lists.infradead.org,Maxime Ripard <mripard@kernel.org>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <8B137D6E-74C5-4A9B-A8FE-84F3D38A1AD0@aosc.io>
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_200637_986728_D4D58250 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, Merlijn Wajer <merlijn@wizzup.org>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEw5pyIN+aXpSBHTVQrMDg6MDAg5LiL5Y2INzo1MTo0OCwgTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiDlhpnliLA6Cj5PbiBNb24sIE9jdCAwNywgMjAxOSBh
dCAxMjowMzowMEFNICswODAwLCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+PiBGcm9tOiBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPj4KPj4gVGhlIExDRCB0aW1pbmcgZGVm
aW5pdGlvbnMgYmV0d2VlbiBMaW51eCBEUk0gdnMgQWxsd2lubmVyIGFyZQo+ZGlmZmVyZW50LAo+
PiBiZWxvdyBkaWFncmFtIHNob3dzIHRoaXMgY2xlYXIgZGlmZmVyZW5jZXMuCj4+Cj4+ICAgICAg
ICAgICAgQWN0aXZlICAgICAgICAgICAgICAgICBGcm9udCAgICAgICAgICAgU3luYyAgICAgICAg
ICAgQmFjawo+PiAgICAgICAgICAgIFJlZ2lvbiAgICAgICAgICAgICAgICAgUG9yY2ggICAgICAg
ICAgICAgICAgICAgICAgICAgCj5Qb3JjaAo+Pgo+PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPjwt
LS0tLS0tLS0tLS0tLS0tPjwtLS0tLS0tLS0tLS0tLT48LS0tLS0tLS0tLS0tLS0+Cj4+ICAgLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vL3wKPj4gIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8gfAo+PiAvLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vICB8Li4uLi4uLi4uLi4uLi4uLi4uICAgICAgICAgICAgICAgCj4u
Li4uLi4uLi4uLi4uLi4uCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBfX19fX19fX19fX19fX19fCj4+IDwtLS0tLSBbaHZdZGlzcGxheSAtLS0tLT4KPj4gPC0t
LS0tLS0tLS0tLS0gW2h2XXN5bmNfc3RhcnQgLS0tLS0tLS0tLS0tPgo+PiA8LS0tLS0tLS0tLS0t
LS0tLS0tLS0tIFtodl1zeW5jX2VuZCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tPgo+PiA8LS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gW2h2XXRvdGFsCj4tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0+Cj4+Cj4+IDwtLS0tLSBsY2RfW3h5XSAtLS0tLS0tLT4JCSAgPC0gbGNkX1to
dl1zcHcgLT4KPj4gCQkJCQkgIDwtLS0tLS0tLS0tIGxjZF9baHZdYnAgLS0tLS0tLS0tPgo+PiA8
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gbGNkX1todl10Cj4tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0+Cj4+Cj4+IFRoZSBEU0kgZHJpdmVyIG1pc2ludGVycHJldGVkIHRo
ZSB2YnAgdGVybSBmcm9tIHRoZSBCU1AgY29kZSB0byByZWZlcgo+PiBvbmx5IHRvIHRoZSBiYWNr
cG9yY2gsIHdoZW4gaW4gZmFjdCBpdCB3YXMgYmFja3BvcmNoICsgc3luYy4gVGh1cyB0aGUKPj4g
ZHJpdmVyIGluY29ycmVjdGx5IHVzZWQgdGhlIHZlcnRpY2FsIGZyb250IHBvcmNoIHBsdXMgc3lu
YyBpbiBpdHMKPj4gY2FsY3VsYXRpb24gb2YgdGhlIERSUSBzZXQgYml0IHZhbHVlLCB3aGVuIGl0
IHNob3VsZCBub3QgaGF2ZQo+aW5jbHVkZWQKPj4gdGhlIHN5bmMgdGltaW5nLgo+Pgo+PiBJbmNs
dWRpbmcgYWRkaXRpb25hbCBzeW5jIHRpbWluZ3MgbGVhZHMgdG8gZmxpcF9kb25lIHRpbWVkIG91
dCBhczoKPj4KPj4gV0FSTklORzogQ1BVOiAwIFBJRDogMzEgYXQgZHJpdmVycy9ncHUvZHJtL2Ry
bV9hdG9taWNfaGVscGVyLmM6MTQyOQo+ZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5r
cy5wYXJ0LjErMHgyOTgvMHgyYTAKPj4gW0NSVEM6NDY6Y3J0Yy0wXSB2Ymxhbmsgd2FpdCB0aW1l
ZCBvdXQKPj4gTW9kdWxlcyBsaW5rZWQgaW46Cj4+IENQVTogMCBQSUQ6IDMxIENvbW06IGt3b3Jr
ZXIvMDoxIE5vdCB0YWludGVkCj41LjEuMC1uZXh0LTIwMTkwNTE0LTAwMDI5LWcwOWU1YjBlZDBh
NTggIzE4Cj4+IEhhcmR3YXJlIG5hbWU6IEFsbHdpbm5lciBzdW44aSBGYW1pbHkKPj4gV29ya3F1
ZXVlOiBldmVudHMgZGVmZXJyZWRfcHJvYmVfd29ya19mdW5jCj4+IFs8YzAxMGVkNTQ+XSAodW53
aW5kX2JhY2t0cmFjZSkgZnJvbSBbPGMwMTBiNzZjPl0KPihzaG93X3N0YWNrKzB4MTAvMHgxNCkK
Pj4gWzxjMDEwYjc2Yz5dIChzaG93X3N0YWNrKSBmcm9tIFs8YzA2ODhjNzA+XSAoZHVtcF9zdGFj
aysweDg0LzB4OTgpCj4+IFs8YzA2ODhjNzA+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwMTFkOWU0
Pl0gKF9fd2FybisweGZjLzB4MTE0KQo+PiBbPGMwMTFkOWU0Pl0gKF9fd2FybikgZnJvbSBbPGMw
MTFkYTQwPl0gKHdhcm5fc2xvd3BhdGhfZm10KzB4NDQvMHg2OCkKPj4gWzxjMDExZGE0MD5dICh3
YXJuX3Nsb3dwYXRoX2ZtdCkgZnJvbSBbPGMwNDBjZDUwPl0KPihkcm1fYXRvbWljX2hlbHBlcl93
YWl0X2Zvcl92YmxhbmtzLnBhcnQuMSsweDI5OC8weDJhMCkKPj4gWzxjMDQwY2Q1MD5dIChkcm1f
YXRvbWljX2hlbHBlcl93YWl0X2Zvcl92YmxhbmtzLnBhcnQuMSkgZnJvbQo+WzxjMDQwZTY5ND5d
IChkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9ycG0rMHg1Yy8weDZjKQo+PiBbPGMwNDBl
Njk0Pl0gKGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbSkgZnJvbSBbPGMwNDBlNGRj
Pl0KPihjb21taXRfdGFpbCsweDQwLzB4NmMpCj4+IFs8YzA0MGU0ZGM+XSAoY29tbWl0X3RhaWwp
IGZyb20gWzxjMDQwZTVjYz5dCj4oZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KzB4YmMvMHgxMjgp
Cj4+IFs8YzA0MGU1Y2M+XSAoZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KSBmcm9tIFs8YzA0MTFi
NjQ+XQo+KHJlc3RvcmVfZmJkZXZfbW9kZV9hdG9taWMrMHgxY2MvMHgxZGMpCj4+IFs8YzA0MTFi
NjQ+XSAocmVzdG9yZV9mYmRldl9tb2RlX2F0b21pYykgZnJvbSBbPGMwNDE1NmY4Pl0KPihkcm1f
ZmJfaGVscGVyX3Jlc3RvcmVfZmJkZXZfbW9kZV91bmxvY2tlZCsweDU0LzB4YTApCj4+IFs8YzA0
MTU2Zjg+XSAoZHJtX2ZiX2hlbHBlcl9yZXN0b3JlX2ZiZGV2X21vZGVfdW5sb2NrZWQpIGZyb20K
Pls8YzA0MTU3NzQ+XSAoZHJtX2ZiX2hlbHBlcl9zZXRfcGFyKzB4MzAvMHg1NCkKPj4gWzxjMDQx
NTc3ND5dIChkcm1fZmJfaGVscGVyX3NldF9wYXIpIGZyb20gWzxjMDNhZDQ1MD5dCj4oZmJjb25f
aW5pdCsweDU2MC8weDVhYykKPj4gWzxjMDNhZDQ1MD5dIChmYmNvbl9pbml0KSBmcm9tIFs8YzAz
ZWI4YTA+XSAodmlzdWFsX2luaXQrMHhiYy8weDEwNCkKPj4gWzxjMDNlYjhhMD5dICh2aXN1YWxf
aW5pdCkgZnJvbSBbPGMwM2VkMWI4Pl0KPihkb19iaW5kX2Nvbl9kcml2ZXIrMHgxYjAvMHgzOTAp
Cj4+IFs8YzAzZWQxYjg+XSAoZG9fYmluZF9jb25fZHJpdmVyKSBmcm9tIFs8YzAzZWQ3ODA+XQo+
KGRvX3Rha2Vfb3Zlcl9jb25zb2xlKzB4MTNjLzB4MWM0KQo+PiBbPGMwM2VkNzgwPl0gKGRvX3Rh
a2Vfb3Zlcl9jb25zb2xlKSBmcm9tIFs8YzAzYWQ4MDA+XQo+KGRvX2ZiY29uX3Rha2VvdmVyKzB4
NzQvMHhjYykKPj4gWzxjMDNhZDgwMD5dIChkb19mYmNvbl90YWtlb3ZlcikgZnJvbSBbPGMwMTNj
OWM4Pl0KPihub3RpZmllcl9jYWxsX2NoYWluKzB4NDQvMHg4NCkKPj4gWzxjMDEzYzljOD5dIChu
b3RpZmllcl9jYWxsX2NoYWluKSBmcm9tIFs8YzAxM2NkMjA+XQo+KF9fYmxvY2tpbmdfbm90aWZp
ZXJfY2FsbF9jaGFpbisweDQ4LzB4NjApCj4+IFs8YzAxM2NkMjA+XSAoX19ibG9ja2luZ19ub3Rp
Zmllcl9jYWxsX2NoYWluKSBmcm9tIFs8YzAxM2NkNTA+XQo+KGJsb2NraW5nX25vdGlmaWVyX2Nh
bGxfY2hhaW4rMHgxOC8weDIwKQo+PiBbPGMwMTNjZDUwPl0gKGJsb2NraW5nX25vdGlmaWVyX2Nh
bGxfY2hhaW4pIGZyb20gWzxjMDNhNmU0ND5dCj4ocmVnaXN0ZXJfZnJhbWVidWZmZXIrMHgxZTAv
MHgyZjgpCj4+IFs8YzAzYTZlNDQ+XSAocmVnaXN0ZXJfZnJhbWVidWZmZXIpIGZyb20gWzxjMDQx
NTNjMD5dCj4oX19kcm1fZmJfaGVscGVyX2luaXRpYWxfY29uZmlnX2FuZF91bmxvY2srMHgyZmMv
MHg1MGMpCj4+IFs8YzA0MTUzYzA+XSAoX19kcm1fZmJfaGVscGVyX2luaXRpYWxfY29uZmlnX2Fu
ZF91bmxvY2spIGZyb20KPls8YzA0MTU4Yzg+XSAoZHJtX2ZiZGV2X2NsaWVudF9ob3RwbHVnKzB4
ZTgvMHgxYjgpCj4+IFs8YzA0MTU4Yzg+XSAoZHJtX2ZiZGV2X2NsaWVudF9ob3RwbHVnKSBmcm9t
IFs8YzA0MTVhMjA+XQo+KGRybV9mYmRldl9nZW5lcmljX3NldHVwKzB4ODgvMHgxMTgpCj4+IFs8
YzA0MTVhMjA+XSAoZHJtX2ZiZGV2X2dlbmVyaWNfc2V0dXApIGZyb20gWzxjMDQzZjA2MD5dCj4o
c3VuNGlfZHJ2X2JpbmQrMHgxMjgvMHgxNjApCj4+IFs8YzA0M2YwNjA+XSAoc3VuNGlfZHJ2X2Jp
bmQpIGZyb20gWzxjMDQ0YjU5OD5dCj4odHJ5X3RvX2JyaW5nX3VwX21hc3RlcisweDE2NC8weDFh
MCkKPj4gWzxjMDQ0YjU5OD5dICh0cnlfdG9fYnJpbmdfdXBfbWFzdGVyKSBmcm9tIFs8YzA0NGI2
Njg+XQo+KF9fY29tcG9uZW50X2FkZCsweDk0LzB4MTQwKQo+PiBbPGMwNDRiNjY4Pl0gKF9fY29t
cG9uZW50X2FkZCkgZnJvbSBbPGMwNDQ1ZTFjPl0KPihzdW42aV9kc2lfcHJvYmUrMHgxNDQvMHgy
MzQpCj4+IFs8YzA0NDVlMWM+XSAoc3VuNmlfZHNpX3Byb2JlKSBmcm9tIFs8YzA0NTJlZjQ+XQo+
KHBsYXRmb3JtX2Rydl9wcm9iZSsweDQ4LzB4OWMpCj4+IFs8YzA0NTJlZjQ+XSAocGxhdGZvcm1f
ZHJ2X3Byb2JlKSBmcm9tIFs8YzA0NTEyY2M+XQo+KHJlYWxseV9wcm9iZSsweDFkYy8weDJjOCkK
Pj4gWzxjMDQ1MTJjYz5dIChyZWFsbHlfcHJvYmUpIGZyb20gWzxjMDQ1MTUxOD5dCj4oZHJpdmVy
X3Byb2JlX2RldmljZSsweDYwLzB4MTYwKQo+PiBbPGMwNDUxNTE4Pl0gKGRyaXZlcl9wcm9iZV9k
ZXZpY2UpIGZyb20gWzxjMDQ0ZjdhND5dCj4oYnVzX2Zvcl9lYWNoX2RydisweDc0LzB4YjgpCj4+
IFs8YzA0NGY3YTQ+XSAoYnVzX2Zvcl9lYWNoX2RydikgZnJvbSBbPGMwNDUxMDdjPl0KPihfX2Rl
dmljZV9hdHRhY2grMHhkMC8weDEzYykKPj4gWzxjMDQ1MTA3Yz5dIChfX2RldmljZV9hdHRhY2gp
IGZyb20gWzxjMDQ1MDQ3ND5dCj4oYnVzX3Byb2JlX2RldmljZSsweDg0LzB4OGMpCj4+IFs8YzA0
NTA0NzQ+XSAoYnVzX3Byb2JlX2RldmljZSkgZnJvbSBbPGMwNDUwOTAwPl0KPihkZWZlcnJlZF9w
cm9iZV93b3JrX2Z1bmMrMHg2NC8weDkwKQo+PiBbPGMwNDUwOTAwPl0gKGRlZmVycmVkX3Byb2Jl
X3dvcmtfZnVuYykgZnJvbSBbPGMwMTM1OTcwPl0KPihwcm9jZXNzX29uZV93b3JrKzB4MjA0LzB4
NDIwKQo+PiBbPGMwMTM1OTcwPl0gKHByb2Nlc3Nfb25lX3dvcmspIGZyb20gWzxjMDEzNjkwYz5d
Cj4od29ya2VyX3RocmVhZCsweDI3NC8weDVhMCkKPj4gWzxjMDEzNjkwYz5dICh3b3JrZXJfdGhy
ZWFkKSBmcm9tIFs8YzAxM2IzZDg+XSAoa3RocmVhZCsweDExYy8weDE0YykKPj4gWzxjMDEzYjNk
OD5dIChrdGhyZWFkKSBmcm9tIFs8YzAxMDEwZTg+XSAocmV0X2Zyb21fZm9yaysweDE0LzB4MmMp
Cj4+IEV4Y2VwdGlvbiBzdGFjaygweGRlNTM5ZmIwIHRvIDB4ZGU1MzlmZjgpCj4+IDlmYTA6ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAw
MDAwCj4wMDAwMDAwMAo+PiA5ZmMwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAo+MDAwMDAwMDAKPj4gOWZlMDogMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAKPj4gLS0tWyBlbmQg
dHJhY2UgNDk1MjAwYTc4YjI0OTgwZSBdLS0tCj4+IHJhbmRvbTogZmFzdCBpbml0IGRvbmUKPj4g
W2RybTpkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9kZXBlbmRlbmNpZXNdICpFUlJPUioKPltD
UlRDOjQ2OmNydGMtMF0gZmxpcF9kb25lIHRpbWVkIG91dAo+PiBbZHJtOmRybV9hdG9taWNfaGVs
cGVyX3dhaXRfZm9yX2RlcGVuZGVuY2llc10gKkVSUk9SKgo+W0NPTk5FQ1RPUjo0ODpEU0ktMV0g
ZmxpcF9kb25lIHRpbWVkIG91dAo+PiBbZHJtOmRybV9hdG9taWNfaGVscGVyX3dhaXRfZm9yX2Rl
cGVuZGVuY2llc10gKkVSUk9SKgo+W1BMQU5FOjMwOnBsYW5lLTBdIGZsaXBfZG9uZSB0aW1lZCBv
dXQKPj4KPj4gV2l0aCB0aGUgdGVybXMoYXMgZGVzY3JpYmVkIGluIGFib3ZlIGRpYWdyYW0pIGZp
eGVkLCB0aGUgcGFuZWwKPj4gZGlzcGxheXMgY29ycmVjdGx5IHdpdGhvdXQgYW55IHRpbWVvdXRz
Lgo+Pgo+PiBUZXN0ZWQtYnk6IE1lcmxpam4gV2FqZXIgPG1lcmxpam5Ad2l6enVwLm9yZz4KPj4g
U2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4K
PnlvdSBzaG91bGQgaGF2ZSB5b3VyIFNvQiBoZXJlLgo+Cj5BbGwgdGhlIHBhdGNoZXMgbG9vayBm
aW5lLCBzbyB0aGVyZSdzIG5vIG5lZWQgdG8gcmVzZW5kIGEgbmV3Cj52ZXJzaW9uLiBJJ2xsIGFk
ZCBpdCBpZiB5b3UgY2FuIGdpdmUgaXQuCgpTb3JyeSwgSSBmb3Jnb3QgaXQuCgpTaWduZWQtb2Zm
LWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cgo+Cj5NYXhpbWUKCi0tIArkvb/n
lKggSy05IE1haWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9pZOiuvuWkh+OAggoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
