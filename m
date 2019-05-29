Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EEC2D940
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SLw+JRF1Vu75c91Q94X2tiOavUS2G9Osd8n3RZ2zE8=; b=pyihhu2k1+oVaF
	gVBjjOomtnIYZ+DS1C7dAyZwcA35uFV77qHYbqiwf/1DVjxHDdiGWlUuN+PnN5HA3A2Iunf6XX2Tm
	ehqZjh0iAwQGxMh3Je3jozMOgrA1yIGjkvUQYXj6cep0kj1ai1TUJl9ZM3+7wzJ8WY8YcxJKwCHju
	M9VAi1bhf/BJSD8ibFkBrTJikIoNRSySkghmwYUftoL4oU1bF3XsiaIQaibSc+8ksG4UsjGw1glJU
	LujxmvC4tPcXxEKjWK/QKIw8Uu3Qhrb1BDzZAzqIpSkBYVLpjrGossost7kCFej53M5U/mx0nlLZ0
	aVydquEzC5xWkNL+yy8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVv53-0003vL-6w; Wed, 29 May 2019 09:41:09 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVv4v-0003uc-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:41:03 +0000
Received: from [IPv6:2001:983:e9a7:1:352c:d076:e7aa:19ae]
 ([IPv6:2001:983:e9a7:1:352c:d076:e7aa:19ae])
 by smtp-cloud7.xs4all.net with ESMTPA
 id Vv4oh5D803qlsVv4phsgAe; Wed, 29 May 2019 11:40:55 +0200
Subject: Re: [PATCH] media: atmel: atmel-isc: split driver into driver base
 and isc
To: Eugen.Hristev@microchip.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1557392634-11090-1-git-send-email-eugen.hristev@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f52b31cf-87e8-dd00-8b6d-46b02f383507@xs4all.nl>
Date: Wed, 29 May 2019 11:40:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557392634-11090-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJO+Rck8XgIgDzqDevl/WtnQwXsXIDnXPhT4hBPRHrf86UcQBfn9Dxa4P0CTosG8i9EfYGoRksbLIWwJYFG/lhEJALVx3f5j1l3xq8FhkPVfvc+Xesl+
 18k/JX+0oHLsacve0GzsZZbqcIYRU6xnyGiQTwpqXPmLEgBfhfjyRU/8ik2ynIdLg1Z02Bek5kNN1LpP7KkSI/XdoQSPp4P0nxRtK0a4jjWdge+LwaND6qoz
 +XdByEiJ+zT7EXTAaZkJbYBy229jBlp/FqHvIxXOpxi0A7tR3mv9SvxKd3vMrb0dkeOQfcWDwqYp+RjXDYGwe4IJiG4+SaNjZ+0l1ELzfTvFWOsiNohumedN
 wAN1dXU9eJCddwcmTvn2hmcs6hCmV6TVa3wdZzLsw2FcUxtbBu+tDEE+zfqGBhCHfKmmYCVUQjBi4tuKj8l4vrhklMPDYw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_024101_528671_57A91D99 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ksloat@aampglobal.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS85LzE5IDExOjA5IEFNLCBFdWdlbi5IcmlzdGV2QG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4g
