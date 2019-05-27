Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A0E2BB4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5l39VB5wA38gVjLO1WUj5JzfbeYgKj8CxZcliMFRXQA=; b=Il4MBK0pOfGKpZ
	Z8heCKUV9e9BWAd4EFJKs54rylVAnBJ4Dhdo0rPNWbf/yGsWM5r5drQGCWVmVqk59n3bETtnVt0jh
	QO/vNVvjzY07WlR8yVQaSFnWOiqssCpknW8Ua522Wn6LpyZPwvHX/JjFiFtqo+hDDdBpy+/7Rrrj7
	wNG4rqcuVHUXXAuI4P+KoGw3kHBXFDXDRS6nB/52skBVkf1T1yTju+D/OXbacnJPP8nRBZ3RoD1d+
	SN8xZsCTJz0fF9pRCsXZlhVQkxdgTrit7iDfYiuVUkPMVPvW7UyDiEO7CnEy5UuNhB04wO2yR1Sa4
	6voF7+w02hRSolJKILOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM2X-0007Y5-LP; Mon, 27 May 2019 20:16:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1a-0006X3-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:15:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so17893075wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kX1q8iX0X4303ErWm6lM+rRst5YhXcgIu4cEhOJHl1c=;
 b=FxY8LQQd0PZVApVNIF+eHR5wYvbPUxCZAA5A1YZjzxZ7eM+eWerTJam3mrqVRMSYEe
 kjQ95H/YeXQ5HdiiMDBshV81jYgwBpgEeL91TdAz4p581fj0KHLbyS8rsxUOT7otLd30
 e6smxAcZcGyyn7sz48eglWl86Bi/FVXnKEVshr8jJmsrq9IjhRrH72GEjl3QVGs9CWJx
 ZmjZ0AHJtrC4BLATXmkTn9OSa1I5Tmu1asg90LTaKMM9XR4Jf1ICtMFyaxDhaNYj4asi
 XWq3Z3bmBcUaryPHRrI7hrdP+mlKPzlZ1YG+/95rZnfrgMQzQjgik4vvFEDar/OPe0Z2
 HO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kX1q8iX0X4303ErWm6lM+rRst5YhXcgIu4cEhOJHl1c=;
 b=WfIV1XMG/+ciY0C4PLuQ50sULh8SzHMdBZAYUcwgzB9hPGhyiqY9ZittsPym5kxsBX
 ADFdbyTw0mzEONcqbpnSfw6cYYhm8ym76BEsGRGrBs2maqGX1fYWah/Rrh8xunB/+Xw2
 90hdcVWqc9OJnSdEwDzFUsRX6OsNZSaYWdIqa5q6zvYPgSihWkSq5YBGFND/hmh9xDqb
 MLlXy/W7oGKtuUVbPLMm7l29D7Dh9ZZnyUsQnn+oVocei6j1uSatObE/K2LAv65jqxXN
 p07NWgY/JyPhzkzO1WLt8az7xGFAq3/k8TkuN7FY4A1fcOsa1ocMGC+FdTfWP6BoZ4R1
 9ZMw==
X-Gm-Message-State: APjAAAV85/RX4s9r/6NleMxA3w7/DHyvmxbuZIoosE8yyNnGTMsk5QcB
 aZhHhMqM87Ua4Vh3cFbAkmA=
X-Google-Smtp-Source: APXvYqw43Ws45Qhr7xAS6WK8q2QHHFf0KA8NC8Pf9gwKYfj+j7tHTjZkvjaposYHAiD6VDUxbsNV/w==
X-Received: by 2002:adf:f2c2:: with SMTP id d2mr1885143wrp.153.1558988113583; 
 Mon, 27 May 2019 13:15:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id i27sm347146wmb.16.2019.05.27.13.15.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:15:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 7/7] arm64: defconfig: enable Allwinner DMA drivers
Date: Mon, 27 May 2019 22:14:59 +0200
Message-Id: <20190527201459.20130-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527201459.20130-1-peron.clem@gmail.com>
References: <20190527201459.20130-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131515_342370_CAC81138 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIHN1bjZpIERNQSBkcml2ZXJzIGlzIHVzZWQgb24gQTY0IGFuZCBINiBib2FyZHMu
CgpFbmFibGUgaXQgYXMgYSBtb2R1bGUuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmlu
ZGV4IDRkNTgzNTE0MjU4Yy4uYjUzNWYwZjQxMmNjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Nv
bmZpZ3MvZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTYx
NCw2ICs2MTQsNyBAQCBDT05GSUdfUlRDX0RSVl9JTVhfU0M9bQogQ09ORklHX1JUQ19EUlZfWEdF
TkU9eQogQ09ORklHX0RNQURFVklDRVM9eQogQ09ORklHX0RNQV9CQ00yODM1PW0KK0NPTkZJR19E
TUFfU1VONkk9bQogQ09ORklHX0szX0RNQT15CiBDT05GSUdfTVZfWE9SPXkKIENPTkZJR19NVl9Y
T1JfVjI9eQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
