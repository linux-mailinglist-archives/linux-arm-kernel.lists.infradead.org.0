Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0157B15B790
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zjOIqLIpxuTbfrDLVroLAIvjBxIIuXbNBkKed/LMNec=; b=R1Q
	pvsLDXbq13IsRnIGbTloNjBSPv74qEGwAe3SkVwKCqD0z8ogfePdBOYovJz0pqLzNAQm2euGzucs9
	D4BjMYA8KYkIZOBv8vcVC+KFgKrUkRxnTenwb9f8KCwGHEUCMiMnE5Fffxc/LqErleDChPqi92Wcm
	zW0b467HT7/0xmQUhDVy22OIcZzWtpT3E7URrYSO4s45Tb/sw42Pj/26RoqeBY3NtHhQbfwgNpaO/
	nP4/OUx5ZKGTlVb7wy8gjUteDMIcADzImsJEZEMxqeW5zZIYg2VlbKY/DVxRUcIVqHNduxpCDl2r1
	UvdKKhgXjLwJKSPjskm6jTmdrgacwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24up-0008I3-AJ; Thu, 13 Feb 2020 03:11:47 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24uh-0008H1-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:11:41 +0000
Received: by mail-oi1-x243.google.com with SMTP id p125so4303487oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 19:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=7Jxk3ZsRFc3/YFTDblpD+Mq1gRETolyk9jgC+WBc/KA=;
 b=C9v8ruOYZJ1gnA9z3smSBpPvTK+zMit6K2kMpLoDrciBoWOsSLSbzsG2sxInd0sIoC
 rkxTL55WnZK3YLIsZDxrxC0278hMpYbX7buLTwsS1Egxv9LjH62M3G9YwFoEktTwHZdr
 IeIME5r6sYqEf+NphUV+yXviKsRiMprrklojF8vATIBg0rl8IKxSxGaJRR0L5/CcjHY/
 rmpI0c3ZxPULgobOi9VLS39OPLSIwrQjD9Z4lJn+HANb2OdIk6OtKFPEgBWyrz3cVQiq
 Wd++CmXua+rWkMx0pEWQaGteFL3R0SqXDYPnj4UN/BiYJ9Hmx919TjqLrzB6FESS7AyN
 C+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=7Jxk3ZsRFc3/YFTDblpD+Mq1gRETolyk9jgC+WBc/KA=;
 b=Fz5Tn58BWKrqnr1tx3A3M77xh7f/DbjzjbRv9xVeP2qmQfZv0WN8n1edOGoG7JBDSc
 cq4S6P5/w9Vz1cBcqZOE1kRXViS4vUG4gLAMwsCDx2jYOI7ZbY3Gg1ZTbmrsUyxxE3Y0
 k/3spQYQQUcHwWl58Z5uQLY6Vwod/uy4sATQqOuSZfDUJ/DugrlwVdsOPXQU5BSChF5U
 Y187U89sxZUMP4mDIs+Uqt4kBdM1FBaC+PGMx+S6Ikknr5+a/Sr3KV+XRo7nafr/x8Xc
 ePr4NMqN0Vmn4R+ZljO8k7iA3Y6Dgvk7bpqH2WD507b4X3iiJgmNVUS6Gy4LuhLLUj4g
 Y42Q==
X-Gm-Message-State: APjAAAV1Tf17j/OBZVd/xBEYQY4RU8w2xSV89ulDVfw5cPhklaUkuCSc
 7oM7D1pBbO8lE5hQ9+w+Sg==
X-Google-Smtp-Source: APXvYqxvRPrg3Efx6AjL/K8iKSSEeflxng8SctmU7z/7pLjgENpcXgOzuN+ct+nuttO04suXBx9Xyg==
X-Received: by 2002:aca:b2c5:: with SMTP id b188mr1557327oif.163.1581563498253; 
 Wed, 12 Feb 2020 19:11:38 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id u66sm311468oie.17.2020.02.12.19.11.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 19:11:37 -0800 (PST)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPA id 54FB918004F;
 Thu, 13 Feb 2020 03:11:36 +0000 (UTC)
From: minyard@acm.org
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/2] arm64 kgdb fixes for single stepping
Date: Wed, 12 Feb 2020 21:11:29 -0600
Message-Id: <20200213031131.13255-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_191139_696779_B1B91843 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I got a bug report about using kgdb on arm64, and it turns out it was
fairly broken.  Patch 2 has a description of what was going on.  I am
using a Marvell 8100 board.

The following patches fix the problem, but probably not in the
best way.  They are what I hacked out to show the problems.

I am not quite sure how this will interact with kprobes and hardware
breakpoints which use the same code, but they would have been broken,
too, so this is not making them any worse.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
