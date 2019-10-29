Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238DDE7FAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YH5tlFvwJ8dZdhsGAkMXzBLDgs8ih377HoykgelPyJU=; b=VExV3EC1e6LOP1
	UWxLCf1bu3RBk1A1LEZ/cFMolfv6ZDT3cSx8D9bxWEryEQXFwZkHp79BbWucmq6XnmFeDJByBOF12
	9E1Rfpq039SGVON0RlVegd4urQdE6QTw+nQrVMZia2IY+Uw0XZY/mEeXgezJbpt0TDPO+Y5xM+H4z
	nRGLtohV3uk/FpRZuNtoU92JXOwvkDUUqaxnVbxyngO5exqWn9mDP8ZU4sXLMzBGqAlcJs3O9wvsx
	qgxesaQ3Gupo/u8Gy9dswupA8/W3y0Ji3hWaIng/RezDO+WU6sMHZt7bgzx3u7FHg+ZEBMq9JjlNd
	hqROUIHuERya/Ojrjtsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPK16-000791-Bd; Tue, 29 Oct 2019 05:26:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPK0x-00077Q-3A; Tue, 29 Oct 2019 05:25:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B6521AD09;
 Tue, 29 Oct 2019 05:25:53 +0000 (UTC)
Subject: Re: [PATCH v2 01/11] dt-bindings: reset: Add Realtek RTD1295
To: linux-realtek-soc@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20191023101317.26656-1-afaerber@suse.de>
 <20191023101317.26656-2-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <2b30a15d-b610-fca7-97cf-9a570494d545@suse.de>
Date: Tue, 29 Oct 2019 06:25:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023101317.26656-2-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_222555_282943_622DC8A9 
X-CRM114-Status: GOOD (  11.83  )
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjMuMTAuMTkgdW0gMTI6MTMgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQWRkIGEgaGVh
ZGVyIHdpdGggc3ltYm9saWMgcmVzZXQgaW5kaWNlcyBmb3IgUmVhbHRlayBSVEQxMjk1IFNvQy4K
PiBOYW1pbmcgd2FzIGRlcml2ZWQgZnJvbSByZXNldC1uYW1lcyBpbiBhbiBPRU0ncyBEZXZpY2Ug
VHJlZS4KPiAKPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBbQUY6
IERyb3BwZWQgUlREMTI5NSBzcGVjaWZpYyBiaW5kaW5nIGRlZmluaXRpb24sIHVwZGF0ZWQgU1BE
WF0KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4g
LS0tCj4gIHYxIC0+IHYyOgo+ICAqIERyb3BwZWQgdGV4dHVhbCBiaW5kaW5nIHdpdGggbmV3IGNv
bXBhdGlibGUKPiAgKiBVcGRhdGVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIGxvY2F0aW9uCj4g
ICogVXBkYXRlZCB0byBTUERYIDIuMAo+ICAqIENoYW5nZWQgZnJvbSBNSVQgdG8gQlNEIChSb2Ip
Cj4gIAo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oIHwgMTEx
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDExMSBpbnNl
cnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0
L3JlYWx0ZWsscnRkMTI5NS5oCgpBZGRlZCBQaGlsaXBwJ3MgQWNrZWQtYnkgYW5kIGFwcGxpZWQg
dG8gbGludXgtcmVhbHRlay5naXQgdjUuNS9kdDY0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9o
PXY1LjUvZHQ2NAoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMg
R2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjog
RmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
