Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736461380FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 11:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5yt6Yt2hOiHJj+uIf5aOLkvU4yL9V5QtqQGqYMkfl0=; b=Wl6aW6oaRH+W22
	9VPhsC5QMZma6gAF4HsC0DbfhCvv5U7MdsBoQlo3D/T7T5bD3PPDBQ4RVUXW2dErZ8k216+NfhDY+
	DQlfHBVS2GlGpeYvoIJE/xDWpE2YVr2vtV/ZeM/uSzqDw2WiqoOvL6xTNIzF+gQ94FEzZRcMq4WgG
	Z4XSrr/ZqZrtdfHDVrRa/J1RfuH/aNpExSWImQLCDT4ZwahDq5+OZTxtNvG7NHcZxdQudfsssXQsv
	Lw/POAYgB/+gYvyUH2qL1bNo8H3szYvmvqrxvacqtldto7JJMM3jsQxUPwd/BTm2J8APlYrCS+gFY
	0fmIRzlaWypQjDJS7Z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqETD-0001hl-3h; Sat, 11 Jan 2020 10:58:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqET3-0001hM-H6
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 10:58:11 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CE3E20842;
 Sat, 11 Jan 2020 10:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578740289;
 bh=AwApWeOi444mVnZM57YOAlb1KxKLXOu+enQzYXJLs3c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ajtiJFtZaY8yahk0nsLiTWQJgpN6LM0GDSTpMFiiud1w1MrXzGbPiiMMfJ/NgnYKb
 585pueMd/y6sTNKs/7w2+gxVVRLXRnwPXjG6W413+cSbW5ccLqh6jqmjR8jqXVfsFY
 +CoFTBhFojA2bcqEwijnBi8vi740N73mH8X/qcFU=
Date: Sat, 11 Jan 2020 10:58:04 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: Use dma_request_chan()
 instead dma_request_slave_channel()
Message-ID: <20200111105804.7aebd43e@archlinux>
In-Reply-To: <5328b668-2522-5d8d-83bb-f99bfe3086ed@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
 <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
 <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
 <698d9dec-4486-f70a-b8e0-dfd6b4bb907f@st.com>
 <45195b31-70fa-39c9-e109-eeb33d6a2663@ti.com>
 <5328b668-2522-5d8d-83bb-f99bfe3086ed@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_025809_611165_8247B7C8 
