Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02011EB71D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bGWqIszAccDPNVtd6t2PlzHaXPcHLH6PDtFZBHxWj1E=; b=JMQdx/w3Dttb7Dws30Xw2jlbi
	vObMFfu8E0ahr1dtNFUV9UmfA1mFbSTah9TQZcg/5s4/I6EaXZM/UQOfKXThgDTzncRcCIiJOkK3m
	zOPFiUSIKuWx6gQ5kdm5V7F24px1hLJ8O+7w7sMr9UWzyI5fiTa0DCGZyIiZA9s4bFM8IXi1l9xgl
	fUJIoQIkEdmcTMybtp3O/NALniEo3hewZDWUHk4UE381MxKNGffNFHjwJ0UtRYFcLBw6FjbMy69KS
	RB5wBMO7PN1Cd3nTBgVXrxYoRcBpA3XcP9c6OZ3nMO2eNTMeC4PSsV+7qDD1HzPYOemaWfEF/cc1u
	os4a7sHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg23g-0003l8-01; Tue, 02 Jun 2020 08:14:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg23Y-0003jo-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:13:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0528DWxd017543;
 Tue, 2 Jun 2020 03:13:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591085612;
 bh=W/u4Gfn8Bq+eBQ50ZyVyRSF3E4LsSNzZM/DU8aita/I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=doCaxwsbt8NFkstWB1KPdIFMfNjNNLipev6pIncVThGfebFxJlpuA8OL30Yng3UFj
 6Xe2UD2dJJh6/C1MfVGr3uoMTVjo1fodAEdjUUk3YKDlZW/eOLr4jL1NI1mIx6CbK0
 kR7YE9RNq8m1Q48wvNO5pRUPz0/9jAUcSJxqHqjc=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0528DWEE024193
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 2 Jun 2020 03:13:32 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 2 Jun
 2020 03:13:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 2 Jun 2020 03:13:32 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0528DTnO024976;
 Tue, 2 Jun 2020 03:13:29 -0500
Subject: Re: [PATCH resend 0/2] dts: keystone-k2g-evm: Display support
To: <santosh.shilimkar@oracle.com>, Jyri Sarha <jsarha@ti.com>,
 <dri-devel@lists.freedesktop.org>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
References: <cover.1581671951.git.jsarha@ti.com>
 <6749076a-cbc1-d8e2-bc35-2e2a9ad80a6d@oracle.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <973b69f2-bbe1-3c1b-615f-751bb8d5d83e@ti.com>
Date: Tue, 2 Jun 2020 11:13:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6749076a-cbc1-d8e2-bc35-2e2a9ad80a6d@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_011356_976954_D5AD6FFC 
X-CRM114-Status: GOOD (  13.27  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, praneeth@ti.com, robh+dt@kernel.org,
 peter.ujfalusi@ti.com, tomi.valkeinen@ti.com,
 laurent.pinchart@ideasonboard.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FudG9zaCwKCk9uIDE0LzAyLzIwMjAgMTk6NDAsIHNhbnRvc2guc2hpbGlta2FyQG9yYWNs
ZS5jb20gd3JvdGU6Cj4gT24gMi8xNC8yMCAxOjIyIEFNLCBKeXJpIFNhcmhhIHdyb3RlOgo+PiBS
ZXNlbmQgYmVjYXVzZSB0aGUgZWFybGllciByZWNpcGllbnQgbGlzdCB3YXMgd3JvbmcuCj4+Cj4+
IE5vdyB0aGF0IGRybS90aWRzcyBpcyBxdWV1ZWQgZm9yIG1haW5saW5lLCBsZXRzIGFkZCBkaXNw
bGF5IHN1cHBvcnQgZm9yCj4+IGsyZy1ldm0uIFRoZXJlIGlzIG5vIGh1cnJ5IHNpbmNlIHRpZHNz
IGlzIG91dCBvbmx5IGluIHY1LjcsIGJ1dCBpdAo+PiBzaG91bGQgbm90IGhhcm0gdG8gaGF2ZSB0
aGUgZHRzIGNoYW5nZXMgaW4gcGxhY2UgYmVmb3JlIHRoYXQuCj4+Cj4+IEp5cmkgU2FyaGEgKDIp
Ogo+PiDCoMKgIEFSTTogZHRzOiBrZXlzdG9uZS1rMmc6IEFkZCBEU1Mgbm9kZQo+PiDCoMKgIEFS
TTogZHRzOiBrZXlzdG9uZS1rMmctZXZtOiBhZGQgSERNSSB2aWRlbyBzdXBwb3J0Cj4+Cj4+IMKg
IGFyY2gvYXJtL2Jvb3QvZHRzL2tleXN0b25lLWsyZy1ldm0uZHRzIHwgMTAxICsrKysrKysrKysr
KysrKysrKysrKysrKysKPj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMva2V5c3RvbmUtazJnLmR0c2nC
oMKgwqAgfMKgIDIyICsrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEyMyBpbnNlcnRpb25z
KCspCj4+Cj4gT2suIFdpbGwgYWRkIHRoaXMgdG8gdGhlIG5leHQgcXVldWUuCgpXaGF0IGhhcHBl
bmVkIHdpdGggdGhpcyBvbmU/IEl0IHVzZWQgdG8gYmUgaW4gbGludXgtbmV4dCwgYnV0IG5vdyBJ
IGRvbid0IHNlZSBpdCBhbnltb3JlLgoKICBUb21pCgotLSAKVGV4YXMgSW5zdHJ1bWVudHMgRmlu
bGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2lu
ZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
