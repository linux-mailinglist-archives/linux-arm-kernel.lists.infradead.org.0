Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A476CED176
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3mHyKBLh6699/1pu6Z4qcq5dQ6d06NFZ7EMYQZSjUY=; b=fw0gVg6UUx+vq0
	Md6S5yGmOO8LmXJ3mkveObQ5YWrbd41rcTLuxuYOoaFtD/3G7gyHIaRq3qQNxr4ZEBh8C0FRj7r/X
	NJMJzVqKapdiVIVdfpJN3fudPfdIMHFKxU0Vp9x+xfg5mfoPdKUoou2r9hI1RmOlPA9KbyPGYunLh
	hWqna0WErCAoVTNq137IjdzedmLi3YdE6SrCMOmxACMQwGRDfQGtW0MoBfu2YnFht3AF9e9I7Gqid
	VzLFdxjTq1kU7+sLsXmhWXL/3nRBpVD/F4aKRlEMO1RkMxGP2BrvewUJMBetrxWN+X47KXlJ+Kq1s
	tirk9fl5r0k5wkPZCR/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4rh-0007ON-MT; Sun, 03 Nov 2019 01:39:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pB-0004wd-VL; Sun, 03 Nov 2019 01:37:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5DFD7B300;
 Sun,  3 Nov 2019 01:36:56 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 09/11] dt-bindings: soc: realtek: rtd1195-chip: Extend reg node
 again
Date: Sun,  3 Nov 2019 02:36:43 +0100
Message-Id: <20191103013645.9856-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183702_159679_97E63F2A 
X-CRM114-Status: UNSURE (   8.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsb3cgdG8gb3B0aW9uYWxseSBzcGVjaWZ5IGEgdGhpcmQgcmVnaXN0ZXIgdG8gaWRlbnRpZnkg
dGhlIGNoaXAuCldoZXRoZXIgbmVlZGVkIGFuZCB3aGljaCByZWdpc3RlciB0byBzcGVjaWZ5IGRl
cGVuZHMgb24gdGhlIGZhbWlseTsKUlREMTI5NSBmYW1pbHkgd2lsbCB3YW50IGFuIGVmdXNlIHJl
Z2lzdGVyLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRl
PgotLS0KIEkgZG9uJ3QgbGlrZSBzcGVjaWZ5aW5nIGFuIGVmdXNlIHJlZ2lzdGVyIGhlcmUsIHdo
aWNoIHNlZW1zIGl0cyBvd24gSVAgYmxvY2suCiAKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nv
Yy9yZWFsdGVrL3JlYWx0ZWsscnRkMTE5NS1jaGlwLnlhbWwgICAgfCA5ICsrKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0
ZDExOTUtY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9y
ZWFsdGVrL3JlYWx0ZWsscnRkMTE5NS1jaGlwLnlhbWwKaW5kZXggZTQzMWNmNTU5YjY2Li4yNDk3
MzdlMTE2ZDcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hpcC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcmVhbHRlay9yZWFsdGVrLHJ0ZDExOTUtY2hpcC55YW1s
CkBAIC0xOSw3ICsxOSw3IEBAIHByb3BlcnRpZXM6CiAKICAgcmVnOgogICAgIG1pbkl0ZW1zOiAx
Ci0gICAgbWF4SXRlbXM6IDIKKyAgICBtYXhJdGVtczogMwogCiByZXF1aXJlZDoKICAgLSBjb21w
YXRpYmxlCkBAIC0zNyw0ICszNywxMSBAQCBleGFtcGxlczoKICAgICAgICAgcmVnID0gPDB4OTgw
MWEyMDAgMHg4PiwKICAgICAgICAgICAgICAgPDB4OTgwMDcwMjggMHg0PjsKICAgICB9OworICAt
IHwKKyAgICBjaGlwLWluZm9AOTgwMWEyMDAgeworICAgICAgICBjb21wYXRpYmxlID0gInJlYWx0
ZWsscnRkMTE5NS1jaGlwIjsKKyAgICAgICAgcmVnID0gPDB4OTgwMWEyMDAgMHg4PiwKKyAgICAg
ICAgICAgICAgPDB4OTgwMDcwMjggMHg0PiwKKyAgICAgICAgICAgICAgPDB4OTgwMTcxZDggMHg0
PjsKKyAgICB9OwogLi4uCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
