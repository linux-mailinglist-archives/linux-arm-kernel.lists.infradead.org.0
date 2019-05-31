Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431B731361
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZmpVqKrYnAJ9Cq+A0S0CEp5/FOTAA0bvxbtw56PQg4=; b=fMdLv0NXWpIFMA
	q8Bdk1KAWwCxEhqytXRIswBzlJqW6iFOQ6Eu19I2TWcRVmOO+EfIKFYNKHjwGajeHRWzH1K9oVSKe
	mix98H175SiLwiyzsJ9VDf+gTlz3OE+iIYDDVyTW9fVNZB48/foCqS50RxLa6ftZzzq49MFRhjwXW
	w7iuIRnFW+oswoo/OwphP0EYfrB2uh8jPViTglZUXY+3YaMqlxVRd+T2zj6Y6M3lgsOkJXnzlKbXY
	HyeSbYz8Z5e2vMrspNB6ukBKqPJmkrivyBvUYdgieSB91f1FIMyLMj6YLhDevv6xJPUHax85ka18Z
	vBs3lBWJJhL2Qxn7nRnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkxM-0000lj-4w; Fri, 31 May 2019 17:04:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkwZ-00008P-46
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:03:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 91664ACC4;
 Fri, 31 May 2019 17:03:49 +0000 (UTC)
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <d086216f-f3fc-c88a-3891-81e84e8bdb01@suse.de>
 <VI1PR04MB5134BFA391D8FF013762882FEC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <19cc3230-33b0-e465-6317-590780b33efa@suse.de>
Date: Fri, 31 May 2019 19:03:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5134BFA391D8FF013762882FEC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100351_430930_7292F47C 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Mian Yousaf Kaukab <yousaf.kaukab@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTGF1cmVudGl1LAoKQW0gMzEuMDUuMTkgdW0gMTg6NDYgc2NocmllYiBMYXVyZW50aXUg
VHVkb3I6Cj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEFuZHJlYXMgRsOk
cmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPj4gU2VudDogRnJpZGF5LCBNYXkgMzEsIDIwMTkgNzox
NSBQTQo+Pgo+PiBIaSBMYXVyZW50aXUsCj4+Cj4+IEFtIDMwLjA1LjE5IHVtIDE2OjE5IHNjaHJp
ZWIgbGF1cmVudGl1LnR1ZG9yQG54cC5jb206Cj4+PiBUaGlzIHBhdGNoIHNlcmllcyBjb250YWlu
cyBzZXZlcmFsIGZpeGVzIGluIHByZXBhcmF0aW9uIGZvciBTTU1VCj4+PiBzdXBwb3J0IG9uIE5Y
UCBMUzEwNDNBIGFuZCBMUzEwNDZBIGNoaXBzLiBPbmNlIHRoZXNlIGdldCBwaWNrZWQgdXAsCj4+
PiBJJ2xsIHN1Ym1pdCB0aGUgYWN0dWFsIFNNTVUgZW5hYmxlbWVudCBwYXRjaGVzIGNvbnNpc3Rp
bmcgaW4gdGhlCj4+PiByZXF1aXJlZCBkZXZpY2UgdHJlZSBjaGFuZ2VzLgo+Pgo+PiBIYXZlIHlv
dSB0aG91Z2h0IHRocm91Z2ggd2hhdCB3aWxsIGhhcHBlbiBpZiB0aGlzIHBhdGNoIG9yZGVyaW5n
IGlzIG5vdAo+PiBwcmVzZXJ2ZWQ/IEluIHBhcnRpY3VsYXIsIGEgdXNlciBpbnN0YWxsaW5nIGEg
ZnV0dXJlIFUtQm9vdCB1cGRhdGUgd2l0aAo+PiB0aGUgRFRCIGJpdHMgYnV0IGJvb3RpbmcgYSBz
dGFibGUga2VybmVsIHdpdGhvdXQgdGhpcyBwYXRjaCBzZXJpZXMgLQo+PiB3b3VsZG4ndCB0aGF0
IHJlZ3Jlc3MgZHBhYSB0aGVuIGZvciBvdXIgY3VzdG9tZXJzPwo+Pgo+IAo+IFRoZXNlIGFyZSBm
aXhlcyBmb3IgaXNzdWVzIHRoYXQgcG9wcGVkIG91dCBhZnRlciBlbmFibGluZyBTTU1VLiAKPiBJ
IGRvIG5vdCBleHBlY3QgdGhlbSB0byBicmVhayBhbnl0aGluZy4KClRoYXQgd2FzIG5vdCBteSBx
dWVzdGlvbiEgWW91J3JlIG1pc3NpbmcgbXkgcG9pbnQ6IEFsbCB5b3VyIHBhdGNoZXMgYXJlCmxh
Y2tpbmcgYSBGaXhlcyBoZWFkZXIgaW4gdGhlaXIgY29tbWl0IG1lc3NhZ2UsIGZvciBiYWNrcG9y
dGluZyB0aGVtLCB0bwphdm9pZCBfeW91ciBEVCBwYXRjaGVzXyBicmVha2luZyB0aGUgZHJpdmVy
IG9uIHN0YWJsZSBicmFuY2hlcyEKClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIExpbnV4IEdt
YkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1l
bmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJl
cmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
