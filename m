Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3DD9C495
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fov0LxtugoMXsuYIxfkZYk2b1t+04fL+5af1pK252hI=; b=thMuJx/bF9XiT5
	xUJXUhqeb+FKOxjzVWLz1Hni8CHm44EuEuT90eos46DiaiW/mfywYjcqK3aZRz7tMqAFLPgp85XrU
	QV5Vvg0fwEHElWHK+R7WW1Q176JGvcl9GkW5d72co5jeGJWVRsMXUeQ/tD8B6HBg8rJ5dHxBcHW2J
	s4UrUki/uHPz6O5Zq2hVDYvu9JmeFxg3k22YQBKBf7V37Vw+DpxKvW/IHZD5JLUnemCHXGb7Fg8zS
	EEKRp0uRhW6V0y5Ymp8hAWwPz556gsJl8q07kemeOXUzUoI1MLEZxm5g1xDuW1cekQJDooZgd/WGX
	9oqyxRvRfjnS6xcw0FRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1u6N-0000tY-33; Sun, 25 Aug 2019 15:06:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1u6C-0000sU-7a
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:06:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id s18so12942276wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 08:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EzGMcTh8cYrJ0fJe6kpJtuwR7ufzId3YdTEGcvV46I4=;
 b=T5bfT551DOss2tIjS7I2D9v9HeNSyM5WLjI8qnaGhZ9u4N1hbrB3ulttCaa2blX5jI
 1gV+3u+MmKX5SPS4cX4sW6NDrBGJje62dhV0GEpJiuillbYjPDOtGMS4x6eyXDsugnsw
 5f+MCJy8iM6OUqmY7kHZmJhkXtNFEnZrv/LeNDl+9LiAyo0ewRnx1WJf3eBTIp3t/T4l
 KmMc/mLNHp2+yiQJWPtktOd6PSSpkNzlmV7u+0jOMUoaibDXqc9IGylOCZq4nCpkVpA3
 E0NpW+MY2wH69YVMO2ELq0V9nVvvVIs1MZNkAFRbKXrauKk8S12s+if2/wjKu5dUeTta
 AUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EzGMcTh8cYrJ0fJe6kpJtuwR7ufzId3YdTEGcvV46I4=;
 b=Qu3+RAzNMi3lYuORPbKo2iWdnLLoGUiVSfqXq8XmAx7pdqEHT84pNJsSyDMyL1StmO
 DbZJzh+SZZ3SZOCI9usVxUuRk+3qDZsJPc4RH1oIUqB4oLSh69AR5Px9Cy+dWo2xO33u
 YFY8P3bzWqYDJ1e9yxVG8RWU9VvlcZjKIglkHL7koTStJougCRHHrafjdBl4m5HJ4gGc
 AMXirSbsKtsIJbN6uHQktHDLBqYlkgTCo5amwiz+QGeL3G1RtWmV+4QcMLWzJHUBzsBw
 lHbPmePg6R5/5mfZY/qHSs67yzMgKGZw56M5CY9/oRJVSzNOKwuXYM2zLjR1omLUcu7k
 b1Rw==
X-Gm-Message-State: APjAAAUhNVMgVKfTR+/x/WqObC78biwtEQORvONPxcQE1mlR8OV7Bjoj
 L5TlqLr5mVzGaofVIRuUFEk=
X-Google-Smtp-Source: APXvYqw/WXTJJuzkVX90/eatj/z3u7hsIamk6YChmEn5woj5sKeT2mTbgpIkmQXqmhDcW2TWZ1Cesw==
X-Received: by 2002:adf:f6d2:: with SMTP id y18mr16829269wrp.102.1566745589786; 
 Sun, 25 Aug 2019 08:06:29 -0700 (PDT)
Received: from alejandro-pc.mundo-R.com
 (57.166.117.91.dynamic.reverse-mundo-r.com. [91.117.166.57])
 by smtp.gmail.com with ESMTPSA id 24sm8571017wmf.10.2019.08.25.08.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 08:06:29 -0700 (PDT)
From: =?UTF-8?q?Alejandro=20Gonz=C3=A1lez?=
 <alejandro.gonzalez.correo@gmail.com>
To: ulf.hansson@linaro.org, maxime.ripard@bootlin.com, wens@csie.org,
 linus.walleij@linaro.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by disabling
 DDR
Date: Sun, 25 Aug 2019 17:05:58 +0200
Message-Id: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_080632_277683_54853D25 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alejandro.gonzalez.correo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, =?UTF-8?q?Alejandro=20Gonz=C3=A1lez?=
 <alejandro.gonzalez.correo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29tZSBBbGx3aW5uZXIgSDYgYm9hcmRzIGhhdmUgdGltaW5nIHByb2JsZW1zIHdoZW4gZGVhbGlu
