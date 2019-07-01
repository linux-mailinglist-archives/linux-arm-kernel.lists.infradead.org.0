Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C775B743
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrG6GlngKmXDvjfihbty9FOFktQo3DEd3Wy7EDJGv8E=; b=EOq9odPEooAhR1
	rMRKohntvKukvpyyRST748lcLYnJ603+T2of0MVoy3edqFVEpnLSuixmBs0tM0GwBe+cBNT3dKir+
	NEBwx2BBRuDcbP8r9Mjxagm69xAtjWAJPrAuPkqC71MZcmybmCKu8o64ZqGb7EFFd/04zgqxOoSaO
	z+O6jaAFQ2Bt5P9F6TfubfCHR69iKe5ys8IZgUaxf61COVo8CFiPsM3KrBePnV+GzhGnpwortA9i8
	Yij1oxh+a3Mm6HTLiLQFAhnVwBHuctO6zRhpse633XwsUCG+zk/dryURVgb3Sd7i6zL5PquK/Dmk5
	jCQpPPSQEN9A7uKVQitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhs3y-0002fZ-Bl; Mon, 01 Jul 2019 08:53:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhs3i-0002ea-VC
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:53:12 +0000
Received: by mail-qt1-x841.google.com with SMTP id j19so13766109qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 01:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yEydmtnCDiKOYKSAVEGulQp1MLxqt3sZi6sZBX94kKY=;
 b=vBNi+IyoW5BtngLeAC6WLbJv2qNSYVGYTBf5aeYr/G9/9f79GCL8+d3YkNK/Vxyn3z
 nKeMteN+qRYhm+8nyzPaKRhG/zc0oTk3ov1KesWQVQRieNvGlEc/csx2JCkaJoiW7FsT
 ISMiIRcZ2NcnspJEqgG8Nm7fO8RSJFPS2ZvP36W/uSjlla4A0wdEJyIAsmTPw+C3rO+w
 toqyODSt9SpwtkVgaOt8Jnf8xnmI4AxL270fPzLdVxSxj9+ZQmud5RGt1kbGEjPaCKaO
 OncydU0P3fRObJlaBo+iMnC8AZ5jel5TfroKOFc9XBmIx0/fJe/YmDyPDqf1ctoduS9q
 fu7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yEydmtnCDiKOYKSAVEGulQp1MLxqt3sZi6sZBX94kKY=;
 b=QJ7AUPlOlCwTbrWFGkoqfSvBYZ9dAZyNHfikeqFcybZYy/z9QHPPa3pXgq1scfLZAY
 Dy3K7syTik05uDGOEGvZZ3FRkEqiRa8OltzQL1/nry0o06SropZJDuXmhzUuL7dYRplo
 bUD1+UbpfX9Z2r0nCZjQFa16pZfHN8wi2M8+wUn/V0n9w6aO64DsrJjJgL0MwUNM2169
 uhdceSggM8OHcIz9fgAwTww6vbfnbIlScnz/c7v118uy5MQi+N1hkl0lOv3ouuGyur4k
 w9esJQv7LM7pt02MBilUZuvZefhvRylNau1RvSLxY+c5/ZKSaJSG5+7L3pcEFbcgXIIA
 mI1Q==
X-Gm-Message-State: APjAAAU5vUK0haFMHd0Ku+tF8iJF/Wg4rkfTixcWFfv8wp4hEgJvTA2A
 lPlb4OAvflIbq2L6J3wsHuc9pBo4g9Wrw8DuZru3cxTC
X-Google-Smtp-Source: APXvYqy/mrvToBYfrETzRYxgV9TqtLA6Mw+WkpF6Pa31jr/E+2o2Ywn0MkpkLw7P7SBwy/yCgsgpwdQg+ZMoi4bZLWs=
X-Received: by 2002:ac8:3301:: with SMTP id t1mr19458961qta.209.1561971189535; 
 Mon, 01 Jul 2019 01:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190630061922.7254-1-sam@ravnborg.org>
 <20190630061922.7254-4-sam@ravnborg.org>
