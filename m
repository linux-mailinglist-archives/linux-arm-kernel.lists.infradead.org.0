Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6271EE1AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PfGY1VUExY+nktrCxU4QWYgD1jW3Md0yq1anF1L9WtE=; b=bqh2AIHQGgqUqrowYqvnzcLth
	O/4qXRqAoum9BMqV9dZDkkR/Lzwba7qBdGGTcNPfWlmvqxFpctyov2hZSWrk+4BjF7LgOYuyUzKa4
	8SmCEccuBtaNcYxLrBojAKjt6S8u0QsmmFA+wSYtH7ubmgh6PablFVN3rneqWjcQSEeD0VOPXunbc
	cqVnNRe/KqOg5I8diREYzGQmtuRvNp99D4sBddMSatwAOJqALKmu0Wxoqz6WujO9+/VZ/Iez5qNt5
	z1J/WPepfj93nunOkMH1xWhZRtoJm7Pq8JQ4/FljKeoxJh0jId9OqKO/tnpT43l8gVXFt9IiGIAzP
	8RzxY4r2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmPg-00071Z-EP; Thu, 04 Jun 2020 09:43:52 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmPZ-00070i-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:43:46 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 04 Jun 2020 18:43:44 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 506BE60057;
 Thu,  4 Jun 2020 18:43:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 4 Jun 2020 18:43:44 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 00BBB1A01BB;
 Thu,  4 Jun 2020 18:43:44 +0900 (JST)
Received: from [10.213.31.56] (unknown [10.213.31.56])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 3708112041F;
 Thu,  4 Jun 2020 18:43:43 +0900 (JST)
Subject: Re: [PATCH v3 2/6] PCI: uniphier: Add misc interrupt handler to
 invoke PME and AER
To: Marc Zyngier <maz@kernel.org>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-3-git-send-email-hayashi.kunihiko@socionext.com>
 <78af3b11de9c513f9be2a1f42f273f27@kernel.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <2e07d3d3-515b-57e1-0a36-8892bc38bb7b@socionext.com>
