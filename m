Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EC91E472D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOeIDd8QOsdvys2ERdrthYZ7s3eg4F78ppyW7W/Zj6U=; b=i1F7uTEy7DmyaW
	Dpn6vlswBMsJjzUhrGodZJSSuPVcy4X3/kVXrDmsauJ8u/8AI0MmcZBL3paNaueZFCN/C17oZ66zr
	GDiOGM1UaCbO8WaGWFwDEV5VigoNn8q2gkOiK93+ujtxASX3vb2WbuejV2rvEMHlaF/rS2MtaXtiJ
	y3TxHtXIirs3VtEEzv79hcWzb7cSkUMXYV1Wh/3V5N2HOMldrne3g3RCMgJjk648DtcGLW/csOuFI
	Tc0iEey+1yJhDajgBfXYhvdVr9Y2HY7DKX+BbnE24f6/qtHhgselcBiTIUU3dxMbyAe3hRNqwoSvc
	b7v/pAzRYQgOqQZ6x5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxqK-0001ap-IJ; Wed, 27 May 2020 15:19:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxqA-0001Zx-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:19:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A42530E;
 Wed, 27 May 2020 08:19:32 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEBD43F52E;
 Wed, 27 May 2020 08:19:30 -0700 (PDT)
Date: Wed, 27 May 2020 16:19:28 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jiping Ma <Jiping.Ma2@windriver.com>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200527151928.GC59947@C02TD0UTHF1T.local>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_081934_492145_DE549740 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: zhe.he@windriver.com, bruce.ashfield@gmail.com, yue.tao@windriver.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 paul.gortmaker@windriver.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgMDk6MzM6MDBBTSArMDgwMCwgSmlwaW5nIE1hIHdyb3Rl
Ogo+IAo+IAo+IE9uIDA1LzI2LzIwMjAgMDY6MjYgUE0sIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+
IE9uIE1vbiwgTWF5IDExLCAyMDIwIGF0IDEwOjUyOjA3QU0gKzA4MDAsIEppcGluZyBNYSB3cm90
ZToKPiA+ID4gTW9kaWZpZWQgdGhlIHBhdGNoIHN1YmplY3QgYW5kIHRoZSBjaGFuZ2UgZGVzY3Jp
cHRpb24uCj4gPiA+IAo+ID4gPiBQQyB2YWx1ZSBpcyBnZXQgZnJvbSByZWdzWzE1XSBpbiBSRUdT
X0FCSV8zMiBtb2RlLCBidXQgY29ycmVjdCBQQwo+ID4gPiBpcyByZWdzLT5wYyhyZWdzW1BFUkZf
UkVHX0FSTTY0X1BDXSkgaW4gYXJtNjQga2VybmVsLCB3aGljaCBjYXVzZWQKPiA+ID4gdGhhdCBw
ZXJmIGNhbiBub3QgcGFyc2VyIHRoZSBiYWNrdHJhY2Ugb2YgYXBwIHdpdGggZHdhcmYgbW9kZSBp
biB0aGUKPiA+ID4gMzJiaXQgc3lzdGVtIGFuZCA2NGJpdCBrZXJuZWwuCj4gPiA+IAo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKaXBpbmcgTWEgPGppcGluZy5tYTJAd2luZHJpdmVyLmNvbT4KPiA+IFRo
YW5rcyBmb3IgdGhpcy4KPiA+IAo+ID4gCj4gPiA+IC0tLQo+ID4gPiAgIGFyY2gvYXJtNjQva2Vy
bmVsL3BlcmZfcmVncy5jIHwgNCArKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3BlcmZf
cmVncy5jIGIvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdzLmMKPiA+ID4gaW5kZXggMGJiYWM2
MS4uMGVmMjg4MCAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdz
LmMKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdzLmMKPiA+ID4gQEAgLTMy
LDYgKzMyLDEwIEBAIHU2NCBwZXJmX3JlZ192YWx1ZShzdHJ1Y3QgcHRfcmVncyAqcmVncywgaW50
IGlkeCkKPiA+ID4gICAJaWYgKCh1MzIpaWR4ID09IFBFUkZfUkVHX0FSTTY0X1BDKQo+ID4gPiAg
IAkJcmV0dXJuIHJlZ3MtPnBjOwo+ID4gPiArCWlmIChwZXJmX3JlZ19hYmkoY3VycmVudCkgPT0g
UEVSRl9TQU1QTEVfUkVHU19BQklfMzIKPiA+ID4gKwkJJiYgaWR4ID09IDE1KQo+ID4gPiArCQly
ZXR1cm4gcmVncy0+cGM7Cj4gPiBJIHRoaW5rIHRoZXJlIGFyZSBzb21lIG1vcmUgaXNzdWVzIGhl
cmUsIGFuZCB3ZSBtYXkgbmVlZCBhIG1vcmUKPiA+IHN1YnN0YW50aWFsIHJld29yay4gRm9yIGEg
Y29tcGF0IHRocmVhZCwgd2UgYWx3YXlzIGV4cG9zZQo+ID4gUEVSRl9TQU1QTEVfUkVHU19BQklf
MzIgdmlhIHBlcl9yZWdfYWJpKCksIGJ1dCBmb3Igc29tZSByZWFzb24KPiA+IHBlcmZfcmVnX3Zh
bHVlKCkgYWxzbyBtdW5nZXMgdGhlIGNvbXBhdCBTUC9MUiBpbnRvIHRoZWlyIEFSTTY0Cj4gPiBl
cXVpdmFsZW50cywgd2hpY2ggZG9uJ3QgZXhpc3QgaW4gdGhlIDMyLWJpdCBzYW1wbGUgQUJJLiBX
ZSBhbHNvIGRvbid0Cj4gPiB6ZXJvIHRoZSByZWdzIHRoYXQgZG9uJ3QgZXhpc3QgaW4gMzItYml0
IChpbmNsdWRpbmcgdGhlIGFsaWFzaW5nIFBDKS4KPiA+IAo+ID4gSSByZWNrb24gd2hhdCB3ZSBz
aG91bGQgZG8gaXMgaGF2ZSBzZXBlcmF0ZSBmdW5jdGlvbnMgZm9yIHRoZSB0d28gQUJJcywKPiA+
IHRvIGVuc3VyZSB3ZSBkb24ndCBjb25mbGF0ZSB0aGVtLCBlLmcuCj4gPiAKPiA+IHU2NCBwZXJm
X3JlZ192YWx1ZV9hYmkzMihzdHJ1Y3QgcHRfcmVncyAqcmVncywgaW50IGlkeCkKPiA+IHsKPiA+
IAlpZiAoKHUzMilpZHggPiBQRVJGX1JFR19BUk0zMl9QQykKPiA+IAkJcmV0dXJuIDA7Cj4gPiAJ
aWYgKGlkeCA9PSBQRVJGX1JFR19BUk0zMl9QQykKPiA+IAkJcmV0dXJuIHJlZ3MtPnBjOwo+ID4g
CQo+ID4gCS8qCj4gPiAJICogQ29tcGF0IFNQIGFuZCBMUiBhbHJlYWR5IGluLXBsYWNlCj4gPiAJ
ICovCj4gPiAJcmV0dXJuIHJlZ3MtPnJlZ3NbaWR4XTsKPiA+IH0KPiA+IAo+ID4gdTY0IHBlcmZf
cmVnX3ZhbHVlX2FiaTY0KHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgaWR4KQo+ID4gewo+ID4g
CWlmICgodTMyKWlkeCA+IFBFUkZfUkVHX0FSTTY0X01BWCkKPiA+IAkJcmV0dXJuIDA7Cj4gPiAJ
aWYgKCh1MzIpaWR4ID09IFBFUkZfUkVHX0FSTTY0X1NQKQo+ID4gCQlyZXR1cm4gcmVncy0+c3A7
Cj4gPiAJaWYgKCh1MzIpaWR4ID09IFBFUkZfUkVHX0FSTTY0X1BDKQo+ID4gCQlyZXR1cm4gcmVn
cy0+cGM7Cj4gPiAJCj4gPiAJcmV1dHJuIHJlZ3MtPnJlZ3NbaWR4XTsKPiA+IH0KPiA+IAo+ID4g
dTY0IHBlcmZfcmVnX3ZhbHVlKHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgaWR4KQo+ID4gewo+
ID4gCWlmIChjb21wYXRfdXNlcl9tb2RlKHJlZ3MpKQo+ID4gCQlyZXR1cm4gcGVyZl9yZWdfdmFs
dWVfYWJpMzIocmVncywgaWR4KTsKPiA+IAllbHNlCj4gPiAJCXJldHVybiBwZXJmX3JlZ192YWx1
ZV9hYmk2NChyZWdzLCBpZHgpOwo+ID4gfQo+IFRoaXMgbW9kaWZpY2F0aW9uIGNhbiBub3QgZml4
IG91ciBpc3N1ZSzCoCB3ZSBuZWVkCj4gcGVyZl9yZWdfYWJpKGN1cnJlbnQpID09IFBFUkZfU0FN
UExFX1JFR1NfQUJJXzMyIHRvIGp1ZGdlIGlmIGl0IGlzIDMyLWJpdAo+IHRhc2sgb3Igbm90LAo+
IHRoZW4gcmV0dXJuIHRoZSBjb3JyZWN0IFBDIHZhbHVlLgoKSSBtdXN0IGJlIG1pc3Npbmcgc29t
ZXRoaW5nIGhlcmUuCgpUaGUgY29yZSBjb2RlIHBlcmZfcmVnX2FiaSh0YXNrKSBpcyBjYWxsZWQg
d2l0aCB0aGUgdGFzayBiZWluZyBzYW1wbGVkLAphbmQgdGhlIHJlZ3MgYXJlIGZyb20gdGhlIHRh
c2sgYmVpbmcgc2FtcGxlZC4gRm9yIGEgdXNlcnNwYWNlIHNhbXBsZSBmb3IKYSBjb21wYXQgdGFz
aywgY29tcGF0X3VzZXJfbW9kZShyZWdzKSBzaG91bGQgYmUgZXF1aXZhbGVudCB0byB0aGUKaXNf
Y29tcGF0X3RocmVhZCh0YXNrX3RocmVhZF9pbmZvKHRhc2spKSBjaGVjay4KCldoYXQgYW0gSSBt
aXNzaW5nPwoKVGhhbmtzLApNYXJrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
