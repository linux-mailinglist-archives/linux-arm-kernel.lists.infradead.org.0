Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972A6324C9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 22:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Ai6YDmaQZjFXhVsVwGRo2fxCinIUcJJlS5IChV7Z/c=; b=rSaPj6+ByYu9g8
	K1FXrwqaVQaAQzMZQLbORo24vKpghbrkfEJnplNMG4tTjq8sr8qZ6No+YtWdYjmU24cYAICO1vmaC
	tbtMgkauudCjJxJ9yOOCuEzCY95EKPmKjkajxi1jBEdZ61zhDtI9daQts8LH/uSrtJ+UEDTxZKkuK
	vQAKsOTCobYdMBGqEbtHLU3iiqNQU5yb6VioCt9JL3aDin7mTB9nCMy4LY9r9dvbq9viZTbjs9X02
	m7AoU8B2Lw0w41pWZGQCCVeVq3sdKmDgzv79t4do30zyJrJAZt24/ZN628xMMJQGbfxvs8ZNLEb3y
	5hQRU0KEK3LI4I1Ua0jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXXG1-0004pk-Ab; Sun, 02 Jun 2019 20:39:09 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXXFr-0004ok-Uk; Sun, 02 Jun 2019 20:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559507918;
 bh=Q+Zt9ln5iZCO1/TfDlIC1bVEulm4W33SVa1zU1MY8is=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=IzRTQePMfVDv9en5jyG6PJ9Ws5yqWKLjtz3YDubVAqYW0Kx620kw/x1Mb/tZcSSeg
 0Iul1Wr/kbdpvTFoAY/LlqQmfYfWSN1HwdMs9TsQwtVUhaVL86StTW6PJGeaclE+AL
 8xR9gXmAJVySqhEl2Bi/kdjFxMTPaDFN+zQKjebM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1ML9uK-1hGYKS2rhK-00IFi0; Sun, 02
 Jun 2019 22:38:38 +0200
Subject: Re: [PATCH] pwm: bcm2835: increase precision of pwm
To: Sean Young <sean@mess.org>
References: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
 <0e6eef35-244a-4d52-2d87-e8ff22355f09@gmx.net>
 <20190602200318.ymyewngns745m2vx@gofer.mess.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <83f18bc9-a0d9-8ed9-ea4f-29072358b224@gmx.net>
