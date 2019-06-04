Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C48334454
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch3w8E6JzcS/aQT6eXf3DM304kKwGzV1D6jDXTDhRmc=; b=gA+l4FpMPK/m80
	4u97Kyp2T414fzDKPcr5fIxfJ3H/kf6BhUyso+oyYkAyj7uDjHsZZpMNwwJjCOaAImvfyjbs1lyrg
	4ANGZmxcr86Bq+djVI4rZ0ygAqDzMBut6M0jSIK1VH04tS7nw+eoxJyHv26yfPKBX99MGGgy9dfyA
	Vubz01VNoYc+1C2moFSTHqtg0p1lG6fCFXTCYssWSTTLozaeg3Z4PgXfVgUNyjy/EYVbnUlKy5HUD
	SgXp9X24IqYB8bTvWIV6Ap5ohYZfkrEALvDfPgL7XS6IQTUTlN9syMLmXtMWb+lPp4ISBenTxVml7
	i95IXQmZlSBl9nYlHnUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6cc-0007jx-Qj; Tue, 04 Jun 2019 10:24:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6cM-0007Vh-9X
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:24:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54AOW4J041981;
 Tue, 4 Jun 2019 05:24:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559643872;
 bh=glLRMr7gK2lyegXTr08uUtqwtr2KE7JG5ZJ9N4dYDdg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kclVrAA3tszF04C5yiB8lpID2vEIjVdupAdlSgCabqhE77oE3sdV9pqt8HFInh30l
 PT9WFFONjxVxBCZRCVxl+3/4T06+79/+HeIaD2pZ3YImQgtZz2jJv9wDs4e642XbDP
 XG0BXJEoWj1t4MnkdcWViGULkAKf7CRZd50v9KKo=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54AOWxN111343
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:24:32 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:24:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:24:31 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54AOUP4017258;
 Tue, 4 Jun 2019 05:24:30 -0500
Subject: Re: [PATCH] firmware: ti_sci: Parse all resource ranges even if some
 is not available
To: Lokesh Vutla <lokeshvutla@ti.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>
References: <20190604101000.6741-1-peter.ujfalusi@ti.com>
 <4ff3a042-41a2-62d3-c899-7a62406ad6a4@ti.com>
 <685f477a-65fe-36ae-0081-a329554714a9@ti.com>
 <b7608cee-68fd-3406-9390-b94f53aaac8b@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <1b9ae4f2-e971-9e06-f4fa-a962b1086587@ti.com>
Date: Tue, 4 Jun 2019 13:24:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <b7608cee-68fd-3406-9390-b94f53aaac8b@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_032434_764684_2DB5CD5F 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC8wNi8yMDE5IDEzLjIzLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gCj4gCj4gT24gMDQv
MDYvMTkgMzo1MSBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDA0LzA2LzIw
MTkgMTMuMTMsIExva2VzaCBWdXRsYSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMDQvMDYvMTkgMzo0
MCBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Pj4gRG8gbm90IGZhaWwgaWYgYW55IG9mIHRo
ZSByZXF1ZXN0ZWQgc3VidHlwZXMgYXJlIG5vdCBhdmFpbGFiZSwgYnV0IHNldCB0aGUKPj4+PiBu
dW1iZXIgb2YgcmVzb3VyY2VzIHRvIDAgYW5kIGNvbnRpbnVlIHBhcnNpbmcgdGhlIHJlc291cmNl
IHJhbmdlcy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51
amZhbHVzaUB0aS5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMg
fCAxMSArKysrKysrKystLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvdGlf
c2NpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+Pj4gaW5kZXggYWYzZWJjZGVhYjE4
Li41ZDEzZWQ3MjRmZjAgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9maXJtd2FyZS90aV9zY2ku
Ywo+Pj4+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMKPj4+PiBAQCAtMjc4Myw2ICsy
NzgzLDcgQEAgZGV2bV90aV9zY2lfZ2V0X29mX3Jlc291cmNlKGNvbnN0IHN0cnVjdCB0aV9zY2lf
aGFuZGxlICpoYW5kbGUsCj4+Pj4gIAlzdHJ1Y3QgdGlfc2NpX3Jlc291cmNlICpyZXM7Cj4+Pj4g
IAl1MzIgcmVzb3VyY2Vfc3VidHlwZTsKPj4+PiAgCWludCBpLCByZXQ7Cj4+Pj4gKwlib29sIHZh
bGlkX3NldCA9IGZhbHNlOwo+Pj4KPj4+IE1pbm9yIG5pdDogQ2FuIHlvdSBtYWludGFpbiB0aGUg
cmV2ZXJzZSBDaHJpc3RtYXMgdHJlZSBoZXJlPyBJdCBsb29rcyBnb29kIDopIE5vCj4+PiBzdHJv
bmcgZmVlbGluZ3MgdGhvdWdoCj4+Cj4+IGJvb2wgbm9fdmFsaWRfc2V0cyA9IHRydWU7Cj4+Cj4+
IGFuZCB3aGVuIHdlIGhhdmUgYXQgbGVhc3Qgb25lIHZhbGlkIHNldCBmbGlwIGl0IHRvIGZhbHNl
PyBUaGF0J3MgZXF1YWxseQo+PiB0d2lzdGVkIGlmIG5vdCB3b3JzdC4gaW1obwo+IAo+IE5vIG5v
LiBJIG1lYW4gdG8gYWRkIHRoZSBjaGFuZ2UgbGlrZSBiZWxvdyBpbnN0ZWFkIG9mIGFkZGluZyB0
aGUgZGVjbGFyYXRpb24gYXQKPiB0aGUgZW5kLgoKQWgsIHN1cmUuIHdpbGwgc2VuZCBpdCBhc2Fw
Cgo+IAo+IAo+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMKPiArKysgYi9kcml2ZXJz
L2Zpcm13YXJlL3RpX3NjaS5jCj4gQEAgLTIzODMsNiArMjM4Myw3IEBAIGRldm1fdGlfc2NpX2dl
dF9vZl9yZXNvdXJjZShjb25zdCBzdHJ1Y3QgdGlfc2NpX2hhbmRsZQo+ICpoYW5kbGUsCj4gIAkJ
CSAgICBzdHJ1Y3QgZGV2aWNlICpkZXYsIHUzMiBkZXZfaWQsIGNoYXIgKm9mX3Byb3ApCj4gIHsK
PiAgCXN0cnVjdCB0aV9zY2lfcmVzb3VyY2UgKnJlczsKPiArCWJvb2wgdmFsaWRfc2V0ID0gZmFs
c2U7Cj4gIAl1MzIgcmVzb3VyY2Vfc3VidHlwZTsKPiAgCWludCBpLCByZXQ7Cj4gCj4gVGhhbmtz
IGFuZCByZWdhcmRzLAo+IExva2VzaAo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZp
bmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNp
bmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