ZyB3aXRoCkREUi1jYXBhYmxlIGVNTUMgY2FyZHMuIFRoZXNlIGJvYXJkcyBpbmNsdWRlIHRoZSBQ
aW5lIEg2NCBhbmQgVGFuaXggVFg2LgoKVGhlc2UgdGltaW5nIHByb2JsZW1zIHJlc3VsdCBpbiBv
dXQgb2Ygc3luYyBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlCmRyaXZlciBhbmQgdGhlIGVNTUMs
IHdoaWNoIHJlbmRlcnMgdGhlIG1lbW9yeSB1bnN1YWJsZSBmb3IgZXZlcnkKb3BlcmF0aW9uIGJ1
dCBzb21lIGJhc2ljIGNvbW1tYW5kcywgbGlrZSByZWFkaW5nIHRoZSBzdGF0dXMgcmVnaXN0ZXIu
CgpUaGUgY2F1c2Ugb2YgdGhlc2UgdGltaW5nIHByb2JsZW1zIGlzIG5vdCB5ZXQgd2VsbCBrbm93
biwgYnV0IHRoZXkgZ28KYXdheSBieSBkaXNhYmxpbmcgRERSIG1vZGUgb3BlcmF0aW9uIGluIHRo
ZSBkcml2ZXIuIExpa2Ugb24gc29tZSBINQpib2FyZHMsIGl0IG1pZ2h0IGJlIHRoYXQgdGhlIHRy
YWNlcyBhcmUgbm90IHByZWNpc2UgZW5vdWdoIHRvIHN1cHBvcnQKdGhlc2Ugc3BlZWRzLiBIb3dl
dmVyLCBKZXJuZWogU2tyYWJlYyBjb21wYXJlZCB0aGUgQlNQIGRyaXZlciB3aXRoIHRoaXMKZHJp
dmVyLCBhbmQgZm91bmQgdGhhdCB0aGUgQlNQIGRyaXZlciBjb25maWd1cmVzIHBpbmN0cmwgdG8g
b3BlcmF0ZSBhdAoxLjggViB3aGVuIGVudGVyaW5nIEREUiBtb2RlIChhbHRob3VnaCAzLjMgViBv
cGVyYXRpb24gaXMgc3VwcG9ydGVkKSwgd2hpbGUKdGhlIG1haW5saW5lIGtlcm5lbCBsYWNrcyBh
bnkgbWVjaGFuaXNtIHRvIHN3aXRjaCB2b2x0YWdlcyBkeW5hbWljYWxseS4KRmluYWxseSwgb3Ro
ZXIgcG9zc2libGUgY2F1c2UgbWlnaHQgYmUgc29tZSB0aW1pbmcgcGFyYW1ldGVyIHRoYXQgaXMK
ZGlmZmVyZW50IG9uIHRoZSBINiB3aXRoIHJlc3BlY3QgdG8gb3RoZXIgU29Dcy4KClRoZXJlZm9y
ZSwgYXMgdGhpcyBmaXggd29ya3MgcmVsaWFibHksIHRoZSBrZXJuZWwgbGFja3MgdGhlIHJlcXVp
cmVkCmR5bmFtaWMgcGluY3RybCBjb250cm9sIGZvciBub3cgYW5kIGEgc2xvdyBlTU1DIGlzIGJl
dHRlciB0aGFuIGEgbm90CndvcmtpbmcgZU1NQywganVzdCBkaXNhYmxlIEREUiBvcGVyYXRpb24g
Zm9yIG5vdyBvbiBINi1jb21wYXRpYmxlCmRldmljZXMuCgpTaWduZWQtb2ZmLWJ5OiBBbGVqYW5k
cm8gR29uesOhbGV6IDxhbGVqYW5kcm8uZ29uemFsZXouY29ycmVvQGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL21tYy9ob3N0L3N1bnhpLW1tYy5jIHwgOSArKysrKystLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
bWMvaG9zdC9zdW54aS1tbWMuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc3VueGktbW1jLmMKaW5kZXgg
ZDU3N2E2YjBjZWFlLi5kYWM1N2Q3NmQwMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbW1jL2hvc3Qv
c3VueGktbW1jLmMKKysrIGIvZHJpdmVycy9tbWMvaG9zdC9zdW54aS1tbWMuYwpAQCAtMTM5NSwx
NCArMTM5NSwxNyBAQCBzdGF0aWMgaW50IHN1bnhpX21tY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogCiAJLyoKIAkgKiBTb21lIEg1IGRldmljZXMgZG8gbm90IGhhdmUgc2ln
bmFsIHRyYWNlcyBwcmVjaXNlIGVub3VnaCB0bwotCSAqIHVzZSBIUyBERFIgbW9kZSBmb3IgdGhl
aXIgZU1NQyBjaGlwcy4KKwkgKiB1c2UgSFMgRERSIG1vZGUgZm9yIHRoZWlyIGVNTUMgY2hpcHMu
IE90aGVyIEg2IGRldmljZXMgb3BlcmF0ZQorCSAqIHVucmVsaWFibHkgb24gSFMgRERSIG1vZGUs
IHRvby4KIAkgKgogCSAqIFdlIHN0aWxsIGVuYWJsZSBIUyBERFIgbW9kZXMgZm9yIGFsbCB0aGUg
b3RoZXIgY29udHJvbGxlcgotCSAqIHZhcmlhbnRzIHRoYXQgc3VwcG9ydCB0aGVtLgorCSAqIHZh
cmlhbnRzIHRoYXQgc3VwcG9ydCB0aGVtIHByb3Blcmx5LgogCSAqLwogCWlmICgoaG9zdC0+Y2Zn
LT5jbGtfZGVsYXlzIHx8IGhvc3QtPnVzZV9uZXdfdGltaW5ncykgJiYKIAkgICAgIW9mX2Rldmlj
ZV9pc19jb21wYXRpYmxlKHBkZXYtPmRldi5vZl9ub2RlLAotCQkJCSAgICAgImFsbHdpbm5lcixz
dW41MGktaDUtZW1tYyIpKQorCQkJCSAgICAgImFsbHdpbm5lcixzdW41MGktaDUtZW1tYyIpICYm
CisJICAgICFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShwZGV2LT5kZXYub2Zfbm9kZSwKKwkJCQkg
ICAgICJhbGx3aW5uZXIsc3VuNTBpLWg2LWVtbWMiKSkKIAkJbW1jLT5jYXBzICAgICAgfD0gTU1D
X0NBUF8xXzhWX0REUiB8IE1NQ19DQVBfM18zVl9ERFI7CiAKIAlyZXQgPSBtbWNfb2ZfcGFyc2Uo
bW1jKTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
