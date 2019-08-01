Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CE77D826
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 11:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4LG1gfnnb7c8sBMS+cjiv5BYNzyQJlZj5OA2A7UBCo=; b=V2guoWCJKxt5gN
	FNNpwPp4am4cj+GV/P5NO2Sa+wPcpqrxzEKHxgeuRlISpwvH53JQvIFgm3h2cRP8kVjCzUvK3uDf6
	n4+2Tr1LNnZeLr62mOARkrIqmurLFH3ZHRmy04V9IkI7flApiAlvsW07QFv1EoI6PaxD2cZQUBN6K
	K7UUS/4diL8eEh+eeGDKGpQ2wsMLe1WyN+KnmJRDHEreU/tPiiQNsmv60xZj25qdkWIvoDR5ie3Wa
	0LSgqjngUBG+L8ITd2yj2JuV/a0wif3F4ko6L3bP5o2ekgSODL7EboXYWF0ko/atp+e6kbfhNz5E6
	lB6wA3SQeL06smTk6Ehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6xw-0006mU-La; Thu, 01 Aug 2019 09:01:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6xq-0006m7-FT
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 09:01:35 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ht6xj-0004OH-52; Thu, 01 Aug 2019 11:01:27 +0200
Message-ID: <1564650086.7439.9.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/1] dt-bindings: reset: Fix typo in imx8mq resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,  Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  devicetree@vger.kernel.org
Date: Thu, 01 Aug 2019 11:01:26 +0200
In-Reply-To: <660b4fb6ab9acec05aa5fde323d878e04e3d1f64.1564647612.git.agx@sigxcpu.org>
References: <cover.1564647612.git.agx@sigxcpu.org>
 <660b4fb6ab9acec05aa5fde323d878e04e3d1f64.1564647612.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_020134_520182_A44E41DA 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA4LTAxIGF0IDEwOjIwICswMjAwLCBHdWlkbyBHw7xudGhlciB3cm90ZToK
PiBTb21lIG9mIHRoZSBtaXBpIGRzaSByZXNldHMgd2VyZSBjYWxsZWQKPiAKPiAgIElNWDhNUV9S
RVNFVF9NSVBJX0RJU19fCj4gCj4gaW5zdGVhZCBvZgo+IAo+ICAgSU1YOE1RX1JFU0VUX01JUElf
RFNJX18KPiAKPiBTaW5jZSB0aGV5J3JlIERTSSByZWxhdGVkIHRoaXMgbG9va3MgbGlrZSBhIHR5
cG8uIFRoaXMgZml4ZXMgdGhlCj4gb25seSBpbiB0cmVlIHVzZXIgYXMgd2VsbCB0byBub3QgYnJl
YWsgYmlzZWN0aW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2ln
eGNwdS5vcmc+CgpUaGFuayB5b3UsIHRoaXMgd2FzIGEgdHlwbyBpbiB0aGUgUmV2LjAgcmVmZXJl
bmNlIG1hbnVhbC4KSXQgaGFzIGJlZW4gZml4ZWQgaW4gUmV2LiAxLgoKQXBwbGllZCB0byByZXNl
dC9uZXh0IHdpdGggTHVjYXMnIFItYi4KCnJlZ2FyZHMKUGhpbGlwcAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