X-CRM114-Status: GOOD (  23.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olivier MOYSAN <olivier.moysan@st.com>, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, vkoul@kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCA5IEphbiAyMDIwIDEzOjU2OjE0ICswMTAwCkZhYnJpY2UgR2FzbmllciA8ZmFicmlj
ZS5nYXNuaWVyQHN0LmNvbT4gd3JvdGU6Cgo+IE9uIDEvOS8yMCAxMjo0MCBQTSwgUGV0ZXIgVWpm
YWx1c2kgd3JvdGU6Cj4gPiAKPiA+IAo+ID4gT24gMDkvMDEvMjAyMCAxMy4yOSwgRmFicmljZSBH
YXNuaWVyIHdyb3RlOiAgCj4gPj4gT24gMS85LzIwIDExOjMyIEFNLCBQZXRlciBVamZhbHVzaSB3
cm90ZTogIAo+ID4+Pgo+ID4+Pgo+ID4+PiBPbiAwOS8wMS8yMDIwIDExLjEzLCBGYWJyaWNlIEdh
c25pZXIgd3JvdGU6ICAKPiA+Pj4+IE9uIDEvNy8yMCAxMjo0NSBQTSwgUGV0ZXIgVWpmYWx1c2kg
d3JvdGU6ICAKPiA+Pj4+PiBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCkgaXMgYSB3cmFwcGVy
IG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkKPiA+Pj4+PiBlYXRpbmcgdXAgdGhlIGVycm9y
IGNvZGUuCj4gPj4+Pj4KPiA+Pj4+PiBCeSB1c2luZyBkbWFfcmVxdWVzdF9jaGFuKCkgZGlyZWN0
bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+ID4+Pj4+IHByb2JpbmcgYWdhaW5z
dCBETUEuCj4gPj4+Pj4KPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0
ZXIudWpmYWx1c2lAdGkuY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+IEhpLAo+ID4+Pj4+Cj4gPj4+
Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+Pj4+PiAtIEZhbGwgYmFjayB0byBJUlEgbW9kZSBmb3Ig
QURDIG9ubHkgaW4gY2FzZSBvZiBFTk9ERVYgIAo+ID4+Pj4KPiA+Pj4+IEhpIFBldGVyLAo+ID4+
Pj4KPiA+Pj4+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLAo+ID4+Pj4KPiA+Pj4+IFBsZWFzZSBmaW5k
IGEgbWlub3IgY29tbWVudCBoZXJlIGFmdGVyLiBBcGFydCBmcm9tIHRoYXQsIHlvdSBjYW4gYWRk
IG15Ogo+ID4+Pj4KPiA+Pj4+IEFja2VkLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2Fz
bmllckBzdC5jb20+Cj4gPj4+Pgo+ID4+Pj4gIAo+ID4+Pj4+Cj4gPj4+Pj4gUmVnYXJkcywKPiA+
Pj4+PiBQZXRlcgo+ID4+Pj4+Cj4gPj4+Pj4gIGRyaXZlcnMvaWlvL2FkYy9zdG0zMi1kZnNkbS1h
ZGMuYyB8IDIxICsrKysrKysrKysrKysrKysrLS0tLQo+ID4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+Pj4+Pgo+ID4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMv
c3RtMzItZGZzZG0tYWRjLmMKPiA+Pj4+PiBpbmRleCBlNDkzMjQyYzI2NmUuLjc0YTIyMTFiZGZm
NCAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMK
PiA+Pj4+PiArKysgYi9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMKPiA+Pj4+PiBA
QCAtMTM4Myw5ICsxMzgzLDEzIEBAIHN0YXRpYyBpbnQgc3RtMzJfZGZzZG1fZG1hX3JlcXVlc3Qo
c3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiA+Pj4+PiAgewo+ID4+Pj4+ICAJc3RydWN0IHN0
bTMyX2Rmc2RtX2FkYyAqYWRjID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiA+Pj4+PiAgCj4gPj4+
Pj4gLQlhZGMtPmRtYV9jaGFuID0gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCgmaW5kaW9fZGV2
LT5kZXYsICJyeCIpOwo+ID4+Pj4+IC0JaWYgKCFhZGMtPmRtYV9jaGFuKQo+ID4+Pj4+IC0JCXJl
dHVybiAtRUlOVkFMOwo+ID4+Pj4+ICsJYWRjLT5kbWFfY2hhbiA9IGRtYV9yZXF1ZXN0X2NoYW4o
JmluZGlvX2Rldi0+ZGV2LCAicngiKTsKPiA+Pj4+PiArCWlmIChJU19FUlIoYWRjLT5kbWFfY2hh
bikpIHsKPiA+Pj4+PiArCQlpbnQgcmV0ID0gUFRSX0VSUihhZGMtPmRtYV9jaGFuKTsKPiA+Pj4+
PiArCj4gPj4+Pj4gKwkJYWRjLT5kbWFfY2hhbiA9IE5VTEw7Cj4gPj4+Pj4gKwkJcmV0dXJuIHJl
dDsgIAo+ID4+Pj4KPiA+Pj4+IFlvdSBtYXkgInJldHVybiBQVFJfRVJSKGFkYy0+ZG1hX2NoYW4p
OyIgZGlyZWN0bHkgaGVyZS4gIAo+ID4+Pgo+ID4+PiBJIGRvbid0IG1ha2UgZGVjaXNpb24gaGVy
ZSBvbiBiZWhhbGYgb2YgdGhlIGFkYyBwYXRoIG9uIHRvIGdvIGZvcndhcmQgdy8KPiA+Pj4gb3Ig
dy9vIERNQSBzdXBwb3J0IGFuZCBpZiB3ZSBnbyBhaGVhZCB0aGUgc3RtMzJfZGZzZG1fZG1hX3Jl
bGVhc2UoKQo+ID4+PiBuZWVkcyB0aGUgZG1hX2NoYW4gdG8gYmUgTlVMTCBpbiBjYXNlIHdlIGRv
bid0IHVzZSBETUEuCj4gPj4+Cj4gPj4+IEl0IGlzIG11Y2ggY2xlYW5lciB0byBzZXQgZG1hX2No
YW4gdG8gTlVMTCBoZXJlIHRoYW4gZG9pbmcgaXQgaW4gb3RoZXIKPiA+Pj4gcGF0aHMuICAKPiA+
Pgo+ID4+IEhpIFBldGVyLCAgCj4gPiAKPiA+IEhpIEZhYnJpY2UsCj4gPiAgIAo+ID4+IFNvcnJ5
IEkgd2Fzbid0IGNsZWFyIGVub3VnaC4gSSBhZ3JlZSB3aXRoIHlvdS4gSSB3YXMgc3VnZ2VzdGlu
ZyBvbmx5LAo+ID4+IHRhbGtpbmcgYWJvdXQgdGhlICdyZXQnIHZhcmlhYmxlLiBJdCBtYXkgYmUg
cmVtb3ZlZCB0byBzcGFyZSBhIGZldyBsaW5lcwo+ID4+IDotKS4KPiA+PiAJaWYgKElTX0VSUihh
ZGMtPmRtYV9jaGFuKSkgewo+ID4+IAkJYWRjLT5kbWFfY2hhbiA9IE5VTEw7Cj4gPj4gCQlyZXR1
cm4gUFRSX0VSUihhZGMtPmRtYV9jaGFuKTsKPiA+PiAJfQo+ID4+IEknbSBva2F5IGJvdGggd2F5
cy4gIAo+ID4gCj4gPiBQVFJfRVJSKE5VTEwpOyB3aWxsIHJldHVybiAwCj4gPiBJIG5lZWQgdG8g
cmV0cmlldmUgdGhlIGFjdHVhbCBlcnJvciBjb2RlIGJlZm9yZSBOVUxMaW5nIGRtYV9jaGFuLiAg
Cj4gCj4gT2ggeWVzLCBzbyBwbGVhc2UgZm9yZ2V0IHRoaXMuCj4gVGhhbmtzLAo+IEZhYnJpY2UK
CkFwcGxpZWQgdG8gdGhlIHRvZ3JlZyBicmFuY2ggb2YgaWlvLmdpdCBhbmQgcHVzaGVkIG91dCBh
cyB0ZXN0aW5nLgpOb3RlIEknbGwgbmVlZCB0byByZWJhc2Ugb25jZSBHcmVnIHB1c2hlcyBvdXQg
c3RhZ2luZy9zdGFnaW5nLW5leHQKd2l0aCB0aGUgY2hhbmdlcyBjdXJyZW50bHkgaW4gc3RhZ2lu
Zy9zdGFnaW5nLXRlc3RpbmcuICBTaG91bGRuJ3QKaGF2ZSBhbiBlZmZlY3Qgb24gdGhpcyB0aG91
Z2ghCgpUaGFua3MsCgpKb25hdGhhbgoKPiAKPiA+ICAgCj4gPj4gIAo+ID4+PiAgCj4gPj4+Pgo+
ID4+Pj4gQmVzdCBSZWdhcmRzLAo+ID4+Pj4gRmFicmljZQo+ID4+Pj4gIAo+ID4+Pj4+ICsJfQo+
ID4+Pj4+ICAKPiA+Pj4+PiAgCWFkYy0+cnhfYnVmID0gZG1hX2FsbG9jX2NvaGVyZW50KGFkYy0+
ZG1hX2NoYW4tPmRldmljZS0+ZGV2LAo+ID4+Pj4+ICAJCQkJCSBERlNETV9ETUFfQlVGRkVSX1NJ
WkUsCj4gPj4+Pj4gQEAgLTE1MDksNyArMTUxMywxNiBAQCBzdGF0aWMgaW50IHN0bTMyX2Rmc2Rt
X2FkY19pbml0KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4gPj4+Pj4gIAlpbml0X2NvbXBs
ZXRpb24oJmFkYy0+Y29tcGxldGlvbik7Cj4gPj4+Pj4gIAo+ID4+Pj4+ICAJLyogT3B0aW9uYWxs
eSByZXF1ZXN0IERNQSAqLwo+ID4+Pj4+IC0JaWYgKHN0bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGlu
ZGlvX2RldikpIHsKPiA+Pj4+PiArCXJldCA9IHN0bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGluZGlv
X2Rldik7Cj4gPj4+Pj4gKwlpZiAocmV0KSB7Cj4gPj4+Pj4gKwkJaWYgKHJldCAhPSAtRU5PREVW
KSB7Cj4gPj4+Pj4gKwkJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPiA+Pj4+PiArCQkJCWRl
dl9lcnIoJmluZGlvX2Rldi0+ZGV2LAo+ID4+Pj4+ICsJCQkJCSJETUEgY2hhbm5lbCByZXF1ZXN0
IGZhaWxlZCB3aXRoICVkXG4iLAo+ID4+Pj4+ICsJCQkJCXJldCk7Cj4gPj4+Pj4gKwkJCXJldHVy
biByZXQ7Cj4gPj4+Pj4gKwkJfQo+ID4+Pj4+ICsKPiA+Pj4+PiAgCQlkZXZfZGJnKCZpbmRpb19k
ZXYtPmRldiwgIk5vIERNQSBzdXBwb3J0XG4iKTsKPiA+Pj4+PiAgCQlyZXR1cm4gMDsKPiA+Pj4+
PiAgCX0KPiA+Pj4+PiAgCj4gPj4+Cj4gPj4+IC0gUMOpdGVyCj4gPj4+Cj4gPj4+IFRleGFzIElu
c3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+
ID4+PiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQo+ID4+PiAgCj4gPiAKPiA+IC0gUMOpdGVyCj4gPiAKPiA+IFRleGFzIEluc3Ry
dW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+ID4g
WS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVs
c2lua2kKPiA+ICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
