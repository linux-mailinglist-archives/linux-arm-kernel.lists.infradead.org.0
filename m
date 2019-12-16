Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF7D121645
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO51/J6X3uJXHF+tB7bmORde1bxQazYiyoHT/DqbRwg=; b=ZghBr/NAeSRH5S
	XvfUV/uT3FBWuNUAvYLwopb8DMDnRoWYXterzPNttRCT++3Tv18m2SRbDxjus/vN08ulYJnUt08Mg
	Cfe23wHuj+RmJtFR0aF2lN43Ab+ySwmolJ37zliAjgdcHMVzRw/MJgV+VEw359C/16wl5wa0/45lj
	s7+M3AqnHcNOW85H/4voqmgmFzd4O34oQNpdODSXzMU39hhA5daAojDUFH3n17IZOkaEqX05kH79m
	/gPNDs8NdgmaTEiWCEYw5YRbpQbWXwJif4P17FZKhAhpwXJcUvkMM3XdNBZaExEjBiT/j7IU40teW
	RJ2Qv1lPyCLDN887Owbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igv6Y-0007tD-Cf; Mon, 16 Dec 2019 18:28:26 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igv6Q-0007sG-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576520888;
 bh=pvmpFiX4d9YHZ7Vsh/G0m1JXfvyx/v5IGwK4o0cHQAs=;
 h=X-UI-Sender-Class:Subject:To:References:Cc:From:Date:In-Reply-To;
 b=NZbQnkTf7jk85/R0oOJy3oNwRz1gt7vCTlSh8GUtpCFJ7JF062frFOw9SAZDFHN50
 SZ0krEQD/WC9Z4JyDaC8K3aM+61ZMaMkUdeLwpA9VBndexZQSXDNCo8D2QX/KTVA8o
 6QbQ6tg6SdlqX2cxyWMwasG0FoCs6zr2i7dTDzEs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MPogF-1iK33b0jdj-00MqUS; Mon, 16
 Dec 2019 19:28:08 +0100
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, =?UTF-8?Q?Ond=c5=99ej_Jirman?=
 <megous@megous.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
Date: Mon, 16 Dec 2019 19:28:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216132509.ofqcdpwxsd7324ql@core.my.home>
Content-Language: en-US
X-Provags-ID: V03:K1:Tu/M2bgQiADbiwQeIjgGIYBpqIJmQI8GMRK5NioWdvcQ4AMDg3B
 hDPX+HmurOZiRtSL7Tw54NOG+GoJGgB3KHazHOpC4BwEn8JHHPArQo3u7DiIZ4AzNwh+MHq
 sKZj5P5yBnNASd9I50URa09iWx1qj7SfbqmIdXs4Qybr5OFHsa6eg3wz+pXydBLUGIsOzRs
 C803bdJd7LsfEM6iVjdoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FMjcJg0p3l0=:JBaVgbdupvnCvoblpnnjn2
 /WUOnDX9J07vO/X7eTOxjYYTzz1g2EHHp6L3aXGwn+KRTPc9QMca5DPZFbZwuoqezLIkZaYQr
 PWmK+cf6SaRv3wmwfkAubRz4+YK5ON3UA3Wzlfiav91Eyq04opYZvCobfSjLgp07Pzrpv7IG2
 8PuQON7FaC61TewSI8nhqyv6cPbsBYmPUkFJogX2s59f76AzOv5Fzampy+lJYMMySnUlOYjH2
 ortwA1BQU81HaxVb+XairpUonlwdUK5OfZsRAaL2unP6CEiLn5vRYzpRURfq00MZtnKPYtoh3
 0cbHnu85hOD8umrOGGCB1YDxk4+hhx5RN8u69SXoAKgcu7KIisgE4bWnVfM2qhH8TJI0oguyY
 DWojVBThotOspSSVJHEgjdlvSv4uj7cM6N0W1OSh0kRMJ/vn4AML5GpTpJFCwESwfotVRZRoS
 bfyDiclcSPTM0Gwc0OhwOw3zhD7e11W9WYlwU8lwdd3Ub3ZoCJz2W95dobF82rpOhIrRrtDJO
 6Da4n4EqBmT2GlL1bPpSV1bZ4Oq/vIMBfzXYc/O5Ojkbk/PnKWzbbDDvnxS+CLCy4bgMieZsf
 sQW26CqjR7K/foyMpPY2PkJPtLYe3bl1IrVjClqs/bdyV11C7Bc2W5zdn4UA6RgKOTJaS3wsW
 gFeisJiL2NS4V15BC68aq71JabcBJJ8YQ0OsFRhga9p1Bq6Ua36KP1IdXm1PDNN05+7tCjwun
 ClbbIKjU06E6dklwODaQQcSLCU6erLsWu1xWQgaWttI6A3Juuhi6TlfGunLVrtRmJKfcm5SYt
 F0hF1wUTFam1qUD62cxe29EA54XNMkAytdSsNzSJUkkEMwFLA5qnAjdINv+pML1J3R+6pApnh
 fbR6MsffFADwgZMQkniA6pngqWR0Syvmbun8AxWutYoyWOPjoUNx+ixYTqC5gSLU6tFXulxeu
 NG1kEW4QUWvV3ob1DKV6IAUvx/Ir0+vimK1qMtHQKmcn1YciROloDOad9AUqs4tpOhzLTt8jq
 UvgxxfoLv+CEdZ52SQ8kjEkKb4Gdry7QV5kuKDZrvqP4/CilXRs1Ezbp0+zReGZUb3nkejBz6
 GyvrW6beb59KXjgB4whfUk4EqK7V9W428dlXo6spAixsFTxgd+0nkUC/xiFtjZiMRspk4h5O3
 i1xCh83BTRCyFopAs/BFlbRtPRbPyBryl+ZI6OBfw7CFOfb3A8LxLR6AZZu54/OiySm01TouR
 P79uYqrVrYOPQyObB9yQw5dJ7YTdV6U/Vj9oIyDDPSkR56lKwCDCc0t9hzdQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_102818_968142_11650A4F 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-bluetooth@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKQW0gMTYuMTIuMTkgdW0gMTQ6MjUgc2NocmllYiBPbmTFmWVqIEppcm1hbjoK
