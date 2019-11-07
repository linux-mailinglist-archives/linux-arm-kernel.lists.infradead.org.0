Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6FCF27F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9qpjtuzYKFHacEj8KcCrT6bv4IWmodg7YYXL/vIdW8=; b=LcwnVoqAVml4fz
	Yg6dW3u679vQdnrGdpxLZUlyvudwISpdqtEDdzWEDrrP704s1aI1SctfsEkjJhMf7T+gMCvXnSoEE
	0XbMa/QDZSlDfNZyJnFP+8llchc2pEfsRSC8mkXb3XjIVwdfJUCL1u8cmuWfDCwk3XnEUcT40GsjH
	QXI3X9T3v1F4wmYEDTY6mb+4T8/080Dvesh+xwK+cW9B+NSPuFi85rkBX1Ux6MPHfhg2zRfwcTQu0
	uIOLoo4CG4pD4eLuHoTaP3rUdE4rPVrFy3Oulgu9faxH4NxgHngXtV0MGPzQM0iEXgIOTNyrS1kbO
	ysZKa90Z6PKrP2W7LAJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSc2O-0000jY-TT; Thu, 07 Nov 2019 07:17:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSc2G-0000j6-Ma; Thu, 07 Nov 2019 07:16:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B6981AD85;
 Thu,  7 Nov 2019 07:16:50 +0000 (UTC)
Subject: Re: [RFC 00/11] ARM: Realtek RTD1195/RTD1295 SoC info
To: linux-realtek-soc@lists.infradead.org
References: <20191103013645.9856-1-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <d0b5e4ce-b0f1-2675-c5be-6720140077b8@suse.de>
Date: Thu, 7 Nov 2019 08:16:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_231652_876118_2385B6B9 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDMuMTEuMTkgdW0gMDI6MzYgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gUHJlcGFyZWQg
YnV0IG5vdCBpbmNsdWRlZCBoZXJlIGlzOgo+ICogUlREMTM5NSBmYW1pbHksIHdoaWNoIHdlIGRv
bid0IGhhdmUgYSBEVCBmb3IgeWV0LAo+ICogUlREMTYxOSBmYW1pbHksIHdoaWNoIHdlIGRvbid0
IGhhdmUgYSBEVCBmb3IgeWV0LCBDaGlwIElEIHRvIGJlIHZlcmlmaWVkLAo+ICogUlREMTMxOSBm
YW1pbHksIHdoaWNoIHdlIGRvbid0IGhhdmUgYSBEVCBmb3IgeWV0LCB3aXRoIFRPRE8gZm9yIGl0
cyBDaGlwIElELgo+IAo+IExhdGVzdCBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoKPiBodHRwczov
L2dpdGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5leHQKCkZvciBhbnlv
bmUgd29uZGVyaW5nLCB0aGUgUlREMTM5NSBTb0MgaW5mbyBwYXRjaCBpbiBhYm92ZSB0cmVlIGhh
ZCBhCnR5cG8gaW4gdGhlIGNoaXAgaWQgdGhhdCBoYXMgYmVlbiBmaXhlZCBhbmQgdGVzdGVkIG9u
IEJQaS1NNCBub3cuCgpDaGVlcnMsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9u
cyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdG
OiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
