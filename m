Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE46CC0EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xjri4MEHZkE4ivyjsmVB5+YsRTas385uWVmJiaOJwk=; b=KIOUJ0gTPsXeox
	P3XMsV6i+w9qZaA0ctMi6lkQ0fkGJRnsbWMTOI0tcv24i3Q+IOE/Prd5GKem4IOkkgfUyHMR+09eT
	ZEqlFVgxK5B45rmGp4y9GnnMK3wQcKZZA1zGlzcIlmcippFqqhlgpSu1L/nC8OZuQxxfWGxSLsd7B
	PdgeT717+l1I/Sz2NLLyQDgm2oP3ddrGyhWdAUMjCwvFJlInB0UUyFRIr/osr5osxr9RD/K7t4Aem
	IO7yDjhQGAH6T6A1OmRvdQFJxBGGhH0dMaxdlV8/eLEvDzDeufqr/ayBj8+lRUyuodKeLjkVHnAGB
	46jTUcP14njFpyZvi5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQcD-0003Jn-AG; Fri, 04 Oct 2019 16:39:37 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQc0-0003Id-98; Fri, 04 Oct 2019 16:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570207152;
 bh=3qY51AIDbh0D6yCJlWeGuCtssREDMvHYUAYtv8hxk2Q=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=d1ZQzp8oEHb5qeQGtCB0Nnx7YTR9xtE9kwzR3Rs5jkxGGF/Q16WaibQGHl0k9+wO5
 zPrL5BRFKhUKvjKa6dMrydOeWNn0a//4jWe1So2yFVnQJpOO++Us++3cQoe3lxDsB4
 siPsGX/IvPzGsGPbmJkmq7grRm0/eZXGnsf5Y9bw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.191.3.29]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MYvxn-1ibTzH00pP-00Vk1a; Fri, 04
 Oct 2019 18:39:12 +0200
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Robin Murphy <robin.murphy@arm.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <a5b7caab-ffde-30e0-88bc-53a53748701a@web.de>
Date: Fri, 4 Oct 2019 18:39:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:WDXMF7fUaHGooh/FbZ81ORhv2SFSl3PKXdEyI/BLdwRZsAjbggD
 8VTFxf353pFadfg+sHKcWdv5+RETJjI5q9jF4pdx5lcrnQv0QtpjAps5dFHtwBP9Ih05Znn
 sVL+FE/0rFaGbOU972rfTgvTZXw8xKiajaoscxXpD4vO9YYHhFdaRGdWkg+eGO47DIhf+9b
 BGRCq9LyxG+eF9Nhf0HzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j89oGVrDlDU=:ezMJXZgomRb8VO2z1FXus6
 lUrP5ck2RvSf/mJ+sYU21+PJdqM+tz+81kdT7Um8IpY1Nt5pYRwMfIgDltZf1vFX0cKJIpOos
 8nnLknq1eAbKfEg+48nonn/JBg3l9G0Dpkzt40CHJq94sf3EnvXHf4lma6EBcXwETYY2kziF/
 bYOIwIqC+wZCmUmG6X0wamlnUWKfqgPNi7uq8WHTLhOpEpqX/FHiyYQz39G7INrcgS+bt+T68
 H7oB2A0gwSSzCtgCkbk0jWSC2RYS5Hh8Zhr3Em6IKxZGHWVrqOwwLRHj8I/JSc12oERWj8NQB
 jCNwCrNTqLlbZKS8xMIDsUZGpxm0quyOY9YmteQRzZtpPqaEzZdavTw6ps8NpqsqsIU5FAlpw
 XaUPbwqrwcMjtgt0+dQyubG5dtmy/o2Wxf7/gKV0777H9w7P+n6hxxUBIc5ovqxQ+1i5uqvF7
 gDEdQ1SeCtHJHP00WRdYTzhs3ANXbvKRuiZ2gSRsWGQCKro9zYT20JPF6J9jT43coluS6dqI6
 EKGiRw/VeDUDRVfUjRsDybBGkg27P4HqAhOS+wY+pev5HRR3MHcn+bLImcRCfKpLmHs8P4ztc
 Nr8yA7/+IzcU0q1J/SNoux4N1tQMe2S2uXC+SJ4KBvo9W45bpJTZELIQoWACfBoHq1xIMV568
 bL6X//YpsT3wM0zJ9ChZrGJXhw/ZROB8QMKCddBiOSGRd7bDnIAsmuaIXpu4koMsGkAzcNiGr
 l07/7pLEM9MKfw6ZxJcV6K13sLb5n5W5cOoc5T51OXUHvxxDLYXnnxdyrizXm11WzgCn9QMAW
 A3eBmIJiHruGSCbEqnzmrTX4kkj1yVUiKu7dYWO5DE+8BdXTjHbtIGPf+fF3Tnsap7tBbiVSW
 JoijeUwuBoBstF/ARU7uYPTBBaynqo+HVKI7KY9RV/+g8LKMtpM6KMzhEgRnnktcJQbP7r4Rf
 voAHisdL43f6JdIsfaw40/4ZUJrJehD2nhugslrFwtq/nPBf/KLpp8s6M6k9Q70qhMdYbH5Ad
 yY4g1DJd8uGO1DpRjDmsT561bX9Bj/seIlNB7wIFlfnc8Gyb0bcmL7l5MJGXVoGLSnAqvi0rH
 QQO7xbTyOaBhsWZuXtBHu6Yn1ZU6QGcqghVXwg7fcmc6v8FzpZuC83JvPYca+iViKYXT68aTR
 W0tW58w5zw6pRz8TeTJqVqw4rlSzYS7dqctEJbTL/PaE51jmqYDdNlQAO4E8iLLOMqXhjWkWs
 b6+2LO3ldd7VTiG9kG++o4qkBkLwnGr6IpYP7tw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_093924_659867_10FF430E 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC4xMC4xOSAxNjoyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDA0LzEwLzIwMTkg
