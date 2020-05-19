Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6B41DA059
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45VvI6MGTvYokabG4hXD3hMgyZ3Eq44iFJb7XZEXS1Q=; b=qPCZZXNSeCTytT
	F3QAuqDmPYUC44X6wzc4DxQ3vSOepsd0KhannXD4kFUv2Cd2fAo59xiZhQf5ies80yklc7wMBNVel
	xaWbiDd3pXh5LmZgjIKJGl7SzNXoj6fRYiRViTjaMLwqidl9sGrzdcSpr8SQKqabwE+/XYz6nc0BC
	LzEEHTG0sCqSvxkbTGcDyNTvFwKh7uvan84+2yXUEcqZdONyf88Z1XiGWS1p+M6MqJAWbCXahWoPY
	ysYainYfpd/SMMhDF4oFJAY3cqVW/JRDIYFvkxDc/qbzZBzoh+Op30Vc24I/FFhUrqbOfrg0HMGzc
	7/y5albotQMWXosGwDVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Vo-0007UC-O0; Tue, 19 May 2020 19:02:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7VM-0007Io-8k
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:02:23 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC62A20823;
 Tue, 19 May 2020 19:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589914940;
 bh=v7efvTu5talMRkBl/oTTM5IxNW02Zbh7QqxiZtAVavI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WhS89Qeu7ptX2jdVKD4tcmN3g/CYlVXoYJdb0drZVjoYXiey5TOAOhJQMmRdNOWKt
 B9hfiCjQB2FsiIJ2RFxNDZ1Wsint6i1o8GrHBwqrR6rEYIjWhEJa3nt64BYpGL8n5P
 mJqipMEAg86LrSHk3Y15DHcEbzXYiyY3+/Ls668E=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC/RFT PATCH 2/2] crypto: testmgr - add output IVs for AES-CBC with
 ciphertext stealing
Date: Tue, 19 May 2020 21:02:11 +0200
Message-Id: <20200519190211.76855-3-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519190211.76855-1-ardb@kernel.org>
References: <20200519190211.76855-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120222_042977_2C34CE76 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ebiggers@kernel.org, Stephan Mueller <smueller@chronox.de>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add some test vectors to get coverage for the IV that is output by CTS
implementations.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 crypto/testmgr.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/crypto/testmgr.h b/crypto/testmgr.h
index d29983908c38..d45fa1ad91ee 100644
--- a/crypto/testmgr.h
+++ b/crypto/testmgr.h
@@ -31041,6 +31041,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 		.ctext	= "\xc6\x35\x35\x68\xf2\xbf\x8c\xb4"
 			  "\xd8\xa5\x80\x36\x2d\xa7\xff\x7f"
 			  "\x97",
+		.iv_out	= "\xc6\x35\x35\x68\xf2\xbf\x8c\xb4"
+			  "\xd8\xa5\x80\x36\x2d\xa7\xff\x7f",
 	}, {
 		.klen	= 16,
 		.key    = "\x63\x68\x69\x63\x6b\x65\x6e\x20"
@@ -31054,6 +31056,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 			  "\xd4\x45\xd4\xc8\xef\xf7\xed\x22"
 			  "\x97\x68\x72\x68\xd6\xec\xcc\xc0"
 			  "\xc0\x7b\x25\xe2\x5e\xcf\xe5",
+		.iv_out	= "\xfc\x00\x78\x3e\x0e\xfd\xb2\xc1"
+			  "\xd4\x45\xd4\xc8\xef\xf7\xed\x22",
 	}, {
 		.klen	= 16,
 		.key    = "\x63\x68\x69\x63\x6b\x65\x6e\x20"
@@ -31067,6 +31071,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 			  "\xbe\x7f\xcb\xcc\x98\xeb\xf5\xa8"
 			  "\x97\x68\x72\x68\xd6\xec\xcc\xc0"
 			  "\xc0\x7b\x25\xe2\x5e\xcf\xe5\x84",
+		.iv_out	= "\x39\x31\x25\x23\xa7\x86\x62\xd5"
+			  "\xbe\x7f\xcb\xcc\x98\xeb\xf5\xa8",
 	}, {
 		.klen	= 16,
 		.key    = "\x63\x68\x69\x63\x6b\x65\x6e\x20"
@@ -31084,6 +31090,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 			  "\x1b\x55\x49\xd2\xf8\x38\x02\x9e"
 			  "\x39\x31\x25\x23\xa7\x86\x62\xd5"
 			  "\xbe\x7f\xcb\xcc\x98\xeb\xf5",
+		.iv_out	= "\xb3\xff\xfd\x94\x0c\x16\xa1\x8c"
+			  "\x1b\x55\x49\xd2\xf8\x38\x02\x9e",
 	}, {
 		.klen	= 16,
 		.key    = "\x63\x68\x69\x63\x6b\x65\x6e\x20"
@@ -31101,6 +31109,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 			  "\x3b\xc1\x03\xe1\xa1\x94\xbb\xd8"
 			  "\x39\x31\x25\x23\xa7\x86\x62\xd5"
 			  "\xbe\x7f\xcb\xcc\x98\xeb\xf5\xa8",
+		.iv_out	= "\x9d\xad\x8b\xbb\x96\xc4\xcd\xc0"
+			  "\x3b\xc1\x03\xe1\xa1\x94\xbb\xd8",
 	}, {
 		.klen	= 16,
 		.key    = "\x63\x68\x69\x63\x6b\x65\x6e\x20"
@@ -31122,6 +31132,8 @@ static const struct cipher_testvec cts_mode_tv_template[] = {
 			  "\x26\x73\x0d\xbc\x2f\x7b\xc8\x40"
 			  "\x9d\xad\x8b\xbb\x96\xc4\xcd\xc0"
 			  "\x3b\xc1\x03\xe1\xa1\x94\xbb\xd8",
+		.iv_out	= "\x48\x07\xef\xe8\x36\xee\x89\xa5"
+			  "\x26\x73\x0d\xbc\x2f\x7b\xc8\x40",
 	}
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
