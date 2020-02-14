Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D41F15E59C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grr5Tb44X1MvPxO5Oj7PbX3nl37AsK5Q6LjgZGUk1hY=; b=cVko7ZV5z5ZBnc
	GA+4wpewfQ9mQM08eNv0/95arcYDNztci+tC9L4EhGFHc6+Wi+ZsWCnTIfn1Nn1hpL9jmIWbOIFEd
	q24t7GphgHfgJka3HPXwB2Ww62ncmvN4xWnFfxdvBTKW8LZdvDNusD8yD/PLSVXWXt4FB1eE7mErL
	slNHEg/+MB4wKtNyjVzoFWKuB9zIa8bXoq0d5StyjdWMRSLleDcj4V7lW0Xy3NNqqRbM3rIZLskZG
	B7INeMRfKCPJ/qy8TK4PyMxFRs17QCWD6sHUBNS79RuyLLfh4I6ybj8JqQ79RvqWceAK2h/z4WFHB
	L59VAgttCPzadQLDqj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e49-0004nO-BR; Fri, 14 Feb 2020 16:43:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dcI-0006T5-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:15:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFD84246E0;
 Fri, 14 Feb 2020 16:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696897;
 bh=DZf8x6pMGbAToBWC/0ptiaWz8OuRMsxJrevFBJ4elfs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mHSfihDNwGnmlhEjs0a7EL7xAKO2TaUEokx32bsZKOaROyPrAOf/zhOmHFnLA+Vr5
 MBJffHoDzY4TpMhzG/srzO5s6Qa2OPsRmtLVEP+TG9XsPkIxcDdItAg0wmSgWZsy2M
 ey/9gX3p8zpDRaJCn/eP1vw98jMTM+hVh734FBwo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 149/252] ARM: dts: at91: sama5d3: define clock
 rate range for tcb1
Date: Fri, 14 Feb 2020 11:10:04 -0500
Message-Id: <20200214161147.15842-149-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081458_227479_BE8AD7BB 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Karl=20Rudb=C3=A6k=20Olsen?= <karl@micro-technic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgoK
WyBVcHN0cmVhbSBjb21taXQgYTdlMGYzZmMwMWRmNGIxYjcwNzdkZjc3N2MzN2ZlYWU4YzllOGI2
ZCBdCgpUaGUgY2xvY2sgcmF0ZSByYW5nZSBmb3IgdGhlIFRDQjEgY2xvY2sgaXMgbWlzc2luZy4g
ZGVmaW5lIGl0IGluIHRoZSBkZXZpY2UKdHJlZS4KClJlcG9ydGVkLWJ5OiBLYXJsIFJ1ZGLDpmsg
T2xzZW4gPGthcmxAbWljcm8tdGVjaG5pYy5jb20+CkZpeGVzOiBkMmU4MTkwYjc5MTYgKCJBUk06
IGF0OTEvZHQ6IGRlZmluZSBzYW1hNWQzIGNsb2NrcyIpCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyMDAxMTAxNzIwMDcuMTI1MzY1OS0yLWFsZXhhbmRyZS5iZWxsb25pQGJvb3Rs
aW4uY29tClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9u
aUBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwu
b3JnPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNpIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9zYW1hNWQzX3RjYjEuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNp
CmluZGV4IGNiMzBiZGIxYTljYTEuLjdhNjhkMzU1ZmY3MjAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1
ZDNfdGNiMS5kdHNpCkBAIC0yMyw2ICsyMyw3IEBACiAJCQkJCXRjYjFfY2xrOiB0Y2IxX2NsayB7
CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8Mjc+OworCQkJCQkJYXRt
ZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDE2NjAwMDAwMD47CiAJCQkJCX07CiAJCQkJfTsKIAkJ
CX07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
