Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F81B38333
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 05:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExXeV8vYf6yWf/OEozvW0r672a87vsGz5ZeE3WjIK2w=; b=Fqdhpu7NcI0w9y
	jBH2GPD9IdPmKmmt4DPjovb3HR0UK5oS/zNzm+m1BJZhDU8zQBGPPs5SVFnbqs4BGQ0zhNGuk5FiV
	00ixo2aW688LU3tu/Kot4w96WEHjbMkL2SOm7guHnBj0iWt6DiqSEle7ob7TVQRMXmSaljznh7xht
	rYTq3JtqPJaEGWMHvddzDCN8zFha3D6rvBhYcEprjMsrxyzU3la+s6Pa6+zuTSHmoofOy01zZmQYj
	87rGsU+o0r8snyzygoLgGbG4jOvp50KnOnsGPvLJ03NVRXBRff4HGFJFDle5s7Ffd5XHMIl/wsjdP
	bdvs9xSewN4mSDWimzoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ5r9-0003uC-2o; Fri, 07 Jun 2019 03:47:55 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ5qv-0003t4-PC
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 03:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1559879261; x=1591415261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=f7lUzX077j1bK+7o5EYCdBbsguKVU9Cl/73eEhYfufY=;
 b=nY3KFrMPaXrTcSZVBXukAU/gOG6oVoIkp4Udx8KFMcxspj9+yK7a4Kro
 F5NzrCq3dMJwpIUSuc6sjxY+3maKXw/gcc4MGmg5RmDHcC/RFyPTnnmjE
 YCHNvNJKpGI0fzaMW8lv6tKowvwLSiIHc/ZVUNAT4xTrSj2S5qJeWbR4b Y=;
X-IronPort-AV: E=Sophos;i="5.60,561,1549929600"; d="scan'208";a="405435519"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 07 Jun 2019 03:47:36 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com (Postfix) with ESMTPS
 id AE93FA2494; Fri,  7 Jun 2019 03:47:33 +0000 (UTC)
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Jun 2019 03:47:32 +0000
Received: from EX13D02UWC004.ant.amazon.com (10.43.162.236) by
 EX13D01EUB003.ant.amazon.com (10.43.166.248) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Jun 2019 03:47:31 +0000
Received: from EX13D02UWC004.ant.amazon.com ([10.43.162.236]) by
 EX13D02UWC004.ant.amazon.com ([10.43.162.236]) with mapi id 15.00.1367.000;
 Fri, 7 Jun 2019 03:47:30 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Marc Zyngier <marc.zyngier@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "kvmarm@lists.cs.columbia.edu"
 <kvmarm@lists.cs.columbia.edu>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>
Subject: Re: [PATCH 1/8] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
Thread-Topic: [PATCH 1/8] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
Thread-Index: AQHVHIi1OiXXp0Fy/EqmaDNzW4giDKaPOpGA
Date: Fri, 7 Jun 2019 03:47:29 +0000
Message-ID: <3698E5F4-6E33-4175-9EA0-7CB961705264@amazon.com>
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-2-marc.zyngier@arm.com>
In-Reply-To: <20190606165455.162478-2-marc.zyngier@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.73]
Content-ID: <C746183BA199164FBEAB119812CB66A1@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_204741_951215_E1E12A00 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Julien Thierry <julien.thierry@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer
 Dall <christoffer.dall@arm.com>, Eric Auger <eric.auger@redhat.com>, James
 Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQrvu79PbiA2LzYvMTksIDExOjU1IEFNLCAiTWFyYyBaeW5naWVyIiA8bWFyYy56eW5naWVyQGFy
bS5jb20+IHdyb3RlOg0KDQogICAgQWRkIHRoZSBiYXNpYyBkYXRhIHN0cnVjdHVyZSB0aGF0IGV4
cHJlc3NlcyBhbiBNU0kgdG8gTFBJDQogICAgdHJhbnNsYXRpb24gYXMgd2VsbCBhcyB0aGUgYWxs
b2NhdGlvbi9yZWxlYXNlIGhvb2tzLg0KICAgIA0KICAgIFRIZSBzaXplIG9mIHRoZSBjYWNoZSBp
cyBhcmJpdHJhcmlseSBkZWZpbmVkIGFzIDQqbnJfdmNwdXMuDQoNCkEgY2FjaGUgc2l6ZSBvZiA4
L3ZDUFUgc2hvdWxkIHJlc3VsdCBpbiBjYWNoZSBoaXRzIGluIG1vc3QgY2FzZXMgYW5kIDE2L3ZD
UFUgd2lsbCBwcmV0dHkgbXVjaCBhbHdheXMgcmVzdWx0IGluIGEgY2FjaGUgaGl0Lg0KDQpBbGkN
Cg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