RnJvbTogRXVnZW4gSHJpc3RldiA8ZXVnZW4uaHJpc3RldkBtaWNyb2NoaXAuY29tPgo+IAo+IFRo
aXMgc3BsaXRzIHRoZSBBdG1lbCBJU0MgZHJpdmVyIGludG8gYSBjb21tb24gYmFzZTogYXRtZWwt
aXNjLWJhc2UuYwo+IGFuZCB0aGUgZHJpdmVyIHByb2JlL2R0IHBhcnQgLCBhdG1lbC1pc2MuYwo+
IFRoaXMgaXMgbmVlZGVkIHRvIGtlZXAgYSBjb21tb24gZ3JvdW5kIGZvciB0aGUgc2Vuc29yIGNv
bnRyb2xsZXIgd2hpY2ggd2lsbAo+IGJlIHJldXNlZC4KPiBUaGUgYXRtZWwtaXNjIHdpbGwgdXNl
IHRoZSBjb21tb24gc3ltYm9scyBpbnNpZGUgdGhlIGF0bWVsLWlzYy1iYXNlCj4gRnV0dXJlIGRy
aXZlciB3aWxsIGFsc28gdXNlIHRoZSBzYW1lIHN5bWJvbHMgYW5kIHJlZGVmaW5lIGRpZmZlcmVu
dCBhc3BlY3RzLAo+IGZvciBhIGRpZmZlcmVudCB2ZXJzaW9uIG9mIHRoZSBJU0MuCj4gVGhpcyBp
cyBkb25lIHRvIGF2b2lkIGNvbXBsZXRlIGNvZGUgZHVwbGljYXRpb24gYnkgY3JlYXRpbmcgYSB0
b3RhbGx5Cj4gZGlmZmVyZW50IGRyaXZlciBmb3IgdGhlIG5ldyB2YXJpYW50IG9mIHRoZSBJU0Mu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogRXVnZW4gSHJpc3RldiA8ZXVnZW4uaHJpc3RldkBtaWNyb2No
aXAuY29tPgo+IC0tLQo+IAo+IEhlbGxvLAo+IAo+IFRoaXMgcGF0Y2ggYXBwbGllcyBvbiB0b3Ag
b2YgbXkgb3RoZXIgcGF0Y2hlczoKPiAKPiBtZWRpYTogYXRtZWw6IGF0bWVsLWlzYzogbWFrZSB0
cnlfZm10IGVycm9yIGxlc3MgdmVyYm9zZQo+IG1lZGlhOiBhdG1lbDogYXRtZWwtaXNjOiBhZGQg
c3VwcG9ydCBmb3IgRE9fV0hJVEVfQkFMQU5DRQo+IG1lZGlhOiBhdG1lbDogYXRtZWwtaXNjOiBy
ZXdvcmtlZCB3aGl0ZSBiYWxhbmNlIGZlYXR1cmUKPiAKPiBUaGFua3MgIQo+IAo+ICBNQUlOVEFJ
TkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAyICsKPiAgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9NYWtlZmlsZSAgICAgICAgIHwgICAgMSArCj4gIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwvYXRtZWwtaXNjLWJhc2UuYyB8IDIxNDQgKysrKysrKysr
KysrKysrKysrKysrKysKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9hdG1lbC1pc2Mu
YyAgICAgIHwgMjMxMSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vYXRtZWwvYXRtZWwtaXNjLmggICAgICB8ICAyMTAgKysrCj4gIDUgZmlsZXMgY2hh
bmdlZCwgMjM3MiBpbnNlcnRpb25zKCspLCAyMjk2IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9hdG1lbC1pc2MtYmFzZS5jCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVsL2F0bWVsLWlz
Yy5oCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRleCA4
Nzg1ODhjLi44Nzk5Nzc5IDEwMDY0NAo+IC0tLSBhL01BSU5UQUlORVJTCj4gKysrIGIvTUFJTlRB
SU5FUlMKPiBAQCAtMTAxMTAsNiArMTAxMTAsOCBAQCBNOglFdWdlbiBIcmlzdGV2IDxldWdlbi5o
cmlzdGV2QG1pY3JvY2hpcC5jb20+Cj4gIEw6CWxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+
ICBTOglTdXBwb3J0ZWQKPiAgRjoJZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9hdG1lbC1p
c2MuYwo+ICtGOglkcml2ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVsL2F0bWVsLWlzYy5oCj4gK0Y6
CWRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwvYXRtZWwtaXNjLWJhc2UuYwo+ICBGOglkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVsL2F0bWVsLWlzYy1yZWdzLmgKPiAgRjoJRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2F0bWVsLWlzYy50eHQKPiAgCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwvTWFrZWZpbGUgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL2F0bWVsL01ha2VmaWxlCj4gaW5kZXggMjcwMDBkMC4uOWM4NTY2ZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVsL01ha2VmaWxlCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9NYWtlZmlsZQo+IEBAIC0xLDIgKzEsMyBAQAo+
ICBvYmotJChDT05GSUdfVklERU9fQVRNRUxfSVNDKSArPSBhdG1lbC1pc2Mubwo+ICBvYmotJChD
T05GSUdfVklERU9fQVRNRUxfSVNJKSArPSBhdG1lbC1pc2kubwo+ICtvYmotJChDT05GSUdfVklE
RU9fQVRNRUxfSVNDKSArPSBhdG1lbC1pc2MtYmFzZS5vCgpUaGlzIGRvZXNuJ3Qgd29yay4gSWYg
YSBtb2R1bGUgY29uc2lzdHMgb2YgdHdvIHNvdXJjZXMsIHRoZW4geW91IG11c3QgbWFrZSBzdXJl
CnRob3NlIHNvdXJjZXMgZG8gbm90IGhhdmUgdGhlIHNhbWUgbmFtZSBhcyB0aGUgbW9kdWxlLgoK
U28geW91IGhhdmUgdG8gcmVuYW1lIGF0bWVsLWlzYy5jLgoKU2VlIGUuZy4gZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yY2FyLXZpbi9NYWtlZmlsZSBvbiBob3cgdGhhdCdzIGRvbmUgZm9yCkNPTkZJ
R19WSURFT19SQ0FSX1ZJTi4KCjxzbmlwPgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9hdG1lbC9hdG1lbC1pc2MuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwv
YXRtZWwtaXNjLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjFlMjg1
ZjEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9h
dG1lbC1pc2MuaAo+IEBAIC0wLDAgKzEsMjEwIEBACgo8c25pcD4KCj4gKwo+ICsjaWYgZGVmaW5l
ZChDT05GSUdfVklERU9fQVRNRUxfSVNDKQoKV2h5IHRoaXMgI2lmPz8/Cgo+ICsjZGVmaW5lIEFU
TUVMX0lTQ19OQU1FICJhdG1lbC1pc2MiCj4gKyNlbmRpZgo+ICsKPiArI2VuZGlmCj4gCgpJZiBJ
IGNvbmZpZ3VyZSBhdG1lbC1pc2MgYXMgYSBtb2R1bGUsIHRoZW4gSSBnZXQgdGhlc2UgZXJyb3Jz
OgoKICBDQyBbTV0gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwvYXRtZWwtaXNjLWJhc2Uu
bwpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVsL2F0bWVsLWlzYy1iYXNlLmM6IEluIGZ1bmN0
aW9uIOKAmGlzY19xdWVyeWNhcOKAmToKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9hdG1l
bC1pc2MtYmFzZS5jOjkwNjoyMzogZXJyb3I6IOKAmEFUTUVMX0lTQ19OQU1F4oCZIHVuZGVjbGFy
ZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmENUTF9NQVhO
QU1F4oCZPwoKICBzdHJzY3B5KGNhcC0+ZHJpdmVyLCBBVE1FTF9JU0NfTkFNRSwgc2l6ZW9mKGNh
cC0+ZHJpdmVyKSk7CiAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KICAgICAg
ICAgICAgICAgICAgICAgICBDVExfTUFYTkFNRQpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL2F0bWVs
L2F0bWVsLWlzYy1iYXNlLmM6OTA2OjIzOiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmll
ciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgoK
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1lbC9hdG1lbC1pc2MtYmFzZS5jOiBJbiBmdW5jdGlv
biDigJhpc2NfYXN5bmNfY29tcGxldGXigJk6CmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYXRtZWwv
YXRtZWwtaXNjLWJhc2UuYzoyMDYzOjIyOiBlcnJvcjog4oCYQVRNRUxfSVNDX05BTUXigJkgdW5k
ZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYQ1RM
X01BWE5BTUXigJk/CgogIHN0cnNjcHkodmRldi0+bmFtZSwgQVRNRUxfSVNDX05BTUUsIHNpemVv
Zih2ZGV2LT5uYW1lKSk7CiAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fgogICAg
ICAgICAgICAgICAgICAgICAgQ1RMX01BWE5BTUUKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hdG1l
bC9hdG1lbC1pc2MuYzogSW4gZnVuY3Rpb24g4oCYYXRtZWxfaXNjX3Byb2Jl4oCZOgpkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL2F0bWVsL2F0bWVsLWlzYy5jOjE4MDoxMTogZXJyb3I6IOKAmEFUTUVM
X0lTQ19OQU1F4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlk
IHlvdSBtZWFuIOKAmENUTF9NQVhOQU1F4oCZPwoKICAgICAgICAgICBBVE1FTF9JU0NfTkFNRSwg
aXNjKTsKICAgICAgICAgICBefn5+fn5+fn5+fn5+fgogICAgICAgICAgIENUTF9NQVhOQU1FCgpQ
cm9iYWJseSByZWxhdGVkIHRvIG9uZSBvciBib3RoIG9mIG15IGNvbW1lbnRzIGFib3ZlLgoKUmVn
YXJkcywKCglIYW5zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
