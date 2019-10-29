Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7920FE7F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xt/F/Ub/7UjSVhJcFrzb57uXqNXKeWRrxO1ZTeg1hpM=; b=fmNbHw/U65cAmj
	++mLGuKj2aNai+1cNcnmqCFgf/PLXcmFS72QitkkJUzEsTONhBKDjcNsKWsPckZ+xFvN+vnaDXqt6
	B+k+QZoVIKwmXw9lGHzSsZAL0kWJBUqJ2iMTWT/sOH5DfbascgaNNAGRVluu0VsIfiRjAm0Jgy4Gm
	ygey4XTnchwWP4pzjzN5c0JJxfPW5rNb+2ptFTiyDrM5rsXPq9Ak+CwCAtOJL3Htr5oRlDrj6qpQR
	lcLZex6mJnkbgcvwnot9QLQGvW7N6AnEnD3SXjwQUQeEM+ILgi4/wQah/MvyGF89X+wiN3/fc0Ur5
	gQ2iPJ5M/yDZ2dgXiDwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJJK-0001XJ-E3; Tue, 29 Oct 2019 04:40:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJJ6-0001WL-C1; Tue, 29 Oct 2019 04:40:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1EB39AD14;
 Tue, 29 Oct 2019 04:40:35 +0000 (UTC)
Subject: Re: [PATCH v2 7/8] dt-bindings: arm: realtek: Document RTD1296 and
 Synology DS418
To: linux-realtek-soc@lists.infradead.org
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-8-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <e60174d6-4b0a-7504-960c-090fb1791f03@suse.de>
Date: Tue, 29 Oct 2019 05:40:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020040817.16882-8-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_214036_552606_1695F030 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMTAuMTkgdW0gMDY6MDggc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gRGVmaW5lIGNv
bXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMjk2IFNvQyBhbmQgU3lub2xvZ3kKPiBE
aXNrU3RhdGlvbiBEUzQxOCBOQVMuCj4gCj4gQ2M6IGluZm9Ac3lub2xvZ3kuY29tCj4gQWNrZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gW0FGOiBDb252ZXJ0ZWQgdG8ganNv
bi1zY2hlbWFdCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgo+IC0tLQo+ICB2MSAtPiB2MjoKPiAgKiBDb252ZXJ0ZWQgdG8gWUFNTCBzY2hlbWEKPiAg
Cj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwg
NiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKQXBwbGllZCB0byBs
aW51eC1yZWFsdGVrLmdpdCB2NS41L2R0NjQ6CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9hZmFlcmJlci9saW51eC1yZWFsdGVrLmdpdC9sb2cvP2g9djUu
NS9kdDY0CgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2Vy
bWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVs
aXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
