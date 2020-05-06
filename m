Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEC31C6BD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pAqdN5YAtWSSjX7iwLvncGWQMPu8pdcjsSi4jzC81Rg=; b=MK7/sly2SwVIlWsx8VVnRKaOt
	EuM1auOqVFasJb5Ea8oIVg9nLT8QXamu72sE2emIViB5K8vhZ05/zI3j0S1hLJA9cyWzDaC2E1hIh
	9ZlFnRksg/tXr2dq9/nIjUCTI5MxCM0eDGpjCf30a6KoJNbIAbaYRJbIRSRIvLjVImdyCpGtu2T1N
	oB3S1RdHVYkXP4KvVBsg609WNXg+nOXBYK0E3C3/gsD4Px00LLH8vF+KwO6gW4D7Cnw75r/oxIEuh
	asmikGISjjj850XQ8myaLBlPc3oUU/ncG2jQJpdPsxrHYDWtpAcsq0TG788sus6uKrpKvdaDrjxnQ
	ZQdAMdHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFUk-0004wo-KB; Wed, 06 May 2020 08:33:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFUZ-0004u0-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:33:25 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0468XFKH097065;
 Wed, 6 May 2020 03:33:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588753995;
 bh=qxLW8zfbMo7VUHjzjBXSAyvs4iufNiJAQThCFJXXZvQ=;
 h=Subject:To:References:CC:From:Date:In-Reply-To;
 b=jJ/j4nzKPGh624uH+vhCYYcGX4/AJAgM1/bbUjdPUz73rjWXg4g7eAeg/4Ctv6Anx
 hiOKrJ36WwiuqVW6cpUOyeiM7WQtX7/Yq2btHXsufvD/7ICGTtAwXVp67sF7Ov2Ru5
 y+g/f59tWMjc3o2pcg5FTqPA2aFul46zdfFQNCQY=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0468XF0b100984;
 Wed, 6 May 2020 03:33:15 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 03:33:15 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 03:33:15 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0468XD6p121387;
 Wed, 6 May 2020 03:33:13 -0500
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
To: =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
 <1cee742a-c16a-fb32-5caa-c6ac71689ab9@ti.com>
 <20200506082843.mkhip2n2uiimcf2z@rcn-XPS-13-9360>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <a571c6a8-1b36-10fa-e0e1-c535563c62e9@ti.com>
Date: Wed, 6 May 2020 11:33:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506082843.mkhip2n2uiimcf2z@rcn-XPS-13-9360>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_013323_954789_777C2F82 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDUvMjAyMCAxMToyOCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBIaSBUb21pLAo+
IAo+IE9uIG1pw6kgMDYtMDUtMjAyMCAxMTowMTowNywgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4+
IERvZXNuJ3QgYWxsIHRoaXMganVzdCBwb2ludCB0byBhIGJ1ZyBvciBtaXNzaW5nIGZlYXR1cmUg
aW4gZHRfYmluZGluZ19jaGVjaz8KPj4gVGhhdCdzIG5vdCBhIHJlYXNvbiB0byBjaGFuZ2UgdGhl
IEFCSS4KPiAKPiBJIGFncmVlIGFuZCBJJ2Qgdm90ZSBmb3IgIm1pc3NpbmcgZmVhdHVyZSIsIGJ1
dCBzZWVpbmcgdGhhdCB0aGVyZSBhcmVuJ3QKPiBhbnkgb3RoZXIgZXhhbXBsZXMgb2YgdGhpcyB1
c2UgY2FzZSBpbiB0aGUgd2hvbGUga2VybmVsIGR0cyBjb2xsZWN0aW9uCj4gKGF0IGxlYXN0IEkg
Y291bGRuJ3QgZmluZCBhbnkpIEkgdGhvdWdodCB0aGF0IG1heWJlIGl0J3MgdXMgd2hvIGFyZQo+
IGdvaW5nIGFnYWluc3QgdGhlIG5vcm0gaGVyZS4KCkEgdmFsaWQgcG9pbnQuIEknbSBub3QgYXdh
cmUgb2YgYW55b25lIHVzaW5nIHRoZSBkZXNrZXcgcHJvcGVydHkuIE15IGd1ZXNzIGlzIHRoYXQg
TGF1cmVudCBhZGRlZCBpdCAKanVzdCBiZWNhdXNlIGl0IHdhcyBpbiB0aGUgc3BlYywgbm90IGJl
Y2F1c2UgaGUgaGFkIGEgbmVlZCBmb3IgaXQuIFNvIEkgZG9uJ3QgdGhpbmsgY2hhbmdpbmcgdGhl
IApiaW5kaW5nIGlzIHRvdGFsbHkgb3V0IG9mIHRoZSBxdWVzdGlvbi4KCiAgVG9taQoKLS0gClRl
eGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNp
bmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
