Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAD71F7597
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lZNlxx+923OlA6SKxHGifbR4dV9zOvrRMJaGhMcMWN8=; b=Y8DfRcOsXC0pbhmNk6MTcoCW+
	wBouwK81BHhQYa2j6I2KY/H4WJk07rk6lSKiy/vdCVJ6YjJ9KFu047Breuja9KM2ezBre3MA8PMi4
	zGzm4nO48Ih/0lQgnt1Tczh9aN2U7o7egTIPf68zOBhAf+6QHFjdwjwTOZY+tO6XWgWByLNe891Z6
	HiNi90xB0nxnntHwm8B4Gtefd6cv6w6lea82cjJRi4RP0tT8LfrLCOZ+6LdKJYXKAjR8LUY07v5c7
	FwOfcB6KpW8EFJF/Fx2c/OdAdI3DCHCzKp5JSIT5wEn0gz24dNdgu0OjGbKbh891W67LKQzwvsVRH
	MuAEPYWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfWq-0005Zm-Fy; Fri, 12 Jun 2020 08:59:12 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfWe-0005Yd-RK; Fri, 12 Jun 2020 08:59:05 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 6DEDE39D;
 Fri, 12 Jun 2020 16:58:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25386T140143252899584S1591952327081440_; 
 Fri, 12 Jun 2020 16:58:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <88e6e92c3fdead2ba859d612ff7a405a>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: papadakospan@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 0/13] Patches to improve transfer efficiency for
 Rockchip SoCs.
To: Peter Geis <pgwipeout@gmail.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
 <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ@mail.gmail.com>
 <CAMdYzYqRTbePLKZ6q39Ao3sgLU0xUvrLmwYTVU3feEb4ob6FuQ@mail.gmail.com>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <2b12edc3-bd89-e103-f6cb-cdd47fcabb49@rock-chips.com>
