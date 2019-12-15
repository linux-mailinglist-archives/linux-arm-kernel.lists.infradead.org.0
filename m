Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163D811F88F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kh5T1oA1BWEDxhrXWVg77mxz9+dLYyWdWS7N9NLBQI=; b=XyfwMXtKhRYrR+
	ifCxfnhypF/SZqGY4onH7bDlg6+gT4z5Hq+hOqcgsOtl9QSupfmckDcfZYssX3+Q2Ccu2IktB12q1
	uXWspJjWae4Mnkql/81jZlXlJWue1Q6yEEenxWfTlhlUC8pZzaz/aRyYduXb+CI5gXc1qslpEI6qN
	RHVIGoxQpBsFOXGwwXMgI7TVMK4S+NdJqiMv/dd/Y5it+c0XiI6VzUNY14FnKoOB5kmkzcAya4eTb
	Pa/Ng61CPBwZ9nm4lLVRDPetPxo2qjmFKO9iHSVZKX9Ij6VRo0lB6zthw6wzNIVHY30QvlIViMfHa
	17SwVMwikAA/OEuenITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igW2R-0006ix-7e; Sun, 15 Dec 2019 15:42:31 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igW2H-0006iU-US; Sun, 15 Dec 2019 15:42:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id b10so4341920iof.11;
 Sun, 15 Dec 2019 07:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0Sj9K/Fg/Lp6+H1dkSUhFxjPXudhpqL7Gotq9vKzF4I=;
 b=aNI7zL5BW90R+OYPkdGKAQQHwnE+TTd3rXHfLCytAOHAVtTaoyLJQ+BAI3gs+I0wiC
 EI0qLinJcWxwssodkMC4IbXDKTCUKCVgRKvE5+V9xI1KDc+Wy73hOIxHvpJQH3PVOC0q
 b9VfJ9DReaRmr0cy3VJcMYl7DART9zbvLziDREuOypti1CqLHjkfGCDVBijwA0s5yhl7
 8z/R7UlTf4eASf1crwDP+3OBqr/cq3qoZTEl204qRTn66rgFSzmBIEBMD/2DEpkSPlk1
 cxSJkjxrsRo7XsbJoAPY5d9/M7ogOEjXcMuZQrIXL+xaQ4DvxXxdcXe8xULCrlA078bU
 i9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0Sj9K/Fg/Lp6+H1dkSUhFxjPXudhpqL7Gotq9vKzF4I=;
 b=p0bRxYpZ8AKXvDC5XZ+CXKvGD6EAD4MyPSWVZJWsByWJszZxgLvHV0f+tnbKVJUFB/
 O5UIarM8nKgnzRGhVI+7fJroH6ZUwMZDyzePaHUIf+bWcVRwyKvhB81igIpnKa1POJjT
 8VAVQpKI3I0WQSVDNd+OwCDSA4LZJkvcRehgVVLFIQNQVGKIgkTFDBhViQZ8lnp67f/J
 0YgqKFpmkwWvqSTrQaUdHsIxq4ZA1enErNWMONktlUix989BGa/Cd+zH0V30DPcEqxn2
 gSRWbdeoiE7gJvlV/RGcT+xW+1LfRQxIC4IwNPCC1WoSsneazyRMoZK4y3b/E8CYP1DP
 Ypdw==
X-Gm-Message-State: APjAAAWVulAmoYRWRyzOMPW9jNj5ArLM7lMAoRMbSB4mouTOG4DpZcOS
 LnEyIG1QfvuARXtxcBRyx76LmqxlQXYC1vgrlnk=
X-Google-Smtp-Source: APXvYqws70XxM0JoLHNpgvw5pBBvXrE4HabAxu+lsW18wz8a5sI525dN+rR4EXNq0736nWqzgu37UyiDgIYx3jFXEM4=
X-Received: by 2002:a02:c611:: with SMTP id i17mr8752837jan.28.1576424540734; 
 Sun, 15 Dec 2019 07:42:20 -0800 (PST)
MIME-Version: 1.0
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
 <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
In-Reply-To: <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 15 Dec 2019 23:42:09 +0800
Message-ID: <CAEExFWs7YejweJLDxcx9bECgVRFAVx6xL2T+_76Z239Pa-XyNA@mail.gmail.com>
Subject: Re: [PATCH 1/2] PM / devfreq: rockchip-dfi: add missing of_node_put()
To: Chanwoo Choi <chanwoo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_074221_982163_E362CDDE 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBEZWMgMTUsIDIwMTkgYXQgMTE6MzEgUE0gQ2hhbndvbyBDaG9pIDxjaGFud29vQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gMjAxOeuFhCAxMuyblCAxNeydvCAo7J28KSDsmKTsoIQgMzox
MiwgWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPuuLmOydtCDsnpHshLE6Cj4gPgo+
ID4gb2Zfbm9kZV9wdXQgbmVlZHMgdG8gYmUgY2FsbGVkIHdoZW4gdGhlIGRldmljZSBub2RlIHdo
aWNoIGlzIGdvdAo+ID4gZnJvbSBvZl9wYXJzZV9waGFuZGxlIGhhcyBmaW5pc2hlZCB1c2luZy4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMgfCAxICsK
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5jIGIvZHJpdmVycy9kZXZmcmVxL2V2
ZW50L3JvY2tjaGlwLWRmaS5jCj4gPiBpbmRleCA1ZDEwNDIxODg3MjcuLjQ1YjE5MGU0NDNkOCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+ID4g
KysrIGIvZHJpdmVycy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5jCj4gPiBAQCAtMjAwLDYg
KzIwMCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZGZpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgIG5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAicm9j
a2NoaXAscG11IiwgMCk7Cj4gPiAgICAgICAgIGlmIChub2RlKSB7Cj4gPiAgICAgICAgICAgICAg
ICAgZGF0YS0+cmVnbWFwX3BtdSA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChub2RlKTsKPiA+ICsg
ICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiA+ICAgICAgICAgICAgICAgICBpZiAo
SVNfRVJSKGRhdGEtPnJlZ21hcF9wbXUpKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIoZGF0YS0+cmVnbWFwX3BtdSk7Cj4gPiAgICAgICAgIH0KPiA+IC0tCj4gPiAy
LjE3LjEKPiA+Cj4KPiBBcHBsaWVkIGl0LiBCZXR0ZXIgdG8gdXNlIHRoZSBjYXBpdGFsIGxldHRl
ciBmb3IgZmlyc3QgY2hhciBvZiBzZW50ZW5jZS4KClRoeCEKCllhbmd0YW8KCj4KPiAtLQo+IEJl
c3QgUmVnYXJkcywKPiBDaGFud29vIENob2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
