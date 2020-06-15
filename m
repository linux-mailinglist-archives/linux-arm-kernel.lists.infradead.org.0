Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D591F9D56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oBQVshtVsSbStnfhbH1gY4rM+2jfA0CmRNT3w/3xZMI=; b=lI0IV3GDk+9BFC12nWFU/BqbM5
	u0CenJguHuVc0AlGHQrG5R1VgmFdwBlT6wLNltla8q74yWWghv6O63pNx4O0uu02w5ME+v2Ie1lHt
	4NdToUI9wT91ibP7xDChP1f7UQxcBpXpvDaNzHF9OA5aGkti97C1Z7kiRYnS4sLR7DKGHFlecsDn6
	z9YcmJ6c6TuYeFkYIApplxaI8EtzN0fH0oFZhAVNB3GNo0kWJua8+4nbjqlVyGq7x2uDCIuzAx2NT
	PXaijyYOK7gWZMDyKWPyO+wmfF0uwvVBD/qyVfSAIcQfCDOP9POJPgh2fWHMkncf/QVffXmmOxTcq
	7sSO9uPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrwD-00009V-Uk; Mon, 15 Jun 2020 16:26:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrw5-000098-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:26:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id z63so7103720pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=TYrNTlrmIzbmT7MQbSQ47vQPQ5UxVm04h6DXBVDeZMk=;
 b=ijbkIRJfR21AwWxSRpF2fPyfu+JgSXoqpg7BmQmxgvoM7zti3LiBimpS4AEwtdyY55
 xypmr1+arzjntgNcn8BifWdwyNGBolrcWxrgri+Rq3uLYBvCwiZfGeA7+BLSnb/fy2be
 GTHrhW0REwqwYg2xZhm7tf3St94Z2t5+1nE7yf66eNuKEuRPA+lGIQ+kHd4pa4nAwmP6
 tahDicEruLVheNLCyh3SG6p2ZAP7NxAyKeHCptEw8W6ObQeSi7m5ONbTExjsZh2FWfwE
 W6rpshIrvSPAgtcqJfEDcNsYiYEdQvpDn/ery5vt5EaEd3JTtfuU5rOPVvEk+Q0ypBnx
 4vAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TYrNTlrmIzbmT7MQbSQ47vQPQ5UxVm04h6DXBVDeZMk=;
 b=KVj6rNFnK6hR5COZWm5AIGDwNW3jEaA0dMbMvaNa3zoaId5auFj61SJtuYBIoKL7UM
 UmK+bOdkhJJH7/Ux6PxShV2EwtW/D4xYkKakb641CH85HvPVoBb6tzt0gg4OEY/PD0E8
 qynXZ+rT3YQQI19JHTyI2R8Ru21imTo6PqB8sqV3v6qQ6q0ldHpPDgplVOVidDP5ZD9n
 /g7MqOe7LdXpcZpnZfqTcx/Y0lwGIP5ec06GWZTsgqYMwF6+ZFC3vhgKlg4rnlgj6O3G
 7DcHghtL8AqdgB71ir7cHhMPwVPdq7vini4F4q4eHEZyfRSkDZ+qhSMBtGc3WvP+Oa0e
 3hLw==
X-Gm-Message-State: AOAM531/PkxkIt5l3p23lUh2ca34Kx5eUa3lEpv3W/or6dB6kUo/MMMT
 lRgxkDLxcUeWcFtpJCM4/35mLyFD
X-Google-Smtp-Source: ABdhPJwptr8oelZoC62cLr/hOohunZtdiJ/EY2r0Xvs0/j/PYTVVxj2vditwJiciJRH6Y1Gf/EzpLw==
X-Received: by 2002:a63:d54b:: with SMTP id v11mr21330284pgi.198.1592238371811; 
 Mon, 15 Jun 2020 09:26:11 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g21sm14232286pfh.134.2020.06.15.09.26.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:26:10 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] spi: bcm63xx-spi: add reset support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
 <20200615090943.2936839-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <16650d01-7c5a-21be-35a8-c74ad0a47b45@gmail.com>
