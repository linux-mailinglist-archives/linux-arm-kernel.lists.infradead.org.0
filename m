Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E819C348
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 14:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wLS+1VI7s1PTcbkmnzguTWwg6Qmo3A4hI5GmTphZ70M=; b=Y8mDyhT0NouiPr+xTgIrZHGsS
	rzpj30f3DK60cjztkLz8KVsImpX6DnwCsTRch4E2bFzmNTQnUdAPqVcn/Btu80ZClCK+hPklANY/c
	ZrMto07sbGE/UNDq6Ypqq7Dk8ahy3UD9KSsVcMfJ1e9Efw7hBl4Y2gJ4GN9XftxB1dmvomzRI21j+
	lZVsqjRnfFRRA/+PaffanGK1mFoovu6VR16GNMkWD6RK1aToxvEL9V575JKpfGW9ABXvfN25A60MH
	hiZZ5Mb7namc7vmzSEjUSwQynOPz7p0R/tlO4Mtzmr1j8Uh+OQlJu+w+nWqguJdlIAIUali7IOGBR
	Svi0hhWHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1rwd-0006Ll-EK; Sun, 25 Aug 2019 12:48:31 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1rwQ-0006L5-TL; Sun, 25 Aug 2019 12:48:20 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 1F14F5FA49;
 Sun, 25 Aug 2019 14:48:14 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="OHv9jHhP"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id C4F541D8D553;
 Sun, 25 Aug 2019 14:48:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com C4F541D8D553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566737293;
 bh=cFgSbsEwKunNxae3/0ASSKcD5GEjChBMA8MDxulxKDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OHv9jHhPHxlSwSHVhAgNHnwaLAItJR6/N/N2AwZ3/jAQcMzuf5X3PzK44cqowvzj0
 KY0b6ADhII7iY+dWhtdo4u8lTl2/ZNu0+zXmdlthrLgHa5h/MnUhOaElJoqH+Kisf+
 PqvB6kJ0d8kF6t1eii4J0upW9gNjxhz+YPopixgH6YCMonZtfL0LKQGfa0RwlS2Ix+
 p3lerDHTG7iXDfsIenW5g3L4Si5RdLXIQp3u4uMnvCbQ3erkBMEavUmjCWTZPGhy+8
 Tr9J1UhNM1duzq0LtxLgVhMD2kEWZ6FjvYY9kh9nxmmnAv+/bBRlY4mDNQPno4VDRb
 ccM++vdGi4ETQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sun, 25 Aug 2019 12:48:13 +0000
Date: Sun, 25 Aug 2019 12:48:13 +0000
Message-ID: <20190825124813.Horde.ipTYml4Y_iJUAXHsR1A0--K@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 3/3] net: dsa: mt7530: Add support for port 5
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190821144547.15113-4-opensource@vdorst.com>
 <20190824.161912.1377369658338940538.davem@davemloft.net>
In-Reply-To: <20190824.161912.1377369658338940538.davem@davemloft.net>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_054819_228438_DDDBD8AB 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGF2aWQsCgpRdW90aW5nIERhdmlkIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD46Cgo+
IEZyb206IFJlbsOpIHZhbiBEb3JzdCA8b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgo+IERhdGU6IFdl
ZCwgMjEgQXVnIDIwMTkgMTY6NDU6NDcgKzAyMDAKPgo+PiArCWRldl9pbmZvKGRzLT5kZXYsICJT
ZXR1cCBQNSwgSFdUUkFQPTB4JXgsIGludGZfc2VsPSVzLCBwaHktbW9kZT0lc1xuIiwKPj4gKwkJ
IHZhbCwgcDVfaW50Zl9tb2Rlcyhwcml2LT5wNV9pbnRmX3NlbCksIHBoeV9tb2RlcyhpbnRlcmZh
Y2UpKTsKPgo+IFRoaXMgaXMgZGVidWdnaW5nLCBhdCBiZXN0LiAgUGxlYXNlIG1ha2UgdGhpcyBh
IGRlYnVnZ2luZyBtZXNzYWdlIG9yCj4gcmVtb3ZlIGl0IGVudGlyZWx5LgoKSSBjaGFuZ2UgaXQg
dG8gYSBkZWJ1ZyBtZXNzYWdlLgoKSWYgdGhlcmUgaXMgbm90aGluZyBlbHNlIEkgc2VuZCBhIG5l
dyB2ZXJzaW9uIHdpdGggdGhpcyBjaGFuZ2UgYWxzbwphZGQgdGhlIHRhZ3MgYWNrLWJ5IFJ1c3Nl
bGwgS2luZyBhbmQgdGVzdGVkLWJ5IEZyYW5rIFd1bmRlcmxpY2guCgpHcmVhdHMsCgpSZW7DqQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
