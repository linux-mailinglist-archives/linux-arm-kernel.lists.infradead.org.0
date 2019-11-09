Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11870F5FA5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 16:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EB8MQW1iPhie2x+slv2uEPEawHoYNta2mIgSNhcxy5Y=; b=oxDXwkjZF14TPV
	1diD7kfRWVwbiGl7GvuyDPBM6SYEXyIoHxVFngudy8uJGRUKE1rVKlsUBnBz/iRzAebWfLhjO22g+
	LR8G/3XThPde9jfKaq6CSrlLqNr5H23IsfDn83xolgdrMrdCWeS9AIglYZX7KLp5Jlyi1YLWYO0I9
	seVyd8yvW2CqiG2NVkRRB3WCRgcifsJyGB5UCtSVL9cB1v3YDrIQS0/4iE/vB5AvRNRTmqknNqeg2
	wi9oNDi5Muz0uxTdDPNG+NNwvdZZZfZ0nFMG7lvbz817Q51eAjOA4aGhq6jTZ8O8K2ym26jQQgHmJ
	VCsYJhSSQuxH/O5faObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTSLN-0003Ka-5D; Sat, 09 Nov 2019 15:08:05 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTSLD-0003Io-9q; Sat, 09 Nov 2019 15:07:57 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id TSKriLLBPXYiTTSKui2v4a; Sat, 09 Nov 2019 16:07:48 +0100
