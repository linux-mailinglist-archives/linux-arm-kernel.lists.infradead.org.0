Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F051CC02D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb0YQzbnc3Wk7ogweTQo0JTvpQEfA9rStvSJzdgTeaE=; b=AVLoa0hfnW+0re
	eSX0gVjDyYu2Mx7nF+bSSeycq0kwsxV4nSrR/RK9g4NoWSR1kRCnp6or4EfIhne+zEcLBwn3gZBt8
	AdZpmeB2xnoBlKC3VKvtEOfBubAOYmYOXDuypv5ZcpSA61BNqw2LxGQ5ZgfDnz7Z+X4X/yAOHSZN4
	KslwudWmuw/Zg26on1uUAuwPXrFpbTM0cWbyUA+vNbJECBGc9+VrAwS1XRVNQ7cOR1rqHyVeppLpr
	vUyxu5x1ZKMLFzn43tiI2fqA0/C5gG39SEbkUBPTiPx/DyUsy7X8IZr6dXT7e9eWnY/PNfJ7jwLhO
	T6Lph8nalS/rfDpXKwhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMKA-000593-MA; Sat, 09 May 2020 10:03:14 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMK1-00058D-57; Sat, 09 May 2020 10:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589018576;
 bh=W7Lmspo0WENbbnXHZbdsbnw8T7Qb0HHacjX3ukXoMOE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=k6ki9ywtNE9qiCddSpl62DoOYp+bcWa1GlnXM977YrHrUxgFTDXqQIMKCDdDgTWFP
 2FaZQT5zX07AeyzRxuGn9gXO9G6YXrNfcr/+vl6lEy2VHaeRf+s+tkQ6TnguoECk1Z
 53ps5wlpGHWTSuNxmQh3zLufrw1Rc6b139wscyqA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.184]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M5QF5-1jWWqD2Hv3-001NMw; Sat, 09
 May 2020 12:02:56 +0200
Subject: Re: [PATCH v8 2/4] firmware: raspberrypi: Introduce vl805 init routine
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-3-nsaenzjulienne@suse.de> <20200507214859.GA562@bogus>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c9449111-f646-3925-36e6-f4492ad5f90a@gmx.net>
Date: Sat, 9 May 2020 12:02:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507214859.GA562@bogus>
Content-Language: en-US
X-Provags-ID: V03:K1:eLZ1miKegv3rXdN/C0JNfEEqvpu73GO3hAnNewSExe7JComo0mJ
 z6ff9hhNKwJwZkB8eJvlrNfXubZKR/61QqP/CDU/+GIxpR4xqrJgDiOglWgofthjKSxILU2
 2nr3RGYACVmCbQRT1JmoDJ+nkAD+Khrg2VyyNlkvBNyPzteXLelXDNIzpVBXsBRhQ3D2zbr
 lu09VIpw4zbyGNOh+QySw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jsZDLKSi+Eg=:Tz2G7+Ln06ot1CiksLMqpf
 BhLX0+NE/qnW8Y2gL4sv0bMiUwoLqNx5DFFDTX3+KaVuYtgcD4x/yygk3OxMV3e0zztbY/Xwa
 UMLpPtmsHweaqFV2H+3NOPgmXDyjm+pgTruvTQ8Dx3EogZjiDq7SV0+wjM3azp7NqG04syBHm
 MC1qORRvtB1ey2cZDEtvAeBX9vt2VDijvk/nm1ll5+OQ3+Rw8iAf3IN3/bdyfOO9ZtdW5YuA2
 JqKU178JdykYeQrF0+f7V7wv8AvNlPh7eJqjZRHCUxAnk5xSkIlc+MR8B1VtU3qTLokoGtues
 EoTiUuXRo0YTWr59PvMi5uG3mq8O37OMSwoLOFI2f7q/UIkOKeGT79/GuxmN4/Tgdq937p1Q2
 2JgyKIqkxXIUrxudqp5LDRza4X3CVN5889ffN58ZCoIjCtm3QSqm83DIXmiahPAde2LarWDNy
 u3zw4dqTr+z1AeaE7MLxRhVlYqk2diAqY2FD5hXC3Nr3NTSg9F/H5HCclm/vfP0SQRUKBuqHq
 L1ceCtOdgzE4JYtRuzdU0tagCkSomKCUde/wcGbI/4hbz4+RsXokwY2YeUDZpl1+zCBrPw5bF
 JEokTtHLPkpStg92YrKoczLoCxiqcXclu3C48x+8uaEZte/nbMlvGt+tRPko6GkUXrmFi8Izg
 Nv3mBz3P2+clV7vTndCk/rZnJf+5qzF5F3VOa0Awtxg3mSfMzfhNnF64XaDGy9FQXBC6iHIYB
 cUFsj/O/n3yQ6AwNBO7VqmreQYyTl7U56ixeuwfBh/J7TZyVwmEbM9z+z13MSv8Y2k82PfHa4
 yEq2K02+Go8sMXm5sj4KMp5CtPUeMcR6eI9eBwcwkGdk5s1BfET10Ga7rb0WUp/6+xFTfVNJW
 crk/yNFcMUxl+R+TyHFMLBXfSfX8BySRDOUeGEB3qPjCJg36cASx7UiK7DpVCmyWSqLHlDUR+
 hJrNXMgBhtDfv5jfJXSstWyBpttYQWc+LhN8qdjnYz8yOWF1q2/EmmceL9GvqFbeV3RJIkBMs
 QXZg8pz+8rW+BIb7WzU7VTMHwv3q0l7Zlq/2jeY4lCnqD1GRNHtiN4ka0c0d1MHGl2yHBIVrs
 lkoyW2uulYGKEoNYXtFlB8jL89NREaK8pzV72SJ4KL4hGPwUpF9l/3oAIQpM9kLQDTnVvsVpS
 z6Hh0NS8E5uX51SoykLIajl9KxMywRj8t8JvsnTkyMDHTbsksjIRx/nbeCzqZ75mkRCHdj5og
 mBci+7MQhPqGeBxdR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_030305_525084_01918C2F 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wahrenst[at]gmx.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, f.fainelli@gmail.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmljb2xhcywKCkFtIDA3LjA1LjIwIHVtIDIzOjQ4IHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4g
