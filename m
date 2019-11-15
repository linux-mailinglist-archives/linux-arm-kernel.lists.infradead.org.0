Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2185EFD299
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYD49K1UsqJ1qgl1WYR2T3wnlgauWZK+x0vIgTcD/Oc=; b=fd4j6LYbqdzTHB
	cTNMR/rEQkJ4jVo3l4zuk/+RncXI3ds3GlAswfhnHo4EwAIM/4iHCHl5pD2y1tUarcNATKLQA5Z04
	MzJr6aA2NUW18Z1FRtZgy60/JOE/LbpkkQQ2AbtZnFMuEIypWn6swhqk7YX4I0ySCKe81ei79DMOa
	GGxQ0iZDaxcAzNpDuzW0lHyYe6giNoWyyo/Zupk21jNK9Hb2rdQDX10FptEbp4oYL/ICl3XjrpFkc
	M5qaVRvs0+RWUWgOliCM7wRobS47lrGMxhUc5zX9b+iaAX/Kfemuqlx+fOIvO1uvv0cirri7+MVtS
	ANWr6Hb5RwFsiBapkS3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQmJ-0006kf-OF; Fri, 15 Nov 2019 01:52:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQmB-0006jf-7c; Fri, 15 Nov 2019 01:51:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 80276B1C0;
 Fri, 15 Nov 2019 01:51:52 +0000 (UTC)
Subject: Re: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
To: Rob Herring <robh+dt@kernel.org>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
 <CAL_Jsq+fdksCHQ1_NaizkM6dVWT1h2wocJpD4NB8K2dOO-yZ4Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c8ff8f52-9c01-12f7-e462-5c47d3a59f52@suse.de>
Date: Fri, 15 Nov 2019 02:51:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+fdksCHQ1_NaizkM6dVWT1h2wocJpD4NB8K2dOO-yZ4Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_175155_421653_80655F8F 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTUuMTEuMTkgdW0gMDI6MzQgc2NocmllYiBSb2IgSGVycmluZzoKPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDEx
OTUuZHRzaQo+PiBpbmRleCBhOGNjMmQyM2U3ZWYuLjM0Mzk2NDdlY2Y5NyAxMDA2NDQKPj4gLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQo+PiBAQCAtOTIsMjggKzkyLDM2IEBACj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICA8MHgxODEwMDAwMCAweDE4MTAwMDAwIDB4MDEwMDAwMDA+LAo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgPDB4NDAwMDAwMDAgMHg0MDAwMDAwMCAweGMwMDAwMDAwPjsKPj4K
Pj4gLSAgICAgICAgICAgICAgIHdkdDogd2F0Y2hkb2dAMTgwMDc2ODAgewo+PiAtICAgICAgICAg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7Cj4+
IC0gICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE4MDA3NjgwIDB4MTAwPjsKPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZvc2MyN00+Owo+PiAtICAgICAgICAgICAg
ICAgfTsKPj4gLQo+PiAtICAgICAgICAgICAgICAgdWFydDA6IHNlcmlhbEAxODAwNzgwMCB7Cj4+
IC0gICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7
Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE4MDA3ODAwIDB4NDAwPjsKPj4g
LSAgICAgICAgICAgICAgICAgICAgICAgcmVnLXNoaWZ0ID0gPDI+Owo+PiAtICAgICAgICAgICAg
ICAgICAgICAgICByZWctaW8td2lkdGggPSA8ND47Cj4+IC0gICAgICAgICAgICAgICAgICAgICAg
IGNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Cj4+IC0gICAgICAgICAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+IC0gICAgICAgICAgICAgICB9Owo+PiAtCj4+IC0gICAg
ICAgICAgICAgICB1YXJ0MTogc2VyaWFsQDE4MDFiMjAwIHsKPj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKPj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgcmVnID0gPDB4MTgwMWIyMDAgMHgxMDA+Owo+PiAtICAgICAgICAgICAgICAgICAg
ICAgICByZWctc2hpZnQgPSA8Mj47Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlZy1pby13
aWR0aCA9IDw0PjsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stZnJlcXVlbmN5ID0g
PDI3MDAwMDAwPjsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKPj4gKyAgICAgICAgICAgICAgIHJidXM6IHItYnVzQDE4MDAwMDAwIHsKPiAKPiBGb2xsb3dp
bmcgbm9kZSBuYW1lcyBzaG91bGQgYmUgZ2VuZXJpYzogYnVzQC4uLgoKRml4ZWQgZm9yIGFsbCBm
b3VyIFNvQ3MuCgpUaGF0IHNlZW1zIGluY29uc2lzdGVudCB3aXRoIHNwZWNpZmljIHBjaUAuLi4g
JiB1c2JALi4uIChib3RoIGZyb20gT0YpLApidXQgSSBzZWUgbm93IHRoZSBBbWxvZ2ljLXNwZWNp
ZmljIGJ1c2VzIHRoYXQgSSB3YXMgaW5zcGlyZWQgYnkgZG8gdXNlCmJ1c0AuLi4sIHRvby4KClRo
YW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApN
YXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
