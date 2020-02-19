Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB0C165246
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a0wxeu1pDYdauPGYNjP1Ih5EAph4G4utYBcntLGa+F4=; b=DrO
	WO3bEGbDwr4ymjoP7XsU7B7sWseQlzLugAi3eJK0iBmJmFl9Gfa0MpXUwb660K7sHBdBgtYQbL0QK
	/jhfayLrTnM6wBPvpJNQG3dvaPqhzlLF6phHj3FZtiS5n9oLZkaESpE7LNjmIcyRhQgN3PMsawzv1
	OzbS1XhIy6s06IwEqaoZm1YXcHPpSm3itW9a/1iI5NKbrl7zXwTX1ykqnVb64wFpGgPDNIqcbTvO5
	9bLMhswwx3Rc9J26tNLsnL2UiLDLR++1aDSb69vxhNWqTEdQVSFeCUD7jGGlNTjHpZeDblJXv66l+
	eAGiJ0HcTF5RHmoLtJ6VC0zmL0A2SZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Xbp-0002yB-36; Wed, 19 Feb 2020 22:14:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Xbg-0002x9-LS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:14:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so766403pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TWI4qCqMhEw1k6KAKhbqnH5AxNi8DQe8QpDA2F+2Frk=;
 b=gowdgx08ONSh35NJGdAHXGTosBs3S9E8JqmodD8dWAoGkWtezQQSFKUzC67dNWtv23
 KzhIDrHsK3H9KMW4ZtXg39qY9wANloeIKW3+6/j6CAfAAnaZ+n2zVBjccNj93s8ibvJq
 8xEPi3vm7Z5JWCs47CXt1gCyp1Tc1kzr4/h3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TWI4qCqMhEw1k6KAKhbqnH5AxNi8DQe8QpDA2F+2Frk=;
 b=Hh88DFefqsggZCoB3CI2IQbuXXm4upb1th85IY7/6Lb4W5p7bSKnKYc5oPBH8tKb/q
 i1lrfRS52v2a/HFTihPP4UsL4uAip4yNiU4kfwKqVOyPdrB0zG5cYvVJhcHlpgy9Qe7N
 yOjshZKf8XXXQqZ5+8J/7Y5bVIwCt25v3Y4t0HZh7NlRbHwAte6fXl3KLI5Ea9YfH8FG
 FcAHXLF8qsFO54q9wuZTblr46mIOgAgvvdXqdwDoM/10lS5F4b+rNiF1FjH66hIcJoWs
 6j1pNkcYnZM3JwuPNNDKkLnIoa0agG1EPFO6wqh5qMmhveSvETHuQxKRRrWxai5yz5/Z
 /l4g==
X-Gm-Message-State: APjAAAXz//Rd7So+tVbn8/q5K+3MUuT4MAJSUf1t4J7mIN9X86P2DJkM
 5Hs248NmF4G1Mk8ESKbR3y85CTZcHKkIssho
X-Google-Smtp-Source: APXvYqw4uvtiO4n3G17rwQUbo02TkzNpy6L/IWvWcQw3KdjXAzbBj9fgqxQitCAt4fbZbLU89Ec+sg==
X-Received: by 2002:a65:468d:: with SMTP id h13mr3298099pgr.359.1582150448869; 
 Wed, 19 Feb 2020 14:14:08 -0800 (PST)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id k8sm723327pgg.18.2020.02.19.14.14.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:14:08 -0800 (PST)
From: Scott Branden <scott.branden@broadcom.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jiri Kosina <trivial@kernel.org>
Subject: [PATCH] docs: arm64: fix trivial spelling enought to enough in
 memory.rst
Date: Wed, 19 Feb 2020 14:14:03 -0800
Message-Id: <20200219221403.16740-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_141412_702543_775609CA 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix trivial spelling error enought to enough in memory.rst.

Cc: trivial@kernel.org
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
---
 Documentation/arm64/memory.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/arm64/memory.rst b/Documentation/arm64/memory.rst
index 02e02175e6f5..cf03b3290800 100644
--- a/Documentation/arm64/memory.rst
+++ b/Documentation/arm64/memory.rst
@@ -129,7 +129,7 @@ this logic.
 
 As a single binary will need to support both 48-bit and 52-bit VA
 spaces, the VMEMMAP must be sized large enough for 52-bit VAs and
-also must be sized large enought to accommodate a fixed PAGE_OFFSET.
+also must be sized large enough to accommodate a fixed PAGE_OFFSET.
 
 Most code in the kernel should not need to consider the VA_BITS, for
 code that does need to know the VA size the variables are
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