T24gVHVlLCAgNSBNYXkgMjAyMCAxODoxMzoxNSArMDIwMCwgTmljb2xhcyBTYWVueiBKdWxpZW5u
ZSB3cm90ZToKPj4gVGhlIFJhc3BiZXJyeSBQaSA0IGdldHMgaXRzIFVTQiBmdW5jdGlvbmFsaXR5
IGZyb20gVkw4MDUsIGEgUENJZSBjaGlwCj4+IHRoYXQgaW1wbGVtZW50cyB4SENJLiBBZnRlciBh
IFBDSSByZXNldCwgVkw4MDUncyBmaXJtd2FyZSBtYXkgZWl0aGVyIGJlCj4+IGxvYWRlZCBkaXJl
Y3RseSBmcm9tIGFuIEVFUFJPTSBvciwgaWYgbm90IHByZXNlbnQsIGJ5IHRoZSBTb0Mncwo+PiBj
by1wcm9jZXNzb3IsIFZpZGVvQ29yZS4gUlBpNCdzIFZpZGVvQ29yZSBPUyBjb250YWlucyBib3Ro
IHRoZSBub24gcHVibGljCj4+IGZpcm13YXJlIGxvYWQgbG9naWMgYW5kIHRoZSBWTDgwNSBmaXJt
d2FyZSBibG9iLiBUaGUgZnVuY3Rpb24gdGhpcyBwYXRjaAo+PiBpbnRyb2R1Y2VzIHRyaWdnZXJz
IHRoZSBhZm9yZW1lbnRpb25lZCBwcm9jZXNzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFz
IFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5uZUBzdXNlLmRlPgo+Pgo+PiAtLS0KPj4KPj4g
Q2hhbmdlIHNpbmNlIHY3Ogo+PiAtIFVzZSB1c2xlZXBfZGVsYXkoKQo+PiAtIEFkZCBjb21tZW50
IGFib3V0IFBDSSBlcnJvcnMKPj4gLSBEb24ndCB3YWl0IG9uIGVycm9yCj4+IC0gVHlwb3MKPj4K
Pj4gQ2hhbmdlIHNpbmNlIHY2Ogo+PiAtIEFkZCB0ZXN0IHRvIGF2b2lkIGxvYWRpbmcgdGhlIGZp
cm13YXJlIHdoZW4gbm90IG5lZWRlZAo+PiAtIFNpbmNlIHdlIGhhdmUgaXQgYXJvdW5kLCBwcmlu
dCBWTDgwNSdzIGZpcm13YXJlIHZlcnNpb24sIGl0J2xsIG1ha2UKPj4gZGVidWdnaW5nIGVhc2ll
ciBpbiB0aGUgZnV0dXJlCj4+IC0gQ29ycmVjdCB0eXBvcwo+PiAtIEFkZCBhIGNsZWFyZXIgdmll
dyBvZiBIVyB0b3BvbG9neSBpbiBwYXRjaCBkZXNjcmlwdGlvbgo+Pgo+PiBDaGFuZ2VzIHNpbmNl
IHY0Ogo+PiAtIElubGluZSBmdW5jdGlvbiBkZWZpbml0aW9uIHdoZW4gUkFTUEJFUlJZUElfRklS
TVdBUkUgaXMgbm90IGRlZmluZWQKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gLSBNb3ZlIGlu
Y2x1ZGUgaW50byAuYyBmaWxlIGFuZCBhZGQgZm9yd2FyZCBkZWNsYXJhdGlvbiB0byAuaAo+Pgo+
PiAgZHJpdmVycy9maXJtd2FyZS9yYXNwYmVycnlwaS5jICAgICAgICAgICAgIHwgNjEgKysrKysr
KysrKysrKysrKysrKysrKwo+PiAgaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJt
d2FyZS5oIHwgIDcgKysrCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDY4IGluc2VydGlvbnMoKykKPj4K
PiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCmkgbW9kaWZpZWQg
dGhlIGNvZGUgYSBsaXR0bGUgYml0IGZvciB0ZXN0aW5nLCBidXQgYWxzbyBzdWNjZXNzZnVsbHkK
dGVzdGVkIGl0IHdpdGhvdXQgbXkgbW9kaWZpY2F0aW9uczoKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMK
aW5kZXggMGQxNDIyYi4uZjNmNGMyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJtd2FyZS9yYXNw
YmVycnlwaS5jCisrKyBiL2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwpAQCAtMzM3LDgg
KzMzNywxMCBAQCBpbnQgcnBpX2Zpcm13YXJlX2luaXRfdmw4MDUoc3RydWN0IHBjaV9kZXYgKnBk
ZXYpCsKgwqDCoMKgwqDCoMKgwqAgKiBmdXJ0aGVyIGRvd24gdGhlIGxpbmUuCsKgwqDCoMKgwqDC
oMKgwqAgKi8KwqDCoMKgwqDCoMKgwqAgcGNpX3JlYWRfY29uZmlnX2R3b3JkKHBkZXYsIFZMODA1
X1BDSV9DT05GSUdfVkVSU0lPTl9PRkZTRVQsCiZ2ZXJzaW9uKTsKLcKgwqDCoMKgwqDCoCBpZiAo
dmVyc2lvbikKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBleGl0OworwqDCoMKg
wqDCoMKgIGlmICh2ZXJzaW9uKSB7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBjaV9p
bmZvKHBkZXYsICJWTDgwNSBFRVBST00gZmlybXdhcmUgdmVyc2lvbiAlMDh4XG4iLAp2ZXJzaW9u
KTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7CivCoMKgwqDCoMKgwqAg
fQrCoArCoMKgwqDCoMKgwqDCoCBkZXZfYWRkciA9IHBkZXYtPmJ1cy0+bnVtYmVyIDw8IDIwIHwg
UENJX1NMT1QocGRldi0+ZGV2Zm4pIDw8IDE1IHwKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIFBDSV9GVU5DKHBkZXYtPmRldmZuKSA8PCAxMjsKQEAgLTM1Myw5ICszNTUsOCBA
QCBpbnQgcnBpX2Zpcm13YXJlX2luaXRfdmw4MDUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCsKgCsKg
wqDCoMKgwqDCoMKgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBWTDgwNV9QQ0lfQ09ORklH
X1ZFUlNJT05fT0ZGU0VULArCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICZ2ZXJzaW9uKTsKLWV4aXQ6Ci3CoMKgwqDCoMKgwqAgcGNpX2lu
Zm8ocGRldiwgIlZMODA1IGZpcm13YXJlIHZlcnNpb24gJTA4eFxuIiwgdmVyc2lvbik7CsKgCivC
oMKgwqDCoMKgwqAgcGNpX2luZm8ocGRldiwgIlZMODA1IFJBTSBmaXJtd2FyZSB2ZXJzaW9uICUw
OHhcbiIsIHZlcnNpb24pOwrCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKwqB9CsKgRVhQT1JUX1NZ
TUJPTF9HUEwocnBpX2Zpcm13YXJlX2luaXRfdmw4MDUpOwoKSGVyZSBhcmUgdGhlIG15IHJlc3Vs
dHMgd2l0aCAzeCBSYXNwYmVycnkgUGkgNDoKClZMODA1IEVFUFJPTSBmaXJtd2FyZSB2ZXJzaW9u
IDAwMDEzN2FkClZMODA1IEVFUFJPTSBmaXJtd2FyZSB2ZXJzaW9uIDAwMDEzNzAxClZMODA1IFJB
TSBmaXJtd2FyZSB2ZXJzaW9uIDAwMDEzN2FkCgpTbyB0aGUgd2hvbGUgcGF0Y2ggc2VyaWVzIGlz
OgoKVGVzdGVkLWJ5OiBTdGVmYW4gV2FocmVuIDxzdGVmYW4ud2FocmVuQGkyc2UuY29tPgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
