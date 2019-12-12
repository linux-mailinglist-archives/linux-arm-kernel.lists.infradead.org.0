Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4321411C3EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXEE6sFVH8sbzsEYpICt/q3x3jlkEs+9pJRHqQJGvow=; b=Z/Tu1z51XgTacy
	ItmaDN8leueNrAgMwy8ou0aaj4qsXl0x3vUYfRMw5UVuFD3kNXq3KJHCq4lx4SaVbC871pZZholKd
	8i0+jWhBJr+DKCR5FIt4Jfjuvx2kNzLP5NS04QZgIQUtKnh7SIZ9vedkpWmM7V7pdckLeyScBuxbg
	sFPXKJSEo/ZEt+EF+7Le4bNqHipYMfYsHbO9tAgq5ddsLefZIYEap85ovFucO51jvNwxxnbGHQ7Sb
	xbJMgrhr0dgx87JKTFIuyu3/HoaE5lWwGlcYvNTI06HSMSJG0f4Kf7StKqDf+nzFlbd1gvBA1B3lh
	FLah2cDIn7AjLc5Ke3eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFL1-0000Os-5f; Thu, 12 Dec 2019 03:40:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKY-0000NT-BB; Thu, 12 Dec 2019 03:39:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7A1F1ADBB;
 Thu, 12 Dec 2019 03:39:56 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 01/25] dt-bindings: vendor-prefixes: Add Xnano
Date: Thu, 12 Dec 2019 04:39:28 +0100
Message-Id: <20191212033952.5967-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193958_530145_448EA8C0 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WG5hbm8gaXMgYSBDaGluZXNlIFRWIGJveCBicmFuZCwgYnV0IG5vdCBtdWNoIG1vcmUgaXMgcHVi
bGljbHkga25vd24uCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1
c2UuZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVm
aXhlcy55YW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMu
eWFtbAppbmRleCA2MDQ2ZjQ1NTU4NTIuLjg0YTc2ZWZhZDJhOCAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCisrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbApAQCAt
MTA1OCw2ICsxMDU4LDggQEAgcGF0dGVyblByb3BlcnRpZXM6CiAgICAgZGVzY3JpcHRpb246IFhp
bGx5YnVzIEx0ZC4KICAgIl54bG54LC4qIjoKICAgICBkZXNjcmlwdGlvbjogWGlsaW54CisgICJe
eG5hbm8sLioiOgorICAgIGRlc2NyaXB0aW9uOiBYbmFubwogICAiXnh1bmxvbmcsLioiOgogICAg
IGRlc2NyaXB0aW9uOiBTaGVuemhlbiBYdW5sb25nIFNvZnR3YXJlIENPLixMaW1pdGVkCiAgICJe
eW9uZXMtdG9wdGVjaCwuKiI6Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