In-Reply-To: <20190630061922.7254-4-sam@ravnborg.org>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 1 Jul 2019 10:52:58 +0200
Message-ID: <CA+M3ks72=1-DBf7sX7oF1u5e0TyS1R_ha4o9oXOu=Y90PyC3og@mail.gmail.com>
Subject: Re: [PATCH v1 03/33] drm/stm: drop use of drmP.h
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_015311_006446_278E55AB 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 David Airlie <airlied@linux.ie>, Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Yannick Fertre <yannick.fertre@st.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgZGltLiAzMCBqdWluIDIwMTkgw6AgMDg6MTksIFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4gYSDDqWNyaXQgOgo+Cj4gRHJvcCB1c2Ugb2YgdGhlIGRlcHJlY2F0ZWQgaGVhZGVyIGZp
bGUgZHJtUC5oCj4gZnJvbSB0aGUgc29sZSB1c2VyIGluIHRoZSBzdG0gZHJpdmVyLgo+IFJlcGxh
Y2Ugd2l0aCBuZWNlc3NhcnkgaW5jbHVkZSBmaWxlcy4KCkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4
dC4KClRoYW5rcywKQmVuamFtaW4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNh
bUByYXZuYm9yZy5vcmc+Cj4gQ2M6IFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBzdC5j
b20+Cj4gQ2M6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Cj4gQ2M6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IENjOiBWaW5j
ZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBD
YzogTWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgo+IENjOiBBbGV4
YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KPiBDYzogbGludXgtc3RtMzJA
c3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5
LmNvbQo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAtLS0KPiBU
aGUgbGlzdCBvZiBjYzogd2FzIHRvbyBsYXJnZSB0byBhZGQgYWxsIHJlY2lwaWVudHMgdG8gdGhl
IGNvdmVyIGxldHRlci4KPiBQbGVhc2UgZmluZCBjb3ZlciBsZXR0ZXIgaGVyZToKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1KdW5lL3RocmVh
ZC5odG1sCj4gU2VhcmNoIGZvciAiZHJtOiBkcm9wIHVzZSBvZiBkcm1wLmggaW4gZHJtLW1pc2Mi
Cj4KPiAgICAgICAgIFNhbQo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3Rt
LmMgfCAxMCArKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBp
X2RzaS1zdG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMKPiBpbmRl
eCAwYWIzMmZlZTZjMWIuLmEwM2E2NDJjMTQ3YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19t
aXBpX2RzaS1zdG0uYwo+IEBAIC04LDEzICs4LDE3IEBACj4KPiAgI2luY2x1ZGUgPGxpbnV4L2Ns
ay5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2Rf
ZGV2aWNldGFibGUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29u
c3VtZXIuaD4KPiAtI2luY2x1ZGUgPGRybS9kcm1QLmg+Cj4gLSNpbmNsdWRlIDxkcm0vZHJtX21p
cGlfZHNpLmg+Cj4gLSNpbmNsdWRlIDxkcm0vYnJpZGdlL2R3X21pcGlfZHNpLmg+Cj4gKwo+ICAj
aW5jbHVkZSA8dmlkZW8vbWlwaV9kaXNwbGF5Lmg+Cj4KPiArI2luY2x1ZGUgPGRybS9icmlkZ2Uv
ZHdfbWlwaV9kc2kuaD4KPiArI2luY2x1ZGUgPGRybS9kcm1fbWlwaV9kc2kuaD4KPiArI2luY2x1
ZGUgPGRybS9kcm1fcHJpbnQuaD4KPiArCj4gICNkZWZpbmUgSFdWRVJfMTMwICAgICAgICAgICAg
ICAgICAgICAgIDB4MzEzMzMwMDAgICAgICAvKiBJUCB2ZXJzaW9uIDEuMzAgKi8KPiAgI2RlZmlu
ZSBIV1ZFUl8xMzEgICAgICAgICAgICAgICAgICAgICAgMHgzMTMzMzEwMCAgICAgIC8qIElQIHZl
cnNpb24gMS4zMSAqLwo+Cj4gLS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
