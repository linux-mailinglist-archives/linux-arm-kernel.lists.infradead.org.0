Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E7C138D93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBIcq3FznpT5uRgeCdFUkE/JHouaAHpY3qhBVE0nvZM=; b=ePKLiueDpkBu/C
	CnvxfQ0csEbukjdBEaFcyKqf4OY7hOLiC537yDh7Qe0gSEuI/PinfDea2wmUGE/QtmF0vFx3UcT1d
	KP+ZWpjlsGE15mmrWw6I9FCsLLgCmCVB9NyR8LaZNe0gGuKcPOV7Lht8pY/12mLQmX9gUzbJsIcxy
	/SuYNHL63wwV0f9T8h9vH5uWYkaYVCQCVK1Hhae9nxDGVbWptHEebUqCJNWWne+64jHOsjg80XgQb
	VhzQeN12Asaz7XVlW+x4K5bF9x8z2UmYvapHoUi4/ss60DT9g2YhZp8W/yaUKgiiUQXkJnt15OnYB
	iz2ntboba+nVYjXI5jVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvsY-0002mZ-8E; Mon, 13 Jan 2020 09:19:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvsN-0002l1-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:19:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so8774510wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 01:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WJisxQZ9O/eYcnMNZ0LMJL5vPrbZS+2bKF2olTYPt1k=;
 b=n4gWeM3p4mDYR3LkoODxn8AxHyDBZkaiuwfYhZxBdPHJ6oN+QtUE3Uev5YQpV7TIGe
 HCFI8e9MTA3OMOOp2Dgw7N8SPI7JJUxI8x2cRcfjPY+6whkUYOYd666RGG5r00ha5Gde
 qOGGYkUJs3M8aPaEvchh+oPb7XunnqDVP2/HpB4gqAZQJkwYu5DUYyZF0J0sUAy77b1P
 1xZsS+vMiXd/9Tx71Qn8SPfGIDppGwoJ0pi8xdl0A90qM+8KLIHoew57LWypv9LHC83r
 96IobpfXlTwHIj3xUqBiZ93l9FwJYsLt/daiomUm5oNmfW8MJ32ZvT6lhZSlwyFG8uFn
 d+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WJisxQZ9O/eYcnMNZ0LMJL5vPrbZS+2bKF2olTYPt1k=;
 b=MyTgzldB4HACnMX4dn4yecoJRtJDLncWjdeq0SR7CKPCKod7FjcwB+G2ooYkq6wRTh
 K/XuGYGqauO8xSjJp5erlaOivLVd7psDSlgFScgo5KPj52DP/d1Y45TRdCn9q7POyepi
 UqURU1dORGQeiV9oqD4EyeKE/8cE4mmvXvmEgOGukrfsJ5A1ac0R9DeSJL2L7WCF8YOv
 +kGpie0rtz/bIQY9TXV0/XJyF9dqeTsXtSn8U5xDvLVQEKAGjxFG648ntBetBI3zV5NS
 jR0s1VkJWWlQhJ/s35NQwOLWeYuX0H1ly/BU6ewOetG010zBDlq7x0bjuj+2BJcsZV7u
 w6DA==
X-Gm-Message-State: APjAAAV64I6Ere5fksyxEUKju42Ntidy23aSvjJPG+SQcDdgmdgG34Vd
 wIL0xLbqy3+u5nKh5ww9GmPRlJPxvDDF5zH6cIE=
X-Google-Smtp-Source: APXvYqwAKgNbTXHlSquoXeaUKmNOGfTg9InaoBkHHSaAN8TN4L00GpyO126rvjYMIXzAMXayoaGeYzDMEgixJXqD8Yg=
X-Received: by 2002:a7b:c1d8:: with SMTP id a24mr18970172wmj.130.1578907149178; 
 Mon, 13 Jan 2020 01:19:09 -0800 (PST)
MIME-Version: 1.0
References: <20200109233106.17060-1-peron.clem@gmail.com>
 <CAGfOxi2vUVLv1_PGynu_53=DvuMBKFE6UTFUoTPTqjW1VvotLg@mail.gmail.com>
