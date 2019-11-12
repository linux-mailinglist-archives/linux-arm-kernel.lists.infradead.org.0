Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D95F8A79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osTy20v2tXm0PNsauVq2zz0csgVVseMKaReKVkAuGgY=; b=QYJKQiQQt7Jram
	MiPBJa9x5ot3hEUt8RttcTC9HPr0PWHQFB+FWO7zqZPVh60ex7P5ue8sQhb5HVGD09u8JnabmjG3B
	VefYDQstgq5lZOWlZpG77m30bCwtlFH53U1T2J3V3kTaDouD2DfADBAa7/V6Zbx2tQ+eLg94uwQTr
	nIEbJHMIGmLiusKuayMAhxnUmi552akxYzcZ2KfX5lB6hRtFwLYkQUx8zKT2QreTASSkc+WPiwa1D
	dBL1Bwv+KKHXrAfo1OB3wMBJPZawCStVGu6F0P8D+pHGr6xf4sqZENS//+xwuH1dCBwpqA8dTqWDX
	qJjndVs3WIL8NYPj69Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURXL-00075x-HC; Tue, 12 Nov 2019 08:28:31 +0000
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURX8-00075N-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:28:20 +0000
Received: from player699.ha.ovh.net (unknown [10.108.57.16])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 037CD14C0C2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:28:14 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player699.ha.ovh.net (Postfix) with ESMTPSA id B59A0BFA35EE;
 Tue, 12 Nov 2019 08:28:09 +0000 (UTC)
Subject: Re: [PATCH 2/5] ARM: config: aspeed-g5: Add SGPIO and FSI drivers
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
 <20191112062857.32638-3-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <6e17dd6a-b188-3ffb-b054-b8d5813bba3e@kaod.org>
Date: Tue, 12 Nov 2019 09:28:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191112062857.32638-3-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 7862722002244504429
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvkedgieehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpledtrdejiedrhedtrddvvdefnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_002819_185584_73ACC1B9 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.62.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTEvMjAxOSAwNzoyOCwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IFRoZXNlIGFyZSByZWNl
bnRseSBtZXJnZWQgZHJpdmVycyBmb3IgQVNQRUVEIHN5c3RlbXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5hdT4KClJldmlld2VkLWJ5OiBDw6lkcmljIExl
IEdvYXRlciA8Y2xnQGthb2Qub3JnPgoKCj4gLS0tCj4gIGFyY2gvYXJtL2NvbmZpZ3MvYXNwZWVk
X2c1X2RlZmNvbmZpZyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnIGIv
YXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCj4gaW5kZXggYjg3NTA4YzcwNTZj
Li5iMGQwNTZkNDlhYmUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVf
ZGVmY29uZmlnCj4gKysrIGIvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCj4g
QEAgLTE1NSw2ICsxNTUsNyBAQCBDT05GSUdfU1BJPXkKPiAgQ09ORklHX0dQSU9MSUI9eQo+ICBD
T05GSUdfR1BJT19TWVNGUz15Cj4gIENPTkZJR19HUElPX0FTUEVFRD15Cj4gK0NPTkZJR19HUElP
X0FTUEVFRF9TR1BJTz15Cj4gIENPTkZJR19XMT15Cj4gIENPTkZJR19XMV9NQVNURVJfR1BJTz15
Cj4gIENPTkZJR19XMV9TTEFWRV9USEVSTT15Cj4gQEAgLTIzNyw4ICsyMzgsMTAgQEAgQ09ORklH
X0ZTST15Cj4gIENPTkZJR19GU0lfTUFTVEVSX0dQSU89eQo+ICBDT05GSUdfRlNJX01BU1RFUl9I
VUI9eQo+ICBDT05GSUdfRlNJX01BU1RFUl9BU1RfQ0Y9eQo+ICtDT05GSUdfRlNJX01BU1RFUl9B
U1BFRUQ9eQo+ICBDT05GSUdfRlNJX1NDT009eQo+ICBDT05GSUdfRlNJX1NCRUZJRk89eQo+ICtD
T05GSUdfRlNJX09DQz15Cj4gIENPTkZJR19GQU5PVElGWT15Cj4gIENPTkZJR19PVkVSTEFZX0ZT
PXkKPiAgQ09ORklHX1RNUEZTPXkKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
