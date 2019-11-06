Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5E8F15C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bNcoAZzQh21PxBxMfSigTVv7zZR83Lid7drAsSCaJc0=; b=NGDUM4eXreMPft
	1M0Te1rnVr37mw7z9S2QxetScsHY6Y9KFlhxlvq9+b7x7gsJ23AppNQBFn4vtWsUgdXQZgylhu4hO
	dv9re58jhq6MoV7Se75VMAw9ffx+PO2fIFW1gEvHK7SZVRJbINhJZrB9SzwtnU/uTwd/l07nzavyD
	21bnM12X7lt48uiL2zbqcjQqfHvggb0YtydjEzyTEqi//rjyd8kdApV8VKlbOwXrIZh/SGyXeoBFD
	pFHv3Jagktko+QC7tPx88rZzUt7dMAPmuDM5SD5LFMrJ3eFS+f48+V1lZUmmJ7L7bbgdy6i6Dio5Z
	zuAW7nduw/r2M7g3ycOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSK4t-0005t7-U6; Wed, 06 Nov 2019 12:06:23 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSK4h-0005sU-5O
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 12:06:15 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iSK4c-0000dA-9S; Wed, 06 Nov 2019 12:06:06 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iSK4b-00031O-QP; Wed, 06 Nov 2019 12:06:05 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] OMAP2: remove unused wakeup_cpu
Date: Wed,  6 Nov 2019 12:06:05 +0000
Message-Id: <20191106120605.11571-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_040614_234241_CE985B78 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHdha2V1cF9jcHUgdmFyaWFibGUgaW4gb21hcDRfZW50ZXJfbG93cG93ZXIoKSBpcyBzZXQK
YnV0IHRoZW4gaXMgbm90IHVzZWQgYWZ0ZXIgdGhpcy4gUmVtb3ZlIGl0IHRvIGZpeAp0aGUgY29t
cGlsZXIgd2FybmluZzoKCmFyY2gvYXJtL21hY2gtb21hcDIvb21hcC1tcHVzcy1sb3dwb3dlci5j
OiBJbiBmdW5jdGlvbiDDom9tYXA0X2VudGVyX2xvd3Bvd2Vyw6I6CmFyY2gvYXJtL21hY2gtb21h
cDIvb21hcC1tcHVzcy1sb3dwb3dlci5jOjIzMDoxNTogd2FybmluZzogdmFyaWFibGUgw6J3YWtl
dXBfY3B1w6Igc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KClNp
Z25lZC1vZmYtYnk6IEJlbiBEb29rcyAoQ29kZXRoaW5rKSA8YmVuLmRvb2tzQGNvZGV0aGluay5j
by51az4KLS0tCkNjOiBUb255IExpbmRncmVuIDx0b255QGF0b21pZGUuY29tPgpDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+CkNjOiBsaW51eC1vbWFwQHZnZXIua2VybmVs
Lm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJjaC9h
cm0vbWFjaC1vbWFwMi9vbWFwLW1wdXNzLWxvd3Bvd2VyLmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9tYXAyL29tYXAt
bXB1c3MtbG93cG93ZXIuYyBiL2FyY2gvYXJtL21hY2gtb21hcDIvb21hcC1tcHVzcy1sb3dwb3dl
ci5jCmluZGV4IDJkOGY5MDU0NjU5MS4uNjdmYTI4NTMyYTNhIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9tYWNoLW9tYXAyL29tYXAtbXB1c3MtbG93cG93ZXIuYworKysgYi9hcmNoL2FybS9tYWNoLW9t
YXAyL29tYXAtbXB1c3MtbG93cG93ZXIuYwpAQCAtMjI3LDcgKzIyNyw2IEBAIGludCBvbWFwNF9l
bnRlcl9sb3dwb3dlcih1bnNpZ25lZCBpbnQgY3B1LCB1bnNpZ25lZCBpbnQgcG93ZXJfc3RhdGUp
CiB7CiAJc3RydWN0IG9tYXA0X2NwdV9wbV9pbmZvICpwbV9pbmZvID0gJnBlcl9jcHUob21hcDRf
cG1faW5mbywgY3B1KTsKIAl1bnNpZ25lZCBpbnQgc2F2ZV9zdGF0ZSA9IDAsIGNwdV9sb2dpY19z
dGF0ZSA9IFBXUkRNX1BPV0VSX1JFVDsKLQl1bnNpZ25lZCBpbnQgd2FrZXVwX2NwdTsKIAogCWlm
IChvbWFwX3JldigpID09IE9NQVA0NDMwX1JFVl9FUzFfMCkKIAkJcmV0dXJuIC1FTlhJTzsKQEAg
LTI5Miw3ICsyOTEsNiBAQCBpbnQgb21hcDRfZW50ZXJfbG93cG93ZXIodW5zaWduZWQgaW50IGNw
dSwgdW5zaWduZWQgaW50IHBvd2VyX3N0YXRlKQogCSAqIHNlY3VyZSBkZXZpY2VzLCBDUFV4IGRv
ZXMgV0ZJIHdoaWNoIGNhbiByZXN1bHQgaW4KIAkgKiBkb21haW4gdHJhbnNpdGlvbgogCSAqLwot
CXdha2V1cF9jcHUgPSBzbXBfcHJvY2Vzc29yX2lkKCk7CiAJcHdyZG1fc2V0X25leHRfcHdyc3Qo
cG1faW5mby0+cHdyZG0sIFBXUkRNX1BPV0VSX09OKTsKIAogCXB3cmRtX3Bvc3RfdHJhbnNpdGlv
bihOVUxMKTsKLS0gCjIuMjQuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
