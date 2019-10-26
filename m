Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3619FE5799
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5b7QXSXSWzKHIB++AhOCLLEIZ303rgpLKojZ8MeSc4=; b=Sb8ozZLZM27mZ1
	28LK+eo0FaLQohqwLpOs2LmUF7DerGecgJoBIo3QGeW6IwkXth6JiYhbVk2a+nSWd1gvnbdT31JDN
	9OJQTCZJeQ9bGL/7dnajrav4vi3WLV/xwoHZdIRoWO/SCcjZnKc7P0uaCgVKOL4Edf0Acnz3YhlRu
	WWiTB+XHRLmL/Um4m7/EZ2yPb7ad85MZ8Q2xQsYKD6z+1QzUzTLk/ZARhH0ErVD5oe1iOu+YtdDhg
	zb3Tph63C7v1cXP+Za+cbeCGW+MiZsLfy8AMgCYESy41AMfeUB6SymPKPvlHCRJeZnM1yWnbBZCQj
	+fWAR87YLt47wCGic1lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOA4X-0003VU-0h; Sat, 26 Oct 2019 00:36:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOA4O-0003Uq-8i; Sat, 26 Oct 2019 00:36:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 489D4AC4D;
 Sat, 26 Oct 2019 00:36:38 +0000 (UTC)
Subject: Re: [PATCH v2 05/11] arm64: realtek: Select reset controller
To: linux-realtek-soc@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20191023101317.26656-1-afaerber@suse.de>
 <20191023101317.26656-6-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <3a510c7a-d91c-524a-ad20-6572b88c31fe@suse.de>
Date: Sat, 26 Oct 2019 02:36:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023101317.26656-6-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_173640_451800_9328048E 
X-CRM114-Status: GOOD (  13.79  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjMuMTAuMTkgdW0gMTI6MTMgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gU2VsZWN0IFJF
U0VUX0NPTlRST0xMRVIgZm9yIEFSQ0hfUkVBTFRFSy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmRy
ZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gLS0tCj4gIHYyOiBOZXcKPiAgCj4gIGFy
Y2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMg
Yi9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zCj4gaW5kZXggNjNiNDYzYjg4MDQwLi45MGQz
YzA0ZWJmZjAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3Jtcwo+ICsr
KyBiL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKPiBAQCAtMTg5LDYgKzE4OSw3IEBAIGNv
bmZpZyBBUkNIX1FDT00KPiAgCj4gIGNvbmZpZyBBUkNIX1JFQUxURUsKPiAgCWJvb2wgIlJlYWx0
ZWsgUGxhdGZvcm1zIgo+ICsJc2VsZWN0IFJFU0VUX0NPTlRST0xMRVIKPiAgCWhlbHAKPiAgCSAg
VGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBBUk12OCBiYXNlZCBSZWFsdGVrIGNoaXBzZXRz
LAo+ICAJICBsaWtlIHRoZSBSVEQxMjk1LgoKQXBwbGllZCB0byBsaW51eC1yZWFsdGVrLmdpdCB2
NS41L2FybTY0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9oPXY1LjUvYXJtNjQKClJlZ2FyZHMs
CkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVs
ZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIK
SFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
