Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E39B15020B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 08:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRf1/VN/1bs88wv3ba1opWVd0RUXVcAV2KfRJKF2OhE=; b=mabZYV670MGYNA
	ImhhH2V8+G5Gvfo2iCfWmluVpjOPC8BBZtn41HhLivac1ZpvOei8JOQ6y9aT0swLg+xWE6XNG/KtM
	6VL5+gi4VrLq81AEiXMPCd7SM/Dw4BR94kZLZ4hLy0c2hJ+RsILFNjONzsJKifB6YIu+8JqdSh7QG
	vnQAH23P7rTuS4U7NFFJRDe8nmxohhbg/Yi2YkL+xo/bX6xaxrKC89aExGSXKsptLXTrmOYLuaRG8
	kd01AXcOVXlUvdIek95yqHRXcfKwQcBm/5+q+H8rHhrP//O6vKNmkbwiarqcI7S9UloLmyprr6MEu
	47eCf3Fw+H5nHMYbRpbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyWR3-0001HP-Kf; Mon, 03 Feb 2020 07:46:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWQw-0001Gn-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 07:46:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id z9so4374771wrs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 23:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=3nucfqlZlbS9OuDGzb3kixq1Br5Ct5yP/xRIMcpGX3I=;
 b=mBsWaIqgxBm8aCgBacUzTG7hSSBWgBjHas+8ae87Zzr33BdDyOswJQPMH3FbJ0eOhD
 kCtZzepzkXSgXl+4F+CLOPlJ2CvCSbzSqx6sjQkzOq07TkagOaHfhR+5rwpkRwIaqwId
 NP6ltWCKqca7ky9ktf/JB9p3Hk1x+Ose9hDG1Xj1/MSitC77bKNotLaD8fVh0j4eFcS5
 DkJ8biOJMNn0LjxriM/OkD9IKdQVbi1l8TpOLPLF9LRFHPSvk6Cn1ueXhjy5n5Rcm996
 1c2z9DchENiRTvTIUJwHx6nLH8QULbKfTRr/dIGYh5UjzbVJFs+TN4awtfXJuOGZ+p9Y
 969g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3nucfqlZlbS9OuDGzb3kixq1Br5Ct5yP/xRIMcpGX3I=;
 b=AztLXgYzlqmkAr0HwN+YRGn66FrVbGr2EJvuZiKq5xLJH6j6z3mjSa2DC2cOoOdw99
 sxMvQMxgKLOm2O+dMmk5udwI5G3viPgPjvgziWw+mLAoE2rmh0pja64j18Uct0H3X9Xv
 OP1INUh/f3H9U4HjBEXxzVOlijSAxjcGlf+8V7wtlAS98203WMXek1FDH+pgweeqg9Ef
 D8W5rArNY7HPe5Dvwkts00pgeRZNrtKDdOdKGhHp3TKzJ2VU0oNTx6dPnQ1n786RCUSL
 wHPwPpWzVAwM63yhyxD/DZh5//bYPM4ZswqnCT8IwC+zklCtit7j4q4TzQJfsUVnBEJg
 3fCA==
X-Gm-Message-State: APjAAAXpE8d5JAbaVZUYe7JJl8vyPE7CZiSs+LBwsfF+I43kRRxqjPVj
 THGISmtnjTpgw0g9BvlAFSYCHA==
X-Google-Smtp-Source: APXvYqwUM3eHfQyl0jYk2jMIm1HD6qhbHIGYlpCQN5vKCDU4ZGIkG0S0TmUkq8oDkZb8nAkfD69J1A==
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr13424029wrs.159.1580715972793; 
 Sun, 02 Feb 2020 23:46:12 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id r15sm21991157wmh.21.2020.02.02.23.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 23:46:12 -0800 (PST)
