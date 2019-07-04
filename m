Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51AF5F8C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWxI1kaxuOXU8MIE4kMmBBji1AMYPdK8s/gKYh2yM5g=; b=gT+EsdYQ1+IdAx
	UyLhr08mO3ABEYFAqw4qHdnbHLLPsrjgxETqJA0psjVkxDvGJATIgYWRjerh6ojXcqN4E2YD1XCUY
	DMpbqWbhwCbWT04WGSZjRnfo6JzeiSLK+BVWi+M36nviuEmTQNYKqoFdo9cAR84e4rvOc94Bzn1Mx
	bA2UqcNTcF8BSuOOoNKwkc6SLKHZuLK5kk1/jx0lvQKZ7kYv2HOljO+LjxmBm1qMEaWof4EF1ijQ4
	H6nXbIkOoZ9taIonbehNpm+4Lzg3lixVuw/JnUCx5MQFeIxne7gZ6U6qszvfZR+dOoggLjbz0Xe8Q
	2Ru6Xj6kCUaQsbJqCPtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1MS-0008Rz-WC; Thu, 04 Jul 2019 13:01:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MD-0008Qd-Ob
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:03 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so6115640ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ra8RdVFYK5DBO8QxOB3FtDU0BA7sfZz2SeBlsVeKUKw=;
 b=pHM+Vv2BkdQUcKnCaqTF40XNspUR/QDrEJbTzJhhUvDjETu77Bx0FCDoZKRTK7whJa
 TechV/0jUexK/ONmNLVT8jJJi3usdA9m7HAtYEko7kw7IFB8k6odrG74zSeOAUx7UPDq
 Cjgsb9NpQkzeyk/Q7hB11owH+BP7psfVbrRPjj7nPROZ76PhdYMxMd93qOm6TJTwUMum
 pudnmiPpettfPypUUxA4XsHBZSBevpNFVPHNuhzFyp0wUaMpjxLdIBNRn0HBhi5akzRx
 wJmRu9w4aosxVaj5nrrdaNnqfvHRp5otxc+LfXvvk4ZZPVTXm+4wEP6zL+bSEMCqKtSk
 chKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ra8RdVFYK5DBO8QxOB3FtDU0BA7sfZz2SeBlsVeKUKw=;
 b=OCk9VOGjAX23cAkT4wzzbW7fk60gHjUh77S09r8+00cSILAB+UUC4wvGKbzKsHhQ8v
 PCLMB59bUtVUU1//woliqP7HSTTJKbk6WJ8ns381SxS2MI/hlYtb8Ek+yapoPCHsYpoc
 WGaG5xF+iWokTpE5C35rHko/PjO8omPHV2Ti13JmRwag6ak6KcfN1stFTZpe7MsX8HDR
 bmTZYTFUCd+Mjws/Q7Wt98yruw6NP4kLPg4WxhmhHFvPpCnv55eJs5jK9ixAU4tiQ32f
 4h2i5OvvU4jsN9jv/t8uYugSreiwESSyQam/euWzV8nQTveW+HrbIL/v/cz5IUTvP0+p
 FU7g==
X-Gm-Message-State: APjAAAV7IKzmJsEUaEIj9Qsofp+KmUYkn6eFsCZKAIJU6hu6ma5ioWbv
 edwcSkjn96t3Qi8jW+0ineAbJka+
X-Google-Smtp-Source: APXvYqzb8XllzW+5e3C12GZuMGbmsfh0gAivSO23lXyZdbBjGaQAK10G4UTz1E++PGtHB27u0ksKiA==
X-Received: by 2002:a2e:a0d6:: with SMTP id f22mr2956590ljm.182.1562245259689; 
 Thu, 04 Jul 2019 06:00:59 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.00.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:00:58 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 0/7] serial: imx: fix RTS and RTS/CTS handling
