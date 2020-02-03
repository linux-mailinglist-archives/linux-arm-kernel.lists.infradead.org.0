Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEB0151362
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 00:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x/BLFky6t4SFh3lcyYr3+05neHHFr5Ao6DBN1YfJawo=; b=tFGwV5lxWNJvp5
	lkAe8Wf3c5xBrRbHWpHWZaqepBFbe+3rJ7WKOKkc1PCzrfuXJximlX3HFrRwvFDi8fTaZGwUKEbhN
	k9meTltzVEN1PlqA6Wxyzns9hNKgAhASo40F0HBI2qugSxNr1Gv7RXY16yxxXvKQVsG4IbTbkgPg5
	JTofrN5P5Q8VW0xslnKeqViEQ6ssB4epP9rHnnMXJKPbE2tDx0NXQHYjz+TpIYNOwUnCI/2uuZrKD
	Ke9ySr9TGml96wty9cNsLrKVKi58hn6tasSbS7REM/Pih8n5O1pCM0RQwDjGQ2Zyx0XstV4z7fOU4
	RaSl+F/kb6KJy+vY0i6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iylJt-0003Tj-4F; Mon, 03 Feb 2020 23:39:57 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iylJj-0003Sh-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 23:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580773180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SXXejHKqY4bVO/7RrE7gLnBzpC7bN+YqH7t4OmMibG8=;
 b=isMooDf6u1K+g62S4tbqemJtU/a3KSSeqxz9P5C5mQ9RBprSILbmCGdwlmgfqmiYvQKK3W
 S+5hy8QL2QdoxnF483d9PghG1AfRj5oZm0w3wOZ7elbyPaLgBnh0wG5qwm5REztvDx9rEI
 ExaESSxvd8XnRFtmEAL6wD/pQxRgP0M=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-Dy7ZVlX7Na2InujoolVEww-1; Mon, 03 Feb 2020 18:39:38 -0500
Received: by mail-wr1-f69.google.com with SMTP id d15so5739236wru.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 15:39:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5I1HAxr39AdpMHsVkl2MOFdKX0uTzBJ2hmslg/vYG7U=;
 b=hOEMO5tCt21PFI74834fM2XyiRLo40GscFxuY7bAmRi/nCRghc8QQlwAsvUGM3Vjbt
 MFKpStyS8hAZoxZpF8c86w33wGpplp/K8KEdEMgNSmwlNxy0SX218dHvKbhOKJEoFwto
 lp7BbFXSgwFc/z3tINCkpo702eIgN1ur8hutdXPyaDaZ2zlNqQXGZEh5VAra/WavApoh
 3bVG3Ok88M/mQzVmT2ZChBKiZEUUE5xef3PU7/rqbrY0tkyJkd9ERkrwD+eGw7AhBFWI
 VAHRRZ9b/6YYWMl3BQt5b0zsiFYxECL8BlrQLwJ1sqaC6YCFUeT1exBFzcKAIqsPc+qZ
 fSiw==
X-Gm-Message-State: APjAAAUNvzaw4izMMsGv5EN1qlMza7CqFj1Wu8RiUI8LTKKqEAW2pgPz
 LdXdaTt3N0tfqqGBqVvq8i/ekUQuEyjKRRzAVruuioRJa9sqDON+IMRcllpzMdSaHdl+Hj1QFi0
 kKIcPdZdQyiCzlqUwOOtskv5Igc9dgNnJOaY=
X-Received: by 2002:a5d:6692:: with SMTP id l18mr17323066wru.382.1580773177234; 
 Mon, 03 Feb 2020 15:39:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZsbPh5JGaqRxiFxIHmn8GVyOzze6usAiUfosb3U5cluC+GypdbmtQRvgfeOTfq2Jb0PdZjw==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr17323047wru.382.1580773177034; 
 Mon, 03 Feb 2020 15:39:37 -0800 (PST)
Received: from raver.teknoraver.net (net-2-36-173-8.cust.vodafonedsl.it.
 [2.36.173.8])
 by smtp.gmail.com with ESMTPSA id h17sm28264258wrs.18.2020.02.03.15.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 15:39:36 -0800 (PST)
From: Matteo Croce <mcroce@redhat.com>
To: linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] crypto: arm64/poly1305: ignore build files
Date: Tue,  4 Feb 2020 00:39:33 +0100
Message-Id: <20200203233933.19577-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-MC-Unique: Dy7ZVlX7Na2InujoolVEww-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_153947_373853_AEC659EA 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add arch/arm64/crypto/poly1305-core.S to .gitignore
as it's built from poly1305-core.S_shipped

Fixes: f569ca164751 ("crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON implementation")
Signed-off-by: Matteo Croce <mcroce@redhat.com>
---
 arch/arm64/crypto/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/crypto/.gitignore b/arch/arm64/crypto/.gitignore
index 879df8781ed5..e403b1343328 100644
--- a/arch/arm64/crypto/.gitignore
+++ b/arch/arm64/crypto/.gitignore
@@ -1,2 +1,3 @@
 sha256-core.S
 sha512-core.S
+poly1305-core.S
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