MDQ6MzksIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pgo+Pgo+PiBPbiAwNC4xMC4xOSAwNDoxMywgU2hh
d24gTGluIHdyb3RlOgo+Pj4gT24gMjAxOS8xMC80IDg6NTMsIFNvZXJlbiBNb2NoIHdyb3RlOgo+
Pj4+Cj4+Pj4KPj4+PiBPbiAwNC4xMC4xOSAwMjowMSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4+
PiBPbiAyMDE5LTEwLTAzIDEwOjUwIHBtLCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+Pj4+IEFjY29y
ZGluZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5OSBzZG1tYwo+Pj4+
Pj4gY29udHJvbGxlciBpcwo+Pj4+Pj4gY29ubmVjdGVkIHRvIGEgbWljcm9TRCAoVEYgY2FyZCkg
c2xvdCwgd2hpY2ggY2Fubm90IGJlIHN3aXRjaGVkIHRvCj4+Pj4+PiAxLjhWLgo+Pj4+Pgo+Pj4+
PiBSZWFsbHk/IEFGQUlDUyB0aGUgU0RNTUMwIHdpcmluZyBsb29rcyBwcmV0dHkgbXVjaCBpZGVu
dGljYWwgdG8gdGhlCj4+Pj4+IE5hbm9QQy1UNCBzY2hlbWF0aWMgKGl0J3MgdGhlIHNhbWUgcmVm
ZXJlbmNlIGRlc2lnbiwgYWZ0ZXIgYWxsKSwKPj4+Pj4gYW5kIEkKPj4+Pj4ga25vdyB0aGF0IGJv
YXJkIGNhbiBoYXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44dgo+Pj4+
PiBJL09zLAo+Pj4+PiBiZWNhdXNlIG1pbmUncyBkb2luZyBzbyByaWdodCBub3cuCj4+Pj4+Cj4+
Pj4+IFJvYmluLgo+Pj4+IE9LLCB0aGUgUm9ja1BybzY0IGRvZXMgbm90IGFsbG93IGEgY2FyZCBy
ZXNldCAocG93ZXIgY3ljbGUpIHNpbmNlCj4+Pj4gVkNDM1YwX1NEIGlzIGRpcmVjdGx5IGNvbm5l
Y3RlZCB0byBWQ0MzVjNfU1lTICh2aWEgUjg5NTU1KSwgdGhlCj4+Pj4gU0RNTUMwX1BXSF9IIHNp
Z25hbCBpcyBub3QgY29ubmVjdGVkLiBTbyB0aGUgY2FyZCBmYWlscyB0byBpZGVudGlmeQo+Pj4+
IGl0c2VsZiBhZnRlciBzdXNwZW5kIG9yIHJlYm9vdCB3aGVuIHN3aXRjaGVkIHRvIDEuOFYgb3Bl
cmF0aW9uLgo+Cj4gQWgsIHRoYW5rcyBmb3IgY2xhcmlmeWluZyAtIEkgZGlkIG92ZXJsb29rIHRo
ZSBzdWJ0bGV0eSB0aGF0IFUxMiBhbmQKPiBmcmllbmRzIGhhdmUgIk5DIiBhcyBhbHRlcm5hdGl2
ZSBwYXJ0IG51bWJlcnMsIGV2ZW4gdGhvdWdoIHRoZXkgYXJlbid0Cj4gYWN0dWFsbHkgbWFya2Vk
IGFzIEROUC4gU28gaXQncyBzdGlsbCBub3Qgc28gbXVjaCAiY2Fubm90IGJlIHN3aXRjaGVkIgo+
IGFzICJzd2l0Y2hpbmcgY2FuIGxlYWQgdG8gb3RoZXIgcHJvYmxlbXMiLgpBZ3JlZWQuIEkgc2hv
dWxkIGhhdmUgYmVlbiBtb3JlIHByZWNpc2UgYWJvdXQgdGhpcyBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UuCgpTb2VyZW4KPgo+Pj4KPj4+IEkgYmVsaWV2ZSB3ZSBhZGRyZXNzZWQgdGhpcyBpc3N1ZSBs
b25nIHRpbWUgYWdvLCBwbGVhc2UgY2hlY2s6Cj4+Pgo+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9
NmExMWZjNDdmMTc1YzhkODcwMThlODljYjU4ZTJkMzZjNjY1MzRjYgo+Pj4KPj4+Cj4+IFRoYW5r
cyBmb3IgdGhlIHBvaW50ZXIuCj4+IEluIHRoaXMgY2FzZSBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBm
b2xsb3dpbmcgcGF0Y2ggaW5zdGVhZDoKPj4KPj4gLS0tIHJrMzM5OS1yb2NrcHJvNjQuZHRzLmJh
ayDCoMKgIDIwMTktMTAtMDMgMjI6MTQ6MDAuMDY3NzQ1Nzk5ICswMjAwCj4+ICsrKyByazMzOTkt
cm9ja3BybzY0LmR0c8KgwqDCoCAyMDE5LTEwLTA0IDAwOjAyOjUwLjA0Nzg5MjM2NiArMDIwMAo+
PiBAQCAtNjE5LDYgKzYxOSw4IEBACj4+IMKgwqDCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAw
MDAwMDA+Owo+PiDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IMKgwqDC
oMKgwqAgcGluY3RybC0wID0gPCZzZG1tY19jbGsgJnNkbW1jX2NtZCAmc2RtbWNfYnVzND47Cj4+
ICvCoMKgwqAgc2QtdWhzLXNkcjEwNDsKPj4gK8KgwqDCoCB2cW1tYy1zdXBwbHkgPSA8JnZjY19z
ZGlvPjsKPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+IMKgwqB9Owo+PiDCoCBXaGVu
IEkgZG8gc28sIHRoZSBzZCBjYXJkIGlzIGRldGVjdGVkIGFzIFNEUjEwNCwgYnV0IGEgcmVib290
IGhhbmdzOgo+Pgo+PiBCb290MTogMjAxOC0wNi0yNiwgdmVyc2lvbjogMS4xNAo+PiBDUFVJZCA9
IDB4MAo+PiBDaGlwVHlwZSA9IDB4MTAsIDI4Ngo+PiBTcGlfQ2hpcElkID0gYzg0MDE4Cj4+IG5v
IGZpbmQgcmtwYXJ0aXRpb24KPj4gU3BpQm9vdEluaXQ6ZmZmZmZmZmYKPj4gbW1jOiBFUlJPUjog
U0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDAKPj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQg
bm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxlY3QhCj4+IGVtbWMgcmVpbml0Cj4+IG1tYzogRVJS
T1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwCj4+IG1tYzogRVJST1I6IENhcmQg
ZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+PiBlbW1jIHJlaW5pdAo+PiBtbWM6
IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAwMAo+PiBtbWM6IEVSUk9SOiBD
YXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCEKPj4gU2RtbWNJbml0PTIgMQo+
PiBtbWMwOmNtZDUsMzIKPj4gbW1jMDpjbWQ3LDMyCj4+IG1tYzA6Y21kNSwzMgo+PiBtbWMwOmNt
ZDcsMzIKPj4gbW1jMDpjbWQ1LDMyCj4+IG1tYzA6Y21kNywzMgo+PiBTZG1tY0luaXQ9MCAxCj4+
Cj4+IFNvIEkgZ3Vlc3MgSSBzaG91bGQgdXNlIGEgZGlmZmVyZW50IG1pbmlsb2FkZXIgZm9yIHRo
aXMgcmVib290IHRvIHdvcmshPwo+PiBPciB3aGF0IGVsc2UgY291bGQgYmUgd3JvbmcgaGVyZT8K
Pgo+IEhtbSwgSSBndWVzcyB0aGlzIGlzICJ0aGUgVGlua2VyYm9hcmQgcHJvYmxlbSIgYWdhaW4g
LSB0aGUgcGF0Y2ggYWJvdmUKPiB3b3VsZCBiZSBPSyBpZiB3ZSBjb3VsZCBnZXQgYXMgZmFyIGFz
IHRoZSBrZXJuZWwsIGJ1dCBjYW4ndCBoZWxwIGlmCj4gdGhlIG9mZmVuZGluZyBjYXJkIGlzIGl0
c2VsZiB0aGUgYm9vdCBtZWRpdW0uIFRoZXJlIHdhcyBhIHByb3Bvc2FsIGhlcmU6Cj4KPiBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODE3MjE3Lwo+Cj4gYWx0aG91Z2ggSSdt
IG5vdCBzdXJlIHdoYXQgaWYgYW55IHByb2dyZXNzIGhhcyBiZWVuIG1hZGUgc2luY2UgdGhlbi4K
Pgo+IFJvYmluLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
