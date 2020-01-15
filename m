Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D5113C2BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O+kA2fKJo0bZu2HIbxeIzyyhvx8p+2402cVRV6TtCjU=; b=UeP+CrkxsiN05+5QG2L1r/YYw
	viZsqvPh5dJ26jnxXJ4Ix+/eV9Zvh+4Dv3zuAxlZwjLeEZc2450EQ5A8B4lAMX4bg6WbnRMNG4W+A
	wsqjDdq4Stm8ut/4pfiXdUDKU7PVPCqdQWewhpZ8uRHRtRWWkfWNlGqs0fNsTUlKG1JXMHIERVc7B
	iM+mu9ggAEuxm5DlJmQCZ79bjpNawfb4gwYoNXMkAOl3pWIOO5Vkmb88vTnuk3ArMPlqSehY/kArq
	/zvFOLwdeMjTSu+jPu5tkzXsy0/AANMdPu+7w0BYgZPNlTHfyn/QeWlqmAIxW331IumoZt4J3EHkr
	o8eaANgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irihZ-00060F-Sm; Wed, 15 Jan 2020 13:27:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irihH-0005yj-Bz; Wed, 15 Jan 2020 13:27:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1D95BACEF;
 Wed, 15 Jan 2020 13:26:58 +0000 (UTC)
Subject: Re: [PATCH 00/14] ARM: dts: realtek: Introduce syscon
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: James Tai <james.tai@realtek.com>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
References: <20191202182205.14629-1-afaerber@suse.de>
 <0f4d6872-b764-1c5e-9c2a-4e4e415a4877@suse.de>
 <996a6968f411467cb987a14a0764726d@realtek.com>
 <f1f3fc5f-ae6c-b803-cb02-d06d60c442ce@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <42cb14df-fb20-f191-3e24-4735a3b87954@suse.de>
Date: Wed, 15 Jan 2020 14:26:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <f1f3fc5f-ae6c-b803-cb02-d06d60c442ce@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_052659_555918_929F9890 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDMuMDEuMjAgdW0gMDM6NTggc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gSGkgSmFtZXMs
Cj4gCj4gQW0gMzEuMTIuMTkgdW0gMTA6NDcgc2NocmllYiBKYW1lcyBUYWk6Cj4+PiBJJ20gd2Fp
dGluZyBmb3IgeW91ciBBY2tlZC1ieSBvZiB0aGUgYmxvY2tzICYgbnVtYmVycyBpbiB0aGVzZSBw
YXRjaGVzLgo+Pj4gT3RoZXIgUmVhbHRlayBlbmdpbmVlcnMgYXJlIGFsc28gaW52aXRlZCB0byBy
ZXNwb25kLCBvZiBjb3Vyc2UuCj4+Cj4+IEkgaGF2ZSByZXZpZXdlZCB0aGVzZSBwYXRjaGVzLgo+
IAo+IFRoYW5rcyAtIGRvZXMgYW55dGhpbmcgbmVlZCBjaGFuZ2VzIGluIHBhdGNoIDAxIG9yIGlz
IHRoYXQgYWNrJ2VkLCB0b28/CgpObyBmdXJ0aGVyIHJlc3BvbnNlLCBzbyBhbGwgKGluY2wuIDAx
LzE0KSBhcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9n
Lz9oPXY1LjYvZHQKClNob3VsZCB0aGVyZSBiZSBhbnl0aGluZyB3cm9uZyB3aXRoIDAxLzE0LCBq
dXN0IHNlbmQgYSBmb2xsb3ctdXAgcGF0Y2guCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
