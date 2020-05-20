Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7161DA6BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLp0mq3WuAK+wLZEVhukvtqBH5+r6HYQL1/Rinl8xKM=; b=YeTaK5wH/pD8D1
	eoSIsmXP0bfIkcbm0D5NOhrvKE6Z0OJPD/X4l8NIjPfelj0rCfW6zXxCsYbeLf5d2ll7Uw+Py1ZOK
	G0wsOPKinEohgy7ggnNmuNhDCf68omLWYtUuDrUl6IohWQ5tVkvfPq0hvygzr23cXlr5nWpFnyLUi
	ekjrIV2YrOhltPAHoGTkh25qV3i/LZtMBFpXU+2NIGyoY1wius3mHJ3gOn2yFIgwYR9pIIHgL+E/W
	Q/K08KK/ro3gkwgMWF/W7BKMzNgIzAM2xXsyhHASyNCEb8bhn77lDiEfmnOO5rY6P1ylSIQqvctig
	2X/8/xi5xFUwMpGyJdCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCr8-0000x8-BW; Wed, 20 May 2020 00:45:10 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCqq-0000wP-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:44:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 65FD83A3;
 Tue, 19 May 2020 20:44:47 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Tue, 19 May 2020 20:44:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type:content-transfer-encoding; s=fm2; bh=7JDNF
 nvw/MKQRxgiZIZhKdf/m6vfiT2RDShepmoc0+E=; b=e2K+Bb6JoaXZ44iWH/Zda
 koaFIu7QNM0zQrULlqLWeRbD8qrBlAPnZUbE39suS5tPuL9e3gL0TcRHeLAVqgiz
 zuh9MiUb2dhHCnm65EWfkb27Pky8M4OY67P58946TTQylxPgLlDsv92pDNecmdie
 mJ+PpKU+lLSUcqs/ldeK3WJSxay8ENI+PuxmkB5DY8v1kDm8kYrGxlx+JslclDBZ
 jEVSGXJkPL9KLNhlvC1MHf62NJ4Jf5voBwR8zYuJOwi+SHTHkYsIOOkjwD6OaLE1
 EwPqrR8Z+RS2LyuAeaniyp/avSYij1OJDz7CE4H6vGBhc4Y4IigciRcXRUK1VYbH
 w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=7JDNFnvw/MKQRxgiZIZhKdf/m6vfiT2RDShepmoc0
 +E=; b=De1I4CrAnX/+QuzNoMsr0XWMSCEwUMzoNdf19T1nHoBuYWIccH3t3zSqO
 S/cSlT4R4zR1pfk67xMmmyQrO02vKZigtCj0oZ6vtsIJpqRqqzKnoJagrv15ePcm
 3mbjAX2WzRo2UY9r5YokVd+fsxgQJ4u3cm6xAnt/ODe16JtP4zPv0WyQfTu3yCdY
 /8E/BVA2YLo2Hv2pvbwZtOF/0Ah334OQCH8CYCC+pbSJHzhAGHGoFU0TIEXUw/4n
 XzEm5k0iJYbfARNxLCFyf4yMyOMrCa8TzeJW+MsBDmpOCQyVy9Eg45X7unfyxpRf
 hiK/POZuodpFqwnRtrIOoR4NIH2lQ==
X-ME-Sender: <xms:e33EXgja6gDCTOmYkynLq3AJop1WzrQV7Vmu2ngAahCTQQ20OUDwaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtkedgfeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtgfesth
 hqredtreerjeenucfhrhhomhepfdetnhgurhgvficulfgvfhhfvghrhidfuceorghnughr
 vgifsegrjhdrihgurdgruheqnecuggftrfgrthhtvghrnhepvdegkeehgeefvdfhteehhf
 duteetgeeugefgieeigeeuheekudegtdekgfelgfehnecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:e33EXpAhOJsHGMoEqdeWe-SJ6dKibie68CJGTCOur5-mSfpgsjDtoQ>
 <xmx:e33EXoECLk1sDKzPvg8LHXVXkIR3Lz05RqB1c-pDH2jox87bzN2Wzw>
 <xmx:e33EXhRjpqQY0awCucs72fiI9HvVqhCsxgal6FXZUa3X7zDLybMUJA>
 <xmx:f33EXraObipJwgvnbuVQ6Bxkyg5RHSejXxcUbVJ07TZMnxrTUD60dg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 439F8E00BD; Tue, 19 May 2020 20:44:43 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-464-g810d66a-fmstable-20200518v1
Mime-Version: 1.0
Message-Id: <a9a7f3d5-6c9b-4c2c-848e-2d61971ae37b@www.fastmail.com>
In-Reply-To: <20200519150204.GG1551@shell.armlinux.org.uk>
References: <20200519143132.603579-1-andrew@aj.id.au>
 <20200519150204.GG1551@shell.armlinux.org.uk>
