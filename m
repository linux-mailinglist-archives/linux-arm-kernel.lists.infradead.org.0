Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E2519BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6flqrBzyYFSkHNFvb1WWIjxk9CRvD6qtTg2SBa6jS8=; b=iRJI7s1Z9YkqBB
	5cFPH/q5fQtcFzg92p78Ccf2UoO38j/IOmo4ccLslL78u9ktCn7evtaBhGDDMtsTmIeTFccNbSuMb
	EvjKzA9LzXc6TaJI62Muf+vbSfYWlzxzpDTEPVyoxgEvdUyS4WlT9RDcrT07zfpUMAmG+iEqlhnua
	EoitjpIIKck/jvyiRQRpaq8d0RfQE78aEEGxuRjKwNiWEDHKpf6CZLnyFUXzLo9vvRc9gggVPOgV0
	70dRylTLDTuhAKhuY0OEeX/Zwdt635tkFGl1nOZTqVAPUfd0YYutVq5trCatFbdEecPRq28YwLffG
	+caJ56b9k00o4PMSGZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSwH-0005Cb-JF; Mon, 24 Jun 2019 17:39:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSw3-0005Bh-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:39:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so192720wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkM3pzv0qaT9ifNnV69G72X1aA/dSIdngKbA6f9L9fY=;
 b=QfsDv58LbAH8cF3V4G/2L5+c7LJ29FHs0XfEC6n7avNrzdSgDotlJCn10i3fqI/jZc
 ih7K94fQSLld6liaWtuqOw3YwyzQWybXLW3wI6HMqUkS067Kjrk+f4ZyGIFgB5bL6KLc
 B/49i7nsBjlsflmhFrNJxOrEJM3F0tjU6dr/mJP9KtI76og2oSrBG8u4d3In0NdNzTNp
 Hd6ha2Pml7eEDgaVle/FiF5ehhaNUcmOXAiLXyP1yqTk/35kuktOaDLyNppfm9DPHpuq
 Fc/w5Uo8yIlaNU3JGOY4Rr3KRZwYILJ9X1eNmRol62GrYP7jcQS7LCCHBvFYv90+gVJV
 JZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkM3pzv0qaT9ifNnV69G72X1aA/dSIdngKbA6f9L9fY=;
 b=uiZ7ettb5+L7qTk1c+PcEf3NjeMK5QBC7dfqYdmTJQUsn/iIdN09eWy/lho09zXweu
 XzM5PhktRXgTBM/JKnzCbPFCN7+NDUZOE2nG0pbuJNLo4pRlfaD/GYLEsBqV950O1kZO
 JFwHkZQxck7DYrSjGKeC4jo0gNEnBZHg6HByKTT4GiXRqYsGH7wqKT12X+CKH/f+OLUX
 A1n6GH9cJu4OrRr2FVxJ5KoLhrzqVLC1nmk+Ln0Bc1Zvz+3h1BX8Dd4PVznD7DyVWJbW
 DJjM1Q0of0/IAfpJvMKwNsq8i2czN1d8uJLBl9CtU/jDLaudshg45r/ZWiG6CCcqxkvi
 0Lbg==
X-Gm-Message-State: APjAAAU3xMp40npnUK1fltd9KqwH7bmpUHaLVYr+F5skNPwcKP4MdADf
 GK9OSKjIMxLtx2jh51cknfN1Rg==
X-Google-Smtp-Source: APXvYqyElJATRw5v1T9X92K67zCfWlZvGK19xCOXxmhbrcR4RF7NZ+NAjMhs99H6KrkCX+ocbfzPDg==
X-Received: by 2002:a7b:c7c2:: with SMTP id z2mr15780801wmk.147.1561397957796; 
 Mon, 24 Jun 2019 10:39:17 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-10-211.w90-88.abo.wanadoo.fr. [90.88.131.211])
 by smtp.gmail.com with ESMTPSA id s10sm260787wmf.8.2019.06.24.10.39.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 10:39:17 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 0/2] crypto: arm64/aes-ce - implement 5-way interleave for
 some modes
Date: Mon, 24 Jun 2019 19:38:29 +0200
Message-Id: <20190624173831.8375-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103919_757313_592EAD33 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: ebiggers@kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 herbert@gondor.apana.org.au, linux-arm-kernel@lists.infradead.org,
 steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As it turns out, even a 4-way interleave is not sufficient to saturate
the ThunderX2 pipeline with AES instructions, so this series implements
5-way interleave for modes that can be modified without running out of
registers to maintain chaining mode state across the encryption operation,
i.e., ECB, CBC-decryption and CTR.

Ard Biesheuvel (2):
  crypto: arm64/aes-ce - add 5 way interleave routines
  crypto: arm64/aes-ce - implement 5 way interleave for ECB, CBC and CTR

 arch/arm64/crypto/aes-ce.S    |  60 ++++++----
 arch/arm64/crypto/aes-modes.S | 118 +++++++++++++++-----
 arch/arm64/crypto/aes-neon.S  |  48 +-------
 3 files changed, 127 insertions(+), 99 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
