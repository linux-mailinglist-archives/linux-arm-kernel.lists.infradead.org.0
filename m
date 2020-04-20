Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEE01B05EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvWQUku83JAyHDQsgp7qGtYw/iUWILh9RdGmPb+B0ZM=; b=XGzHSfo6h/STMF
	KKycWVUSVDfJt8Y7/U+xROuGGRpYIqzQ4yIwPuFaf3Fi3/FcnYTegXsoAyn0Uoe5DkfZ8ri4MWufA
	LEO463eoqaAh2aQ7cCry352y0kOh/O/WSSgmatLn1bsNaY2MJ80EKv2CQF2f9q7kh88UoxcS2Z3//
	yVooHYZ9J7zmkQNTHX/ApG+WfwN2f1nm56jG8EL+djdIewHJyy8/fLC1SQrwmi/YCZsH2EGPYA0yF
	RKnuMmOY5c3ayrAhtaauRHgWJ+8CV99A20bhhVTyRjiYdaFvLF6VwZ/wjDWxEzWymtKtpTWKuj7LH
	kDDGkR2aOshJqj/ngtVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQT2F-0003NQ-97; Mon, 20 Apr 2020 09:48:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQT27-0003ML-75
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1587376081; bh=kvg/KPchN1Bd4x4Qv/4aiZ1j8gCVrRDg80fgEeNCT3w=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=LDHslhvFYkNvK5LvMAotJMKWV1Oyixl1P0cwrXBL45Fr3c1qZIqNW0bxcZLXITig4
 f/DpPOBGtsRKQJfjFTcdxD7J6Ss/ZC7HiH5Cf3bNqWtpztoJwT4noCkJ88+KCmCrnV
 GG+vlLU/1hj6lL0MSyXrB3F3b7EhsCh6OF++1eXI=
Date: Mon, 20 Apr 2020 11:48:01 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200420094801.ltsittj3gdrbbr3u@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_024807_423334_F03BE314 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gQ2zDqW1lbnQsCgpPbiBTdW4sIEFwciAxOSwgMjAyMCBhdCAwMzo1MDowNFBNICswMjAw
LCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gSGkgU3VueGkgbWFpbnRhaW5lcnMgYW5kIG1lbWJl
cnMsCj4gCj4gTm93IHRoYXQgcmVxdWlyZWQgZHJpdmVycyBhcmUgbWVyZ2VkIHdlIGNhbiBjb250
aWJ1dGUgb24gRFZGUwo+IHN1cHBvcnQgZm9yIEFsbHdpbm5lciBINi4KPiAKClsgc25pcCBdCgo+
IAo+IENoYW5nZXMgc2luY2UgdjIgKHRoYW5rcyB0byBNYXhpbWUgUmlwYXJkKToKPiAgIC0gQ2hh
bmdlIE9yYW5nZSBQaSBib2FyZHMgdG8gT3JhbmdlIFBpIDMKPiAgIC0gQ2hhbmdlIHNvYyBzcGVl
ZCBudm1lbSBub2RlIG5hbWUKPiAgIC0gRml4IGRldmljZSB0cmVlIHdhcm5pbmdzCj4gICAtIERy
b3AgR1BVIG9wcCB0YWJsZXMKCkxvb2tzIGxpa2UgeW91IG1heSBoYXZlIGFsc28gaW5hZHZlcmVu
dGx5IGRyb3BwZWQgdGhlIHNlY29uZCBwYXRjaCBmcm9tIHYyCnNlcmllcyB0aGF0IGltcGxlbWVu
dGVkIENQVSB0aGVybWFsIHRyaXAgcG9pbnRzLgoKPiBDaGFuZ2VzIHNpbmNlIHYxICh0aGFua3Mg
dG8gT25kxZllaiBKaXJtYW4pOgo+ICAgLSBSZW1vdmUgUG9sbGluZyB0aGVybWFsCj4gICAtIEFk
ZCBPcmFuZ2UgUGkgYm9hcmRzCj4gICAtIFJlbW92ZSBtaW5pbWFsIHZvbHRhZ2UgY2hhbmdlIGZv
ciBCZWVsaW5rIEdTMQo+ICAgLSBBZGQgcmFtcC1kZXBsYXkgZm9yIEdQVSBhbmQgQ1BVIHJlZ3Vs
YXRvcnMKPiAgIC0gUHVzaCB0byB0aGVybWFsIHBvaW50IHRvIDg1wrBDIChBbGx3aW5uZXIgc2V0
IHRoZW0gdG8gMTAwwrBDIGFuZCAxMTXCsEMpCj4gICAtIEFkZGVkIDEuNkdIeiBhbmQgMS43R0h6
IHRvIE9QUCB0YWJsZS4KPiAKPiBDbMOpbWVudCBQw6lyb24gKDYpOgo+ICAgYXJtNjQ6IGNvbmZp
Z3M6IEVuYWJsZSBzdW41MGkgY3B1ZnJlcSBudm1lbQo+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVy
OiBoNjogRW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rIEdTMQo+ICAgYXJtNjQ6IGR0
czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBPcmFuZ2UgUGkgMwo+
ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBU
YW5peCBUWDYKPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogU29ydCBQaW5lIEg2NCBkZXZpY2Ut
dHJlZSBub2Rlcwo+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBhbmQg
R1BVIG9wcCB0YWJsZXMgZm9yIFBpbmUgSDY0CgpZb3UgbWF5IGFsc28gd2FudCB0byBmaXggdGl0
bGUgb2YgdGhpcyBwYXRjaCB0byBkcm9wIHRoZSBHUFUgcmVmZXJlbmNlLgoKdGhhbmsgeW91IGFu
ZCByZWdhcmRzLAoJby4KCj4gT25kcmVqIEppcm1hbiAoMSk6Cj4gICBhcm02NDogZHRzOiBhbGx3
aW5uZXI6IGg2OiBBZGQgQ1BVIE9wZXJhdGluZyBQZXJmb3JtYW5jZSBQb2ludHMgdGFibGUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