Date: Thu,  4 Jul 2019 16:00:22 +0300
Message-Id: <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060101_807028_5C0D9614 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UlRTIHNpZ25hbCBhbmQgUlRTL0NUUyBoYW5kc2hha2UgaGFuZGxpbmcgaGFkIGEgZmV3IHByb2Js
ZW1zIHRoZXNlCnBhdGNoZXMgZml4LgoKSW4gYWRkaXRpb24sIG1pbm9yIGNsZWFudXBzIGFyZSBt
YWRlIHRvIHRoZSBpbnZvbHZlZCBjb2RlLgoKQ2hhbmdlbG9nOgoKICB2MzoKCiAgICAgICogQXBw
ZW5kZWQ6ICJSZXZpZXdlZC1ieToiCiAgICAgICAgVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KICAgICAgICB0byB0aGUgZmlyc3QgMiBwYXRjaGVzCgog
ICAgICAqIEFkZGVkIGJyYWNlcyB0byBvbmUtbGluZSAnZWxzZSBpZicsIHRvIHRoZSAic2VyaWFs
OiBpbXg6CiAgICAgICAgc2V0X3Rlcm1pb3MoKTogY2xhcmlmeSBSVFMvQ1RTIGJpdHMgY2FsY3Vs
YXRpb24iLCBhcyBzdWdnZXN0ZWQKICAgICAgICBieSBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoKICAgICAgKiBJbXByb3ZlZCBjb21tZW50cyBpbiAi
c2VyaWFsOiBpbXg6IHNldF9tY3RybCgpOiBjb3JyZWN0bHkKICAgICAgICByZXN0b3JlIGF1dG9S
VFMgc3RhdGUiLCBhcyBzdWdnZXN0ZWQgYnkgVXdlIEtsZWluZS1Lw7ZuaWcKICAgICAgICA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoKICB2MjoKCiAgICAgICogQXBwZW5kZWQ6ICJS
ZXZpZXdlZC1ieToiIGFuZCAiVGVzdGVkLWJ5OiIKICAgICAgICBTYXNjaGEgSGF1ZXIgPHMuaGF1
ZXJAcGVuZ3V0cm9uaXguZGU+CgogICAgICAqIFJlbW92ZWQgIlJGQyIgZnJvbSBoZWFkZXIKCiAg
djE6CgogICAgICAqIEZpeGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2Vy
dmUgUlRTIHN0YXRlIgoKLSsJdWNyMiA9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsKKysJdWNyMiB8
PSBVQ1IyX1NSU1QgfCBVQ1IyX0lSVFM7CgogICAgICAgIGFzIG5vdGljZWQgYnkgTG90aGFyIFdh
w59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPgoKICAgICAgKiBGaXhlZCBpbiAic2VyaWFs
OiBpbXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0ZSIKCi0rCXVjcjIgPSBvbGRf
dWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUU0MpOwor
Kwl1Y3IyID0gb2xkX3VjcjIgJiAoVUNSMl9UWEVOIHwgVUNSMl9SWEVOIHwgVUNSMl9BVEVOIHwg
VUNSMl9DVFMpOwoKICAgICAgICBhcyB0aGUgZml4IGZvciB0aGUgcHJvYmxlbSBmb3VuZCBieSBT
YXNjaGEgSGF1ZXIKICAgICAgICA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KCiAgICAgICogUmVv
cmRlcmVkOgoKICAgICAgICBzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2VydmUgUlRT
IHN0YXRlCiAgICAgICAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGRvIG5vdCBlbmFibGUg
YXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKCiAgICAgICAgYXMgdGhlIGxhdHRlciBtYWtlcyBzZW5z
ZSBvbmx5IHByb3ZpZGVkIHRoZSBmb3JtZXIgaXMgYWxyZWFkeSBhcHBsaWVkLgoKClNlcmdleSBP
cmdhbm92ICg3KToKICBzZXJpYWw6IGlteDogZml4IGxvY2tpbmcgaW4gc2V0X3Rlcm1pb3MoKQog
IHNlcmlhbDogaW14OiBzZXRfdGVybWlvcygpOiBmYWN0b3Itb3V0ICd1Y3IyJyBpbml0aWFsIHZh
bHVlCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IGNsYXJpZnkgUlRTL0NUUyBiaXRzIGNh
bGN1bGF0aW9uCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6IHByZXNlcnZlIFJUUyBzdGF0
ZQogIHNlcmlhbDogaW14OiBzZXRfdGVybWlvcygpOiBkbyBub3QgZW5hYmxlIGF1dG9SVFMgaWYg
UlRTIGlzIHVuc2V0CiAgc2VyaWFsOiBpbXg6IHNldF9tY3RybCgpOiBjb3JyZWN0bHkgcmVzdG9y
ZSBhdXRvUlRTIHN0YXRlCiAgc2VyaWFsOiBpbXg6IGdldCByaWQgb2YgaW14X3VhcnRfcnRzX2F1
dG8oKQoKIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDk2ICsrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlv
bnMoKyksIDQ2IGRlbGV0aW9ucygtKQoKLS0KMi4xMC4wLjEuZzU3YjAxYTMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