Date: Thu, 4 Jun 2020 18:43:42 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <78af3b11de9c513f9be2a1f42f273f27@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_024345_464659_BBBE1DFB 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMDYvMDMgMjA6MjIsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTA2LTAzIDA5OjU0LCBLdW5paGlrbyBIYXlhc2hpIHdyb3RlOgo+PiBUaGUgbWlzYyBpbnRl
cnJ1cHRzIGNvbnNpc3Rpbmcgb2YgUE1FLCBBRVIsIGFuZCBMaW5rIGV2ZW50LCBpcyBoYW5kbGVk
Cj4+IGJ5IElOVHggaGFuZGxlciwgaG93ZXZlciwgdGhlc2UgaW50ZXJydXB0cyBzaG91bGQgYmUg
YWxzbyBoYW5kbGVkIGJ5Cj4+IE1TSSBoYW5kbGVyLgo+Pgo+PiBUaGlzIGFkZHMgdGhlIGZ1bmN0
aW9uIHVuaXBoaWVyX3BjaWVfbWlzY19pc3IoKSB0aGF0IGhhbmRsZXMgbWlzYwo+PiBpbnR0ZXJ1
cHRzLCB3aGljaCBpcyBjYWxsZWQgZnJvbSBib3RoIElOVHggYW5kIE1TSSBoYW5kbGVycy4KPiAK
PiBpbnRlcnJ1cHRzCgpPa2F5LCBJJ2xsIGZpeCBpdC4KCj4+IFRoaXMgZnVuY3Rpb24gZGV0ZWN0
cyBQTUUgYW5kIEFFUiBpbnRlcnJ1cHRzIHdpdGggdGhlIHN0YXR1cyByZWdpc3RlciwKPj4gYW5k
IGludm9rZSBQTUUgYW5kIEFFUiBkcml2ZXJzIHJlbGF0ZWQgdG8gSU5UeCBvciBNU0kuCj4+Cj4+
IEFuZCB0aGlzIHNldHMgdGhlIG1hc2sgZm9yIG1pc2MgaW50ZXJydXB0cyBmcm9tIElOVHggaWYg
TVNJIGlzIGVuYWJsZWQKPj4gYW5kIHNldHMgdGhlIG1hc2sgZm9yIG1pc2MgaW50ZXJydXB0cyBm
cm9tIE1TSSBpZiBNU0kgaXMgZGlzYWJsZWQuCj4+Cj4+IENjOiBNYXJjIFp5bmdpZXIgPG1hekBr
ZXJuZWwub3JnPgo+PiBDYzogSmluZ29vIEhhbiA8amluZ29vaGFuMUBnbWFpbC5jb20+Cj4+IENj
OiBHdXN0YXZvIFBpbWVudGVsIDxndXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogS3VuaWhpa28gSGF5YXNoaSA8aGF5YXNoaS5rdW5paGlrb0Bzb2Npb25leHQu
Y29tPgo+PiAtLS0KPj4gwqBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXVuaXBoaWVy
LmMgfCA1MyArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPj4gwqAxIGZpbGUgY2hhbmdl
ZCwgNDIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXVuaXBoaWVyLmMKPj4gYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLXVuaXBoaWVyLmMKPj4gaW5kZXggYTU0MDFhMC4uYThkZGEz
OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS11bmlwaGll
ci5jCj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtdW5pcGhpZXIuYwo+
PiBAQCAtNDQsNyArNDQsOSBAQAo+PiDCoCNkZWZpbmUgUENMX1NZU19BVVhfUFdSX0RFVMKgwqDC
oMKgwqDCoMKgIEJJVCg4KQo+Pgo+PiDCoCNkZWZpbmUgUENMX1JDVl9JTlTCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDB4ODEwOAo+PiArI2RlZmluZSBQQ0xfUkNWX0lOVF9BTExfSU5UX01BU0vCoMKg
wqAgR0VOTUFTSygyOCwgMjUpCj4+IMKgI2RlZmluZSBQQ0xfUkNWX0lOVF9BTExfRU5BQkxFwqDC
oMKgwqDCoMKgwqAgR0VOTUFTSygyMCwgMTcpCj4+ICsjZGVmaW5lIFBDTF9SQ1ZfSU5UX0FMTF9N
U0lfTUFTS8KgwqDCoCBHRU5NQVNLKDEyLCA5KQo+PiDCoCNkZWZpbmUgUENMX0NGR19CV19NR1Rf
U1RBVFVTwqDCoMKgwqDCoMKgwqAgQklUKDQpCj4+IMKgI2RlZmluZSBQQ0xfQ0ZHX0xJTktfQVVU
T19CV19TVEFUVVPCoMKgwqAgQklUKDMpCj4+IMKgI2RlZmluZSBQQ0xfQ0ZHX0FFUl9SQ19FUlJf
TVNJX1NUQVRVU8KgwqDCoCBCSVQoMikKPj4gQEAgLTE2Nyw3ICsxNjksMTUgQEAgc3RhdGljIHZv
aWQgdW5pcGhpZXJfcGNpZV9zdG9wX2xpbmsoc3RydWN0IGR3X3BjaWUgKnBjaSkKPj4KPj4gwqBz
dGF0aWMgdm9pZCB1bmlwaGllcl9wY2llX2lycV9lbmFibGUoc3RydWN0IHVuaXBoaWVyX3BjaWVf
cHJpdiAqcHJpdikKPj4gwqB7Cj4+IC3CoMKgwqAgd3JpdGVsKFBDTF9SQ1ZfSU5UX0FMTF9FTkFC
TEUsIHByaXYtPmJhc2UgKyBQQ0xfUkNWX0lOVCk7Cj4+ICvCoMKgwqAgdTMyIHZhbDsKPj4gKwo+
PiArwqDCoMKgIHZhbCA9IFBDTF9SQ1ZfSU5UX0FMTF9FTkFCTEU7Cj4+ICvCoMKgwqAgaWYgKHBj
aV9tc2lfZW5hYmxlZCgpKQo+PiArwqDCoMKgwqDCoMKgwqAgdmFsIHw9IFBDTF9SQ1ZfSU5UX0FM
TF9JTlRfTUFTSzsKPj4gK8KgwqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoCB2YWwgfD0gUENM
X1JDVl9JTlRfQUxMX01TSV9NQVNLOwo+PiArCj4+ICvCoMKgwqAgd3JpdGVsKHZhbCwgcHJpdi0+
YmFzZSArIFBDTF9SQ1ZfSU5UKTsKPj4gwqDCoMKgwqAgd3JpdGVsKFBDTF9SQ1ZfSU5UWF9BTExf
RU5BQkxFLCBwcml2LT5iYXNlICsgUENMX1JDVl9JTlRYKTsKPj4gwqB9Cj4+Cj4+IEBAIC0yMzEs
MjggKzI0MSw0OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlycV9kb21haW5fb3BzCj4+IHVuaXBo
aWVyX2ludHhfZG9tYWluX29wcyA9IHsKPj4gwqDCoMKgwqAgLm1hcCA9IHVuaXBoaWVyX3BjaWVf
aW50eF9tYXAsCj4+IMKgfTsKPj4KPj4gLXN0YXRpYyB2b2lkIHVuaXBoaWVyX3BjaWVfaXJxX2hh
bmRsZXIoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+PiArc3RhdGljIHZvaWQgdW5pcGhpZXJfcGNp
ZV9taXNjX2lzcihzdHJ1Y3QgcGNpZV9wb3J0ICpwcCkKPj4gwqB7Cj4+IC3CoMKgwqAgc3RydWN0
IHBjaWVfcG9ydCAqcHAgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+PiDCoMKg
wqDCoCBzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gdG9fZHdfcGNpZV9mcm9tX3BwKHBwKTsKPj4gwqDC
oMKgwqAgc3RydWN0IHVuaXBoaWVyX3BjaWVfcHJpdiAqcHJpdiA9IHRvX3VuaXBoaWVyX3BjaWUo
cGNpKTsKPj4gLcKgwqDCoCBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hp
cChkZXNjKTsKPj4gLcKgwqDCoCB1bnNpZ25lZCBsb25nIHJlZzsKPj4gLcKgwqDCoCB1MzIgdmFs
LCBiaXQsIHZpcnE7Cj4+ICvCoMKgwqAgdTMyIHZhbCwgdmlycTsKPj4KPj4gLcKgwqDCoCAvKiBJ
TlQgZm9yIGRlYnVnICovCj4+IMKgwqDCoMKgIHZhbCA9IHJlYWRsKHByaXYtPmJhc2UgKyBQQ0xf
UkNWX0lOVCk7Cj4+Cj4+IMKgwqDCoMKgIGlmICh2YWwgJiBQQ0xfQ0ZHX0JXX01HVF9TVEFUVVMp
Cj4+IMKgwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhwY2ktPmRldiwgIkxpbmsgQmFuZHdpZHRoIE1h
bmFnZW1lbnQgRXZlbnRcbiIpOwo+PiArCj4+IMKgwqDCoMKgIGlmICh2YWwgJiBQQ0xfQ0ZHX0xJ
TktfQVVUT19CV19TVEFUVVMpCj4+IMKgwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhwY2ktPmRldiwg
IkxpbmsgQXV0b25vbW91cyBCYW5kd2lkdGggRXZlbnRcbiIpOwo+PiAtwqDCoMKgIGlmICh2YWwg
JiBQQ0xfQ0ZHX0FFUl9SQ19FUlJfTVNJX1NUQVRVUykKPj4gLcKgwqDCoMKgwqDCoMKgIGRldl9k
YmcocGNpLT5kZXYsICJSb290IEVycm9yXG4iKTsKPj4gLcKgwqDCoCBpZiAodmFsICYgUENMX0NG
R19QTUVfTVNJX1NUQVRVUykKPj4gLcKgwqDCoMKgwqDCoMKgIGRldl9kYmcocGNpLT5kZXYsICJQ
TUUgSW50ZXJydXB0XG4iKTsKPj4gKwo+PiArwqDCoMKgIGlmIChwY2lfbXNpX2VuYWJsZWQoKSkg
ewo+IAo+IFRoaXMgY2hlY2tzIHdoZXRoZXIgdGhlIGtlcm5lbCBzdXBwb3J0cyBNU0lzLiBOb3Qg
dGhhdCB0aGV5IGFyZQo+IGVuYWJsZWQgaW4geW91ciBjb250cm9sbGVyLiBJcyB0aGF0IHJlYWxs
eSB3aGF0IHlvdSB3YW50IHRvIGRvPwoKVGhlIGJlbG93IHR3byBzdGF0dXMgYml0cyBhcmUgdmFs
aWQgd2hlbiB0aGUgaW50ZXJydXB0IGZvciBNU0kgaXMgYXNzZXJ0ZWQuClRoYXQgaXMsIHBjaV9t
c2lfZW5hYmxlZCgpIGlzIHdyb25nLgoKSSdsbCBtb2RpZnkgdGhlIGZ1bmN0aW9uIHRvIGNoZWNr
IHRoZSB0d28gYml0cyBvbmx5IGlmIHRoaXMgZnVuY3Rpb24gaXMKY2FsbGVkIGZyb20gTVNJIGhh
bmRsZXIuCgo+IAo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHZhbCAmIFBDTF9DRkdfQUVSX1JDX0VS
Ul9NU0lfU1RBVFVTKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9kYmcocGNpLT5k
ZXYsICJSb290IEVycm9yIFN0YXR1c1xuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZp
cnEgPSBpcnFfbGluZWFyX3Jldm1hcChwcC0+aXJxX2RvbWFpbiwgMCk7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGdlbmVyaWNfaGFuZGxlX2lycSh2aXJxKTsKPj4gK8KgwqDCoMKgwqDCoMKg
IH0KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHZhbCAmIFBDTF9DRkdfUE1FX01TSV9TVEFU
VVMpIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhwY2ktPmRldiwgIlBNRSBJ
bnRlcnJ1cHRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2aXJxID0gaXJxX2xpbmVh
cl9yZXZtYXAocHAtPmlycV9kb21haW4sIDApOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
ZW5lcmljX2hhbmRsZV9pcnEodmlycSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4gCj4gVGhlc2Ug
dHdvIGNhc2VzIGRvIHRoZSBleGFjdCBzYW1lIHRoaW5nLCBjYWxsaW5nIHRoZSBzYW1lIGludGVy
cnVwdC4KPiBXaGF0IGlzIHRoZSBwb2ludCBvZiBkZWFsaW5nIHdpdGggdGhlbSBpbmRlcGVuZGVu
dGx5PwoKQm90aCBQTUUgYW5kIEFFUiBhcmUgYXNzZXJ0ZWQgZnJvbSBNU0ktMCwgYW5kIGVhY2gg
aGFuZGxlciBjaGVja3MgaXRzIG93bgpzdGF0dXMgYml0IGluIHRoZSBQQ0llIHJlZ2lzdGVyIChh
ZXJfaXJxKCkgaW4gcGNpZS9hZXIuYyBhbmQgcGNpZV9wbWVfaXJxKCkKaW4gcGNpZS9wbWUuYyku
ClNvIEkgdGhpbmsgdGhpcyBoYW5kbGVyIGNhbGxzIGdlbmVyaWNfaGFuZGxlX2lycSgpIGZvciB0
aGUgc2FtZSBNU0ktMC4KCj4gCj4+ICvCoMKgwqAgfQo+Pgo+PiDCoMKgwqDCoCB3cml0ZWwodmFs
LCBwcml2LT5iYXNlICsgUENMX1JDVl9JTlQpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCB1
bmlwaGllcl9wY2llX2lycV9oYW5kbGVyKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4gK3sKPj4g
K8KgwqDCoCBzdHJ1Y3QgcGNpZV9wb3J0ICpwcCA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2RhdGEo
ZGVzYyk7Cj4+ICvCoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9w
cChwcCk7Cj4+ICvCoMKgwqAgc3RydWN0IHVuaXBoaWVyX3BjaWVfcHJpdiAqcHJpdiA9IHRvX3Vu
aXBoaWVyX3BjaWUocGNpKTsKPj4gK8KgwqDCoCBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFf
ZGVzY19nZXRfY2hpcChkZXNjKTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIHJlZzsKPj4gK8Kg
wqDCoCB1MzIgdmFsLCBiaXQsIHZpcnE7Cj4+ICsKPj4gK8KgwqDCoCAvKiBtaXNjIGludGVycnVw
dCAqLwo+PiArwqDCoMKgIHVuaXBoaWVyX3BjaWVfbWlzY19pc3IocHApOwo+IAo+IFRoaXMgaXMg
YSBjaGFpbmVkIGhhbmRsZXIgY2FsbGVkIG91dHNpZGUgb2YgYSBjaGFpbmVkX2lycV9lbnRlci9l
eGl0Cj4gYmxvY2suIEl0IGlzbid0IGFjY2VwdGFibGUuCgpJIGdvdCBpdC4KVGhpcyBjYWxsIHNo
b3VsZCBiZSBjYWxsZWQgaW4gdGhlIGJsb2NrLgoKVGhhbmsgeW91LAoKLS0tCkJlc3QgUmVnYXJk
cwpLdW5paGlrbyBIYXlhc2hpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
