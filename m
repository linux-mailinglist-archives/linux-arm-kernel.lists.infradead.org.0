Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40A6F89A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQJZER/LhdGdnsj0QxBL1eOkJQeF0efuRjmbvqmqPRU=; b=tSzrK8DdoZr26t
	Nclbva5RkeiC9t9sVObB7q7BWUoGQybbxmj2rO+oTSxqNvPlToAWQ+hYqw071ZLSo8di73AlsrVoE
	E1JhfJdPQ4Ue3srGd7QFYJzoph8dyIEDQD4u9M+VEa27ZN54ZtSYH6IvXCdec/rB0ww/Ddc0S88c5
	1/WDjxn6x23akkDlyPg3L9/Qw4+GayW00xtLCboFz3nUC5R7btAmcWU/yWb3Ku7kq6ji1mHWsT2Ic
	6aLepcSBt3XTW0smrRIxXd7UhudEmDG6z+7dSpdYfyqJgg/z1H9JaP5l799BqXPXFiZJtxQIH4nJk
	WgpB83uPmYypwQ/RjXCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQWA-0004VB-On; Tue, 12 Nov 2019 07:23:14 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQVx-0004Uc-Kw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:23:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAC7MtS3036617;
 Tue, 12 Nov 2019 01:22:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573543375;
 bh=eT3P/dHyd3eivjdDocbI/JCxXP7Qo8LHZ/vo4INoYeY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=E6s/TsZNByQ2yxi9Ii2JwvdKPeRSY8yV8KwfXREYr9qpUp1ibBJpulBMz8muEEPz7
 z97WtvfZJl5YmffY1D5iurJnLYX1EPlRXbvUGDu4CG/frGXKCesStVcrNKAQ7agrfA
 OBQdcEDNZBT6ScztaHfJrrMLPv5vjG6oX52+ae+w=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAC7MtZo047895;
 Tue, 12 Nov 2019 01:22:55 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 01:22:37 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 01:22:37 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAC7Mpn1104285;
 Tue, 12 Nov 2019 01:22:51 -0600
Subject: Re: [PATCH v4 12/15] dmaengine: ti: New driver for K3 UDMA - split#4:
 dma_device callbacks 1
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-13-peter.ujfalusi@ti.com>
 <20191111060943.GQ952516@vkoul-mobl>
 <6d73f6e1-6d85-d468-2e69-47d36ed75807@ti.com>
 <20191112053621.GW952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <28866241-dafe-5446-0cf2-b58368682603@ti.com>
Date: Tue, 12 Nov 2019 09:24:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112053621.GW952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232301_772155_A69598BC 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMS8yMDE5IDcuMzYsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTEtMTEtMTksIDEy
OjI5LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gT24gMTEvMTEvMjAxOSA4LjA5LCBWaW5vZCBL
b3VsIHdyb3RlOgo+Pj4gT24gMDEtMTEtMTksIDEwOjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToK
PiAKPj4+PiArc3RhdGljIGVudW0gZG1hX3N0YXR1cyB1ZG1hX3R4X3N0YXR1cyhzdHJ1Y3QgZG1h
X2NoYW4gKmNoYW4sCj4+Pj4gKwkJCQkgICAgICBkbWFfY29va2llX3QgY29va2llLAo+Pj4+ICsJ
CQkJICAgICAgc3RydWN0IGRtYV90eF9zdGF0ZSAqdHhzdGF0ZSkKPj4+PiArewo+Pj4+ICsJc3Ry
dWN0IHVkbWFfY2hhbiAqdWMgPSB0b191ZG1hX2NoYW4oY2hhbik7Cj4+Pj4gKwllbnVtIGRtYV9z
dGF0dXMgcmV0Owo+Pj4+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4+PiArCj4+Pj4gKwlzcGlu
X2xvY2tfaXJxc2F2ZSgmdWMtPnZjLmxvY2ssIGZsYWdzKTsKPj4+PiArCj4+Pj4gKwlyZXQgPSBk
bWFfY29va2llX3N0YXR1cyhjaGFuLCBjb29raWUsIHR4c3RhdGUpOwo+Pj4+ICsKPj4+PiArCWlm
ICghdWRtYV9pc19jaGFuX3J1bm5pbmcodWMpKQo+Pj4+ICsJCXJldCA9IERNQV9DT01QTEVURTsK
Pj4+Cj4+PiBzbyBhIHBhdXNlZCBjaGFubmVsIHdpbGwgcmVzdWx0IGluIGRtYSBjb21wbGV0ZSBz
dGF0dXM/Cj4+Cj4+IFRoZSBjaGFubmVsIGlzIHN0aWxsIGVuYWJsZWQgKHJ1bm5pbmcpLCB0aGUg
cGF1c2Ugb25seSBzZXRzIGEgYml0IGluIHRoZQo+PiBjaGFubmVsJ3MgcmVhbCB0aW1lIGNvbnRy
b2wgcmVnaXN0ZXIuCj4gCj4gT2theSBhbmQgd2hpY2ggY2FzZXMgd2lsbCBjaGFubmVsIG5vdCBi
ZSBydW5uaW5nIGkuZS4sIHlvdSByZXR1cm4KPiBETUFfQ09NUExFVEUgYWJvdmU/CgpBZnRlciB0
ZXJtaW5hdGVfYWxsIG9yIGJlZm9yZSB0aGUgZmlyc3QgaXNzdWVfcGVuZGluZyBjYWxsLiBXaGVu
IHRoZQpjaGFubmVsIGlzIGRpc2FibGVkLgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZp
bmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNp
bmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
