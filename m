Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B424918CA25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFFMxndNYemEjoNytqugRJ6PpCHiswUTOfzSwrWWH5g=; b=F1XpfUjfRhfk4y
	oZIyihzYuotFbzzBmHjcNDaHn/XMd3rdHWy/1q/mhbbmyDhHrWzdElp6u/n9i4Bqg5SPf9fAuBAO/
	6UfgkYu8illlZBa2Sj4J88VKnJRMYGIc3vtySo2hCR5K0W50q5WDchMnRnHIduzY5qxfkzTkT/SuB
	J9jsS+dUNGXpgSKkgjkQJzfdJhRvg2HTcgElX+MVtIYbb7hBohUDLkWiVQg3Y3GGqFyrr5zrv5yL7
	NVkjiShunyyJtVa0ElUSWJzQS0m2YizfFBHjY/LaPd/ORp3A5KiJ9gw1ipt1rw36PGZQzXU+8kdZO
	NgJr8b3Lnw+zelhTjX0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDqu-00050c-5C; Fri, 20 Mar 2020 09:22:04 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDql-0004zT-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:21:57 +0000
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 5d5f1abc
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 20 Mar 2020 02:21:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id A343A4D036;
 Fri, 20 Mar 2020 09:21:48 +0000 (UTC)
Date: Fri, 20 Mar 2020 17:21:43 +0800
In-Reply-To: <CACRpkdbeLAyhhkx115zAV0tdC7KJ4T0UoQ2QeDwTVN+btxp=Jw@mail.gmail.com>
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-3-icenowy@aosc.io>
 <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
 <491ADD02-5511-404B-88A8-5725EF061EAC@aosc.io>
 <CACRpkdbeLAyhhkx115zAV0tdC7KJ4T0UoQ2QeDwTVN+btxp=Jw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
To: linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <7BA1F742-0403-47E3-8E91-738947EB4809@aosc.io>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584696109;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 bh=lyI5nTAxlpI3YgUaSp33pj/yy+1x1RPrFPLEcSJxVcM=;
 b=cbDXi+EpOG5NSTFJo99k2SiBcR6aPtIoHvmuqhtKqGPOJLBqN+Xcb6lh+lQlNaRxsW1w40
 kMAphAv/W6+0Y8pPo53QMQ//grkWEtYOWMa/kPOnFNJ8Qdqbs7onGp5omHzkXWqVFt0m54
 WgnGaY86aOx+VuMBKQJQupX7ZcPuVck=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_022156_010453_B9EA8330 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAyMOW5tDPmnIgyMOaXpSBHTVQrMDg6MDAg5LiL5Y2INToxMToyMiwgTGludXMgV2Fs
bGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiDlhpnliLA6Cj5PbiBGcmksIE1hciAyMCwg
MjAyMCBhdCA5OjA3IEFNIEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5pbz4gd3JvdGU6Cj4+
IOS6jiAyMDIw5bm0M+aciDE55pelIEdNVCswODowMCDkuIvljYgxMDoxNDoyNywgTGludXMgV2Fs
bGVpago+PGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4g5YaZ5YiwOgo+PiA+T24gTW9uLCBNYXIg
MTYsIDIwMjAgYXQgMjozNyBQTSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+Cj53cm90
ZToKPgo+PiA+QXMgbm90aWNlZCBpbiB0aGUgcmV2aWV3IG9mIHRoZSBkcml2ZXIsIHRoaXMgZGlz
cGxheSBpcyB2ZXJ5IGNsb3NlCj50bwo+PiA+aGltYXgsaHg4MzYzLgo+PiA+Cj4+ID5JIHRoaW5r
IHRoZSBiZXN0IGlzIHRvIGRldGVybWluIHdoYXQgYWN0dWFsIGRpc3BsYXkgY29udHJvbGxlciBp
dAo+aXMsCj4+ID5JIHRoaW5rIGl0IGlzIHNvbWUga2luZCBvZiBJbGl0ZWsgY29udHJvbGxlciBz
aW5jZSBJbGl0ZWsgaWxpOTM0MiBpcwo+PiA+Y2xlYXJseSB2ZXJ5IHNpbWlsYXIuCj4+Cj4+IEl0
J3MgU2l0cm9uaXggU1Q3NzAzLCBzYW1lIGFzIHRoZSBMaWJyZW0gNSBwYW5lbC4KPgo+SGVoLCBJ
IHdvbmRlciBob3cgaXQgY29tZXMgdGhhdCBpdCBpcyBzbyBzaW1pbGFyIHRvIElsaXRlay4KPkkg
Z3Vlc3MgSSB3aWxsIG5ldmVyIHVuZGVyc3RhbmQgaG93IHRoZSBzaWxpY29uIGVjb3N5c3RlbSB3
b3Jrcwo+aW4gYXNpYSAoSSBkaWQgcmVhZCBhIGxvdCBvZiBCdW5uaWUgSHVhbmcncyBhcnRpY2xl
cyBhbmQgaGFyZHdhcmUKPmhhY2tpbmcgYm9vayB0byB0cnkgdG8gdW5kZXJzdGFuZC4uLikKPgo+
VGhpcyBmaWxlIHNob3VsZCBiZSBuYW1lZCBzaXRyb25peCxzdDc3MDMueWFtbCB0aGVuLgo+Cj5B
Y2NvcmRpbmcgdG8gdGhlIGNvZGUgaW4gdGhlIExpYnJlbSA1Ogo+aHR0cHM6Ly9zb3VyY2UucHVy
aS5zbS9MaWJyZW01L2xpbnV4LW5leHQvYmxvYi9pbXg4LWN1cnJlbnQtbGlicmVtNS9kcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtc2l0cm9uaXgtc3Q3NzAxLmMKPlRoZSBhY3R1YWwgbmFtZSBv
ZiB0aGUgZGlzcGxheSBpcyBUZWNoc3RhciB0czg1NTBiLgoKU29ycnksIGZvciBMaWJyZW0gNSBw
YW5lbCwgSSBtZWFuIFJvY2t0ZWNoIEpIMDU3TjAwOTAwIGhlcmUuCgpUaGlzIGlzIGFsc28gdGhl
IGNvZGUgdGhhdCBteSBwYXRjaHNldCBiYXNlZCBvbi4KCj5BbmQgdGhlIGRpc3BsYXkgY29udHJv
bGxlciBpcyBzdDc3MDEsIHNvIG1heWJlIHdlIHNob3VsZAo+YWN0dWFsbHkgbmFtZSBpdCBzaXRy
b25peCxzdDc3MHgueWFtbCBpZiB0aGVyZSBhcmUgc29tZQo+c3ViLXZhcmlhbnRzIG9mIHN0Nzcw
eD8KPgo+PiA+cHJvcGVydGllczoKPj4gPiAgY29tcGF0aWJsZToKPj4gPiAgICBpdGVtczoKPj4g
PiAgICAgIC0gY29uc3Q6IHhpbmdiYW5nZGEseGJkNTk5Cj4+ID4gICAgICAtIGNvbnN0OiBpbGl0
ZWssaWxpOTM0Mgo+PiA+Cj4+ID5Qb3NzaWJseSB1c2Ugb25lT2YgYW5kIGFkZCBzdXBwb3J0IGZv
ciB0aGUgaGltYXgsaHg4MzYzCj4+ID5hbHJlYWR5IHdoaWxlIHlvdSdyZSBhdCBpdC4KPgo+VGhp
cyBzaG91bGQgYXQgbGVhc3QgYmU6Cj4KPmNvbXBhdGlibGU6Cj4gICBpdGVtczoKPiAgICAgLSBl
bnVtOgo+ICAgICAgIC0geGluZ2JhbmdkYSx4YmQ1OTkKPiAgICAgICAtIGhpbWF4LGh4ODM2Mwo+
ICAgICAgIC0gdGVjaHN0YXIsdHM4NTUwYgo+ICAgICAtIGVudW06Cj4gICAgICAgLSBzaXRyb25p
eCxzdDc3MDEKPiAgICAgICAtIHNpdHJvbml4LHN0NzcwMwo+Cj5TbyBwYW5lbCBub2RlcyB1c2lu
ZyB0aGlzIHBhbmVsIGJlY29tZQo+Y29tcGF0aWJsZSA9ICJ4aW5nYmFuZ2RhLHNiZDU5OSIsICJz
aXRyb25peCxzdDc3MDMiCj5ldGMuCj4KPlRoaXMgd2F5IGl0IGlzIHN0cmFpZ2h0LWZvcndhcmQg
Zm9yIGRyaXZlcnMgdG8gaWRlbnRpZnkgdGhlIHBhbmVsCj52ZW5kb3IgYW5kIGRpc3BsYXkgY29u
dHJvbGxlci4KPgo+WW91cnMsCj5MaW51cyBXYWxsZWlqCj4KPl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj5saW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj5odHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCi0tIArkvb/nlKgg
Sy05IE1haWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9pZOiuvuWkh+OAggoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
