Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5CCF526E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4ZIDD+Z4E2UGfAD1ptR9Az2xECudPHYxm1gOEdw6AA=; b=m+rFZf516sV+C7
	2kpoSNiA6Mt1EJLauraJOX3yNStmlrf5BB3eHla5xtFPwcogpsmDgBCrcCZcI6FOMhYMfDMgu1Lbv
	MPUmc+gJHCQGY9ZJeSVPjjCqbxFmEMPFw23lLupBQru0SLcSDo7dVzHyYMbSlJ/5rvKjxfSS/tsNr
	WED8nzFcgGRFqa3zz+sgJnDTMyyaJB4DtCB3ZoKv+vqKJA8oiUxAqDyRC10CrD2cezkwKcvpqjNzm
	eKiCoUWfOWPRp5gTGygNtTXaUk8yWbymD1IlNisczU4fvLaUZB0BtJctqCnyG3SMzxGaxxMLa5EXN
	GGs8IELxb1/66WGqsruw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7tG-0006oA-1G; Fri, 08 Nov 2019 17:17:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7t6-0006mE-EJ; Fri, 08 Nov 2019 17:17:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D600BAC75;
 Fri,  8 Nov 2019 17:17:26 +0000 (UTC)
Subject: Re: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
Date: Fri, 8 Nov 2019 18:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_091732_622362_E25A03CA 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwOC4xMS4xOSB1bSAxNjozNiBzY2hyaWViIEphbWVzIFRhaToKPj4gQW5k
IGRvdWJsZS1jaGVjayB3aGV0aGVyIHlvdSBhY3R1YWxseSBuZWVkIDwyPiAtIGNvbXBhcmUgcnRk
MTI5eC5kdHNpIHVzaW5nCj4+IDwxPiBiZWNhdXNlIG5vdGhpbmcgd2VudCBiZXlvbmQgMzItYml0
IGFkZHJlc3Mgc3BhY2UuIEl0IHdhcyBhIHJldmlldwo+PiByZXF1ZXN0IGJhY2sgdGhlbi4gQ2Fu
IFJURDE2MTkgaGF2ZSBtb3JlIHRoYW4gMiBHaUIgUkFNLCB3aXRoIGEgc2Vjb25kCj4+IFJBTSBy
ZWdpb24gaW4gaGlnaCBtZW0sIHJlcXVpcmluZyB0d28gY2VsbHMgZm9yIG1lbW9yeSBub2Rlcz8K
Pj4KPiBUaGUgUlREMTYxOSBjYW4gc3VwcG9ydCBtb3JlIHRoYW4gMiBHaUIgUkFNLgoKSG93IG11
Y2g/IE1vcmUgdGhhbiAweDk4MDAwMDAwPyBUaGUgUlREMTM5NSBkYXRhc2hlZXQgc2F5cyB1cCB0
byA0IEdCIC0KZG9lcyB0aGF0IG1lYW4gaXQgY29udGludWVzIGluIGEgc2Vjb25kIHJlZ2lvbiBi
ZXlvbmQgMHhmZmZmZmZmZj8gVGhvc2UKbG9jYXRpb25zIHNob3VsZCBiZSBleGNsdWRlZCBpbiB0
aGUgc29jIG5vZGUgcmFuZ2VzICh3aGljaCB5b3Ugc2FkbHkKYXBwZWFyIHRvIGhhdmUgZHJvcHBl
ZCBpbiB2MikuCgpJJ2xsIHRyeSB0byBwb3N0IGEgcGF0Y2ggZm9yIFJURDEyOTUgc29vbiB0byBk
ZW1vbnN0cmF0ZSwgaXQncyBqdXN0IGEKbGl0dGxlIHRpbWUtY29uc3VtaW5nIHdpdGggdGhlIDEw
MCsgY29tbWl0cyBvbiB0b3Agb2YgbGludXgtbmV4dCB0aGF0Cm5lZWQgdG8gYmUgcmViYXNlZCB0
aGVuLi4uIFJURDExOTUgbWF5IGJlIHF1aWNrZXIuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VT
RSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7D
vHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8
cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
