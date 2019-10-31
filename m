Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AF4EB070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4tGaAJjqfqePdYyJ8AOoHYfKIF2mFXKMvQTBc+vTu/E=; b=lJIZiozfG+T9+8ljF7uPNvo39
	wQVvQKm+RYxgrFJYdoeiIyID/wIokKmr3dKV6/4IL3rkAA2Ffj+tgpay6RkX+c/0JVQve1gFJtCkg
	6AUyT9NoMRiWXVN/NN2B2uFYDtCmLFXABUf9CvCDKrdTE1ssC2z+TEDI+U+I+XQ4Y0yM44NRDFABN
	NtCI65ASVbqHe2aJ0AXvfJZfgJfEAEnDHyIUWmuYpk3WcAs8bIYyEQKOiLdQYeQKye99NCKG65mte
	pnM0BIWE7wEUlLsvBzmihACxD+sCQ+EdU3BHhBmAmJmTC1/+EM/o/1f1VIrp0PTTqcNl+8Fi27xiN
	e4Lki/x5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9kp-0003BT-Qf; Thu, 31 Oct 2019 12:40:43 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9kg-0003AY-Ur; Thu, 31 Oct 2019 12:40:36 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 31 Oct
 2019 20:40:44 +0800
Subject: Re: [PATCH v3 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Rob Herring <robh@kernel.org>
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-3-git-send-email-xingyu.chen@amlogic.com>
 <20191025203030.GA28391@bogus>
 <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
 <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
 <2808a8c9-a835-2706-f300-0deb924d3686@amlogic.com>
 <CAL_JsqKwmF1Ygbjiteq42t5xaG75vG-=hZYq=S-8e=s0m2FiWA@mail.gmail.com>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <8a663e01-9d6e-cced-cb97-8e793006f0c6@amlogic.com>
Date: Thu, 31 Oct 2019 20:40:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKwmF1Ygbjiteq42t5xaG75vG-=hZYq=S-8e=s0m2FiWA@mail.gmail.com>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_054034_993926_4BDD4560 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jian Hu <jian.hu@amlogic.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFJvYgoKT24gMjAxOS8xMC8zMCAyMTo0MSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2Vk
LCBPY3QgMzAsIDIwMTkgYXQgNzo1OSBBTSBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dp
Yy5jb20+IHdyb3RlOgo+Pgo+PiBIaSxSb2IKPj4KPj4gT24gMjAxOS8xMC8zMCA0OjUxLCBSb2Ig
SGVycmluZyB3cm90ZToKPj4+IE9uIE1vbiwgT2N0IDI4LCAyMDE5IGF0IDM6MzUgQU0gWGluZ3l1
IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpLCBSb2IK
Pj4+Pgo+Pj4+IE9uIDIwMTkvMTAvMjYgNDozMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+Pj4+IE9u
IEZyaSwgT2N0IDI1LCAyMDE5IGF0IDAyOjEzOjAyUE0gKzA4MDAsIFhpbmd5dSBDaGVuIHdyb3Rl
Ogo+Pj4+Pj4gVGhlIGJpbmRpbmcgdGFyZ2V0cyB0aGUgTWVzb24tQS9DIHNlcmllcyBjb21wYXRp
YmxlIFNvQ3MsIGluIHdoaWNoIHRoZQo+Pj4+Pj4gd2F0Y2hkb2cgcmVnaXN0ZXJzIGFyZSBpbiBz
ZWN1cmUgd29ybGQuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWGluZ3l1IENoZW4gPHhp
bmd5dS5jaGVuQGFtbG9naWMuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiAgICAgLi4uL2JpbmRpbmdz
L3dhdGNoZG9nL2FtbG9naWMsbWVzb24tc2VjLXdkdC55YW1sICAgfCAzNCArKysrKysrKysrKysr
KysrKysrKysrCj4+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKPj4+
Pj4+ICAgICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3dhdGNoZG9nL2FtbG9naWMsbWVzb24tc2VjLXdkdC55YW1sCj4+Pj4+Pgo+Pj4+Pj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9hbWxv
Z2ljLG1lc29uLXNlYy13ZHQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbAo+Pj4+Pj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPj4+Pj4+IGluZGV4IDAwMDAwMDAwLi4wYmJjODA3Cj4+Pj4+PiAtLS0gL2Rldi9u
dWxsCj4+Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hk
b2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwKPj4+Pj4+IEBAIC0wLDAgKzEsMzQgQEAKPj4+
Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+Pj4+Pj4g
KyMgQ29weXJpZ2h0IChjKSAyMDE5IEFtbG9naWMsIEluYwo+Pj4+Pj4gKyVZQU1MIDEuMgo+Pj4+
Pj4gKy0tLQo+Pj4+Pj4gKyRpZDogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Bvd2Vy
L2FtbG9naWMsbWVzb24tc2VjLXdkdC55YW1sIyIKPj4+Pj4+ICskc2NoZW1hOiAiaHR0cDovL2Rl
dmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjIgo+Pj4+Pj4gKwo+Pj4+Pj4gK3Rp
dGxlOiBBbWxvZ2ljIE1lc29uIFNlY3VyZSBXYXRjaGRvZyBUaW1lcgo+Pj4+Pj4gKwo+Pj4+Pj4g
K21haW50YWluZXJzOgo+Pj4+Pj4gKyAgLSBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dp
Yy5jb20+Cj4+Pj4+PiArCj4+Pj4+PiArZGVzY3JpcHRpb246IHwrCj4+Pj4+PiArICBTZWN1cmUg
V2F0Y2hkb2cgVGltZXIgdXNlZCBpbiBNZXNvbi1BL0Mgc2VyaWVzIENvbXBhdGlibGUgU29Dcwo+
Pj4+Pj4gKwo+Pj4+Pj4gK3Byb3BlcnRpZXM6Cj4+Pj4+PiArICBjb21wYXRpYmxlOgo+Pj4+Pj4g
KyAgICBlbnVtOgo+Pj4+Pj4gKyAgICAgIC0gYW1sb2dpYyxtZXNvbi1zZWMtd2R0Cj4+Pj4+Cj4+
Pj4+IElmIHRoZXJlIGFyZSBubyBvdGhlciBwcm9wZXJ0aWVzLCB0aGVuIHlvdSBkb24ndCBuZWVk
IHRoaXMuIEp1c3QgaGF2ZQo+Pj4+PiB0aGUgc2VjdXJlIGZpcm13YXJlIGRyaXZlciBpbnN0YW50
aWF0ZSB0aGUgd2F0Y2hkb2cuCj4+Pj4gSSdhbSB2ZXJ5IHNvcnJ5IGkgZG9uJ3QgdW5kZXJzdGFu
ZCBob3cgdG8gaW5pdGlhbGl6ZSB0aGUgd2F0Y2hkb2cgZHJpdmVyCj4+Pj4gaWYgdGhlIGNvbXBh
dGlibGUgcHJvcGVydHkgaXMgcmVtb3ZlZCwgQ291bGQgeW91IGdpdmUgbWUgbW9yZQo+Pj4+IHN1
Z2dlc3Rpb25zIG9yIGV4YW1wbGVzIO+8nyBUaGFuayB5b3UgdmVyeSBtdWNoLgo+Pj4KPj4+IHBs
YXRmb3JtX2RldmljZV9yZWdpc3Rlcl9zaW1wbGUoKSBmcm9tIHRoZSBzZWN1cmUgZmlybXdhcmUg
ZHJpdmVyLgo+PiBUaGFua3MgZm9yIHlvdXIgaGVscC4gVGhlIGRldmljZSBub2RlIG9mIHdkdCBs
b29rcyB1c2VsZXNzIGlmIEkgdXNlIHRoaXMKPj4gZnVuY3Rpb24gdG8gcmVnaXN0ZXIgZGV2aWNl
LiBpZiBzbywgaG93IHNob3VsZCBJIGdldCB0aGUgcG9pbnRlciB0bwo+PiBzZWN1cmUtbW9uaXRv
ciBpbiB3ZHQgZHJpdmVyID8gb3Igc2hvdWxkIEkgdXNlIGRpcmVjdGx5IGFybV9zbWNjYyB0bwo+
PiBhY2Nlc3MgdGhlIHNlY2Z3ID8KPiAKPiBZb3UgY2FuIHVzZSBvZl9maW5kX2NvbXBhdGlibGVf
bm9kZSgpLiBUaGVyZSBzaG91bGQgb25seSBiZSBvbmUgZmlybXdhcmUgbm9kZS4KVGhhbmtzIGZv
ciB5b3VyIGFuc3dlci4KCkkgc2VlbSB0byBtaXNzIHNvbWV0aGluZyBhYm91dCByZWdpc3RyYXRp
b24gb2Ygd2F0Y2hkb2cgZGV2aWNlLiBUaGUgCnNlY3VyZSB3YXRjaGRvZyBkcml2ZXIgaXMgdXNl
ZCBvbmx5IHRvIEExL0MxIGNvbXBhdGlibGUgU29DcywgYnV0IGlzIG5vdApzdXBwb3J0IGZvciBw
cmV2aW91cyBTb0NzIChFZzogZ3hsIGF4ZykuCgpJIGhhdmUgdG8gdGhpbmsgYWJvdXQgcGxhdGZv
cm0gZGlmZmVyZW5jZSBJZiBJIHVzZSB0aGUgCnBsYXRmb3JtX2RldmljZV9yZWdpc3Rlcl9zaW1w
bGUoKSB0byByZWdpc3RlciB0aGUgd2R0IGRldmljZSBpbiBzZWN1cmUKZncgZHJpdmVyLCBiZWNh
dXNlIGZ3IGRyaXZlciBpcyBjb21wYXRpYmxlIHdpdGggYWxsIGtub3duIFNvQ3MsIGJ1dCB0aGUg
CnNlY3VyZSB3ZHQgZHJpdmVyIGlzIG9ubHkgY29tcGF0aWJsZSB3aXRoIHNvbWUgU29Dcy4gSW4g
b3RoZXIKd29yZHMsIHRoZSByZWdpc3RlcmVkIHdkdCBkZXZpY2UgaXMgdXNlbGVzcyBmb3IgZ3hs
IG9yIGF4Zy4KClRoZXJlIGlzIG5vIHN1Y2ggcHJvYmxlbSBJZiBJIHVzZSB0aGUgRFQgdG8gZGVz
Y3JpYmUgdGhlIHdkdCBkZXZpY2UuCgo+IAo+IFJvYgo+IAo+IC4KPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