Date: Fri, 12 Jun 2020 16:58:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYqRTbePLKZ6q39Ao3sgLU0xUvrLmwYTVU3feEb4ob6FuQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_015901_291069_D105DF30 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.202 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Carlos de Paula <me@carlosedp.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, dmaengine@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCgpUaGFua3MgZm9yIHRlc3RpbmchIGJ1dCwgYXMgSSBrbm93LCBHTUFDIGRvZXMg
bm90IHVzZSB0aGUgZ2VuZXJhbCAKZG1hKHBsMzMwKSBmb3IgZGF0YSB0cmFuc2ZlciwKCnNvLCB0
aGVzZSBwYXRjaHMgc2hvdWxkIG5vdCBiZSBoZWxwZnVsIGZvciB5b3VyIGNhc2UuCgrlnKggMjAy
MC82LzEyIDk6MTUsIFBldGVyIEdlaXMg5YaZ6YGTOgo+IE9uIFRodSwgSnVuIDExLCAyMDIwIGF0
IDk6MDYgUE0gUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+IEdvb2Qg
RXZlbmluZywKPj4KPj4gSSBhbSBjdXJyZW50bHkgdGVzdGluZyB0aGlzIG9uIHRoZSByazMzOTkt
cm9ja3BybzY0LCBhbmQgaXQgYXBwZWFycyB0bwo+PiBmdWxseSBmaXggdGhlIGdtYWMgcHJvYmxl
bSB3aXRob3V0IHVzaW5nIHR4cGJsLgo+PiBQQ0llIGFsc28gc2VlbXMgdG8gYmUgbW9yZSBzdGFi
bGUgYXQgaGlnaCBsb2FkLgo+PiBJIG5lZWQgdG8gY29uZHVjdCBsb25nIHRlcm0gdGVzdGluZywg
YnV0IGl0IHNlZW1zIHRvIGJlIGRvaW5nIHZlcnkgd2VsbC4KPiBCZWxheSB0aGF0LCBpdCBkb2Vz
IG1ha2UgaXQgaGFyZGVyIHRvIHRyaWdnZXIsIGJ1dCB0aGUgaXNzdWUgc3RpbGwKPiByZW1haW5z
IG9uIHRoZSByazMzOTkuCj4KPj4gVW5mb3J0dW5hdGVseSBpdCBkb2Vzbid0IGZpeCB0aGUgcmsz
MzI4IGdtYWMgY29udHJvbGxlci4KPj4KPj4gVGVzdGVkLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVv
dXRAZ21haWwuY29tPgo+Pgo+PiBPbiBNb24sIEp1biA4LCAyMDIwIGF0IDk6MTUgUE0gU3VnYXIg
WmhhbmcgPHN1Z2FyLnpoYW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4+Cj4+Pgo+Pj4gQ2hh
bmdlcyBpbiB2MjoKPj4+IC0gZml4IEZBVEFMIEVSUk9SOiBVbmFibGUgdG8gcGFyc2UgaW5wdXQg
dHJlZQo+Pj4KPj4+IFN1Z2FyIFpoYW5nICgxMyk6Cj4+PiAgICBkbWFlbmdpbmU6IHBsMzMwOiBS
ZW1vdmUgdGhlIGJ1cnN0IGxpbWl0IGZvciBxdWlyayAnTk8tRkxVU0hQJwo+Pj4gICAgZG1hZW5n
aW5lOiBwbDMzMDogQWRkIHF1aXJrICdhcm0scGwzMzAtcGVyaXBoLWJ1cnN0Jwo+Pj4gICAgZHQt
YmluZGluZ3M6IGRtYTogcGwzMzA6IERvY3VtZW50IHRoZSBxdWlyayAnYXJtLHBsMzMwLXBlcmlw
aC1idXJzdCcKPj4+ICAgIEFSTTogZHRzOiByazMwMzY6IEFkZCAnYXJtLHBsMzMwLXBlcmlwaC1i
dXJzdCcgZm9yIGRtYWMKPj4+ICAgIEFSTTogZHRzOiByazMyMng6IEFkZCAnYXJtLHBsMzMwLXBl
cmlwaC1idXJzdCcgZm9yIGRtYWMKPj4+ICAgIEFSTTogZHRzOiByazMyODg6IEFkZCAnYXJtLHBs
MzMwLXBlcmlwaC1idXJzdCcgZm9yIGRtYWMKPj4+ICAgIEFSTTogZHRzOiByazN4eHg6IEFkZCAn
YXJtLHBsMzMwLXBlcmlwaC1idXJzdCcgZm9yIGRtYWMKPj4+ICAgIEFSTTogZHRzOiBydjExMDg6
IEFkZCAnYXJtLHBsMzMwLXBlcmlwaC1idXJzdCcgZm9yIGRtYWMKPj4+ICAgIGFybTY0OiBkdHM6
IHB4MzA6IEFkZCAnYXJtLHBsMzMwLXBlcmlwaC1idXJzdCcgZm9yIGRtYWMKPj4+ICAgIGFybTY0
OiBkdHM6IHJrMzMwODogQWRkICdhcm0scGwzMzAtcGVyaXBoLWJ1cnN0JyBmb3IgZG1hYwo+Pj4g
ICAgYXJtNjQ6IGR0czogcmszMzI4OiBBZGQgJ2FybSxwbDMzMC1wZXJpcGgtYnVyc3QnIGZvciBk
bWFjCj4+PiAgICBhcm02NDogZHRzOiByazMzNjg6IEFkZCAnYXJtLHBsMzMwLXBlcmlwaC1idXJz
dCcgZm9yIGRtYWMKPj4+ICAgIGFybTY0OiBkdHM6IHJrMzM5OTogQWRkICdhcm0scGwzMzAtcGVy
aXBoLWJ1cnN0JyBmb3IgZG1hYwo+Pj4KPj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1h
L2FybS1wbDMzMC50eHQgICAgICAgICAgfCAgMSArCj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3Jr
MzAzNi5kdHNpICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+Pj4gICBhcmNoL2FybS9ib290
L2R0cy9yazMyMnguZHRzaSAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKPj4+ICAgYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LmR0c2kgICAgICAgICAgICAgICAgICAgICAgfCAgMyArKwo+Pj4g
ICBhcmNoL2FybS9ib290L2R0cy9yazN4eHguZHRzaSAgICAgICAgICAgICAgICAgICAgICB8ICAz
ICsrCj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3J2MTEwOC5kdHNpICAgICAgICAgICAgICAgICAg
ICAgIHwgIDEgKwo+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSAg
ICAgICAgICAgICB8ICAxICsKPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
MDguZHRzaSAgICAgICAgICAgfCAgMiArCj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzI4LmR0c2kgICAgICAgICAgIHwgIDEgKwo+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM2OC5kdHNpICAgICAgICAgICB8ICAyICsKPj4+ICAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSAgICAgICAgICAgfCAgMiArCj4+PiAgIGRyaXZl
cnMvZG1hL3BsMzMwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNDQgKysrKysr
KysrKysrKysrLS0tLS0tLQo+Pj4gICAxMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCsp
LCAxMyBkZWxldGlvbnMoLSkKPj4+Cj4+PiAtLQo+Pj4gMi43LjQKPj4+Cj4+Pgo+Pj4KPj4+Cj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCj4KLS0gCkJlc3QgUmVnYXJkcyEK5byg5a2m5bm/L1N1Z2FyCuemj+W3nueR
nuiKr+W+rueUteWtkOiCoeS7veaciemZkOWFrOWPuApGdXpob3UgUm9ja2NoaXAgRWxlY3Ryb25p
Y3MgQ28uTHRkCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
