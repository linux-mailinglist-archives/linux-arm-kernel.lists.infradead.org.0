Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111A9A4AFE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 19:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BS9sOY5J0IDh2JyvWrLzwqS2v3C/QpHF2Pi/Cx8ZCM=; b=He0YIVd8YRusdB
	qZFFjeBMxsmS+M53U6LUD2xJFru9ftkaTvar4u2ybvvSh1s5c5uvoYoT57TK2GvWixXSt1dLAVkGL
	zhDRRXkgqkTOzR47XhwEodh2F6oAk14MebzuHfgGyiQzIQpIoiuopwn3qow8mDSfC1n0HoUBDKB7X
	BIn4xM34Cs5LgWyZCHSecXiX6MKea+8UWeN939zovwfmU9dWbWuF2nQ3atQ8+wVprPyAP0fiwk17z
	OpZbfrdYfv9O8CM78AwTuPgR8MdhKN6xRyCSIB49OX/1YfHGOiOSVYxTJg6oyj2r7528cWY8NZXoX
	YTpWNOaIip7supNCgT5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4U1d-0002Rl-7W; Sun, 01 Sep 2019 17:52:29 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4U1A-0002Mn-2s
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 17:52:01 +0000
Received: from localhost (unknown [46.114.4.148])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id 133D9A4618D;
 Sun,  1 Sep 2019 17:51:43 +0000 (UTC)
From: Florian Klink <flokli@flokli.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: defconfig: enable NET_SCHED
Date: Sun,  1 Sep 2019 19:51:37 +0200
Message-Id: <20190901175137.32672-2-flokli@flokli.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190901175137.32672-1-flokli@flokli.de>
References: <20190901175137.32672-1-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_105200_368519_99F9B200 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Florian Klink <flokli@flokli.de>,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBlbmFibGVzIFFvUyBhbmQvb3IgZmFpciBxdWV1ZWluZywgYW5kIGFsbG93cyB0byBidWls
ZCBhbmQgY29uZmlndXJlCnZhcmlvdXMgc2NoZWR1bGVycy4KClRob3NlIGFyZSB3aWRlbHkgdXNl
ZCBhbHJlYWR5IGluIGRlc2t0b3Agc3lzdGVtcyBhbmQgcm91dGVycywgYW5kCnByZXNlbnQgaW4g
eDg2XzY0X2RlZmNvbmZpZyBhcyB3ZWxsLgoKQ2M6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUB0b2tlLmRrPgpTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEtsaW5rIDxmbG9rbGlAZmxva2xp
LmRlPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDBlNThlZjAyODgwYy4u
N2Y4ZDc5ZDY4OTljIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCisr
KyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTEzNSw2ICsxMzUsNyBAQCBDT05G
SUdfTkVURklMVEVSX1hUX1RBUkdFVF9DSEVDS1NVTT1tCiBDT05GSUdfTkVURklMVEVSX1hUX1RB
UkdFVF9MT0c9bQogQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9BRERSVFlQRT1tCiBDT05GSUdf
TkVURklMVEVSX1hUX01BVENIX0NPTk5UUkFDSz1tCitDT05GSUdfTkVUX1NDSEVEPXkKIENPTkZJ
R19JUF9ORl9JUFRBQkxFUz1tCiBDT05GSUdfSVBfTkZfRklMVEVSPW0KIENPTkZJR19JUF9ORl9U
QVJHRVRfUkVKRUNUPW0KLS0gCjIuMjIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
