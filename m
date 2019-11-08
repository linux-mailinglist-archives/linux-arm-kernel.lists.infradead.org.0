Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0D2F4B8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VFGe0jgf07kv234AIq3NmwNY8pn9pTo+vvx+HJPEaV0=; b=czIDOKy5zf80UF
	D6aPU8A1/Vndc1lqVg39xDGEh1aHghl4upSkTL9FSrQ8qC0qgEzEw18Kr2G1FHr+3ZEuwAmqNSFDR
	+OJp2/dTXM+LAoGpbMa1Cne7wZzaSNHBvzDttrlKPE19OyoZy+L00f4v/HF6X3DyqXZB9GBndrzpu
	5Rz7sD3fmlaHfPCoRvRUojTSAdS9GzJNCQo5KTQewUwomApU0S/7x9rYothm9JOmSH08l6Y9RV6FW
	S6wJptO0ZcCr/+zbdOwCcSV7A1USR1vjbH3LTe4sA1dipAODY81YT53dJDYxvGuF9k2feoEcziZ3l
	9pWnxYONLPwhkKL7WJZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3KQ-0008Og-Q2; Fri, 08 Nov 2019 12:25:26 +0000
Received: from m12-14.163.com ([220.181.12.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3KI-00079H-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Mime-Version:Message-ID; bh=sXQMq
 3Mqv1FBKPWUPLWRvdfBQohYfVcpdQ2VLUApC3A=; b=EKxBWMQkXqRLBW+ET0XpU
 ewCrcYcB3V+EJZOeedsbfJAZSzOn8r72vxHkPZYwx4Uu3M+Za60fKkbiCUf6mVa2
 rzhNBT4YJCzRTPsp0K84CoZq14D/bW9AnolowlrADuEUiaKxTDUXQDdfAzxEEmY8
 bLEO64igE16Sq3neVIwSzU=
Received: from SKY-20180422ZRB (unknown [117.36.117.81])
 by smtp10 (Coremail) with SMTP id DsCowADXbtOWXsVdh_N6CA--.56297S2;
 Fri, 08 Nov 2019 20:24:55 +0800 (CST)
Date: Fri, 8 Nov 2019 20:25:41 +0800
From: "sxauwsk@163.com" <sxauwsk@163.com>
To: "Shubhrajyoti Datta" <shubhrajyoti.datta@gmail.com>
Subject: Re: Re: [PATCH v2] i2c: cadence: try reset when master receive
 arbitration lost
References: <20190219012447.5900-1-sxauwsk@163.com>, 
 <CAKfKVtEwHcydp=+hNhG91h3qbMoYOPq7jEYjbuAVrWXT53DC3Q@mail.gmail.com>, 
 <2019110516474778997625@163.com>, 
 <CAKfKVtH8OvA9Hku8V2CxRkX8hiouLzsEJTTDQWgBtQF8PGXyBQ@mail.gmail.com>
X-Priority: 3
X-GUID: B69C82CD-C26C-4FA3-8703-82AD1DB2BEFE
X-Has-Attach: no
X-Mailer: Foxmail 7.2.14.406[cn]
Mime-Version: 1.0
Message-ID: <201911082025396282138@163.com>
X-CM-TRANSID: DsCowADXbtOWXsVdh_N6CA--.56297S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ary7KF45XFW3CF1fKrW7urg_yoW8CFy3pa
 y8Ja4fKF4DJF1SyrsF9F1v9FWjg3yxGF98Gr15Jw18uas0kryjyFy2kFZ8uFyxGrW7Aws0
 vr4vvwn2gas8ZaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jeoGQUUUUU=
X-Originating-IP: [117.36.117.81]
X-CM-SenderInfo: 5v0d34lvn6il2tof0z/xtbBZBdnJlQHHiI53AAAs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_042518_611836_EFC97844 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [220.181.12.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sxauwsk[at]163.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [220.181.12.14 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PkhpIFNoaWthaSwKPgo+T24gVHVlLCBOb3YgNSwgMjAxOSBhdCAyOjE4IFBNIHN4YXV3c2tAMTYz
LmNvbSA8c3hhdXdza0AxNjMuY29tPiB3cm90ZToKPj4KPj4gPkhpIFNoaWthaSwKPj4gPgo+PiA+
T24gVHVlLCBGZWIgMTksIDIwMTkgYXQgODoxOSBBTSBTaGlrYWkgV2FuZyA8c3hhdXdza0AxNjMu
Y29tPiB3cm90ZToKPj4gPj4KPj4gPj4gV2hlbiB0aGUgYWRhcHRlciByZWNlaXZlIGFyYml0cmF0
aW9uIGxvc3QgZXJyb3IgaW50ZXJydXB0cywKPj4gPj4gY2Ruc19pMmNfbWFzdGVyX3hmZXIgcmV0
dXJuIHRvIHRoZSBjYWxsZXIgZGlyZWN0bHkgaW5zdGVhZCBvZiByZXNldHRpbmcKPj4gPj4gdGhl
IGFkYXB0ZXIgd2hpY2ggcmVzdWx0ZWQgaW4gdGhlIGFkYXB0ZXIgYmVpbmcgb3V0IG9mIGNvbnRy
b2wuCj4+ID4+Cj4+ID4+IFNvIHdoZW4gZHJpdmVyIGRldGVjdCBlcnJfc3RhdHVzIHN1Y2ggYXMg
YXJiaXRyYXRpb24gbG9zdCwKPj4gPj4gdGhlbiB0cnkgdG8gcmVwYWlyIGFuZCBmaXggaXQuCj4+
ID4+Cj4+ID5JIGFtIG1pc3NpbmcgdGhlIGlzc3VlIHRoYXQgeW91IGFyZSBmYWNpbmcuCj4+ID5Z
b3UgYXJlIGhhdmluZyBhIG11bHRpbWFzdGVyIHNjZW5hcmlvIGFuZCBnZXR0aW5nIGFyYml0cmF0
aW9uIGxvc3QuCj4+ID4KPj4gPnRoZSBjdXJyZW50IGNvZGUgd291bGQgYXR0ZW1wdCBhIHJldHJ5
IGRpZCB0aGF0IGxlYWQgdG8gYW55IGlzc3Vlcz8KPj4gPgo+PiA+Q2FuIHlvdSBleHBsYWluIHRo
ZSBpc3N1ZSB0aGF0IHlvdSBhcmUgZmFjaW5nPwo+Pgo+PiBPZiBjb3VyY2UswqAgVGhlIGZvbGxv
d2luZyBkZXNjcmliZSBteSBzaXR1YXRpb24uCj4+Cj4+IEluIG15IHByb2R1Y3QswqAgVG91Y2hz
Y3JlZW4gY29ubmVjdCB0byB6eW5xLTcwMDAgWEM3WjAxMCBieSBpMmMgYnVzKCBKdXN0IGNvbm5l
Y3Qgb25seSBvbmUgaTJjLWRldmljZSBvZiB0b3VjaHNjcmVlbiksCj4+IHdoZW4gdXNlciB0YXAg
VG91Y2hzY3JlZW4sIFRvdWNoc2NyZWVuIGludGVycnVwdCBzZW5kIHRvIENQVSBhbmQgbm90aWZ5
ZWQgaTJjLWRyaXZlciB0byBvYnRhaW4gbG9jYXRpb24gZGF0YSBieSBpMmMtYnVzLAo+Cj5TbyBp
dCBpcyBzaW5nbGUgbWFzdGVyIHNpbmdsZSBzbGF2ZS4KPj4KPj4gd2hlbiBUYXAgdGhlIHNjcmVl
biBmcmVxdWVudGx5LMKgIHNvbWV0aW1lcyBDUFUgZ2V0IGludGVycnVwdCBmcm9tIHRvdWNoc2Ny
ZWVuIGFuZCB0cnkgdG8gb2J0YWluIGRhdGEswqAgdGhlbiBkZXRlY3QgYXJiaXRyYXRpb24gbG9z
dCwKPnRoZSBhcmJpdHJhdGlvbiBsb3N0IGlzIHN1cnByaXNpbmcgaW4gbm9uLW11bHRpbWFzdGVy
IHNjZW5hcmlvLgo+SXMgdGhlcmUgYW55IG90aGVyIG1hc3RlciBpbiB0aGUgY29uZmlndXJhdGlv
biB0aGF0IHdlIG1heSBub3QgYmUgdHJpZ2dlcmluZy4KPk9yIGNhbsKgIHlvdSBwcm9iZSB0aGUg
bGluZXM/Cj4KPj4gQWx0aG91Z2ggaTJjLWRyaXZlciB0cnkgdGhyZWUgdGltZXMswqAgaXQncyB1
c2VsZXNzLgo+Cj5Zb3UgZ2V0IGJ1cyBidXN5PyB3aGF0IGlzIHRoZSBpc3N1ZS4KPj4KPj4gQWN0
dWFsbHkgaTJjIGNsb2NrLWxpbmUgYW5kIGRhdGEtbGluZSBrZWVwIGhpZ2gsIHRoYXQgbWVhbiBp
MmMgYnVzIGZyZWUuCj4+IE9uY2UgdGhpcyBzaXR1YXRpb24gb2NjdXIsIGkyYy1jb250cm9sIGRp
ZCd0IHdvcmsgYW55bmF5IGJ1dCBjcHUgcmVjZWl2ZSBpbnRlcnJwdXRzIHN0aWxsLgo+Pgo+PiBJ
IGFtIHNvcnJ5IHRoYXQgSSBoYXZlJ3QgZm91bmQgYSBnb29kIHNvbHV0aW9uIGZvciB0aGlzIGlz
c3VzZTsgCgpZZXMsIMKgSSBjYW4ndCBiZWxpZXZlIHRoYXQsIMKgTWF5YmUgY2F1c2VkIGJ5IHRo
ZSBoYXJkd2FyZSBlbnZpcm9ubWVudCBvciBhbnkgb3RoZXIgd2VsbC4KQWRkaXRpb25hbGx5IEkg
aGF2ZSd0IMKgcHJvYmUgdGhpcyBpc3N1ZSByZWNlbnRseS7CoApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
