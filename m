Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1B8DC584
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=djiuv7Ko/+LyqIHdDsKXN8iUWNkfsarvHftyWoJqYIQ=; b=Ekm
	AtCd72BlXSkWllE/JjDQctrTsHTlquE0kcnKMWvFGsHcEcJhp1HS2BtMXGmhTEHAAWvvzx9keAIfx
	TX1QPabFULvxnleORRwDNLPstj4MZy00ecuFUa8pSwJ2+MBXwguRxZ/6WrMw8GQxx63sKBfXckRjQ
	RmCUDFAa9VqbIkQ6K8loBQS4tC+dOK/GxgpfdJ0NUFby9guIzrPDJR9ZzhpS/KUeUPAuFULkHBWc1
	AVBU/O8IrHmyt8WOzDQs+AfztyiC9nbxbs8R00QiY6/357mzjjv+dQLwD1xipZ10UWhX4rmvxmCmy
	u/kp0kcNh8SbipllOmdziOc0dniabsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRnt-0007wj-Mc; Fri, 18 Oct 2019 12:56:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRng-0007uN-6e
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:56:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id o18so6128477wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CD+bty2JgPn943TXaARoc4H7hkdb+h7lncGCHmaCcN0=;
 b=EaxXB8yxpjgjqwE0bD1jv7eEoqqaOonz1N2djpz721OFIF0SOlfI2YHO/fm1KnHC4r
 E1soMZAW3KI1TxX1d9HBNyCSz/R368Z52LRPE6EQHZdTkLOTfghR6vtw2Waes46H4NQU
 EWUtsUBLSXS2wgkez92ZoF5W4Amxmyu2a5iZCIpDHeyGtcmfXqHXtyTmfDEKvv0Do/Wb
 AdypkdXk1CaPdm2bHf91rOLbVNY+s5kVI0C7B+93s0pwpwb04GrhekXCaEFBJlA0uuIb
 LQlIOFFhfzXzRiV+OQJmj/pVLVG+j7hD1TWykpN6gz0WRFfli4EB1Dk8z6N1S4iJoJF2
 VvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CD+bty2JgPn943TXaARoc4H7hkdb+h7lncGCHmaCcN0=;
 b=QafKEPMfE1qf+PqR4wD+vMpRIzdo+p76y8s0iuwR2Gj6XeKr8w/Yq9JuC6wiAMg2z8
 kz52TwYEdY6/XvT5pts/OUbsYrRH7dnsuaMgpKq+DgIjdUBTAf7IJxXcaNpu1tcg7yMu
 lu3X/ez1+hlV2P98Zf0MgQb6q51pipV8Az12OQ4ZD7dvVGJQWkLUrobqHbAd4bkwcaF/
 vMB4aEsAN0Ck0odmyBtuxraHsl6ONY7+oSByIlRyRTA0Brmu9B+3nGQUDOXit3v2DhO3
 /Zw600+IUmbXL2wgJTgg9TFUA7ujC5G9YTrKoGqdOxUu8eC0gwlgPTPfjNBN/0555NMx
 3ghw==
X-Gm-Message-State: APjAAAV+dosm/MPuQwza13NOCilGkQstxmOahKEnQeYKjZuq874Dk+sy
 JObbNPiHa7K1Swt/OAcsfuKByA==
X-Google-Smtp-Source: APXvYqzhKfBhrK7QtUfqpevfqJ71ENZUKgC+sVTep3qJNI5X9AKSvISdqmAywnq/+lv1DRUZSA48gw==
X-Received: by 2002:a5d:488f:: with SMTP id g15mr8279585wrq.9.1571403370810;
 Fri, 18 Oct 2019 05:56:10 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id q14sm6058491wre.27.2019.10.18.05.56.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:56:10 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 0/4] Remove mfd_clone_cell() from the MFD API
Date: Fri, 18 Oct 2019 13:56:04 +0100
Message-Id: <20191018125608.5362-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055612_252484_BE64F1B8 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dilinger@queued.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mfd_clone_cell() only has one user and it quite easy to replicate
using the existing MFD registration API in the traditional way.
Here we convert the user and remove the superfluous helper.

Lee Jones (4):
  mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
  mfd: cs5535-mfd: Remove mfd_cell->id hack
  mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
    entries
  mfd: mfd-core: Remove mfd_clone_cell()

 drivers/mfd/cs5535-mfd.c | 70 ++++++++++++++++++++++++++--------------
 drivers/mfd/mfd-core.c   | 33 -------------------
 include/linux/mfd/core.h | 18 -----------
 3 files changed, 45 insertions(+), 76 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
