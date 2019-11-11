Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65798F70F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvCaaxfPxbiWC9fRVY5Ec52c0ap0A6UXS9WoIx/7Qts=; b=Q9aTicVrs3j3Pc
	rYPKY1vizhm+ryBY5fRxHiE6XUcOQK/pQ9gen8BvrQIniidg4RBuxcg6bWc6IKPBrA9bwKmKjyBPW
	tWuxFjws4y6by+UT1UAjnAS12SIhF7WymN7SuqEbN+bcuGID+7HtsAND5h+NRp8pmRq8pqUI477J6
	b1yha1S/QDbeEmzE9wuMBq7E3xbktUEmnqeOPwXLE5Th5KTNiCDDQkmQDytEQCNEsUfTGfe97dSNm
	cT+ZMVLFpe4v4jLgiiObm5i2qC/TNPFUhZwUGtBCHqxWluQm1KyYwCNSX3fAYXWWG35CroI3XTHJb
	X5b8VBtNmnXQ3dE4umQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6B0-0005sJ-Jf; Mon, 11 Nov 2019 09:40:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6Ao-0005pN-T3
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:39:52 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB9deam107948;
 Mon, 11 Nov 2019 03:39:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573465180;
 bh=BEXZAIpRzxqNeefh/J9C5EiDlt0B/TXLhAEH6e8HpHk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TfHXEZamg58rdWlK5BysZV02AQQQj4UU7QrHapkWnMxQ72oxEdzvHcEsimBil1wd6
 lIv6CticHJZrV5CnF2Wvc1LS51J6EAP0NNB2ojI1Ni1R8wx7dk5/zdc+zQD6o+kLjX
 Xs7IUjaUFXCKeqpsS6D3oBG9JK6xefyD/07vDVUc=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB9ddRZ118324
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 03:39:40 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 03:39:21 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 03:39:21 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB9dZnY090658;
 Mon, 11 Nov 2019 03:39:36 -0600
Subject: Re: [PATCH v4 11/15] dmaengine: ti: New driver for K3 UDMA - split#3:
 alloc/free chan_resources
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-12-peter.ujfalusi@ti.com>
 <20191111060625.GP952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <33c88201-3311-0438-ead5-63ea14a0b153@ti.com>
