Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EC31F5A25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKfPwmMqPz/yIErmQxU8qDhyV7qcw7tl1vldYH3NS3Q=; b=E8foMz3LLgeINx
	sNkxaEpDjJbf7KKfpUc8AVfT/8QsdJ5YVqy7usn8UoZJICQCrZUNGElw7Rp6h7c4HUdkxjwi3CEQM
	QrDUfg+8/5JK2K/kMD1wtCKRosZwK6XTrGotExrY0xNb8LZgpSqgoOJnJXHxhZbm1GPJXtN2iH0Tk
	eI3IPSckh6BxyfKVfGR+K/p5ldGdJ1l/6zIA1pIBNr/sfnoTNFzTicDQWYiBDYB5HPFqv5MJSmT74
	0/h9RGRSH4H+p/wlj16WpXtBJYmrQ1QT+fU5JGdxYdQpzsWMLUMnSxyvmxnrJyYBsBxtLmyeeRvhf
	zb9ZmxJ3x6mR/gggRORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Oc-0000IQ-7N; Wed, 10 Jun 2020 17:20:14 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4LD-0005nt-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:48 +0000
Received: by mail-wm1-x32b.google.com with SMTP id c71so2540273wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oc6ktgX8Hx1cWwHwmmgN5zr23tPp1hphnIShDzaEIqk=;
 b=qPqpqjpwymwsSlaFodOqNxT4Me6+jFBmt076xKMY/4iuuaF0KJTs7ieHgBbwSXL7BX
 3nYH2YZgmIRxUCOMwmDRHqRCdN7ev44cx7oGBnYEbCXvamvgB3NY1kRo+vzKsVVu0SKP
 g11sAu9eG72SWh8HmeM6CNikd7GBSNtxsdCRyzXKAiYcjph841BuRQGpfEpMn4D8Clu7
 fri4IlKiulgfZcwUrat6iIpEiY0+KeggpDTvzsjEjXlVKd1pB2ORX/0/Rt4Wj6IfumpZ
 4RBf2UIVTbDrI3BREwYcP/hZtEPi9ZMrCIuV1mZPcyNpE/o4KNtXa5NJrHID9Bzl0BC4
 w9PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oc6ktgX8Hx1cWwHwmmgN5zr23tPp1hphnIShDzaEIqk=;
 b=F3GeAUgIKHqNRXB/v0cAxNPt705f2MyvDvGqrwAkiPV87ji/wwM9kz6x0R203a5aYS
 tq5DtqmHvX7Nflu03ju6/W/j+l49bTUmJAcI67J/U3sH/LMzt5O94BxyJ3areyaklX//
 k2EHtobFivsJBXJm+Xl6j/2GNDDItBUOwnpX6amgNhZqQdQhgD/9S4JBuITzyEuFqWPT
 fWBbGWd1FNWH03l6K2eAYnO3XV28TiiHo1isW6QIliYKWOso2N5g3rYCZfRHXyAmimhb
 YoNRpD1NbyQrLlGzDaLQtlXVPM/+cnewysbt1SMyT6JMzbBKx0SVFJyy70QNpMAzZBqE
 jolw==
X-Gm-Message-State: AOAM530Y54bjNTO2K48qZiMpUUyq6cXB8ZEmOl0lbInqp7GDvVlYMdfb
 bCskNm37AgcYbKZ09iT5sXkiptFO9EI=
X-Google-Smtp-Source: ABdhPJwoK+sQLQLvaRBB8r+8Dnj8Y2TUrOsYyjhQNtsLGboeqdhyorDA8qIpo74xVSkAPSfqe6+IQQ==
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr4171594wmk.77.1591809400863;
 Wed, 10 Jun 2020 10:16:40 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:40 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 8/9] mips: bmips: dts: add BCM6362 power domain support
Date: Wed, 10 Jun 2020 19:16:29 +0200
Message-Id: <20200610171630.465579-9-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101645_074578_E040B218 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2MzogU2Vw
YXJhdGUgZHQtYmluZGluZ3MgZGVmaW5pdGlvbnMgZnJvbSBwb3dlciBkb21haW4gLmR0c2kgc3Vw
cG9ydC4KIHYyOiBBZGQgZHQtYmluZGluZ3MgaGVhZGVyIGZpbGVzLgoKIGFyY2gvbWlwcy9ib290
L2R0cy9icmNtL2JjbTYzNjIuZHRzaSB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5k
dHNpIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpCmluZGV4IDhhZTY5ODE3
MzViOC4uYzk4ZjkxMTFlM2M4IDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzYyLmR0c2kKKysrIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpCkBA
IC0xMDgsNiArMTA4LDEyIEBAIHVhcnQxOiBzZXJpYWxAMTAwMDAxMjAgewogCQkJc3RhdHVzID0g
ImRpc2FibGVkIjsKIAkJfTsKIAorCQlwZXJpcGhfcHdyOiBwb3dlci1jb250cm9sbGVyQDEwMDAx
ODQ4IHsKKwkJCWNvbXBhdGlibGUgPSAiYnJjbSxiY202MzYyLXBvd2VyLWNvbnRyb2xsZXIiOwor
CQkJcmVnID0gPDB4MTAwMDE4NDggMHg0PjsKKwkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47
CisJCX07CisKIAkJbGVkczA6IGxlZC1jb250cm9sbGVyQDEwMDAxOTAwIHsKIAkJCSNhZGRyZXNz
LWNlbGxzID0gPDE+OwogCQkJI3NpemUtY2VsbHMgPSA8MD47Ci0tIAoyLjI2LjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