Date: Wed, 20 May 2020 10:14:23 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Russell King" <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: Implement functions for HAVE_FUNCTION_ARG_ACCESS_API
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_174453_297030_32766E90 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: oleg@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKCk9uIFdlZCwgMjAgTWF5IDIwMjAsIGF0IDAwOjMyLCBSdXNzZWxsIEtpbmcg
LSBBUk0gTGludXggYWRtaW4gd3JvdGU6Cj4gT24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMTI6MDE6
MzJBTSArMDkzMCwgQW5kcmV3IEplZmZlcnkgd3JvdGU6Cj4gPiBUaGlzIGFsbG93cyBleHRyYWN0
aW9uIG9mIGtlcm5lbCBmdW5jdGlvbiBhcmd1bWVudHMgdmlhIGtwcm9iZXMgb24gQVJNLgo+ID4g
QmFzZWQgb24gdGhlIGFybTY0IGltcGxlbWVudGF0aW9uIGFuZCBhZGFwdGVkIGZvciB0aGUgMzIt
Yml0IEFBUENTLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3
QGFqLmlkLmF1Pgo+ID4gLS0tCj4gPiBUaGUgZGVzY3JpcHRpb24gZm9yIEhBVkVfRlVOQ1RJT05f
QVJHX0FDQ0VTU19BUEkgd2FzIHByZXR0eSB2YWd1ZSBvbiB3aGF0IHdhcwo+ID4gcmVxdWlyZWQu
IEkndmUgaW1wbGVtZW50ZWQgZW5vdWdoIHRvIGVuYWJsZSBhcmd1bWVudCBleHRyYWN0aW9uIGZv
ciBrcHJvYmVzOyBpcwo+ID4gdGhlcmUgYW55dGhpbmcgZWxzZSBuZWVkZWQgdG8gc2F0aXNmeSBI
QVZFX0ZVTkNUSU9OX0FSR19BQ0NFU1NfQVBJPwo+IAo+IFdoYXQgYWJvdXQgNjQtYml0IGFyZ3Vt
ZW50cz8gIEhvdyBkbyB0aGV5IGdldCBoYW5kbGVkPwo+IAo+IHJlZ3NfZ2V0X2tlcm5lbF9hcmd1
bWVudCgpIHRhbGtzIGFib3V0ICduJyBiZWluZyB0aGUgYXJndW1lbnQgbnVtYmVyLAo+IGFuZCBt
YXBzIHRoaXMgZGlyZWN0bHkgdG8gYSByZWdpc3Rlci4gIElmIGEgZnVuY3Rpb24gYXJndW1lbnQK
PiBwcm90b3R5cGUgaXM6Cj4gCj4gCShzb21ldGhpbmcgKmZvbywgbG9uZyBsb25nIGJhciwgaW50
IGJheikKPiAKPiBUaGUgZm9vIGlzIGluIHIwLCBiYXIgaXMgaW4gcjIvcjMgb24gRUFCSSwgYW5k
IGJheiBpcyBvbiB0aGUgc3RhY2suCj4gCj4gbj0wIHdpbGwgcmV0dXJuIGZvby4gIG49MSB3aWxs
IGJlIHVuZGVmaW5lZC4gIG49MiB3aWxsIHJldHVybiBwYXJ0IG9mCj4gYmFyLCBhbmQgbj0zIHdp
bGwgcmV0dXJuIHRoZSBvdGhlciBoYWxmLiAgSXMgdGhpcyB3aGF0IGlzIGV4cGVjdGVkPwoKQ2Vy
dGFpbmx5IGRvZXNuJ3QgZmVlbCByaWdodCwgaG93ZXZlciB0aGUgYnJva2VuIGJlaGF2aW91ciBz
ZWVtcyB0byBiZSBhCmNvbXByb21pc2UgYWNjZXB0ZWQgaW4gdGhlIGV4aXN0aW5nIGNvdXBsZSBv
ZiBpbXBsZW1lbnRhdGlvbnMgZm9yIGFybTY0CmFuZCB4ODYuIFRoZSBBUEkgcHJvdG90eXBlIGRv
ZXNuJ3QgZ2l2ZSB1cyBhbnkgdHlwZSBpbmZvcm1hdGlvbiwgc28gd2UncmUKbGVmdCB0byBndWVz
cy4KCkhlcmUncyB0aGUgY29tbWVudGFyeSBmcm9tIHRoZSBvdGhlcnM6CgphcmNoL3g4Ni9pbmNs
dWRlL2FzbS9wdHJhY2UuaDoKYGBgCi8qKgogKiByZWdzX2dldF9rZXJuZWxfYXJndW1lbnQoKSAt
IGdldCBOdGggZnVuY3Rpb24gYXJndW1lbnQgaW4ga2VybmVsCiAqIEByZWdzOiAgICAgICBwdF9y
ZWdzIG9mIHRoYXQgY29udGV4dAogKiBAbjogICAgICAgICAgZnVuY3Rpb24gYXJndW1lbnQgbnVt
YmVyIChzdGFydCBmcm9tIDApCiAqCiAqIHJlZ3NfZ2V0X2FyZ3VtZW50KCkgcmV0dXJucyBAbiB0
aCBhcmd1bWVudCBvZiB0aGUgZnVuY3Rpb24gY2FsbC4KICogTm90ZSB0aGF0IHRoaXMgY2hvb3Nl
cyBtb3N0IHByb2JhYmx5IGFzc2lnbm1lbnQsIGluIHNvbWUgY2FzZQogKiBpdCBjYW4gYmUgaW5j
b3JyZWN0LgogKiBUaGlzIGlzIGV4cGVjdGVkIHRvIGJlIGNhbGxlZCBmcm9tIGtwcm9iZXMgb3Ig
ZnRyYWNlIHdpdGggcmVncwogKiB3aGVyZSB0aGUgdG9wIG9mIHN0YWNrIGlzIHRoZSByZXR1cm4g
YWRkcmVzcy4KICovCnN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyByZWdzX2dldF9rZXJuZWxf
YXJndW1lbnQoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IG4pCnsKLi4uCmBgYAoKYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9wdHJhY2UuaDoKYGBgCi8qKgogKiByZWdzX2dldF9rZXJuZWxf
YXJndW1lbnQoKSAtIGdldCBOdGggZnVuY3Rpb24gYXJndW1lbnQgaW4ga2VybmVsCiAqIEByZWdz
OiAgICAgICBwdF9yZWdzIG9mIHRoYXQgY29udGV4dAogKiBAbjogICAgICAgICAgZnVuY3Rpb24g
YXJndW1lbnQgbnVtYmVyIChzdGFydCBmcm9tIDApCiAqCiAqIHJlZ3NfZ2V0X2FyZ3VtZW50KCkg
cmV0dXJucyBAbiB0aCBhcmd1bWVudCBvZiB0aGUgZnVuY3Rpb24gY2FsbC4KICoKICogTm90ZSB0
aGF0IHRoaXMgY2hvb3NlcyB0aGUgbW9zdCBsaWtlbHkgcmVnaXN0ZXIgbWFwcGluZy4gSW4gdmVy
eSByYXJlCiAqIGNhc2VzIHRoaXMgbWF5IG5vdCByZXR1cm4gY29ycmVjdCBkYXRhLCBmb3IgZXhh
bXBsZSwgaWYgb25lIG9mIHRoZQogKiBmdW5jdGlvbiBwYXJhbWV0ZXJzIGlzIDE2IGJ5dGVzIG9y
IGJpZ2dlci4gSW4gc3VjaCBjYXNlcywgd2UgY2Fubm90CiAqIGdldCBhY2Nlc3MgdGhlIHBhcmFt
ZXRlciBjb3JyZWN0bHkgYW5kIHRoZSByZWdpc3RlciBhc3NpZ25tZW50IG9mCiAqIHN1YnNlcXVl
bnQgcGFyYW1ldGVycyB3aWxsIGJlIHNoaWZ0ZWQuCiAqLwpzdGF0aWMgaW5saW5lIHVuc2lnbmVk
IGxvbmcgcmVnc19nZXRfa2VybmVsX2FyZ3VtZW50KHN0cnVjdCBwdF9yZWdzICpyZWdzLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBuKQp7Ci4uLgpgYGAKCkFzIGZvciBoYW5kbGluZyBhcmd1bWVudHMgb24gdGhlIHN0YWNr
LCBhcm02NCBkb2Vzbid0IGFuZCBJIGNyaWJiZWQgZnJvbQp0aGF0OgoKYGBgCnN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgbG9uZyByZWdzX2dldF9rZXJuZWxfYXJndW1lbnQoc3RydWN0IHB0X3JlZ3Mg
KnJlZ3MsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgaW50IG4pCnsKI2RlZmluZSBOUl9SRUdfQVJHVU1FTlRTIDgKICAgICAgICBp
ZiAobiA8IE5SX1JFR19BUkdVTUVOVFMpCiAgICAgICAgICAgICAgICByZXR1cm4gcHRfcmVnc19y
ZWFkX3JlZyhyZWdzLCBuKTsKICAgICAgICByZXR1cm4gMDsKfQpgYGAKCldvdWxkIHlvdSBhY2Nl
cHQgYSB2MiB0aGF0IGFkZHMgc3RhY2sgYXJndW1lbnQgaGFuZGxpbmcgYnV0IGxlYXZlcyB0aGUK
wq9cXyjjg4QpXy/CryBBQkkgYmVoYXZpb3VyPyBPciB3aWxsIEkgbmVlZCB0byBmaXggdGhlIEFQ
ST8KClRoYW5rcyBmb3IgdGhlIHF1aWNrIHJlc3BvbnNlLgoKQW5kcmV3CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
