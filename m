Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5BE1502B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jg189Ym6lFH/RkGidfKaBGvcPMAVxHsjN+YPMlYUWkI=; b=dqecqEKOB57UmiLnJaEnK8ME1
	LZRkoFI3oE0vAbYsADP/tk0k6cWgA9BntSzPfeaCvKr0tjCBY1SitK8eW40m89hjVLD5DPmHB9rn7
	unIp/+p8lT1FoSm4V5msoyzp86xCDw/oMQmEIABBnoEkKRnbVhOzQyy2C6Yc8H/6tKW6CoJNziTh7
	AAussnpb113eR8k8gsGTResTSvhFJ6DcGu+s8hpeoy87ThT66DIrfByW/ax49nzjZlv81m7r55XwS
	ZsxBqlG5Bnl3e0mtU2xSV0qblKBVh0Br79VU8wpbVwKrUktgxxpllbSCLMiDOHSqJ/kiIkq9owliU
	vQoWnoRzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXD2-00038P-Ei; Mon, 03 Feb 2020 08:35:56 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXCs-00037n-MK
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 08:35:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0138ZcL0009609;
 Mon, 3 Feb 2020 02:35:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580718939;
 bh=1PMMDpp6XSqR9WhBph6lQ2FGqfnPABFZhmuwEKRj1ms=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=r0TVpkHDXmlJkbqH8GwxZfFQyOsSIC6G9WUWLNdWiCveKA3CiusHofUW9YMXisBOO
 /PPehsI1dJ+q5+r9YWpiBr3MzktC0+lsSDVfTzvcxJ206gOkEcSapKRCdPM4R/XUNI
 Ux7wCHpd73tjGth0jEmJCE+Yi00jYdn2Dg/zvUlE=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0138Zce1064333
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Feb 2020 02:35:38 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 02:35:38 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 02:35:38 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0138ZZGl119265;
 Mon, 3 Feb 2020 02:35:36 -0600
Subject: Re: [PATCH] firmware: ti_sci: Export devm_ti_sci_get_of_resource for
 modules
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <ssantosh@kernel.org>,
 <santosh.shilimkar@oracle.com>
References: <20200122104031.15733-1-peter.ujfalusi@ti.com>
 <88323f5b-1732-f780-5a0d-754026997c2c@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <da988700-d7de-ae81-01d2-6bb5d9fa5985@ti.com>
Date: Mon, 3 Feb 2020 10:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <88323f5b-1732-f780-5a0d-754026997c2c@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_003546_821945_661580FD 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lokeshvutla@ti.com, grygorii.strashko@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDIvMjAyMCAxMDoxMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MjIvMDEvMjAyMCAxMi40MCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IEFsbG93IGRldm1fdGlf
c2NpX2dldF9vZl9yZXNvdXJjZSgpIHRvIGJlIHVzYWJsZSBmcm9tIG1vZHVsZXMuCgpUaGlzIG9u
ZSBsb29rcyBmaW5lIHRvIG1lLCBzbzoKCkFja2VkLWJ5OiBUZXJvIEtyaXN0byA8dC1rcmlzdG9A
dGkuY29tPgoKPiAKPiBJIHdvdWxkIHJlYWxseSBhcHByZWNpYXRlIGlmIHRpX3NjaSBtYWludGFp
bmVycyB3b3VsZCBzcGFyZSBzb21lIHRpbWUgb24KPiB0aGlzIGFuZCB0aGUgb3RoZXIgdHdvIHBh
dGNoIDspCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDEyMjEwNDA0NC4x
NTgzNy0xLXBldGVyLnVqZmFsdXNpQHRpLmNvbS8KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMjAwMTIyMTA0MDA5LjE1NjIyLTEtcGV0ZXIudWpmYWx1c2lAdGkuY29tLwo+IAo+IC0g
UMOpdGVyCj4gCj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVz
aUB0aS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMgfCAxICsKPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZmlybXdhcmUvdGlfc2NpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+IGluZGV4
IGYxM2U0YTk2ZjNiNy4uM2Q4MjQxY2I2OTIxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Zpcm13
YXJlL3RpX3NjaS5jCj4+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMKPj4gQEAgLTMz
MzIsNiArMzMzMiw3IEBAIGRldm1fdGlfc2NpX2dldF9vZl9yZXNvdXJjZShjb25zdCBzdHJ1Y3Qg
dGlfc2NpX2hhbmRsZSAqaGFuZGxlLAo+PiAgIAo+PiAgIAlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKPj4gICB9Cj4+ICtFWFBPUlRfU1lNQk9MX0dQTChkZXZtX3RpX3NjaV9nZXRfb2ZfcmVzb3Vy
Y2UpOwo+PiAgIAo+PiAgIHN0YXRpYyBpbnQgdGlzY2lfcmVib290X2hhbmRsZXIoc3RydWN0IG5v
dGlmaWVyX2Jsb2NrICpuYiwgdW5zaWduZWQgbG9uZyBtb2RlLAo+PiAgIAkJCQl2b2lkICpjbWQp
Cj4+Cj4gCj4gCgotLQpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1
IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
