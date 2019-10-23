Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCEFE179F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJy3inrFd9To7FpTlgjfvhqMRr7IYAfm27nLbLYz6BA=; b=WE6s+6Mf63yNwQ
	RUteOFZM484bGPO2h1x9u/TDo6fe03Ay8dOQW9Uh9FoMd33OazUp2ZPHS/0nnkLLySOLEqlKYmHtn
	XRfS4Hj9UEfMSorcp/1fWuVJ7vGxCZBAmEfrENcBA44qR48GLREBi1iuIp+Azgkg1PX7pzJ08nr0E
	jE6d/N8XOwOLrnB1Gbu4lEI006lRzQtXbJ/AU6VhgCNvOnBZiadkBuunEf2BRER2xM21BVfOCsdT2
	aW62T5CBrvxJVd0s1x4OSX89f1EyueHFl3K6xyBLslhRGMDFCaV72nOKsXt23BLHe1jR3jlBj+br3
	boGNz1hGfd0D27vGKvcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDg6-0008EU-F1; Wed, 23 Oct 2019 10:15:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe1-0004kd-Gt; Wed, 23 Oct 2019 10:13:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8D85CB54C;
 Wed, 23 Oct 2019 10:13:29 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 05/11] arm64: realtek: Select reset controller
Date: Wed, 23 Oct 2019 12:13:11 +0200
Message-Id: <20191023101317.26656-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031333_718467_EE9E2498 
X-CRM114-Status: UNSURE (   8.73  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2VsZWN0IFJFU0VUX0NPTlRST0xMRVIgZm9yIEFSQ0hfUkVBTFRFSy4KClNpZ25lZC1vZmYtYnk6
IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MjogTmV3CiAKIGFyY2gv
YXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMgYi9hcmNoL2Fy
bTY0L0tjb25maWcucGxhdGZvcm1zCmluZGV4IDYzYjQ2M2I4ODA0MC4uOTBkM2MwNGViZmYwIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zCisrKyBiL2FyY2gvYXJtNjQv
S2NvbmZpZy5wbGF0Zm9ybXMKQEAgLTE4OSw2ICsxODksNyBAQCBjb25maWcgQVJDSF9RQ09NCiAK
IGNvbmZpZyBBUkNIX1JFQUxURUsKIAlib29sICJSZWFsdGVrIFBsYXRmb3JtcyIKKwlzZWxlY3Qg
UkVTRVRfQ09OVFJPTExFUgogCWhlbHAKIAkgIFRoaXMgZW5hYmxlcyBzdXBwb3J0IGZvciB0aGUg
QVJNdjggYmFzZWQgUmVhbHRlayBjaGlwc2V0cywKIAkgIGxpa2UgdGhlIFJURDEyOTUuCi0tIAoy
LjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