Date: Mon, 3 Feb 2020 07:46:21 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v7 3/6] mfd: Add support for the MediaTek MT6358 PMIC
Message-ID: <20200203074621.GB13919@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-4-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20191216151735.GD2369@dell> <1579664886.6399.24.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579664886.6399.24.camel@mtksdaap41>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_234614_852900_B8AAB4E2 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tianping Fang <tianping.fang@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBKYW4gMjAyMCwgSHNpbi1oc2l1bmcgV2FuZyB3cm90ZToKCj4gSGksCj4gCj4g
T24gTW9uLCAyMDE5LTEyLTE2IGF0IDE1OjE3ICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBP
biBXZWQsIDExIERlYyAyMDE5LCBIc2luLUhzaXVuZyBXYW5nIHdyb3RlOgo+ID4gCj4gPiA+IFRo
aXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgTWVkaWFUZWsgTVQ2MzU4IFBNSUMuIFRoaXMgaXMgYQo+
ID4gPiBtdWx0aWZ1bmN0aW9uIGRldmljZSB3aXRoIHRoZSBmb2xsb3dpbmcgc3ViIG1vZHVsZXM6
Cj4gPiA+IAo+ID4gPiAtIFJlZ3VsYXRvcgo+ID4gPiAtIFJUQwo+ID4gPiAtIENvZGVjCj4gPiA+
IC0gSW50ZXJydXB0Cj4gPiA+IAo+ID4gPiBJdCBpcyBpbnRlcmZhY2VkIHRvIHRoZSBob3N0IGNv
bnRyb2xsZXIgdXNpbmcgU1BJIGludGVyZmFjZQo+ID4gPiBieSBhIHByb3ByaWV0YXJ5IGhhcmR3
YXJlIGNhbGxlZCBQTUlDIHdyYXBwZXIgb3IgcHdyYXAuCj4gPiA+IE1UNjM1OCBNRkQgaXMgYSBj
aGlsZCBkZXZpY2Ugb2YgdGhlIHB3cmFwLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSHNp
bi1Ic2l1bmcgV2FuZyA8aHNpbi1oc2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gPiA+IC0tLQo+
ID4gPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICstCj4gPiA+
ICBkcml2ZXJzL21mZC9tdDYzNTgtaXJxLmMgICAgICAgICAgICAgfCAyMjQgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ID4gPiAgZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYyAgICAgICAg
ICAgIHwgIDQ1ICsrKysrLQo+ID4gPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU4L2NvcmUuaCAg
ICAgIHwgMTU4ICsrKysrKysrKysrKysrKysrKysrCj4gPiA+ICBpbmNsdWRlL2xpbnV4L21mZC9t
dDYzNTgvcmVnaXN0ZXJzLmggfCAyODIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiA+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9jb3JlLmggICAgICB8ICAgMyArCj4g
PiA+ICA2IGZpbGVzIGNoYW5nZWQsIDcxMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM1OC1pcnEuYwo+ID4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM1OC9jb3JlLmgKPiA+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNTgvcmVnaXN0ZXJzLmgK
ClsuLi5dCgo+ID4gPiAraW50IG10NjM1OF9pcnFfaW5pdChzdHJ1Y3QgbXQ2Mzk3X2NoaXAgKmNo
aXApCj4gPiA+ICt7Cj4gPiA+ICsJaW50IGksIGosIHJldDsKPiA+ID4gKwlzdHJ1Y3QgcG1pY19p
cnFfZGF0YSAqaXJxZDsKPiA+ID4gKwo+ID4gPiArCWlycWQgPSBkZXZtX2t6YWxsb2MoY2hpcC0+
ZGV2LCBzaXplb2Yoc3RydWN0IHBtaWNfaXJxX2RhdGEgKiksCj4gPiA+ICsJCQkgICAgR0ZQX0tF
Uk5FTCk7Cj4gPiA+ICsJaWYgKCFpcnFkKQo+ID4gPiArCQlyZXR1cm4gLUVOT01FTTsKPiA+ID4g
Kwo+ID4gPiArCWNoaXAtPmlycV9kYXRhID0gaXJxZDsKPiA+ID4gKwo+ID4gPiArCW11dGV4X2lu
aXQoJmNoaXAtPmlycWxvY2spOwo+ID4gPiArCWlycWQtPnRvcF9pbnRfc3RhdHVzX3JlZyA9IE1U
NjM1OF9UT1BfSU5UX1NUQVRVUzA7Cj4gPiA+ICsJaXJxZC0+bnVtX3BtaWNfaXJxcyA9IE1UNjM1
OF9JUlFfTlI7Cj4gPiA+ICsJaXJxZC0+bnVtX3RvcCA9IEFSUkFZX1NJWkUobXQ2MzU4X2ludHMp
Owo+ID4gPiArCj4gPiA+ICsJaXJxZC0+ZW5hYmxlX2h3aXJxID0gZGV2bV9rY2FsbG9jKGNoaXAt
PmRldiwKPiA+ID4gKwkJCQkJICBpcnFkLT5udW1fcG1pY19pcnFzLAo+ID4gPiArCQkJCQkgIHNp
emVvZihib29sKSwKPiA+IAo+ID4gVGhpcyBpcyBmcmFnaWxlLiAgV2hhdCBpZiB0aGUgdHlwZSBj
aGFuZ2VzIGVsc2V3aGVyZT8KPiA+IAo+IAo+IFRoYW5rcyBmb3IgeW91ciBjb21tZW50Lgo+IERv
IHlvdSBtZWFuIHVzaW5nICdzaXplb2YoKmlycWQtPmVuYWJsZV9od2lycSknIGluc3RlYWQgb2YK
PiAnc2l6ZW9mKGJvb2wpJz8KClllcyBwbGVhc2UuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
