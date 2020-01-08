Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24AF134DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GcrhvsahglKaXSYCQL9v2fFBBgTPrnEQoqltkDOzNos=; b=X7AGIvZPv16PaG
	Y0heAfDl/AqGggUOeHR791r3Q0et9CZhMyGoPDyh5alLv/lNILe59EdsAZn/r4DfRLb6soqEWSUkA
	S6B+zqxPBnq0dSMLKIndEX1QjfeckiyjjPU4nE6sBiPLFuvs8meMHjGYmNncEPos+8gAj8H5seUwR
	NR4lG7Qncyrj31N1iiME0SoDqvlMfgv9z5KATTAb4fJZ5/sAXSEN45kO2/THJwKxIuV1VAaTC0glM
	xcjfrsfwyIbPtwcWN6zj9GHmB4TTWIObM8EpmarUld9Eg8vx8dsLebzpbp5peqdEp+df02HGurK/X
	lEytBsqDsgmaHJ6ZuADg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipI3H-0007qi-Lv; Wed, 08 Jan 2020 20:35:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipI3A-0007qG-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:35:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so4857966wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 12:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=WorFMWEqCpH9+E37jiDKx+X9O/Bk9qRVty64IHQUY30=;
 b=wMR1BYNmPPUXgu4svbM0wjr+rRxSCDa/vKg9q4HvVdDzPcdiVn1lcfBSYU6yLqLBL8
 SQXlR1DVYjdDVO0eziLw8gvdkGbPv2rDhwWq7EVN7NM2ac8OsFsxHpTTkF38B/Q4/r0J
 jhuHwh75PHt8x+hLLKfHjfNb/YL/bY4FlW8ZsahX5ja/hAzHtlIS25OGKkDDrMWvl3s2
 uG+XMftdbKqLk+v45ndJv+2V04N9jCurtJMWfTM+ZitKunz7GR+agYWRyxiUEHKGgQHC
 4imBS8Z1txPZHLqFy68Zlb2QQNVXGMDbcwBHUMAy+oh6ek1ziQJ9fL01TBZkbGikxavP
 +Q4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=WorFMWEqCpH9+E37jiDKx+X9O/Bk9qRVty64IHQUY30=;
 b=Bm7aDI+S9G872D4/wlD6yWSKiwjtamNVijbbkWgF04+23D3Ygn70SspQD6E5Sos5FA
 3AczfCN849EcxZJ9H+9niacxNanBhj7vRHls4TEbNVw5+MT+NgnOjtrq9Cm5jyTt4oC6
 bvVT9MPJwZ82R4YWe8K39eFmQa+CkZIc/k2g84ctQdCVFzdsa6SLHraH7wRB96Nx+1BV
 szxsXwKr9+Q6ptUNCPPXA2MnC8nnt0bi1wpZOhSDQHJLaISz6jHB+CIoVP3cF3ztdx4Q
 dKZg2cl31jwC6JNkYNj1wMAsB/plYy/Zwx8N25juZrynRT3oAvIfQsZ80LO4KDwRis/+
 eG/A==
X-Gm-Message-State: APjAAAVQtnq19431vg5WMdObQXk3ga7YAPxJa8xP/wbbz4m71NH9FRql
 bL2Q1QAn56ZkCHmUafhNWjD/2xykS6k6Ug==
X-Google-Smtp-Source: APXvYqycqztzvVdhpkJCHwmt3PSE8Tb7v6TFk0eBWrrD7Wk0Z4PRpBQ/b/9ZG3BriZBdGUP400qHVg==
X-Received: by 2002:adf:f491:: with SMTP id l17mr6603941wro.149.1578515729472; 
 Wed, 08 Jan 2020 12:35:29 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id q15sm5551614wrr.11.2020.01.08.12.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:35:28 -0800 (PST)
Message-ID: <5e163d10.1c69fb81.e77b0.ad50@mx.google.com>
Date: Wed, 08 Jan 2020 12:35:28 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Kernel: v5.5-rc5-28-gaef73191765a
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Branch: for-kernelci
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc5-28-gaef73191765a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_123532_819961_71BF6755 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
NS41LXJjNS0yOC1nYWVmNzMxOTE3NjVhKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
NS0yOC1nYWVmNzMxOTE3NjVhLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNS0yOC1nYWVmNzMxOTE3NjVhCkdpdCBDb21taXQ6IGFlZjczMTkx
NzY1YTg4Y2FkYzBhNjI3Y2RjMDcwZTVhMDA4NmIwMTUKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
