Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2021266BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfDaifW+5KRcY1WZFGLKr+o7YgcmLOVynap45GJKXP0=; b=SA7LexNtDTjm47
	mu1cKYVJDTrv3c2wsF+UE6el08IATvXDE2Xm1osddZOdU0+NMEmNnVSXKgLBGbjA8DBZZuFVrqPa1
	O1nbYGnF6w65u6Q8lS1TS7NnzLHRHA1YU7TnnzBWGDYlo6QhyNyJWJ7BVUQKZME0B6+VJo06m+PY1
	awaJypwHygan76zhpvU6xmvZ1MUAedrDgeEmtI7+JYznM23SaIOhEVDXvXZ2BnSWwzlTDkECtLjag
	LKhj/XnDKC0yEOChSCX6KOCPC3KfIhzC5F7YMQ05ZHHClYKIuouCkEeoh4Hwdkwe8CD8/SwmHxIJZ
	VWGwNtHSHWDawLG04aCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyYz-0004x8-Fi; Thu, 19 Dec 2019 16:22:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyYs-0004wE-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:22:03 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A49D52467F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 16:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576772521;
 bh=8cHyARGEDs7lTo3LVRUHzaY/3fzYFhr6LHjqGqDD3sQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=z73ZbF+Hs56Bs6KLB1XdYtv9H4jXMFNfDF8o/vwW37FN2pg4cSANjNy5FizKqE8LI
 hHQwbjw8SHfT5RTdkX+0ZgccIuz9DExtUec2Min8Z8D04X4vZ2imZNCUcgTPecMj6l
 d7ONMGT04d+W1UnMNxpteCumjVx5BWk73zr/LfaU=
Received: by mail-lj1-f172.google.com with SMTP id k8so6879396ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:22:00 -0800 (PST)
X-Gm-Message-State: APjAAAV68jYq+5xOXEu4w4Gcw9/mreO/sLmaXrgAvY+rbx9Aa6dYY63z
 ceG6kYIMUk9BfzxPBBoP6CMLoiCVVrGYVjFaiLM=
X-Google-Smtp-Source: APXvYqxl+K5zBixu/7n+VPaR/qjqPttipninehsXtuq3tlmTV5OThfj30o7TWHIisjKoIrLzeBZl5H8DFoS3neFEJ40=
X-Received: by 2002:a2e:9b05:: with SMTP id u5mr6673387lji.59.1576772518791;
 Thu, 19 Dec 2019 08:21:58 -0800 (PST)
MIME-Version: 1.0
References: <8485366fbf06600d528ac31ef4a873f6717f2fd7.1576770177.git.leonard.crestez@nxp.com>
In-Reply-To: <8485366fbf06600d528ac31ef4a873f6717f2fd7.1576770177.git.leonard.crestez@nxp.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Fri, 20 Dec 2019 01:21:22 +0900
X-Gmail-Original-Message-ID: <CAGTfZH30gYt-o3fJtOKKuUh5Qh0V4xybB3ahH5YVpeD5d=acRg@mail.gmail.com>
Message-ID: <CAGTfZH30gYt-o3fJtOKKuUh5Qh0V4xybB3ahH5YVpeD5d=acRg@mail.gmail.com>
Subject: Re: [PATCH] PM / devfreq: imx8m-ddrc: Fix argument swap in error print
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_082202_129461_05F2EA2B 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 kernel@pengutronix.de, Martin Kepplinger <martink@posteo.de>,
 Adam Ford <aford173@gmail.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCAxMuyblCAyMOydvCAo6riIKSDsmKTsoIQgMTI6NDQsIExlb25hcmQgQ3Jlc3RleiA8
bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+64uY7J20IOyekeyEsToKPgo+IFdoZW4gZnJlcXVlbmN5
IGFkanVzdG1lbnQgZmFpbHMgdGhlIG9sZC9uZXcgZnJlcXVlbmNpZXMgYXJlIHN3YXBwZWQgb24K
PiB0aGUgZGV2X2VyciBjYWxsLgo+Cj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxs
ZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2lteDhtLWRk
cmMuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9pbXg4bS1kZHJjLmMgYi9k
cml2ZXJzL2RldmZyZXEvaW14OG0tZGRyYy5jCj4gaW5kZXggZWNiYjFkYjA1ZWEwLi41M2RmNzky
M2Q4OTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2lteDhtLWRkcmMuYwo+ICsrKyBi
L2RyaXZlcnMvZGV2ZnJlcS9pbXg4bS1kZHJjLmMKPiBAQCAtMjU4LDE0ICsyNTgsMTQgQEAgc3Rh
dGljIGludCBpbXg4bV9kZHJjX3RhcmdldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGxv
bmcgKmZyZXEsIHUzMiBmbGFncykKPiAgICAgICAgIHJldCA9IGlteDhtX2RkcmNfc2V0X2ZyZXEo
ZGV2LCBmcmVxX2luZm8pOwo+Cj4gICAgICAgICBuZXdfZnJlcSA9IGNsa19nZXRfcmF0ZShwcml2
LT5kcmFtX2NvcmUpOwo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZGV2X2Vy
cihkZXYsICJkZHJjIGZhaWxlZCBmcmVxIHN3aXRjaCB0byAlbHUgZnJvbSAlbHU6IGVycm9yICVk
LiBub3cgYXQgJWx1XG4iLAo+IC0gICAgICAgICAgICAgICAgICAgICAgIG9sZF9mcmVxLCAqZnJl
cSwgcmV0LCBuZXdfZnJlcSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgKmZyZXEsIG9sZF9m
cmVxLCByZXQsIG5ld19mcmVxKTsKPiAgICAgICAgIGVsc2UgaWYgKCpmcmVxICE9IG5ld19mcmVx
KQo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImRkcmMgZmFpbGVkIGZyZXEgdXBkYXRl
IHRvICVsdSBmcm9tICVsdSwgbm93IGF0ICVsdVxuIiwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICBvbGRfZnJlcSwgKmZyZXEsIG5ld19mcmVxKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAq
ZnJlcSwgb2xkX2ZyZXEsIG5ld19mcmVxKTsKPiAgICAgICAgIGVsc2UKPiAgICAgICAgICAgICAg
ICAgZGV2X2RiZyhkZXYsICJkZHJjIGZyZXEgc2V0IHRvICVsdSAod2FzICVsdSlcbiIsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgKmZyZXEsIG9sZF9mcmVxKTsKPgo+ICAgICAgICAgcmV0dXJu
IHJldDsKPiAtLQo+IDIuMTcuMQo+CgpJZiB5b3UgYWdyZWUsIEkgd2FudCB0byBzcXVhc2ggdGhp
cyBwYXRjaCB0byBvcmlnaW5hbCBwYXRjaCBvbgpkZXZmcmVxLW5leHQgcGF0Y2gKd2l0aG91dCBz
ZXBhcmF0ZSBwYXRjaCBhcHBsaWVkLgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
