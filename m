Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72805FD183
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 00:23:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2R9ooQBDGzSUPook7ZRgVQ3Hp+QL09vo3n27avHxpA=; b=fm9dT/oUD2DugP
	6ZeTKPnyqH35cY3rp5hehs4/IrhCihmbcP5tzyYxLtVJ/115FCOKETcWbR3sQP4yM/LQ70kSDs6z1
	y88SdXaf6o3KlVTOcb8PoOT6zfhJ27q5eeGkLuGRQ+lCCPS8Lutshpps/ojK+lBfnTMTJWua7I98L
	UUIWroN4Jx4brjyHsy7cH+cTCXQoE9II64oY9d1bbuYQeb1qZcCjksdsurRXYIOmfIUE3x15l7jk6
	W6R9leNfdMWgFHaEY6xWYIKJdlZ6DDi/oLGASb253x1PPu2s9GeDEJRTuwY4qPj7LMrky9a82wRFJ
	e3czcJQcnHfI+1Vh+nTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVOSO-0004aR-03; Thu, 14 Nov 2019 23:23:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVOSE-0004ZO-OD; Thu, 14 Nov 2019 23:23:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 243A1AE07;
 Thu, 14 Nov 2019 23:23:06 +0000 (UTC)
Subject: Re: [PATCH 3/7] arm64: dts: realtek: rtd129x: Introduce r-bus
To: James Tai <james.tai@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-4-afaerber@suse.de>
 <f70d00d8b1f8446fb138b36c61d952f4@realtek.com>
 <a4d9c42767ac4f3a9eacab72be224f3c@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8003e143-19f7-1de6-6e23-dadbb134a2e0@suse.de>
Date: Fri, 15 Nov 2019 00:23:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a4d9c42767ac4f3a9eacab72be224f3c@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_152310_931686_D1749EAF 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxMy4xMS4xOSB1bSAwNDowMiBzY2hyaWViIEphbWVzIFRhaToKPj4+ICsJ
CXJidXM6IHItYnVzQDk4MDAwMDAwIHsKPj4+ICsJCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMi
Owo+Pj4gKwkJCXJlZyA9IDwweDk4MDAwMDAwIDB4MTAwMDAwPjsKPj4+ICsJCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPj4+ICsJCQkjc2l6ZS1jZWxscyA9IDwxPjsKPj4+ICsJCQlyYW5nZXMgPSA8
MHgwIDB4OTgwMDAwMDAgMHgxMDAwMDA+Owo+Pj4gKwo+Pgo+PiBUaGUgci1idXMgc2l6ZSBvZiBS
VEQxMzk1IGlzIDB4MjAwMDAwLgo+Pgo+IAo+IFNvcnJ5IGZvciB0aGUgdHlwby4gVGhlIHItYnVz
IHNpemUgb2YgUlREMTI5NSBpcyAweDIwMDAwMC4KCkZpeGVkLgoKVGhhbmtzLApBbmRyZWFzCgoK
LS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5
MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkg
KEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