In-Reply-To: <CAGfOxi2vUVLv1_PGynu_53=DvuMBKFE6UTFUoTPTqjW1VvotLg@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 13 Jan 2020 10:18:58 +0100
Message-ID: <CAJiuCcc3nSKGseDdWCEm4qtQj1HzbU95dFeJGxVgWEBZAynBXw@mail.gmail.com>
Subject: Re: [PATCH] [RFC] pwm: sun4i: Move pwm_calculate out of spin_lock
To: Alexander <alex.mobigo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011911_872269_4FDE7FD5 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDEzIEphbiAyMDIwIGF0IDAxOjQwLCBBbGV4YW5kZXIgPGFsZXgubW9iaWdv
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEphbiA5LCAyMDIwIGF0IDg6MzEgUE0gQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gcHdtX2Nh
bGN1bGF0ZSBjYWxscyBjbGtfZ2V0X3JhdGUgd2hpbGUgaG9sZGluZyBhIHNwaW5fbG9jay4KPiA+
Cj4gPiBUaGlzIGNyZWF0ZSBhbiBpc3N1ZSBhcyBjbGtfZ2V0X3JhdGUoKSBtYXkgc2xlZXAuCj4g
Pgo+ID4gTW92ZSBwd21fY2FsY3VsYXRlIG91dCBvZiB0aGlzIHNwaW5fbG9jay4KPiA+Cj4gPiBG
aXhlczogYzMyYzVjNTBkNGZlICgicHdtOiBzdW40aTogU3dpdGNoIHRvIGF0b21pYyBQV00iKQo+
ID4gUmVwb3J0ZWQtYnk6IEFsZXggTW9iaWdvIDxhbGV4Lm1vYmlnb0BnbWFpbC5jb20+Cj4gPiBT
dWdnZXN0ZWQtYnk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4g
LS0tCj4gPgo+ID4gSGksCj4gPgo+ID4gdGhpcyBpc3N1ZSBoYXMgYmVlbiByZXBvcnRlZCBvbiBs
aW51eC1zdW54aSBHb29nbGUgZ3JvdXBzLgo+ID4KPiA+IEkgZG9uJ3QgaGF2ZSBhIGJvYXJkIHdp
dGggUFdNIHRvIGNvbmZpcm0gaXQuCj4gPgo+ID4gUGxlYXNlIHdhaXQgYSB0ZXN0ZWQtYnkuCj4g
Pgo+ID4gVGhhbmtzLAo+ID4gQ2zDqW1lbnQKPiA+Cj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgfCA3ICsrKy0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBpbmRleCAxYWZkNDFlYmQzZmQuLjZiMjMwMDI5
ZGM0OSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiArKysgYi9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gQEAgLTI0OCwxOSArMjQ4LDE4IEBAIHN0YXRpYyBp
bnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZp
Y2UgKnB3bSwKPiA+ICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAgIH0KPiA+Cj4gPiAtICAg
ICAgIHNwaW5fbG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwo+ID4gLSAgICAgICBjdHJsID0g
c3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+IC0KPiA+ICAgICAg
ICAgcmV0ID0gc3VuNGlfcHdtX2NhbGN1bGF0ZShzdW40aV9wd20sIHN0YXRlLCAmZHV0eSwgJnBl
cmlvZCwgJnByZXNjYWxlciwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAm
YnlwYXNzKTsKPiA+ICAgICAgICAgaWYgKHJldCkgewo+ID4gICAgICAgICAgICAgICAgIGRldl9l
cnIoY2hpcC0+ZGV2LCAicGVyaW9kIGV4Y2VlZHMgdGhlIG1heGltdW0gdmFsdWVcbiIpOwo+ID4g
LSAgICAgICAgICAgICAgIHNwaW5fdW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiAg
ICAgICAgICAgICAgICAgaWYgKCFjc3RhdGUuZW5hYmxlZCkKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShzdW40aV9wd20tPmNsayk7Cj4gPiAgICAgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICsgICAgICAgc3Bpbl9s
b2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiArICAgICAgIGN0cmwgPSBzdW40aV9wd21f
cmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4gKwo+ID4gICAgICAgICBpZiAoc3Vu
NGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gPiAgICAgICAgICAg
ICAgICAgaWYgKGJ5cGFzcykgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY3RybCB8PSBC
SVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSk7Cj4gPiAtLQo+ID4gMi4yMC4xCj4gPgo+ICIi
IiIiIiIiIiIiIiIiIiIiCj4gVGVzdGVkIG9uIG15IGJvYXJkIFBpbmU2NCssIHByb2JsZW1zIG9j
Y3VycyBiZWZvcmUgdGhlIHBhdGNoIGJ1dCBub3QgYWZ0ZXIuLi4KPgo+IFRlc3RlZC1CeTogQWxl
eGFuZGVyIEZpbmdlciA8YWxleC5tb2JpZ29AZ21haWwuY29tPgoKVGhhbmtzLCBJIHdpbGwgc2Vu
ZCBhIHYyIHdpdGggeW91ciBwcm9wZXIgbmFtZSBmb3IgdGhlIFJlcG9ydGVkLWJ5IHRhZwoKUmVn
YXJkcywKQ2xlbWVudAoKPiAiIiIiIiIiIiIiIiIiIiIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
