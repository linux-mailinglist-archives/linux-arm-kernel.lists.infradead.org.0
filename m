Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF358E4AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uySn9bZO28G19EYMi19O0kA3n3j+394iAlbbLR0UNBI=; b=YxnaZYKBNUkZJh
	v8dsF8rfmgd3M1YAMaJCGs7z4b9o5rrJxx4j20tCPplJxTBVPsm1qL+faHjr9327fAbzFiz0DqQGq
	k9DoK4wnzpMQYkWAg2JNvOBCvoeg4ANTGH+ocAg5mNTRYS15JtSv2k6t+o6weBQTDz1sA3xSuCE7f
	parbEafDue+Ur537nNpnsROONMe1RarlqHpne3QHohn1TyENDr5GCazelXwguWXYhe6Tv2r5LqlaM
	THPfJSgfJOfDNu1tnc2ICBRU+SEfAebQG42GNy4LrTYXVVePzr+mjxE+zA9DhmBsiqDX8xB7NyAbk
	wxZ0K9lv65HIcv85PKVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8nD-0003Wl-Oj; Thu, 15 Aug 2019 05:59:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8n1-0003W5-Qs
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:59:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so869177pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 22:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wIN/3e7DmCq2KFrr2GT8E+NTKTLGporkmHFbvr6BdEw=;
 b=ltx3L04WJuOQgF1LYju3dlRn4Cyjnm4+zW2PdzjSOCef1GRhhmpg5YB9ot7HJ0qAX2
 v5UPvV4kcgPEkdP2QisSksYt35mUkjT0ap+xbT+++wFbuXd3iLCedKgZLoMhncCYykx8
 qLi8S9OScvOEQw2uQ3ckPj+nZChss+Sa7PSgOfmWibcvWr65mWWd4Khz7J1FnIr6ZWt3
 NMRusJXN/zBwQpXL3hNc55bSpvg3UUN+AzhQ89RiYQGYL5UwixAHZmbz5i/PPgvdwKBU
 xAr6jneyWsGHPHAfQG5GqDTvgjC3Y7NKMahmlEMwdQEJtj6UuCaMZW27wJ7uOiRua90r
 VYhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wIN/3e7DmCq2KFrr2GT8E+NTKTLGporkmHFbvr6BdEw=;
 b=ApH5pKxoOXfWDbNpL+tZlYJmGoujYsJeecXybCbhKDPoPyaNrI2lskpNywHL3Ve5lJ
 z6T65ii7LO3UJNmnUbS0B0zGXz3+fYoQI+iutazo+ZKx/YCu5uaf/tfTwoDhw+TEk8P9
 w7UdU60aWjxLUM4gV9IMzCqZ8YSWbunhVT8Uw1SRDaDIghLIPnMg4dqxchH1B+s4S56Z
 vsz/Y37jgamehEalOQgTZqFopscLzXA+bb/5n7P/s3b3h2S0l6bx6rPV9+xQTvn51qKy
 LJs8Kdqbts/wPCAOwMmZVFyJ1YMz/W/dbRRM2+Q/SdOWrCicHQ7emSZI7GaWV4BcLUaD
 XsLw==
X-Gm-Message-State: APjAAAVkrxZMT/R1rWIUjjHQlfMDD5ZLkdAQ/WqHTzV28va6HocvGTpb
 r49Q/oaMrQ8OLKkBK4/tNPA=
X-Google-Smtp-Source: APXvYqwPn7IfU6NrEFx18uQV6dXjBy9Te4NIGALiRj5uKRtJOZxdgllt72zHYP3InxW6dokx9buRiA==
X-Received: by 2002:a63:e48:: with SMTP id 8mr2211940pgo.389.1565848749290;
 Wed, 14 Aug 2019 22:59:09 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
 by smtp.gmail.com with ESMTPSA id e7sm1760010pfn.72.2019.08.14.22.59.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 22:59:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: pierre-yves.mordret@st.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: stm32f7: Make structure stm32f7_i2c_algo constant
Date: Thu, 15 Aug 2019 11:28:57 +0530
Message-Id: <20190815055857.1944-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_225911_894145_C4748A9C 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Static structure stm32f7_i2c_algo, of type i2c_algorithm, is used only
when it is assigned to constant field algo of a variable having type
i2c_adapter. As stm32f7_i2c_algo is therefore never modified, make it
const as well to protect it from unintended modification.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 266d1c269b83..d36cf08461f7 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1809,7 +1809,7 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
 		I2C_FUNC_SMBUS_I2C_BLOCK;
 }
 
-static struct i2c_algorithm stm32f7_i2c_algo = {
+static const struct i2c_algorithm stm32f7_i2c_algo = {
 	.master_xfer = stm32f7_i2c_xfer,
 	.smbus_xfer = stm32f7_i2c_smbus_xfer,
 	.functionality = stm32f7_i2c_func,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