Date: Mon, 15 Jun 2020 09:26:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090943.2936839-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092613_495114_A6F00F65 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE1LzIwMjAgMjowOSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IGJjbTYzeHggYXJjaCByZXNldHMgdGhlIFNQSSBjb250cm9sbGVyIGF0IGVhcmx5IGJvb3QuIEhv
d2V2ZXIsIGJtaXBzIGFyY2gKPiBuZWVkcyB0byBwZXJmb3JtIGEgcmVzZXQgd2hlbiBwcm9iaW5n
IHRoZSBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFz
IDxub2x0YXJpQGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56YWJl
bEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgdjI6IHVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0
X2V4Y2x1c2l2ZQo+IAo+ICBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jIHwgMTcgKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4
LmMKPiBpbmRleCAwZjFiMTBhNGVmMGMuLjhhYjA0YWZmYWY3YiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3NwaS9zcGktYmNtNjN4eC5jCj4gKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYwo+
IEBAIC0xOCw2ICsxOCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L3BtX3J1bnRpbWUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC9yZXNldC5oPgo+ICAKPiAgLyogQkNNIDYzMzgvNjM0OCBTUEkgY29yZSAqLwo+ICAj
ZGVmaW5lIFNQSV82MzQ4X1JTRVRfU0laRQkJNjQKPiBAQCAtNDkzLDYgKzQ5NCw3IEBAIHN0YXRp
YyBpbnQgYmNtNjN4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
CXN0cnVjdCBiY202M3h4X3NwaSAqYnM7Cj4gIAlpbnQgcmV0Owo+ICAJdTMyIG51bV9jcyA9IEJD
TTYzWFhfU1BJX01BWF9DUzsKPiArCXN0cnVjdCByZXNldF9jb250cm9sICpyZXNldDsKPiAgCj4g
IAlpZiAoZGV2LT5vZl9ub2RlKSB7Cj4gIAkJY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0
Y2g7Cj4gQEAgLTUyOSw2ICs1MzEsMTUgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCXJldHVybiBQVFJfRVJSKGNsayk7Cj4g
IAl9Cj4gIAo+ICsJcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShkZXYs
IE5VTEwpOwo+ICsJaWYgKElTX0VSUihyZXNldCkpIHsKPiArCQlyZXQgPSBQVFJfRVJSKHJlc2V0
KTsKPiArCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRldl9lcnIoZGV2LAo+ICsJ
CQkJImZhaWxlZCB0byBnZXQgcmVzZXQgY29udHJvbGxlcjogJWRcbiIsIHJldCk7Cj4gKwkJcmV0
dXJuIHJldDsKPiArCX0KClRoaXMgc2hvdWxkIGJlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhj
bHVzaXZlX29wdGlvbmFsKCkgZm9yIGEgbnVtYmVyCm9mIHJlYXNvbnMgdGhlIGZpcnN0IG9uZSBi
ZWluZyB0aGUgbW9zdCBpbXBvcnRhbnQgYXMgaXQgcmVmbGVjdHMgcmVhbGl0eQpvZiB0aGUgSFc6
CgotIG5vdCBhbGwgQkNNNjN4eCBwbGF0Zm9ybXMgaGF2ZSBhIGRlZGljYXRlZCByZXNldCBsaW5l
IGZvciB0aGUgU1BJCmNvbnRyb2xsZXIgKGxpa2UgdGhlIEFSTS1iYXNlZCBTb0NzKQoKLSB1bnRp
bCB5b3UgYWxzbyB1cGRhdGUgYWxsIERldmljZSBUcmVlIHNvdXJjZXMgdG8gaGF2ZSBhICdyZXNl
dHMnCnByb3BlcnR5IGluIHRoZWlyIFNQSSBjb250cm9sbGVyIG5vZGUsIHRoaXMgaXMgbGlrZWx5
IGdvaW5nIHRvIGJlIGZhaWxpbmcKClRoaXMgYWxzbyBhcHBsaWVzIHRvIHBhdGNoIDMuCi0tIApG
bG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
