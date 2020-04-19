Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DED11AFAF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUHARx37KYTGWsVx4iMC2KMX+9kkfkBTl+Oy17bGvyA=; b=qD+QmHDJMgDf37
	BEDB7TbvsTKvdzk7iYBxytrEane7yc8TUM2KH+LkSg1ymwIXnQY7DSEdjqnqxXYXpU0VWIap8eaNB
	xdki7IhK+ml/S5TJqM0I7atZLteCQzOttSVKWScqkSR54vGeQH1NEIdqHFjT49xL+eLIoKjf/978z
	Q6eMRgjrCZk8Hg9L3MCBVRea2tm/t21WaqnCNrU7Yfh7NE97G1IB0J4AH2T1KSyyAzwSxJ1KrFlE+
	c7hMh+RartsJIsHdQ70nHVftaY5dbi34f0lyamHmdNWU61ll05CGQ8GpMWKS1CkC8lX4neng7kTjR
	8qC+T78AkMQB5AQp+wrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQALq-0000qm-6V; Sun, 19 Apr 2020 13:51:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAKv-0000J7-L9
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so8179787wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nc3cDv/S8K5EI2hOuNsI3mldCjUl3ocR/NEfaOULj3M=;
 b=nI95/ZjH71ySY6uXGjLedJbNIT5kpYGkrINPlyIcPFYvg8Uu9Pyjbw7wLbgdg35tcP
 uJkJ5tlDF01igqu2vhWLTahY2WkeiOGUhWH8MLTJv/XyZsKnEbrjS8BDVcqRpMbTZcH+
 /PgR+2tS1pyFOgsnaSQtNa+U65mqYLHp1Yud7AoCSNsc0Z3IhPkvHI+iHlfoMd3SWf8G
 /UYHSYIkLlpVXg3fAPHyHuFoO1mllH8XhcrXrO3sskPAeWXuMK3IaVyNUfzg+Wx3/jIf
 sdF+kl+jZFp5ZzCo2YnF10kJ+Fze7jhagwMjTiHR8Ul49tCL176AySvkPo5L83hNF7cZ
 EFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nc3cDv/S8K5EI2hOuNsI3mldCjUl3ocR/NEfaOULj3M=;
 b=EGQLGcZXR5BoO+luVmUOic956quKyqWJkX9kyi2UpJijKHc47HaQZYJ6daH0xN5uHo
 svKoX85g71mdN1C9ArnRDaKY+KicfUbt7PnDqM1tpUF4PvEcRFjEJ9CRlwBuVg8XJA9N
 LemFBJop36OEp2bxJVtfKvUjbiFx4nDYGixlgpMjkzaTS+TKXre8o7UZX/9Rx0LZKiWp
 6sve1WPdpJPAkedSKkExC9i9qhWPD/7BDcVusK/fKj9jUbhUYE6kh1/zp1sYlKldDvAa
 BlWYC8t47gQUBkbnwE+1tTIy7peIicJ3Qk/NMBytEW/v3xTVyWmD5WxuHPRTjioLpeED
 Y60g==
X-Gm-Message-State: AGi0PuYvKpz/jZDlk7YTTq/YerMoOYbZPgRFSZzSqooo+9mFgdFKXm9r
 hJRCI+1uaYBGCcIJAWkOwfQ=
X-Google-Smtp-Source: APiQypJxdgjLYRxBFD6/tAelj5Ds+PrbDiWbR2b/Zct7aMTE9/866RPUxPoM0n27L+lKuJh0zunv7g==
X-Received: by 2002:a1c:a7c2:: with SMTP id q185mr12958486wme.42.1587304216075; 
 Sun, 19 Apr 2020 06:50:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:14 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/7] arm64: configs: Enable sun50i cpufreq nvmem
Date: Sun, 19 Apr 2020 15:50:06 +0200
Message-Id: <20200419135011.18010-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065017_687048_8D6F29C3 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IG5lZWRzIHRoaXMgZHJpdmVyIHRvIGJlIGFibGUgdG8gZ2V0CnRoZSBjb3Jy
ZWN0IHNwZWVkX2JpbiByZXF1aXJlZCBmb3IgRFZGUy4KCkVuYWJsZSB0aGlzIG9wdGlvbiBpbiBh
cm02NCBkZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IGY5ZWVm
YjU5NDBjYS4uMzdlNTEyYzEzNWJhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTg0LDYgKzg0LDcg
QEAgQ09ORklHX0NQVV9GUkVRX0dPVl9DT05TRVJWQVRJVkU9bQogQ09ORklHX0NQVV9GUkVRX0dP
Vl9TQ0hFRFVUSUw9eQogQ09ORklHX0NQVUZSRVFfRFQ9eQogQ09ORklHX0FDUElfQ1BQQ19DUFVG
UkVRPW0KK0NPTkZJR19BUk1fQUxMV0lOTkVSX1NVTjUwSV9DUFVGUkVRX05WTUVNPW0KIENPTkZJ
R19BUk1fQVJNQURBXzM3WFhfQ1BVRlJFUT15CiBDT05GSUdfQVJNX1NDUElfQ1BVRlJFUT15CiBD
T05GSUdfQVJNX0lNWF9DUFVGUkVRX0RUPW0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
