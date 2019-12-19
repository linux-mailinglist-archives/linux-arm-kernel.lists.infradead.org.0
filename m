Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE21266BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHPywCQqVvt6cdsbzr8KG0yBo0ax2UTfGHLeHDyonBk=; b=cu3hxHr66OSvTR
	XaNaEoZS+qBQ1CYNoDPD1jISuRMDAQsB8bAVZtC4OKraVD/5Dhlo6veGeVDLcR+OZP4VcD/LGt3dZ
	T1lu47tXXqGLlZJO+W0MITWek/O4DzrxgCwQTsANYyoyKe9sz4Z3VJGpIWMnxcE6i8kjSBfUVHpbu
	AqU/rkUBOwtT+yxuIFBy6VFiwVklfAkN3VHIjy+SXIznJ/LS0p/qLwxjzjIos9uGlyenSEoejIa0o
	z5PTLJtDZqelV7/28x3jSfx10X8oeDd1lvfcqBg/JFeA2Nj7Cd+SmPOCFS+W4RSwu2bq2SZs1KDzb
	va6P/7IYW1b9ZdxVWiOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyZR-0005D4-Ut; Thu, 19 Dec 2019 16:22:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyZG-0005CB-2y
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:22:27 +0000
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CBE924683
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 16:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576772545;
 bh=8OuFFD1TFHDoCrgZRL1h9iYeu7sAdMLkzDh6ZazxVv0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xW+MceaUkzQchW0YpKJ9RQZctcv7phmV5BbEr2UTMV3tWzq6oC23a2pVM69DyMaZH
 fLB/SN7iS/gyl+SSuEPGQrX1rrwa1SUozRB2vkRf/TjMIgZ43Csm3xwy8mf0IWJBkC
 5/npyR1EtgqpSVWueQBqBT1B1YPusOFO0eJuK08A=
Received: by mail-lf1-f41.google.com with SMTP id m30so4765909lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:22:25 -0800 (PST)
X-Gm-Message-State: APjAAAWM+qwCTF1X1pSUVT51Hs3VRE6RQIo3ODJCdxITI6jiAno6lIT1
 a0LbBQkFCM7q2ZPE7rk4qqwSEWBvq1V6RGMJ8x0=
X-Google-Smtp-Source: APXvYqze9h9zYParr2EHk1MaY5ARIQ4YV1nSXLXSOoiPLwUieUFE8IclP58x/cxSU7P/mdd88b/5nuQQmcrPbf86df0=
X-Received: by 2002:ac2:5444:: with SMTP id d4mr6177339lfn.49.1576772543571;
 Thu, 19 Dec 2019 08:22:23 -0800 (PST)
MIME-Version: 1.0
References: <9e89485ca173e1d118748dbe5cfc7068f74079bf.1576769985.git.leonard.crestez@nxp.com>
In-Reply-To: <9e89485ca173e1d118748dbe5cfc7068f74079bf.1576769985.git.leonard.crestez@nxp.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Fri, 20 Dec 2019 01:21:47 +0900
X-Gmail-Original-Message-ID: <CAGTfZH3BNkq4Rz9qgBwXABsPyaiE6V+3ApEfCdS67AZK957jVw@mail.gmail.com>
Message-ID: <CAGTfZH3BNkq4Rz9qgBwXABsPyaiE6V+3ApEfCdS67AZK957jVw@mail.gmail.com>
Subject: Re: [PATCH] PM / devfreq: imx8m-ddrc: Remove unused defines
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_082226_146135_4C5F04C6 
X-CRM114-Status: GOOD (  14.77  )
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

MjAxOeuFhCAxMuyblCAyMOydvCAo6riIKSDsmKTsoIQgMTI6NDMsIExlb25hcmQgQ3Jlc3RleiA8
bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+64uY7J20IOyekeyEsToKPgo+IFRoZSBJTVhfU0lQX0RE
Ul9EVkZTX1dBSVRfQ0hBTkdFIGFuZCBJTVhfU0lQX0REUl9GUkVRX1NFVF9ISUdIIGRlZmluZXMK
PiBhcmUgbm90IHVzZWQgc28gdGhleSBjYW4gYmUgcmVtb3ZlZC4KPgo+IEZpeGVzOiA1MThlOTll
MmEyMmUgKCJQTSAvIGRldmZyZXE6IEFkZCBkeW5hbWljIHNjYWxpbmcgZm9yIGlteDhtIGRkciBj
b250cm9sbGVyIikKPgo+IFJlcG9ydGVkLWJ5OiBTaGF3biBHdW8gPHNoYXduLmd1b0BrZXJuZWwu
b3JnPgo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54
cC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9pbXg4bS1kZHJjLmMgfCA2IC0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RldmZyZXEvaW14OG0tZGRyYy5jIGIvZHJpdmVycy9kZXZmcmVxL2lteDhtLWRkcmMuYwo+IGlu
ZGV4IGZlYTE2OTYxOWM1OS4uZWNiYjFkYjA1ZWEwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2
ZnJlcS9pbXg4bS1kZHJjLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvaW14OG0tZGRyYy5jCj4g
QEAgLTEzLDE2ICsxMywxMCBAQAo+ICAjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9hcm0tc21jY2MuaD4KPgo+ICAjZGVmaW5lIElNWF9TSVBfRERSX0RW
RlMgICAgICAgICAgICAgICAgICAgICAgIDB4YzIwMDAwMDQKPgo+IC0vKiBWYWx1ZXMgc3RhcnRp
bmcgZnJvbSAwIHN3aXRjaCB0byBzcGVjaWZpYyBmcmVxdWVuY3kgKi8KPiAtI2RlZmluZSBJTVhf
U0lQX0REUl9GUkVRX1NFVF9ISUdIICAgICAgICAgICAgICAweDAwCj4gLQo+IC0vKiBEZXByZWNh
dGVkIGFmdGVyIG1vdmluZyBJUlEgaGFuZGxpbmcgdG8gQVRGICovCj4gLSNkZWZpbmUgSU1YX1NJ
UF9ERFJfRFZGU19XQUlUX0NIQU5HRSAgICAgICAgICAgMHgwRgo+IC0KPiAgLyogUXVlcnkgYXZh
aWxhYmxlIGZyZXF1ZW5jaWVzLiAqLwo+ICAjZGVmaW5lIElNWF9TSVBfRERSX0RWRlNfR0VUX0ZS
RVFfQ09VTlQgICAgICAgICAgICAgICAgMHgxMAo+ICAjZGVmaW5lIElNWF9TSVBfRERSX0RWRlNf
R0VUX0ZSRVFfSU5GTyAgICAgICAgIDB4MTEKPgo+ICAvKgo+IC0tCj4gMi4xNy4xCj4KCkFwcGxp
ZWQgaXQuIFRoYW5rcy4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