Date: Sun, 2 Jun 2019 22:38:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190602200318.ymyewngns745m2vx@gofer.mess.org>
Content-Language: en-US
X-Provags-ID: V03:K1:+PG278H9E/NcBtz0FZXqSx9eLx0phN/rHEE5iByBc5YojdnMLoR
 afvLqWiUtZxjxDmbYFu5imufH+Bkg/uqoQyjeDZYoNBdWcJJu1QbbmSbUH7z1/EGtcA7dSf
 MJcHtTEJBYXPHdd+pfc1XQ+8ODSKd/kPNvxRsYoL1d1HLlWzedvXXvcr4plTnKizRwTsxbS
 +0dsD0zUJ9x/LFv0qj3uQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BfIw+xURT1I=:r23lx/rIciI//Q2g5icrPD
 VIe2LYQnz4s2dolbiyINLF9Riv+IdAqn/LT/nTSt4EwEd3FQpvri+cXMkEWPUBaKy39269evL
 nOm3QHMI3m/pd8qG7JoPjjQBORbslvfPWzCadTMwYrib76YMq/w9W/BtOKofrjnW+eGSRAXG5
 HeV/08lmMEAj013doWx5J0nA33Dza0KSWzg4K3YYQOVXdcsiCl4NopZnHkup7n7p0kQ8F5Q3x
 XH1EE9a1A+fRRcG+WZiG+L4xTN+zU6kv577Rk+8KzpbybdShAEjDShq7vEwxisJBfCpk4hG8m
 YW/oJMHi+e6K+b2zOLu0nNxZwDzkf5YMsLMkHEGGoaTS4nsJVrn9KXOBdRoHAWharTjyfnLKB
 h+T8Ora0C2NPPvlNBfaVMs4e5yEAcyKdv+NtDWnlOgFTVik2Uuttlde7QtXYkfC7EWNu4UxAQ
 0iiEJezpvwHU7WqsgK8WrQXL3BYI+IfCqOJQxbbKvL8AvN1FViBWM01QBbHe99eYfMy2m5L4Q
 693vWnU+x5tJeTLN2XRU3dGSFHARzgV4SDqEVbRPm4UJqqdRALyezk+aViIOTRQGIvo/FseSA
 y6hfYY7JjHkwG1lmWD0P4dPVdMF7+M6VKWjKGw0B5CL/DSo2NQUsU4s0hL9CgX8rzFqwNsmxg
 ryyQh/FGrPAk+/UiuwRSEXGkwsOt0elipX4Cyl+ygBbqiK19ZZuDhJ/dN+ivLAFJdkh3CtIYt
 0Ytc7vHDY6OtyuEfTMilQAFpncvIzF+qMRDp+CZMKNGzqADOh7J2fDygMf+ABCMpuqF3qOKHy
 dQ380XE+UX2Csx3Hb/94x3fPH3Ze+AsiJQMuKmdDxH7cxOPfNW+rlj5Pr/YSV7/H316zbW8ye
 A3dNZTLUWKq2O6J1ABY4ORZu6ApwgNRE4cta+tWuLotOmr0KGet19CaI0QhzNpk1+zdtzuAaB
 qltj+LXFzF7ptluUOAhjIHAt8lsdtlZNhe8JH+TNDMGSIs4RlPte3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_133901_003363_4090B5E7 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2VhbiwKCkFtIDAyLjA2LjE5IHVtIDIyOjAzIHNjaHJpZWIgU2VhbiBZb3VuZzoKPiBIaSBT