Subject: Re: [PATCH v10 00/11] Rockchip ISP Driver
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20191107005617.12302-1-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <7c81145d-ffe5-351a-2b82-d9bb63f3c0cc@xs4all.nl>
Date: Sat, 9 Nov 2019 16:07:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107005617.12302-1-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGegz4zSjrbMAN6bwhzyLX53f7EGoOZlvMc4a5Cpd7nT+yDj9q4OtdtEKUqXVHNtGukYsZUCmJws6Q+Uubi2CSmJUl3sb+13+yq8AuXJCeE2knYNPev5
 XGFp9mlLHLfPZMRvfgkKAonDSiugi1460mtgjMh1HP/aQTf92Cgfv3hPayr25PprGP5PEAN6Lr4KI9InxYM2KXlWO1cfmItSarEN28xNdCJddhVPm19Su6P3
 OoosGQgMTkxwCuLSMiarNPqrhxaYI0hAEMqsL1hjZ5NG/xIZeuUpe5g7RxKal1YlDFjw0aET3GsGVajEIMDkXb7UGWynwpVntQKIlGBtHMPTQJ0bfpwjOr67
 8VcOTActmhZw7POEH7lO2pfYHc4DG6p3xXzdVlA9wOEl4dXiT3yZMZ8ohulE7n9riuYhQrqgX17vovhGB4ucWi0N5CmdNeAOslSN/QPO/f5B9/eCkcMvQcOA
 xhjARhjuTVKm6HS162Q3p7f8g843yZA97fkkr2e5LvTLv9zrKfSN19Fgvd9aqhZwgYyxb/+Rw//wSpsVd33EkkeNBibo7n2rZ8tqZt8zFQEnto+UxEB7W+3v
 V0ohqZw8GwR+1+VMMI15xU1UEXtaPaaXnCJDAEfV1fOye2cUsZUpxgMRCvz0S6MES2j+GYg1VHlqh1hwSpCDzj2pOYGX4LkUm8HwMcnanrtMQphSU7tLz6FA
 NJZ4BBeXZrg4xorOs85KvxdpDrYJsisglAXyMHL4d1/LyCs0X7x6ZsUZtGtqwS8mhOF3nKuIg2KJMHaOeEIYqxg8QZmRMTdVql0xBh+Z8Ryg5MR99cnYi1er
 Z6HNK1XbUU51K3ATuuKXZ34XABTZZgKwXgsw3wiK2oKGJ5e2vQ11ige3dX62iy+hqT9KGJv0s4ThxxKT+/8lV3U6VhQPJRRNhdEk7qYEkcA8v8vulxNQKLx7
 jezGlw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_070755_502611_840128DC 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, jacob-chen@iotwrt.com,
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVsZW4sCgpPbiAxMS83LzE5IDE6NTYgQU0sIEhlbGVuIEtvaWtlIHdyb3RlOgo+IEhlbGxv
LAo+IAo+IFRoaXMgc2VyaWVzIGFkZHMgdGhlIFJvY2tjaGlwIEltYWdlIFNpZ25hbCBQcm9jZXNz
aW5nIFVuaXQgdjEgZHJpdmVyIHRvCj4gc3RhZ2luZy4KPiAKPiBUaGUgbWFpbiByZWFzb24gdG8g
YmUgaW4gc3RhZ2luZyBpcyB0aGF0IHBlb3BsZSBhcmUgYWxyZWFkeSB1c2luZyBpdCBmcm9tIHRo
ZQo+IG1haWxpbmcgbGlzdCAoaW5jbHVkaW5nIGxpYmNhbWVyYSksIGFuZCBoYXZpbmcgaXQgaW4g
bWFpbmxpbiBtYWtlcyB0aGUgd29ya2Zsb3cKPiBlYXNpZXIuIEFsc28sIGl0IGlzIGVhc2llciBm
b3Igb3RoZXIgcGVvcGxlIHRvIGNvbnRyaWJ1dGUgYmFjayAod2l0aCBjb2RlCj4gb3IgdGVzdGlu
ZyB0aGUgZHJpdmVyKS4KPiAKPiBXZSBwbGFuIHRvIGFjdGl2ZWx5IHdvcmsgb24gdGhpcyBkcml2
ZXIgdG8gZ2V0IGl0IG91ciBvZiBzdGFnaW5nLgo+IAo+IFRoaXMgcGF0Y2hzZXQgaXMgYWxzbyBh
dmFpbGFibGUgYXQ6Cj4gaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9rb2lrZS9saW51eC90
cmVlL3JvY2tjaGlwL2lzcC92MTAKPiAKPiBMaWJjYW1lcmEgcGF0Y2hlZCB0byB3b3JrIHdpdGgg
dGhpcyB2ZXJzaW9uOgo+IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20va29pa2UvbGliY2Ft
ZXJhCj4gKGFsc28gc2VudCB0byB0aGUgbWFpbGluZyBsaXN0KQo+IAo+IFRoZSBtYWpvciBkaWZm
ZXJlbmNlIGluIHYxMCBhcmU6Cj4gKiBJIHNwbGl0dGVkIHRoZSBwYXRjaGVzIGFnYWluIGluIGRp
ZmZlcmVudCBjb21taXRzLCBzaW5jZSBpdCB3YXMgdG9vIGJpZyBmb3IKPiB0aGUgbWVkaWEgbWFp
bGluZyBsaXN0IGFuZCBhbHNvIGl0J3MgZWFzaWVyIHRvIGdldCBkdC1iaW5kaW5ncyBhcHByb3Zh
bC4KPiAqIFdlIGRvbid0IGV4cG9zZSB0aGUgbWV0YWRhdGEgcGl4ZWxmb3JtYXRzIHRvIHRoZSB1
YXBpIHlldCwgc28gIHBhdGNoCj4gIm1lZGlhOiB2aWRlb2RldjIuaCwgdjRsMi1pb2N0bDogYWRk
IHJraXNwMSBtZXRhIGJ1ZmZlciBmb3JtYXQiIHdhcwo+IHJlbW92ZWQgZnJvbSB0aGUgc2VyaWVz
Lgo+ICogVE9ETyBsaXN0IHdhcyB1cGRhdGVkIHRvIHJlbWluZCB0byB0ZXN0IHVhcGkgc3RydWN0
cyBpbiBkaWZmZXJlbnQKPiBhcmNoaXRlY3R1cmVzLgo+IAo+IFRoaXMgc2VyaWVzIG9ubHkgdG91
Y2hlcyBNQUlOVEFJTkVSUyBmaWxlIGFuZCBkcml2ZXJzL3N0YWdpbmcvCj4gCj4gTUFJTlRBSU5F
UlMKPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvS2NvbmZpZwo+IGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9NYWtlZmlsZQo+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBoeS9LY29u
ZmlnCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L01ha2VmaWxlCj4g
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L1RPRE8KPiBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcGh5LXJvY2tjaGlwLWRwaHkvcGh5LXJvY2tjaGlwLWRwaHkuYwo+IGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21lZGlhL3JvY2tjaGlwLWlzcDEudHh0Cj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtbWlwaS1kcGh5
LnR4dAo+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvRG9jdW1lbnRhdGlvbi9tZWRpYS91
YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lzcDEtcGFyYW1zLnJzdAo+IGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya2lzcDEvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lz
cDEtc3RhdC5yc3QKPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0tjb25maWcKPiBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL01ha2VmaWxlCj4gZHJpdmVycy9zdGFnaW5nL21lZGlh
L3JraXNwMS9UT0RPCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9jYXB0dXJlLmMKPiBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2NhcHR1cmUuaAo+IGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya2lzcDEvY29tbW9uLmgKPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2Rldi5j
Cj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9kZXYuaAo+IGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya2lzcDEvaXNwX3BhcmFtcy5jCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9p
c3BfcGFyYW1zLmgKPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2lzcF9zdGF0cy5jCj4g
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3Bfc3RhdHMuaAo+IGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9ya2lzcDEvcmVncy5jCj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9yZWdz
LmgKPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS5jCj4gZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JraXNwMS9ya2lzcDEuaAo+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEv
dWFwaS9ya2lzcDEtY29uZmlnLmgKPiAKPiBUd28gZHJpdmVycyB3ZXJlIGFkZGVkLCBpbmNsdWRp
bmcgYSBUT0RPIGxpc3QgZm9yIHJlbW92aW5nIGl0IGZyb20KPiBzdGFnaW5nOgo+IAo+ICogcGh5
LXJvY2tjaGlwLWRwaHk6IG1pcGkgZHBoeSBkcml2ZXIgdXNlZCBieSBjc2kKPiAqIHJraXNwMTog
dGhlIGltYWdlIHNpZ25hbCBwcm9jZXNzaW5nIHVuaXQgZHJpdmVyCj4gCj4gQW55IGZlZWRiYWNr
IGlzIHdlbGNvbWUuCgpJIGdldCBhIGxvdCBvZiBjaGVja3BhdGNoLnBsIC0tc3RyaWN0IHdhcm5p
bmdzIGZvciB0aGlzIHNlcmllcyB0aGF0IGZvciB0aGUgbW9zdApwYXJ0IHNlZW0gdmVyeSB0cml2
aWFsLiBQbGVhc2UgZml4IHRoZXNlLCBpdCdzIG11Y2ggZWFzaWVyIHRvIG1haW50YWluIHRoZSBk
cml2ZXIKaWYgdGhpcyBpcyBkb25lIGJlZm9yZSBtZXJnaW5nIGl0LgoKSSBhbHNvIGdldCB0aGVz
ZSBjb21waWxlIHdhcm5pbmdzOgoKZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3Bfc3Rh
dHMuYzogSW4gZnVuY3Rpb24g4oCYcmtpc3AxX3JlZ2lzdGVyX3N0YXRzX3ZkZXbigJk6CmRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvaXNwX3N0YXRzLmM6NDUyOjEwOiB3YXJuaW5nOiBjb21w
YXJpc29uIG9mIHVuc2lnbmVkIGV4cHJlc3Npb24gPCAwIGlzIGFsd2F5cyBmYWxzZSBbLVd0eXBl
LWxpbWl0c10KICA0NTIgfCAgaWYgKHJldCA8IDApCiAgICAgIHwgICAgICAgICAgXgpkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmtpc3AxL2lzcF9zdGF0cy5jOjQ1NjoxMDogd2FybmluZzogY29tcGFy
aXNvbiBvZiB1bnNpZ25lZCBleHByZXNzaW9uIDwgMCBpcyBhbHdheXMgZmFsc2UgWy1XdHlwZS1s
aW1pdHNdCiAgNDU2IHwgIGlmIChyZXQgPCAwKSB7CiAgICAgIHwgICAgICAgICAgXgpkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS5jOiBJbiBmdW5jdGlvbiDigJhya2lzcDFfY29u
ZmlnX2lzcOKAmToKZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEuYzoxNTQ6MjA6
IHdhcm5pbmc6IHZhcmlhYmxlIOKAmG91dF9jcm9w4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51
c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgMTU0IHwgIHN0cnVjdCB2NGwyX3JlY3QgKm91dF9jcm9w
LCAqaW5fY3JvcDsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn4KCkkgYWxzbyBn
b3QgdGhlc2Ugc3BhcnNlIHdhcm5pbmdzOgoKU1BBUlNFOi9ob21lL2hhbnMvd29yay9idWlsZC9t
ZWRpYS1naXQvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3BfcGFyYW1zLmMKL2hvbWUv
aGFucy93b3JrL2J1aWxkL21lZGlhLWdpdC9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2lz
cF9wYXJhbXMuYzoxNTExOjI5OiAgd2FybmluZzogc3ltYm9sICdya2lzcDFfcGFyYW1zX2ZvcHMn
IHdhcyBub3QgZGVjbGFyZWQuClNob3VsZCBpdCBiZSBzdGF0aWM/ClNQQVJTRTovaG9tZS9oYW5z
L3dvcmsvYnVpbGQvbWVkaWEtZ2l0L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3Ax
LmMKL2hvbWUvaGFucy93b3JrL2J1aWxkL21lZGlhLWdpdC9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmtpc3AxL3JraXNwMS5jOjk0Mzo0MzogIHdhcm5pbmc6IG1pc3NpbmcgYnJhY2VzIGFyb3VuZCBp
bml0aWFsaXplcgoKUmVnYXJkcywKCglIYW5zCgo+IAo+IFRoYW5rcywKPiBIZWxlbgo+IAo+IEhl
bGVuIEtvaWtlICgxKToKPiAgIE1BSU5UQUlORVJTOiBhZGQgZW50cnkgZm9yIFJvY2tjaGlwIElT
UDEgZHJpdmVyCj4gCj4gSmFjb2IgQ2hlbiAoOSk6Cj4gICBtZWRpYTogc3RhZ2luZzogcGh5LXJv
Y2tjaGlwLWRwaHk6IGFkZCBSb2NrY2hpcCBNSVBJIFN5bm9wc3lzIERQSFkKPiAgICAgZHJpdmVy
Cj4gICBtZWRpYTogc3RhZ2luZzogcmtpc3AxOiBhZGQgZG9jdW1lbnQgZm9yIHJraXNwMSBtZXRh
IGJ1ZmZlciBmb3JtYXQKPiAgIG1lZGlhOiBzdGFnaW5nOiBya2lzcDE6IGFkZCBSb2NrY2hpcCBJ
U1AxIHN1YmRldiBkcml2ZXIKPiAgIG1lZGlhOiBzdGFnaW5nOiBya2lzcDE6IGFkZCBJU1AxIHN0
YXRpc3RpY3MgZHJpdmVyCj4gICBtZWRpYTogc3RhZ2luZzogcmtpc3AxOiBhZGQgSVNQMSBwYXJh
bXMgZHJpdmVyCj4gICBtZWRpYTogc3RhZ2luZzogcmtpc3AxOiBhZGQgY2FwdHVyZSBkZXZpY2Ug
ZHJpdmVyCj4gICBtZWRpYTogc3RhZ2luZzogcmtpc3AxOiBhZGQgcm9ja2NoaXAgaXNwMSBjb3Jl
IGRyaXZlcgo+ICAgbWVkaWE6IHN0YWdpbmc6IGR0LWJpbmRpbmdzOiBEb2N1bWVudCB0aGUgUm9j
a2NoaXAgSVNQMSBiaW5kaW5ncwo+ICAgbWVkaWE6IHN0YWdpbmc6IGR0LWJpbmRpbmdzOiBEb2N1
bWVudCB0aGUgUm9ja2NoaXAgTUlQSSBSWCBELVBIWQo+ICAgICBiaW5kaW5ncwo+IAo+IEplZmZ5
IENoZW4gKDEpOgo+ICAgbWVkaWE6IHN0YWdpbmc6IHJraXNwMTogYWRkIHVzZXIgc3BhY2UgQUJJ
IGRlZmluaXRpb25zCj4gCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgIDYgKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgfCAgICA0ICsKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL01ha2VmaWxlICAgICAg
ICAgICAgICAgIHwgICAgMiArCj4gIC4uLi9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5
L0tjb25maWcgICB8ICAgMTEgKwo+ICAuLi4vc3RhZ2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBo
eS9NYWtlZmlsZSAgfCAgICAyICsKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hp
cC1kcGh5L1RPRE8gIHwgICAgNiArCj4gIC4uLi9waHktcm9ja2NoaXAtZHBoeS9waHktcm9ja2No
aXAtZHBoeS5jICAgICB8ICA0MDAgKysrKwo+ICAuLi4vYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAt
aXNwMS50eHQgICAgICAgICAgfCAgIDcxICsKPiAgLi4uL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlw
LW1pcGktZHBoeS50eHQgICAgIHwgICAzOCArCj4gIC4uLi91YXBpL3Y0bC9waXhmbXQtbWV0YS1y
a2lzcDEtcGFyYW1zLnJzdCAgICB8ICAgMjMgKwo+ICAuLi4vdWFwaS92NGwvcGl4Zm10LW1ldGEt
cmtpc3AxLXN0YXQucnN0ICAgICAgfCAgIDIyICsKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
aXNwMS9LY29uZmlnICAgICAgICAgIHwgICAxMyArCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a2lzcDEvTWFrZWZpbGUgICAgICAgICB8ICAgIDcgKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmtpc3AxL1RPRE8gICAgICAgICAgICAgfCAgIDIzICsKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3JraXNwMS9jYXB0dXJlLmMgICAgICAgIHwgMTg2OSArKysrKysrKysrKysrKysrKwo+ICBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2NhcHR1cmUuaCAgICAgICAgfCAgMTY0ICsrCj4gIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvY29tbW9uLmggICAgICAgICB8ICAgOTggKwo+ICBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2Rldi5jICAgICAgICAgICAgfCAgNDM5ICsrKysK
PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9kZXYuaCAgICAgICAgICAgIHwgICA2NyAr
Cj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvaXNwX3BhcmFtcy5jICAgICB8IDE2MDQg
KysrKysrKysrKysrKysKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3BfcGFyYW1z
LmggICAgIHwgICA1MCArCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvaXNwX3N0YXRz
LmMgICAgICB8ICA0OTQgKysrKysKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3Bf
c3RhdHMuaCAgICAgIHwgICA2MCArCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmVn
cy5jICAgICAgICAgICB8ICAyMjQgKysKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9y
ZWdzLmggICAgICAgICAgIHwgMTUyNSArKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmtpc3AxL3JraXNwMS5jICAgICAgICAgfCAxMjQ2ICsrKysrKysrKysrCj4gIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLmggICAgICAgICB8ICAgOTcgKwo+ICAuLi4v
c3RhZ2luZy9tZWRpYS9ya2lzcDEvdWFwaS9ya2lzcDEtY29uZmlnLmggfCAgODE5ICsrKysrKysr
Cj4gIDI4IGZpbGVzIGNoYW5nZWQsIDkzODQgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L0tjb25maWcKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9waHktcm9ja2NoaXAtZHBo
eS9NYWtlZmlsZQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Bo
eS1yb2NrY2hpcC1kcGh5L1RPRE8KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9waHktcm9ja2NoaXAtZHBoeS9waHktcm9ja2NoaXAtZHBoeS5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1pc3AxLnR4dAo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtbWlwaS1kcGh5LnR4dAo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9Eb2N1bWVudGF0aW9uL21lZGlhL3Vh
cGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1wYXJhbXMucnN0Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0RvY3VtZW50YXRpb24vbWVkaWEvdWFwaS92
NGwvcGl4Zm10LW1ldGEtcmtpc3AxLXN0YXQucnN0Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL0tjb25maWcKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvTWFrZWZpbGUKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvVE9ETwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9jYXB0dXJlLmMKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvY2FwdHVyZS5oCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2NvbW1vbi5oCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2Rldi5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2Rldi5oCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL2lzcF9wYXJhbXMuYwo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9pc3BfcGFyYW1z
LmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvaXNw
X3N0YXRzLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lz
cDEvaXNwX3N0YXRzLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya2lzcDEvcmVncy5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvcmtpc3AxL3JlZ3MuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9ya2lzcDEuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JraXNwMS9ya2lzcDEuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JraXNwMS91YXBpL3JraXNwMS1jb25maWcuaAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
