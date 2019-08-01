Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125017E385
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 21:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x/CRh9E71HrRQZSdR1sBbvVQLuzT4TNOc/bySb98l18=; b=gpDNCFFVDd8Kkh
	NQqVP0TobKGPxkSu9S1A3SxgVe+K3AbFyp4Ev9hPVNaM24JOpDv3TNHfMluPgy9x368RX8crquNXN
	+hSvSiksBbK34d+t9/MKZRpsrVXisjWJMSoqLJyfHK2QqHUVOgLT2rTLeBhA7GjwFjNYiYYXXMb5R
	E1ExlkP2pHOQr8RR+m1Q5KTtKwBF70OmP6y4lzEmvr4rWim8TUll8lJBasfQdY5aLni7/oSEogeTl
	w8mOkLM4GfZdKEaHtqXMhonzs8hzlFpXbmE8TgnkJhw3oYjXtLn/0FZLrDdoMWm/ziF9X243t8TBH
	PHHScomj1/0il/D5zSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htH6Y-0002In-QO; Thu, 01 Aug 2019 19:51:14 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htH6S-0002I4-IP
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 19:51:10 +0000
Received: by mail-qk1-x731.google.com with SMTP id r6so53037283qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 12:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=starry.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3xy7RQ3BcymipnwY3KhbWAO8+bYN3ROc+uKInAGvCg8=;
 b=l7eWYEucOk3aQcAluytArXZ1+7RhXcdcblpXe5YCqaVeLM2GXlvS+PbH9iBpmkZVXL
 l28N1lMutvdEg/HLhZfQVplK+E1wfV+RKcMPLCF8ZwzMBbM7vniv/cIAmYIc9hOMhj0Z
 xX3qSQBpwu5bAoePP6JKHKtiyyGkpuIHfu3OU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3xy7RQ3BcymipnwY3KhbWAO8+bYN3ROc+uKInAGvCg8=;
 b=qpjQWKdgVAlknHC+9PCUZzM9It7pCsWemPZSC2CrOh918GI+wT2sx7j6eSxWIz071V
 D3Ak2t4z4CJO+Rgei3h54dFNR9Zx7Fgl3uVygvtIdbX1L8pnqzOuCe4zWEkbKFP8U/h5
 PkUs6dAkJ/T/yfR9e6p1R8nncMYgzUXUZC3CAwm3rHC/ONlbL7Ya5g0tG82fUgE1VBFj
 TrRw0I8Sz2cHRPZg31b9CQzbr32djRW01sOfgiPEWeTYKNWh39JN970y47U5ZQJwhw2f
 /3WzA53k49BQ/iydcnSJzzRGlA3GwFI5H9mPJHpp4/cdfy9vMVmnx6v1u8SWuKreXr0G
 1vaA==
X-Gm-Message-State: APjAAAX61XBLNr42uWg0YNvlmOn7V93SnbGvIcVNiaz/bydmCmZNvFho
 Q/VeGF8+eBQpQHi2kL6Reb0yNg==
X-Google-Smtp-Source: APXvYqxMusU8LcG0GuZiWpzooN842V1Hz/+Gj/4n/hrs1fuTqZuvwd7c2V1eUklFbhk3V1YTPzMz4Q==
X-Received: by 2002:a37:395:: with SMTP id 143mr26783147qkd.317.1564689065981; 
 Thu, 01 Aug 2019 12:51:05 -0700 (PDT)
Received: from localhost.localdomain (205-201-16-55.starry-inc.net.
 [205.201.16.55])
 by smtp.gmail.com with ESMTPSA id h4sm31271944qkk.39.2019.08.01.12.51.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 12:51:05 -0700 (PDT)
From: Matt Pelland <mpelland@starry.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] phy: marvell: phy-mvebu-cp110-comphy: Implement RXAUI Support
Date: Thu,  1 Aug 2019 15:50:57 -0400
Message-Id: <20190801195059.24005-1-mpelland@starry.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_125108_622335_5841BB99 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: antoine.tenart@bootlin.com, linux-arm-kernel@lists.infradead.org,
 kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set introduces support for configuring Marvell's cp110 comphy for
RXAUI operation. I can post the other half of these patches (for mvpp2) here if
need be but I'm preparing to submit them to netdev shortly. I've tested this on
a Marvell Armada 7040 based platform with no issues.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