dGVmYW4sCj4KPiBPbiBTdW4sIEp1biAwMiwgMjAxOSBhdCAwNjo0NTo0NFBNICswMjAwLCBTdGVm
YW4gV2FocmVuIHdyb3RlOgo+PiBBbSAwMi4wNi4xOSB1bSAxMjoyMyBzY2hyaWViIFNlYW4gWW91
bmc6Cj4+PiBJZiBzZW5kaW5nIElSIHdpdGggY2FycmllciBvZiA0NTVrSHogdXNpbmcgdGhlIHB3
bS1pci10eCBkcml2ZXIsIHRoZQo+Pj4gY2FycmllciBlbmRzIHVwIGJlaW5nIDQ3NmtIei4KPj4+
Cj4+PiBBIGNhcnJpZXIgb2YgNDU1a0h6IGhhcyBhIHBlcmlvZCBvZiAyMTk4bnMsIGJ1dCB0aGUg
YXJpdGhtZXRpYyB0cnVuY2F0ZXMKPj4+IHRoaXMgdG8gMi4xbnMgcmF0aGVyIHRoYW4gMi4ybnMu
IFNvLCB1c2UgRElWX1JPVU5EX0NMT1NFU1QoKSB0byByZWR1Y2UKPj4+IHJvdW5kaW5nIGVycm9y
cywgYW5kIHdlIGhhdmUgYSBtdWNoIG1vcmUgYWNjdXJhdGUgY2FycmllciBvZiA0NTQuNWtIei4K
Pj4+Cj4+PiBSZXBvcnRlZC1ieTogQW5kcmVhcyBDaHJpc3QgPGFuZHJlYXNAY2hyaXN0LWZhZXNj
aC5jaD4KPj4+IFNpZ25lZC1vZmYtYnk6IFNlYW4gWW91bmcgPHNlYW5AbWVzcy5vcmc+Cj4+PiAt
LS0KPj4+ICBkcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jIHwgMTAgKysrKysrLS0tLQo+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1iY20yODM1LmMgYi9kcml2ZXJzL3B3bS9wd20tYmNt
MjgzNS5jCj4+PiBpbmRleCA1NjUyZjQ2MWQ5OTQuLmVkYjIzODdjNDlhMiAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvcHdtL3B3bS1iY20yODM1LmMKPj4+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1i
Y20yODM1LmMKPj4+IEBAIC02MywxNCArNjMsMTQgQEAgc3RhdGljIGludCBiY20yODM1X3B3bV9j
b25maWcoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+Pj4g
IHsKPj4+ICAJc3RydWN0IGJjbTI4MzVfcHdtICpwYyA9IHRvX2JjbTI4MzVfcHdtKGNoaXApOwo+
Pj4gIAl1bnNpZ25lZCBsb25nIHJhdGUgPSBjbGtfZ2V0X3JhdGUocGMtPmNsayk7Cj4+PiAtCXVu
c2lnbmVkIGxvbmcgc2NhbGVyOwo+Pj4gKwl1bnNpZ25lZCBpbnQgc2NhbGVyOwo+PiBhY2NvcmRp
bmcgdG8gdGhlIGNvbW1pdCBsb2cgaSB3b3VsZG4ndCBleHBlY3QgdGhpcyBjaGFuZ2UuIE1heWJl
IGl0J3MKPj4gd29ydGggdG8gbWVudGlvbi4KPiBZZXMsIHlvdSBhcmUgcmlnaHQsIHRoYXQgbmVl
ZHMgZXhwbGFpbmluZy4gSSBhbSB0cnlpbmcgdG8gYXZvaWQgYW4KPiB1bm5lY2Vzc2FyeSA2NCBi
aXQgZGl2aXNpb24uIEknbGwgcm9sbCBhIHYyLgoKb2theSwgYnV0IHBsZWFzZSBnaXZlIHBvdGVu
dGlhbCByZXZpZXdlciBzb21lIHRpbWUgYW5kIGRvbid0IHBvc3QgVjIgdG9vCnNvb24uCgpJbiBv
cmRlciB0byByZXByb2R1Y2UgeW91ciByZXN1bHRzIGl0IHdvdWxkIGJlIGhlbHBmdWwgdG8ga25v
dyB0aGUKcGFyZW50IG9mIHRoZSBwd20gY2xvY2sgKGkgYXNzdW1lIHBsbGRfcGVyKSBhbmQgdGhl
IGFzc2lnbmVkIGNsb2NrIHJhdGUKb2YgcHdtIGNsb2NrIHdoaWNoIGRpZmZlciBiZXR3ZWVuIGRv
d24tIGFuZCB1cHN0cmVhbS4gSSdtIG9ubHkKaW50ZXJlc3RlZCwgc28gdGhlcmUgaXMgbm8gbmVl
ZCB0byBhZGQgdGhpcyB0byB0aGUgY29tbWl0IGxvZy4KCldoaWxlIGxvb2tpbmcgYXQgdGhlIGNv
ZGUsIGkgbm90aWNlZCBhbm90aGVyIGlzc3VlLiBUaGUgcHdtIGRyaXZlciB3YXMKd3JpdHRlbiBi
ZWZvcmUgdGhlIGJjbTI4MzUgY2xrIGRyaXZlciBhbmQgdXNlZCBhIGZpeGVkIGNsb2NrLiBOb3cg
d2l0aCBhCmR5bmFtaWMgY2xvY2sgdGhlIHJhbmdlIGNoZWNrIGZvciBwZXJpb2RfbnMgaXMgd3Jv
bmcuIEkgdGhpbmsgdGhlIGJlc3QKd2F5IGlzIHRvIGNoZWNrIHRoZSBjYWxjdWxhdGVkIHBlcmlv
ZCB2YWx1ZSwgd2hpY2ggc2hvdWxkbid0IGJlIHNtYWxsZXIKdGhhbiAyLgoKSSBrbm93IHRoaXMg
aXMgYSBkaWZmZXJlbnQgaXNzdWUsIGJ1dCB3aGlsZSBhdCB0aGlzIHdlIHNob3VsZCBmaXggdGhh
dAp0b28gKG15IHVudGVzdGVkIGRyYWZ0IGJlbG93KS4KCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3
bS9wd20tYmNtMjgzNS5jIGIvZHJpdmVycy9wd20vcHdtLWJjbTI4MzUuYwppbmRleCA1NjUyZjQ2
Li5kNmVlODVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jCisrKyBiL2Ry
aXZlcnMvcHdtL3B3bS1iY20yODM1LmMKQEAgLTIxLDcgKzIxLDcgQEAKwqAjZGVmaW5lIFBFUklP
RCh4KcKgwqDCoCDCoMKgwqAgKCgoeCkgKiAweDEwKSArIDB4MTApCsKgI2RlZmluZSBEVVRZKHgp
wqDCoMKgIMKgwqDCoCDCoMKgwqAgKCgoeCkgKiAweDEwKSArIDB4MTQpCsKgCi0jZGVmaW5lIE1J
Tl9QRVJJT0TCoMKgwqAgwqDCoMKgIDEwOMKgwqDCoCDCoMKgwqAgLyogOS4yIE1IeiBtYXguIFBX
TSBjbG9jayAqLworI2RlZmluZSBQRVJJT0RfTUlOwqDCoMKgIMKgwqDCoCAweDIKwqAKwqBzdHJ1
Y3QgYmNtMjgzNV9wd20gewrCoMKgwqDCoCBzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKQEAgLTY0LDYg
KzY0LDcgQEAgc3RhdGljIGludCBiY20yODM1X3B3bV9jb25maWcoc3RydWN0IHB3bV9jaGlwICpj
aGlwLApzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLArCoMKgwqDCoCBzdHJ1Y3QgYmNtMjgzNV9wd20g
KnBjID0gdG9fYmNtMjgzNV9wd20oY2hpcCk7CsKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgcmF0ZSA9
IGNsa19nZXRfcmF0ZShwYy0+Y2xrKTsKwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBzY2FsZXI7CivC
oMKgwqAgdTMyIHBlcmlvZDsKwqAKwqDCoMKgwqAgaWYgKCFyYXRlKSB7CsKgwqDCoMKgIMKgwqDC
oCBkZXZfZXJyKHBjLT5kZXYsICJmYWlsZWQgdG8gZ2V0IGNsb2NrIHJhdGVcbiIpOwpAQCAtNzEs
MTUgKzcyLDEzIEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wd21fY29uZmlnKHN0cnVjdCBwd21fY2hp
cCAqY2hpcCwKc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKwqDCoMKgwqAgfQrCoArCoMKgwqDCoCBz
Y2FsZXIgPSBOU0VDX1BFUl9TRUMgLyByYXRlOworwqDCoMKgIHBlcmlvZCA9IHBlcmlvZF9ucyAv
IHNjYWxlcjsKwqAKLcKgwqDCoCBpZiAocGVyaW9kX25zIDw9IE1JTl9QRVJJT0QpIHsKLcKgwqDC
oCDCoMKgwqAgZGV2X2VycihwYy0+ZGV2LCAicGVyaW9kICVkIG5vdCBzdXBwb3J0ZWQsIG1pbmlt
dW0gJWRcbiIsCi3CoMKgwqAgwqDCoMKgIMKgwqDCoCBwZXJpb2RfbnMsIE1JTl9QRVJJT0QpOwor
wqDCoMKgIGlmIChwZXJpb2QgPCBQRVJJT0RfTUlOKQrCoMKgwqDCoCDCoMKgwqAgcmV0dXJuIC1F
SU5WQUw7Ci3CoMKgwqAgfQrCoArCoMKgwqDCoCB3cml0ZWwoZHV0eV9ucyAvIHNjYWxlciwgcGMt
PmJhc2UgKyBEVVRZKHB3bS0+aHdwd20pKTsKLcKgwqDCoCB3cml0ZWwocGVyaW9kX25zIC8gc2Nh
bGVyLCBwYy0+YmFzZSArIFBFUklPRChwd20tPmh3cHdtKSk7CivCoMKgwqAgd3JpdGVsKHBlcmlv
ZCwgcGMtPmJhc2UgKyBQRVJJT0QocHdtLT5od3B3bSkpOwrCoArCoMKgwqDCoCByZXR1cm4gMDsK
wqB9CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