PiBIZWxsbywKPgo+IE9uIFN1biwgT2N0IDIwLCAyMDE5IGF0IDExOjE3OjI4UE0gKzAyMDAsIFN0
ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+IEhpIE1hcmNlbCwKPj4gaGkgSm9oYW4sCj4+Cj4+IEFtIDA2
LjEwLjE5IHVtIDE3OjI4IHNjaHJpZWIgU3RlZmFuIFdhaHJlbjoKPj4+IFRoZSBSUGkgNCB1c2Vz
IHRoZSBoYXJkd2FyZSBoYW5kc2hha2UgbGluZXMgZm9yIENZVzQzNDU1LCBidXQgdGhlIGNoaXAK
Pj4+IGRvZXNuJ3QgcmVhY3QgdG8gSENJIHJlcXVlc3RzIGR1cmluZyBEVCBwcm9iZS4gVGhlIHJl
YXNvbiBpcyB0aGUgaW5wcm9wZXIKPj4+IGhhbmRsaW5nIG9mIHRoZSBSVFMgbGluZSBkdXJpbmcg
c3RhcnR1cC4gQWNjb3JkaW5nIHRvIHRoZSBzdGFydHVwCj4+PiBzaWduYWxpbmcgc2VxdWVuY2Ug
aW4gdGhlIENZVzQzNDU1IGRhdGFzaGVldCwgdGhlIGhvc3RzIFJUUyBsaW5lIG11c3QKPj4+IGJl
IGRyaXZlbiBhZnRlciBCVF9SRUdfT04gYW5kIEJUX0hPU1RfV0FLRS4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBTdGVmYW4gV2FocmVuIDx3YWhyZW5zdEBnbXgubmV0Pgo+Pj4gLS0tCj4+PiAgZHJp
dmVycy9ibHVldG9vdGgvaGNpX2JjbS5jIHwgMiArKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvaGNpX2Jj
bS5jIGIvZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbS5jCj4+PiBpbmRleCA3NjQ2NjM2Li4wZjcz
ZjZhIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbS5jCj4+PiArKysg
Yi9kcml2ZXJzL2JsdWV0b290aC9oY2lfYmNtLmMKPj4+IEBAIC00NDUsOSArNDQ1LDExIEBAIHN0
YXRpYyBpbnQgYmNtX29wZW4oc3RydWN0IGhjaV91YXJ0ICpodSkKPj4+Cj4+PiAgb3V0Ogo+Pj4g
IAlpZiAoYmNtLT5kZXYpIHsKPj4+ICsJCWhjaV91YXJ0X3NldF9mbG93X2NvbnRyb2woaHUsIHRy
dWUpOwo+Pj4gIAkJaHUtPmluaXRfc3BlZWQgPSBiY20tPmRldi0+aW5pdF9zcGVlZDsKPj4+ICAJ
CWh1LT5vcGVyX3NwZWVkID0gYmNtLT5kZXYtPm9wZXJfc3BlZWQ7Cj4+PiAgCQllcnIgPSBiY21f
Z3Bpb19zZXRfcG93ZXIoYmNtLT5kZXYsIHRydWUpOwo+Pj4gKwkJaGNpX3VhcnRfc2V0X2Zsb3df
Y29udHJvbChodSwgZmFsc2UpOwo+Pj4gIAkJaWYgKGVycikKPj4+ICAJCQlnb3RvIGVycl91bnNl
dF9odTsKPj4+ICAJfQo+Pj4gLS0KPj4+IDIuNy40Cj4+IHdvdWxkIGJlIG5pY2UgdG8gZ2V0IHNv
bWUgZmVlZGJhY2sgYWJvdXQgdGhpcy4KPiBJIHN0YXJ0ZWQgc2VlaW5nIGZhaWx1cmVzIG9uIE9y
YW5nZSBQaSAzIGluIDUuNS1yYzoKPgo+IFsgICAgMy44MzkxMzRdIEJsdWV0b290aDogaGNpMDog
Y29tbWFuZCAweGZjMTggdHggdGltZW91dAo+IFsgICAxMS45OTkxMzZdIEJsdWV0b290aDogaGNp
MDogQkNNOiBmYWlsZWQgdG8gd3JpdGUgdXBkYXRlIGJhdWRyYXRlICgtMTEwKQo+IFsgICAxMi4w
MDQ2MTNdIEJsdWV0b290aDogaGNpMDogRmFpbGVkIHRvIHNldCBiYXVkcmF0ZQo+IFsgICAxMi4x
MjMxODddIEJsdWV0b290aDogaGNpMDogQkNNOiBjaGlwIGlkIDEzMAo+IFsgICAxMi4xMjgzOThd
IEJsdWV0b290aDogaGNpMDogQkNNOiBmZWF0dXJlcyAweDBmCj4gWyAgIDEyLjE1NDY4Nl0gQmx1
ZXRvb3RoOiBoY2kwOiBCQ000MzQ1QzUKPiBbICAgMTIuMTU3MTY1XSBCbHVldG9vdGg6IGhjaTA6
IEJDTTQzNDVDNSAoMDAzLjAwNi4wMDYpIGJ1aWxkIDAwMDAKPiBbICAgMTUuMzQzNjg0XSBCbHVl
dG9vdGg6IGhjaTA6IEJDTTQzNDVDNSAoMDAzLjAwNi4wMDYpIGJ1aWxkIDAwMzgKPgo+IFN3aXRj
aCB0byBoaWdoZXIgYmF1ZHJhdGUgd29ya3MgYWdhaW4gYWZ0ZXIgcmV2ZXJ0aW5nIHRoaXMgcGF0
Y2guCgpzb3JyeSwgaSBkb24ndCBoYXZlIGFjY2VzcyB0byBhIE9yYW5nZSBQaSAzLgoKSSBsb29r
ZWQgYXQgYcKgIEFQNjI1NiBkYXRhc2hlZXQgWzFdLCBidXQgaSBjb3VsZG4ndCBmaW5kIGFueSBo
ZWxwZnVsCmluZm9ybWF0aW9uIGFib3V0IGZsb3cgY29udHJvbCBkdXJpbmcgcG93ZXIgdXAuCgpB
cmUgeW91IGFibGUgdG8gYW5hbHl6ZSB0aGlzIGlzc3VlIG1vcmUgZnVydGhlciBiZWZvcmUgd2Ug
cmV2ZXJ0IHRoaXMgcGF0Y2g/CgpJIHdvdWxkIGxpa2UgdG8ga25vdyBpZiB0aGlzIGlzIHNvbWUg
a2luZCBvZiB0aW1pbmcgaXNzdWUsIHNpbmNlIGluCnBhdGNoICJibHVldG9vdGg6IGhjaV9iY206
IEdpdmUgbW9yZSB0aW1lIHRvIGNvbWUgb3V0IG9mIHJlc2V0IiB5b3UKaW50cm9kdWNlZCBhIGh1
Z2UgcG93ZXIgb24gZGVsYXkuCgpNZWFud2hpbGUgaSB3aWxsIHBsYXkgd2l0aCBtb2RpZmljYXRp
b25zIG9mIG9yaWdpbmFsIHBhdGNoIG9uIHRoZQpSYXNwYmVycnkgUGkgNCBhbmQgY29tZSBiYWNr
IHRvIHlvdS4KClRoYW5rcwpTdGVmYW4KClsxXSAtCmh0dHA6Ly93d3cuc3BhcmtsYW4uY29tL3Ay
LXByb2R1Y3RzLWRldGFpbC5waHA/UEtleT00OTg0RlZ1a2pjcHlsemlmUWlNLVRHRkUtSUtYRC0t
QkN3ZjRQMTVLZnJVJkFQNjI1NgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
