Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FF71AED1B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 15:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alsuFECR2QfUHdomoTm/pZnQenQB7eavQtaEZ3cawR4=; b=VVuXnRiHPOTRmN
	Lq35Z7CpoTIosAbxmrjlYnz5pO5Zfz8cDNRzjDN6sEfxtCN//AsUNwyxACr5wCebefVzu2gPfMBSE
	nCW5+OaaWGWlB/50kB0zoX9zNSGv12Kge8jXycF2++d260vYGcWeuXsz6Fm6m3hXOMlrj/C5NaJ8I
	1Zfq3mVxNk62+0a+jNALt+egkS9DWLInud6SUmz/H7sVZEiy9oafjdq4R/tw+Ed37yzOsvuXa0YMh
	fQPpZkksbTiCTTxJzbLZPSZlphxQICAhW8ge0d7c4preCWJocBQUI3Pg6+PF6PnBzol5l2kcsvuoJ
	H/Y3ew2B1pPEcijzzCaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPnqu-0005Dk-NJ; Sat, 18 Apr 2020 13:49:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPnqJ-00052o-VG; Sat, 18 Apr 2020 13:49:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89ACD2227F;
 Sat, 18 Apr 2020 13:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587217751;
 bh=uRKGWEHffTzz+HeEoRdC6kD4Fwtd9WIkFuzd8NRpf9I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MhPS1UldXjC+PKwuqyH3Dj0H6WCu/aQCBY5XdUfL2R7PXivNvY5bYZZGxgAmWV0nQ
 E25GCT8r0Hxph8zr3/+LUkk++oGEOoy7A2vpeeP74o3pTy6iU9/zIdyhCOop0eHk8S
 2KZIez7KfsgO2X89uqC/yX4Bws4h3qvCQZyMeQQY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 44/73] pwm: bcm2835: Dynamically allocate base
Date: Sat, 18 Apr 2020 09:47:46 -0400
Message-Id: <20200418134815.6519-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418134815.6519-1-sashal@kernel.org>
References: <20200418134815.6519-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_064912_037339_13555407 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-pwm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+CgpbIFVwc3RyZWFt
IGNvbW1pdCAyYzI1YjA3ZTVlYzExOWNhYjYwOWU0MTQwN2ExZmIzZmE2MTQ0MmY1IF0KClRoZSBu
ZXdlciAyNzExIGFuZCA3MjExIGNoaXBzIGhhdmUgdHdvIFBXTSBjb250cm9sbGVycyBhbmQgZmFp
bHVyZSB0bwpkeW5hbWljYWxseSBhbGxvY2F0ZSB0aGUgUFdNIGJhc2Ugd291bGQgcHJldmVudCB0
aGUgc2Vjb25kIFBXTQpjb250cm9sbGVyIGluc3RhbmNlIGJlaW5nIHByb2JlZCBmb3Igc3VjY2Vl
ZGluZyB3aXRoIGFuIC1FRVhJU1QgZXJyb3IKZnJvbSBhbGxvY19wd21zKCkuCgpGaXhlczogZTVh
MDZkYzVhYzFmICgicHdtOiBBZGQgQkNNMjgzNSBQV00gZHJpdmVyIikKU2lnbmVkLW9mZi1ieTog
RmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+CkFja2VkLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTog
Tmljb2xhcyBTYWVueiBKdWxpZW5uZSA8bnNhZW56anVsaWVubmVAc3VzZS5kZT4KU2lnbmVkLW9m
Zi1ieTogVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvcHdtL3B3
bS1iY20yODM1LmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1iY20yODM1LmMgYi9kcml2ZXJzL3B3bS9wd20tYmNtMjgz
NS5jCmluZGV4IDkxZTI0ZjAxYjU0ZWQuLmQ3OGY4NmY4ZTQ2MjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1iY20yODM1LmMKKysrIGIvZHJpdmVycy9wd20vcHdtLWJjbTI4MzUuYwpAQCAt
MTY2LDYgKzE2Niw3IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wd21fcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAogCXBjLT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7CiAJcGMtPmNo
aXAub3BzID0gJmJjbTI4MzVfcHdtX29wczsKKwlwYy0+Y2hpcC5iYXNlID0gLTE7CiAJcGMtPmNo
aXAubnB3bSA9IDI7CiAJcGMtPmNoaXAub2ZfeGxhdGUgPSBvZl9wd21feGxhdGVfd2l0aF9mbGFn
czsKIAlwYy0+Y2hpcC5vZl9wd21fbl9jZWxscyA9IDM7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
