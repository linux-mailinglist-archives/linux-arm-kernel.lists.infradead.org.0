Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AD713FBAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 22:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9RvjuZfU+6aOFE0E2Bbw2TErOBeY8vV+DUMGPGlwYLU=; b=bU6+ByQwItNGsi
	SivYMzePXu9GatB9DilfVvlcXXOCoGuACsIPbkZEE03WgDs1nqJ/NXj3SlSLzZ8m2Q7+Our6sPPDP
	Zw0qd2M7B10/SIc+yxnGY1kUEmJMAhx6JtJ3w9N9KulLw69ioxbrXLXryFCaz1rDlVvfLa2/7a73X
	1sQTwDAeYM+WA8pEadSHiC+MjosOLJaIkJUINyHTJRI6NgwjvujVWblOI13TK/E1UonfdSQHBaLda
	pM17mTBrpJrC+WTLMpltMr2O9sqcbK3eLtC6pFR5dYb3ulWKXaTQq+tDUwgaNn9YxnXrA06aJAiDN
	y0etmE9yxXUt9Hx4cSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCxm-0000Wd-HO; Thu, 16 Jan 2020 21:46:02 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCxa-0000VV-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 21:45:55 +0000
Received: by mail-wm1-x336.google.com with SMTP id p17so5424424wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 13:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=WS969c/rsALuQJODK47w1gX7qE+na697L64P+I/p0U4=;
 b=J/0GhKK5Lg+qBn7LLqJOo/IcaKa6mUdfnbTA6TXH92CyoTsQC477fm4AcNq27/VBDU
 WbfciZFw+8WxE4f39YsnGZ9TLQ5tfWxn5Nm9h6wGKKZS5Md/BeQuOZYm6rimz5zY6lnC
 eCxDV2uiTqrj1iXEXyhL29bFIxMNfS7POxeGMkpnAKxsFQnb5WkJAFj9ETysRsPtjikX
 xiZTTEV0FQSG9Yk/YfhAyh1NqGMzB0m05pXAGZ3YFzz7lq24hR9CcJfJL0dUEhki3+EG
 aPfGdqClYy7hhTmc6wlHN1l9EOA1LDRBsdPG8SeSWE4ZoFEkXb5oMQPGXWcbzRQMkf33
 rGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=WS969c/rsALuQJODK47w1gX7qE+na697L64P+I/p0U4=;
 b=gKjfzvTDmLIR89sJNdQwEaTbLRltY4TKUjQNXPaEX3/ATbbTKtmjh85B6VgsPHrsxF
 z/mYnEogBBmwtTwmh5ITFpwdGX8faWyIGpHNbq3BgtqL3jgqHdYw19AYRchm4NBejsjq
 WUuJBE0dc7/lr0NgtcoagsmDhdz6FrbmnCg/cajaE0fLsZELeViJxK4QP8Cb78KFIDVB
 Kx2W/tK1t8ou0GywjyPnLAEhggauY2SNW2fzfBuQZJoMKd44qXUQ7Vrb1SGVDr9RjFml
 K1wc7oxsVxpgxKcg32iw70pPr7B7b9cc4waNHtUgqwalkuvDrkCKOG46Gf9dRmPMVm8F
 CWtg==
X-Gm-Message-State: APjAAAUC4SwOM3gRMyFYYL9vh5ZXSi1Nky7LRBncusd9LSsHVlM+QS6m
 67iq4VoCowd6IoS9gdVYTRHMWw==
X-Google-Smtp-Source: APXvYqyGbnE8fsKqfLlQ+q8rfsmtuNBAB5M9EuRKTCMTx6YLa/BgXRMGU5+tO7FvvmDv+0sK/svavA==
X-Received: by 2002:a05:600c:34c:: with SMTP id
 u12mr1028276wmd.187.1579211148942; 
 Thu, 16 Jan 2020 13:45:48 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id e8sm30956105wrt.7.2020.01.16.13.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 13:45:48 -0800 (PST)
Message-ID: <5e20d98c.1c69fb81.d86b0.150c@mx.google.com>
Date: Thu, 16 Jan 2020 13:45:48 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc6-60-gb260f5eb4e57
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc6-60-gb260f5eb4e57)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_134550_973942_55C938E7 
X-CRM114-Status: UNSURE (   3.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS41LXJjNi02MC1nYjI2MGY1ZWI0ZTU3KQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ni02MC1nYjI2MGY1ZWI0ZTU3LwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNi02MC1nYjI2MGY1ZWI0ZTU3CkdpdCBDb21taXQ6IGIyNjBmNWVi
NGU1NzE1NDlmNDc5MDYyNzNlN2I1M2FkOGMwMDg3YzQKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1
bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVy
LWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9k
Y29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBz
ZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmlnIChh
cm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1p
c21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04
KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgot
LS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