Date: Mon, 11 Nov 2019 11:40:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111060625.GP952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_013951_069663_73DB5197 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDguMDYsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gU3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250
YWluaW5nOiBjaGFubmVsIHJzb3VyY2UgYWxsb2NhdGlvbiBhbmQgZnJlZQo+IAo+IHMvcnNvdXJj
ZS9yZXNvdXJjZQoKSSdsbCB0cnkgdG8gcmVtZW1iZXIgdG8gZml4IHVwIHRoaXMgdGVtcG9yYWxs
eSBjb21taXQgbWVzc2FnZSwgYXQgdGhlCmVuZCB0aGVzZSBzcGxpdCBwYXRjaGVzIGFyZSBnb2lu
ZyB0byBiZSBzcXVhc2hlZCBpbnRvIG9uZSBjb21taXQgd2hlbgp0aGluZ3MgYXJlIHJlYWR5IHRv
IGJlIGFwcGxpZWQuCgo+PiArc3RhdGljIGludCB1ZG1hX3Rpc2NpX3R4X2NoYW5uZWxfY29uZmln
KHN0cnVjdCB1ZG1hX2NoYW4gKnVjKQo+PiArewo+PiArCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1
Yy0+dWQ7Cj4+ICsJc3RydWN0IHVkbWFfdGlzY2lfcm0gKnRpc2NpX3JtID0gJnVkLT50aXNjaV9y
bTsKPj4gKwljb25zdCBzdHJ1Y3QgdGlfc2NpX3JtX3VkbWFwX29wcyAqdGlzY2lfb3BzID0gdGlz
Y2lfcm0tPnRpc2NpX3VkbWFwX29wczsKPj4gKwlzdHJ1Y3QgdWRtYV90Y2hhbiAqdGNoYW4gPSB1
Yy0+dGNoYW47Cj4+ICsJaW50IHRjX3JpbmcgPSBrM19yaW5nYWNjX2dldF9yaW5nX2lkKHRjaGFu
LT50Y19yaW5nKTsKPj4gKwlzdHJ1Y3QgdGlfc2NpX21zZ19ybV91ZG1hcF90eF9jaF9jZmcgcmVx
X3R4ID0geyAwIH07Cj4+ICsJdTMyIG1vZGUsIGZldGNoX3NpemU7Cj4+ICsJaW50IHJldCA9IDA7
Cj4+ICsKPj4gKwlpZiAodWMtPnBrdF9tb2RlKSB7Cj4+ICsJCW1vZGUgPSBUSV9TQ0lfUk1fVURN
QVBfQ0hBTl9UWVBFX1BLVF9QQlJSOwo+PiArCQlmZXRjaF9zaXplID0gY3BwaTVfaGRlc2NfY2Fs
Y19zaXplKHVjLT5uZWVkc19lcGliLCB1Yy0+cHNkX3NpemUsCj4+ICsJCQkJCQkgICAwKTsKPj4g
Kwl9IGVsc2Ugewo+PiArCQltb2RlID0gVElfU0NJX1JNX1VETUFQX0NIQU5fVFlQRV8zUkRQX1BC
UlI7Cj4+ICsJCWZldGNoX3NpemUgPSBzaXplb2Yoc3RydWN0IGNwcGk1X2Rlc2NfaGRyX3QpOwo+
PiArCX0KPj4gKwo+PiArCXJlcV90eC52YWxpZF9wYXJhbXMgPQo+PiArCQlUSV9TQ0lfTVNHX1ZB
TFVFX1JNX1VETUFQX0NIX1BBVVNFX09OX0VSUl9WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFM
VUVfUk1fVURNQVBfQ0hfVFhfRklMVF9FSU5GT19WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFM
VUVfUk1fVURNQVBfQ0hfVFhfRklMVF9QU1dPUkRTX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19W
QUxVRV9STV9VRE1BUF9DSF9DSEFOX1RZUEVfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVF
X1JNX1VETUFQX0NIX1RYX1NVUFJfVERQS1RfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVF
X1JNX1VETUFQX0NIX0ZFVENIX1NJWkVfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JN
X1VETUFQX0NIX0NRX1FOVU1fVkFMSUQ7Cj4gCj4gYnVuY2ggb2YgdGhlc2UgYXJlIHJlcGVhdCwg
eW91IGNhbiBkZWZpbmUgYSBDT01NT05fVkFMSURfUEFSQU1TIGFuZCB1c2UKPiB0aGF0ICsgc3Bl
Y2lmaWMgb25lcy4uCgpPSywgSSdsbCB0cnkgdG8gc2FuaXRpemUgdGhlc2UgYSBiaXQuCgo+PiAr
Cj4+ICsJcmVxX3R4Lm5hdl9pZCA9IHRpc2NpX3JtLT50aXNjaV9kZXZfaWQ7Cj4+ICsJcmVxX3R4
LmluZGV4ID0gdGNoYW4tPmlkOwo+PiArCXJlcV90eC50eF9wYXVzZV9vbl9lcnIgPSAwOwo+PiAr
CXJlcV90eC50eF9maWx0X2VpbmZvID0gMDsKPj4gKwlyZXFfdHgudHhfZmlsdF9wc3dvcmRzID0g
MDsKPiAKPiBpIHRoaW5rIGluaXRpYWxpemF0aW9uIHRvIDAgaXMgc3VwZXJmbHVvdXMKCkluZGVl
ZCwgSSdsbCByZW1vdmUgdGhlc2UuCgo+PiArCXJlcV90eC50eF9jaGFuX3R5cGUgPSBtb2RlOwo+
PiArCXJlcV90eC50eF9zdXByX3RkcGt0ID0gdWMtPm5vdGRwa3Q7Cj4+ICsJcmVxX3R4LnR4X2Zl
dGNoX3NpemUgPSBmZXRjaF9zaXplID4+IDI7Cj4+ICsJcmVxX3R4LnR4Y3FfcW51bSA9IHRjX3Jp
bmc7Cj4+ICsJaWYgKHVjLT5lcF90eXBlID09IFBTSUxfRVBfUERNQV9YWSkgewo+PiArCQkvKiB3
YWl0IGZvciBwZWVyIHRvIGNvbXBsZXRlIHRoZSB0ZWFyZG93biBmb3IgUERNQXMgKi8KPj4gKwkJ
cmVxX3R4LnZhbGlkX3BhcmFtcyB8PQo+PiArCQkJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBf
Q0hfVFhfVERUWVBFX1ZBTElEOwo+PiArCQlyZXFfdHgudHhfdGR0eXBlID0gMTsKPj4gKwl9Cj4+
ICsKPj4gKwlyZXQgPSB0aXNjaV9vcHMtPnR4X2NoX2NmZyh0aXNjaV9ybS0+dGlzY2ksICZyZXFf
dHgpOwo+PiArCWlmIChyZXQpCj4+ICsJCWRldl9lcnIodWQtPmRldiwgInRjaGFuJWQgY2ZnIGZh
aWxlZCAlZFxuIiwgdGNoYW4tPmlkLCByZXQpOwo+PiArCj4+ICsJcmV0dXJuIHJldDsKPj4gK30K
Pj4gKwo+PiArc3RhdGljIGludCB1ZG1hX3Rpc2NpX3J4X2NoYW5uZWxfY29uZmlnKHN0cnVjdCB1
ZG1hX2NoYW4gKnVjKQo+PiArewo+PiArCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7Cj4+
ICsJc3RydWN0IHVkbWFfdGlzY2lfcm0gKnRpc2NpX3JtID0gJnVkLT50aXNjaV9ybTsKPj4gKwlj
b25zdCBzdHJ1Y3QgdGlfc2NpX3JtX3VkbWFwX29wcyAqdGlzY2lfb3BzID0gdGlzY2lfcm0tPnRp
c2NpX3VkbWFwX29wczsKPj4gKwlzdHJ1Y3QgdWRtYV9yY2hhbiAqcmNoYW4gPSB1Yy0+cmNoYW47
Cj4+ICsJaW50IGZkX3JpbmcgPSBrM19yaW5nYWNjX2dldF9yaW5nX2lkKHJjaGFuLT5mZF9yaW5n
KTsKPj4gKwlpbnQgcnhfcmluZyA9IGszX3JpbmdhY2NfZ2V0X3JpbmdfaWQocmNoYW4tPnJfcmlu
Zyk7Cj4+ICsJc3RydWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfcnhfY2hfY2ZnIHJlcV9yeCA9IHsg
MCB9Owo+PiArCXN0cnVjdCB0aV9zY2lfbXNnX3JtX3VkbWFwX2Zsb3dfY2ZnIGZsb3dfcmVxID0g
eyAwIH07Cj4+ICsJdTMyIG1vZGUsIGZldGNoX3NpemU7Cj4+ICsJaW50IHJldCA9IDA7Cj4+ICsK
Pj4gKwlpZiAodWMtPnBrdF9tb2RlKSB7Cj4+ICsJCW1vZGUgPSBUSV9TQ0lfUk1fVURNQVBfQ0hB
Tl9UWVBFX1BLVF9QQlJSOwo+PiArCQlmZXRjaF9zaXplID0gY3BwaTVfaGRlc2NfY2FsY19zaXpl
KHVjLT5uZWVkc19lcGliLAo+PiArCQkJCQkJCXVjLT5wc2Rfc2l6ZSwgMCk7Cj4+ICsJfSBlbHNl
IHsKPj4gKwkJbW9kZSA9IFRJX1NDSV9STV9VRE1BUF9DSEFOX1RZUEVfM1JEUF9QQlJSOwo+PiAr
CQlmZXRjaF9zaXplID0gc2l6ZW9mKHN0cnVjdCBjcHBpNV9kZXNjX2hkcl90KTsKPj4gKwl9Cj4+
ICsKPj4gKwlyZXFfcngudmFsaWRfcGFyYW1zID0KPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9V
RE1BUF9DSF9QQVVTRV9PTl9FUlJfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VE
TUFQX0NIX0ZFVENIX1NJWkVfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQ
X0NIX0NRX1FOVU1fVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX0NI
QU5fVFlQRV9WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUlhfSUdO
T1JFX1NIT1JUX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9DSF9SWF9J
R05PUkVfTE9OR19WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUlhf
RkxPV0lEX1NUQVJUX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9DSF9S
WF9GTE9XSURfQ05UX1ZBTElEOwo+PiArCj4+ICsJcmVxX3J4Lm5hdl9pZCA9IHRpc2NpX3JtLT50
aXNjaV9kZXZfaWQ7Cj4+ICsJcmVxX3J4LmluZGV4ID0gcmNoYW4tPmlkOwo+PiArCXJlcV9yeC5y
eF9mZXRjaF9zaXplID0gIGZldGNoX3NpemUgPj4gMjsKPj4gKwlyZXFfcngucnhjcV9xbnVtID0g
cnhfcmluZzsKPj4gKwlyZXFfcngucnhfcGF1c2Vfb25fZXJyID0gMDsKPj4gKwlyZXFfcngucnhf
Y2hhbl90eXBlID0gbW9kZTsKPj4gKwlyZXFfcngucnhfaWdub3JlX3Nob3J0ID0gMDsKPj4gKwly
ZXFfcngucnhfaWdub3JlX2xvbmcgPSAwOwo+PiArCXJlcV9yeC5mbG93aWRfc3RhcnQgPSAwOwo+
PiArCXJlcV9yeC5mbG93aWRfY250ID0gMDsKPj4gKwo+PiArCXJldCA9IHRpc2NpX29wcy0+cnhf
Y2hfY2ZnKHRpc2NpX3JtLT50aXNjaSwgJnJlcV9yeCk7Cj4+ICsJaWYgKHJldCkgewo+PiArCQlk
ZXZfZXJyKHVkLT5kZXYsICJyY2hhbiVkIGNmZyBmYWlsZWQgJWRcbiIsIHJjaGFuLT5pZCwgcmV0
KTsKPj4gKwkJcmV0dXJuIHJldDsKPj4gKwl9Cj4+ICsKPj4gKwlmbG93X3JlcS52YWxpZF9wYXJh
bXMgPQo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfRUlORk9fUFJFU0VOVF9W
QUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19QU0lORk9fUFJFU0VO
VF9WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19FUlJPUl9IQU5E
TElOR19WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19ERVNDX1RZ
UEVfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfREVTVF9RTlVN
X1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX1NSQ19UQUdfSElf
U0VMX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX1NSQ19UQUdf
TE9fU0VMX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX0RFU1Rf
VEFHX0hJX1NFTF9WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19E
RVNUX1RBR19MT19TRUxfVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZM
T1dfRkRRMF9TWjBfUU5VTV9WQUxJRCB8Cj4+ICsJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBf
RkxPV19GRFExX1FOVU1fVkFMSUQgfAo+PiArCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZM
T1dfRkRRMl9RTlVNX1ZBTElEIHwKPj4gKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9X
X0ZEUTNfUU5VTV9WQUxJRDsKPj4gKwo+PiArCWZsb3dfcmVxLm5hdl9pZCA9IHRpc2NpX3JtLT50
aXNjaV9kZXZfaWQ7Cj4+ICsJZmxvd19yZXEuZmxvd19pbmRleCA9IHJjaGFuLT5pZDsKPj4gKwo+
PiArCWlmICh1Yy0+bmVlZHNfZXBpYikKPj4gKwkJZmxvd19yZXEucnhfZWluZm9fcHJlc2VudCA9
IDE7Cj4+ICsJZWxzZQo+PiArCQlmbG93X3JlcS5yeF9laW5mb19wcmVzZW50ID0gMDsKPj4gKwlp
ZiAodWMtPnBzZF9zaXplKQo+PiArCQlmbG93X3JlcS5yeF9wc2luZm9fcHJlc2VudCA9IDE7Cj4+
ICsJZWxzZQo+PiArCQlmbG93X3JlcS5yeF9wc2luZm9fcHJlc2VudCA9IDA7Cj4+ICsJZmxvd19y
ZXEucnhfZXJyb3JfaGFuZGxpbmcgPSAxOwo+PiArCWZsb3dfcmVxLnJ4X2Rlc2NfdHlwZSA9IDA7
Cj4+ICsJZmxvd19yZXEucnhfZGVzdF9xbnVtID0gcnhfcmluZzsKPj4gKwlmbG93X3JlcS5yeF9z
cmNfdGFnX2hpX3NlbCA9IDI7Cj4+ICsJZmxvd19yZXEucnhfc3JjX3RhZ19sb19zZWwgPSA0Owo+
PiArCWZsb3dfcmVxLnJ4X2Rlc3RfdGFnX2hpX3NlbCA9IDU7Cj4+ICsJZmxvd19yZXEucnhfZGVz
dF90YWdfbG9fc2VsID0gNDsKPiAKPiBjYW4gd2UgZ2V0IHJpZCBvZiBtYWdpYyBudW1iZXJzIGhl
cmUgYW5kIGVsc2V3aGVyZSwgb3IgYXQgbGVhc3QgY29tbWVudAo+IG9uIHdoYXQgdGhlc2UgbWVh
bi4uCgpUcnVlLCBJJ2xsIGNsZWFuIGl0IHVwLgoKPj4gK3N0YXRpYyBpbnQgdWRtYV9hbGxvY19j
aGFuX3Jlc291cmNlcyhzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4pCj4+ICt7Cj4+ICsJc3RydWN0IHVk
bWFfY2hhbiAqdWMgPSB0b191ZG1hX2NoYW4oY2hhbik7Cj4+ICsJc3RydWN0IHVkbWFfZGV2ICp1
ZCA9IHRvX3VkbWFfZGV2KGNoYW4tPmRldmljZSk7Cj4+ICsJY29uc3Qgc3RydWN0IHVkbWFfbWF0
Y2hfZGF0YSAqbWF0Y2hfZGF0YSA9IHVkLT5tYXRjaF9kYXRhOwo+PiArCXN0cnVjdCBrM19yaW5n
ICppcnFfcmluZzsKPj4gKwl1MzIgaXJxX3VkbWFfaWR4Owo+PiArCWludCByZXQ7Cj4+ICsKPj4g
KwlpZiAodWMtPnBrdF9tb2RlIHx8IHVjLT5kaXIgPT0gRE1BX01FTV9UT19NRU0pIHsKPj4gKwkJ
dWMtPnVzZV9kbWFfcG9vbCA9IHRydWU7Cj4+ICsJCS8qIGluIGNhc2Ugb2YgTUVNX1RPX01FTSB3
ZSBoYXZlIG1heGltdW0gb2YgdHdvIFRScyAqLwo+PiArCQlpZiAodWMtPmRpciA9PSBETUFfTUVN
X1RPX01FTSkgewo+PiArCQkJdWMtPmhkZXNjX3NpemUgPSBjcHBpNV90cmRlc2NfY2FsY19zaXpl
KAo+PiArCQkJCQlzaXplb2Yoc3RydWN0IGNwcGk1X3RyX3R5cGUxNV90KSwgMik7Cj4+ICsJCQl1
Yy0+cGt0X21vZGUgPSBmYWxzZTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCWlmICh1Yy0+dXNl
X2RtYV9wb29sKSB7Cj4+ICsJCXVjLT5oZGVzY19wb29sID0gZG1hX3Bvb2xfY3JlYXRlKHVjLT5u
YW1lLCB1ZC0+ZGRldi5kZXYsCj4+ICsJCQkJCQkgdWMtPmhkZXNjX3NpemUsIHVkLT5kZXNjX2Fs
aWduLAo+PiArCQkJCQkJIDApOwo+PiArCQlpZiAoIXVjLT5oZGVzY19wb29sKSB7Cj4+ICsJCQlk
ZXZfZXJyKHVkLT5kZGV2LmRldiwKPj4gKwkJCQkiRGVzY3JpcHRvciBwb29sIGFsbG9jYXRpb24g
ZmFpbGVkXG4iKTsKPj4gKwkJCXVjLT51c2VfZG1hX3Bvb2wgPSBmYWxzZTsKPj4gKwkJCXJldHVy
biAtRU5PTUVNOwo+PiArCQl9Cj4+ICsJfQo+PiArCj4+ICsJLyoKPj4gKwkgKiBNYWtlIHN1cmUg
dGhhdCB0aGUgY29tcGxldGlvbiBpcyBpbiBhIGtub3duIHN0YXRlOgo+PiArCSAqIE5vIHRlYXJk
b3duLCB0aGUgY2hhbm5lbCBpcyBpZGxlCj4+ICsJICovCj4+ICsJcmVpbml0X2NvbXBsZXRpb24o
JnVjLT50ZWFyZG93bl9jb21wbGV0ZWQpOwo+PiArCWNvbXBsZXRlX2FsbCgmdWMtPnRlYXJkb3du
X2NvbXBsZXRlZCk7Cj4gCj4gc2hvdWxkIHdlIG5vdCBjb21wbGV0ZSBmaXJzdCBhbmQgdGhlbiBk
byByZWluaXQgdG8gYnJpbmcgYSBjbGVhbiBzdGF0ZT8KClRoZSByZWFzb24gd2h5IGl0IGlzIGxp
a2UgdGhpcyBpcyB0aGF0IHRoZSB1ZG1hX3N5bmNocm9uaXplKCkgaXMKY2hlY2tpbmcgdGhlIGNv
bXBsZXRpb24gYW5kIGlmIHRoZSBjbGllbnQgcmVxdWVzdGVkIHRoZSBjaGFubmVsIGFuZApjYWxs
cyB0ZXJtaW5hdGVfYWxsX3N5bmMoKSB3aXRob3V0IGFueSB0cmFuc2ZlciB0aGVuIG5vIG9uZSB3
aWxsIG1hcmsKdGhlIGNvbXBsZXRpb24gY29tcGxldGVkLgoKPj4gKwl1Yy0+c3RhdGUgPSBVRE1B
X0NIQU5fSVNfSURMRTsKPj4gKwo+PiArCXN3aXRjaCAodWMtPmRpcikgewo+PiArCWNhc2UgRE1B
X01FTV9UT19NRU06Cj4gCj4gY2FuIHlvdSBleHBsYWluIHdoeSBhIGFsbG9jYXRpb24gc2hvdWxk
IGJlIGNoYW5uZWwgZGVwZW5kZW50LCBzaG91bGRuJ3QKPiB0aGVzZSB0aGluZ3MgYmUgZG9uZSBp
biBwcmVwXyBjYWxscz8KCkEgY2hhbm5lbCBjYW4gbm90IGNoYW5nZSBkaXJlY3Rpb24sIGl0IGlz
IGVpdGhlciBNRU1fVE9fREVWLCBERVZfVE9fTUVNCm9yIE1FTV9UT19NRU0gYW5kIGl0IGlzIHNl
dCB3aGVuIHRoZSBjaGFubmVsIGlzIHJlcXVlc3RlZC4KCj4gSSBsb29rZWQgYWhlYWQgYW5kIGNo
ZWNrZWQgdGhlIHByZXBfIGNhbGxzIGFuZCB3ZSBjYW4gdXNlIGFueSBkaXJlY3Rpb24KPiBzbyB0
aGlzIHNvbWVob3cgZG9lc24ndCBtYWtlIHNlbnNlIQoKSSdtIGNoZWNraW5nIGluIHRoZSBwcmVw
IGNhbGxiYWNrcyBpZiB0aGUgcmVxdWVzdGVkIGRpcmVjdGlvbiBpcwptYXRjaGluZyB3aXRoIHRo
ZSBjaGFubmVsIGRpcmVjdGlvbi4KCkkganVzdCBjYW4gbm90IGNoYW5nZSB0aGUgY2hhbm5lbCBk
aXJlY3Rpb24gcnVudGltZS4KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95
LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6
IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
