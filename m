Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB32B1F81E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCqxvBiA1if8tRdw9U4ObLFeiL/DzxYYrGX5fsTB7Hg=; b=tq7RRkSTY9hbZr
	p6vBUptztg8MaXvVPmns9QK4gOIHtM8cwFhN8eMdZI5L172wdxkM8DE+pHlgloA2DNxbgVjH0UcS8
	QQbcK5M9gMFDwyYjjMNuTGMsBkXHkzAX8ayq+4OvzykZ8Tkz5HXrBXLKtu0iJhjrcUBCnURpqBeFN
	FSwCQzX5NuzugNvSUZLZHczmPlXYy9MKztS/zv4XH3AbyXU3juxJSHhMcO0wboP/zbAUdyI3nikvB
	3PdGOlpq8Bpsy2qTHQTPLPVUMDl5oSvZLwmGFuA42FWhBspI7/briUAou5+ViRN/OronSBSBbGZtm
	wb3/I8VWDFFJiofZo4yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Rh-0006iq-SI; Sat, 13 Jun 2020 08:23:22 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QD-0005dc-9I
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:51 +0000
Received: by mail-wr1-x434.google.com with SMTP id e1so12159818wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AEQAdXu90LvQ2AREiNSrBT25q02451T/bmVdo1rl85I=;
 b=sTnosNkZfJq+enWfeEumBw83MbvfBfG6O7SlMeJ/WYrtUtcLAB1wLSEOWFDU3bOomI
 iFCk4aKwwJFkOcH8rRK+aJZu49MwPVIbuvEyHhv3PGuviq1a0BKJZUvlsCJQoLbTqtsN
 rNROXAF0k2OeRIK7/Cw8iOJa20T/uGGsEcoiZnLDchldCOLQAkTTHtEvgKwNqAxQg8tD
 TxRr6Ez8n2GZYYDCuc4PhOVDicHvBpuxd5B5oXuq0vE+rViJVYlhcYgRLJwoYhdORU7N
 bwSpAQKjJBwbiYf0vq+qf2HUFWyhr97YL+19u33duS8s4yXA5981vx5wOLI0+NSYTjZb
 yv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AEQAdXu90LvQ2AREiNSrBT25q02451T/bmVdo1rl85I=;
 b=JLwnn73jR5Bn0B/a3rhuGGLxdF6dmr+1chrlL21abx9NyvRKpp/fWzj9GXWAucJFGj
 5DQS9cbkMDC9aHWBCBROLd3u9UJzvP0zKbf3nzFbkvFQlWJgs0rNSo79uSXUG+Aq1n0q
 Ry98XCdEvoXLUwRtP8K/uY+DaLCGL1HT0XOx44+PdSVuDu0wRJ1sm98Dw+RymPNMrkwG
 zgD4DotGjrtVZ1CHtGMDfCiXZGZ7Jw8PG/TTxm+LdcQW6nC4+/f9c65X3TA0L1g89uks
 20T0B07i9g9e3KkhM0SFXV5yCM2+zRvu5yPMc/01sqs+Zz71KTgHeiNDCfB1/OUCdEmf
 OdtA==
X-Gm-Message-State: AOAM532K8ljEwXm5rdfW83pvg5Nqkm/pSpHLDEJzUQz+EMg7bw9PCt69
 9bjpWq2EpgDqpWj9Hmk7RvM=
X-Google-Smtp-Source: ABdhPJzZiBiKIJ/ojqWqqYiFeDDIRCdctUBs/8RqjN3cMLJipWuI2orIRKuQT/6WUVAOKXCPDQ159w==
X-Received: by 2002:a5d:4bc5:: with SMTP id l5mr19165177wrt.104.1592036507929; 
 Sat, 13 Jun 2020 01:21:47 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:47 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/9] mips: bmips: add BCM63268 power domain definitions
Date: Sat, 13 Jun 2020 10:21:35 +0200
Message-Id: <20200613082140.2009461-5-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012149_422405_9D44312A 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgpjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQt
b2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0K
IHY0OiBSZW1vdmUgImR0czogIiBmcm9tIGNvbW1pdCB0aXRsZS4KIHYzOiBTZXBhcmF0ZSBkdC1i
aW5kaW5ncyBkZWZpbml0aW9ucyBmcm9tIHBvd2VyIGRvbWFpbiAuZHRzaSBzdXBwb3J0LgoKIGlu
Y2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjY4LXBtLmggfCAyMSArKysrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0uaAoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjY4LXBtLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdz
L3NvYy9iY202MzI2OC1wbS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uODRkZWQ1M2E3MzJmCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9z
b2MvYmNtNjMyNjgtcG0uaApAQCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzMjY4
X1BNX0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzI2OF9QTV9ICisKKyNkZWZp
bmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1NBUgkwCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RP
TUFJTl9JUFNFQwkxCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9NSVBTCTIKKyNkZWZp
bmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX0RFQ1QJMworI2RlZmluZSBCQ002MzI2OF9QT1dFUl9E
T01BSU5fVVNCSAk0CisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9VU0JECTUKKyNkZWZp
bmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1JPQk9TVwk2CisjZGVmaW5lIEJDTTYzMjY4X1BPV0VS
X0RPTUFJTl9QQ00JNworI2RlZmluZSBCQ002MzI2OF9QT1dFUl9ET01BSU5fUEVSSVBICTgKKyNk
ZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1ZEU0xfUEhZCTkKKyNkZWZpbmUgQkNNNjMyNjhf
UE9XRVJfRE9NQUlOX1ZEU0xfTUlQUwkxMAorI2RlZmluZSBCQ002MzI2OF9QT1dFUl9ET01BSU5f
RkFQCTExCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9QQ0lFCTEyCisjZGVmaW5lIEJD
TTYzMjY4X1BPV0VSX0RPTUFJTl9XTEFOX1BBRFMJMTMKKworI2VuZGlmIC8qIF9fRFRfQklORElO
R1NfQk1JUFNfQkNNNjMyNjhfUE1fSCAqLwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
