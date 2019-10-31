Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2401EB207
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MeJFwH/YRY7G7CK6z1smcpKEuYQmMQo+YtCax5W+v5M=; b=sdkC0zofSmfUEg22cjQOdvogPY
	XxjCCcJaoAFat+7Zcfo0BkyPIHCJttPmq9MDP0mH/VZbJ0li24ngHk2DodiqEsFo+bFziP8ZWs5jd
	QBRFuhznMBrTZzj4nkioLdIwf8Wi1LHnLWPpRABnKI02cgf+ZluPjCnF6Aa9FXPxLZgl8k11xpasr
	oMpFN1NkpG/F5AH1lXBDxJYFwU0qCVgvOOnOt1m6A5CT+xuRFOFOzmVhOYarhXnd6s9Hcl0iOb4kb
	sNiFWRlqXVBnlHVVActYhGdsntjfG6s4vqvkmpjG/0BqXHGyFtNolzrOAC4Pqjz/wFXbp1OCbj3eA
	1xsmQxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQB1q-0001Cx-It; Thu, 31 Oct 2019 14:02:22 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQB07-0008K5-V4
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:00:37 +0000
Received: by mail-pl1-x630.google.com with SMTP id x6so2751439pln.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 07:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vwkM+SzsoiF7YKIoK9DIXcbGL7DR7Z0spQKLzLaNHZQ=;
 b=lwu1b6fl86TKE/CMp25S7IhlXjiw3/P2BxSE+VrP/HwDLSRhME76dbmwTxC8BpTHT/
 KlbWpTvNZ8LGCVHZxHYfeVb4PzGeDIRDSQUUNVT1cYlyd90gf/aDu7vQzFlm37hEcFxc
 KPvQpjyuaoCttslC+3jrhjI35gwN4wAyqx8axXPj3wJRQiyABZJvWFci2ShCan+zXbN6
 zPYtL7Np1pNM3HzRTzv6xjj+EHoeRQVR8NLL/jBkKjtl1pqhL2OOqXYI2ujSL1Or0oV2
 CRt4RrD958u8atB+0vrOw3fWVyDb6Z1aeIY4m9ANwue1KimAXpvJ6WG+RN5eP5GQdHY/
 2jKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vwkM+SzsoiF7YKIoK9DIXcbGL7DR7Z0spQKLzLaNHZQ=;
 b=FMqJX6gFT0QRLq2ds9x3twiOn+4xpz/mMyCgIszJG2wR/IZ7kArOiGE/06edsv1UZs
 kOZKsMZBCi2riYuVkFp8nBZ/bsBQll+YFmpBLKx9MppsB/vGbtdkyONwWQjmZ8K6/rVA
 5DoYLKoPCzrewBccoskkTgQNKl3WswGatjWO+E1hFBDmOVuTeNH0HTj1dzZX/T9lhK7t
 92821SxJIgPjiIKnQAL2MbE58/r5KpIDSSOX6iEfXnoUGxkuUhAJWeXasCbLLCo3Ya6R
 0iCZNttJ7VwNUAQgZ3ewsImb4BMkYTLahSTVuOq802bIo/732R0PWHBGwf1dJf3BiIfF
 lvJw==
X-Gm-Message-State: APjAAAUblFjFEhUZvkzeFN6W62oSbc0oJHaHoL5dNQwmjL/JfQe7FfGB
 VUhwlyYzBR0EsI7UsikHQ6cgjw==
X-Google-Smtp-Source: APXvYqw09qKkn7Bgw5qiGynPfr7slN+fXXwxh/UBQthSfTfEmpqgT8eYadae9P4L6lIIRwbq16G6sg==
X-Received: by 2002:a17:902:a5c2:: with SMTP id
 t2mr6758983plq.258.1572530431038; 
 Thu, 31 Oct 2019 07:00:31 -0700 (PDT)
Received: from localhost.localdomain ([117.252.69.143])
 by smtp.gmail.com with ESMTPSA id i16sm3522441pfa.184.2019.10.31.07.00.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 31 Oct 2019 07:00:30 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jens.wiklander@linaro.org, jarkko.sakkinen@linux.intel.com,
 dhowells@redhat.com
Subject: [Patch v3 7/7] MAINTAINERS: Add entry for TEE based Trusted Keys
Date: Thu, 31 Oct 2019 19:28:43 +0530
Message-Id: <1572530323-14802-8-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_070036_024959_B7AD4E95 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 janne.karhunen@gmail.com, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, tee-dev@lists.linaro.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 stuart.yoder@arm.com, casey@schaufler-ca.com, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for TEE based Trusted Keys framework.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c6c34d0..08d0282 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9059,6 +9059,15 @@ F:	include/keys/trusted-type.h
 F:	security/keys/trusted.c
 F:	include/keys/trusted.h
 
+KEYS-TEE-TRUSTED
+M:	Sumit Garg <sumit.garg@linaro.org>
+L:	linux-integrity@vger.kernel.org
+L:	keyrings@vger.kernel.org
+S:	Supported
+F:	Documentation/security/keys/tee-trusted.rst
+F:	include/keys/trusted_tee.h
+F:	security/keys/trusted-keys/trusted_tee.c
+
 KEYS/KEYRINGS:
 M:	David Howells <dhowells@redhat.com>
 M:	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
