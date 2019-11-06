Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48202F2198
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P/auiZVL03CcJ2JvfBhagPpIXOmqgwzvtRqu0cw57sE=; b=mCXZ8iDzD8ebvh
	40ni9YzrL9I5rCPjCOsKEScQIGEVZQrBjd4E1+E8r+d9ztFZtll15ke/8+f1PTTMbS91YRW99hfCn
	1erop0fW6UhHh/3UU95am7Zjm4XI1GOIGeCOoeliX8GHNRwv0ZBBuMsrr5OdcEzfW9Ocfr823BuOe
	lt1Z/QO2WpyJGne8Ha7vuNLR/6Sdcmsw/tovF2VHSIYtsV6DhztR8gb0+RvQp+3eXbLsUto3iaLIU
	JB9zqvRdKQRxVHQ7Wap7tQmwi9OpCDI67O4zw2lhUBtyxT4ixdPqMZRIX6hFBeGlIVLHpoqbqunIz
	dxD5oxKPxrZIZMD5/ZLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTk3-0004ga-Ac; Wed, 06 Nov 2019 22:25:31 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTjw-0004g2-U5
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:25:26 +0000
Received: by mail-wm1-x32a.google.com with SMTP id z26so5920229wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 14:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=/BRxAOW9LXIEYDAAKiP1eQV8w7ytoiM0wV1T+xUOsc4=;
 b=VQyqR0meDIIMVrCUlIlalxHWuTPQHAHRerWpRF3ePG5dfAuehRLlbzTb+f7IRqrll2
 YPT3FF9x5i0tJd6L7dSjsSLyWZ9ENgd7DB7TuO5iF9bT/gkJozaGrg1I1t0FMSlFkXvF
 3Tw2mp4sSxF8n0gm9dSO4hiL0bWJcMvqDnvs3TJMMIvhm/a4X6V774lBsNGABim5CHug
 /RQcn/1alBRZ3O6M162xPYughHq8SkkBALVARC9gSt0v+fY6Ept0w36QSzFUJ9ooeGjX
 GO8p76VEZDVkbOXqpm5VpMA0vvjUSQQn7DBU4WeIyIJEzmWB+kQADvS3g8wPkVNTVpZY
 H3fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=/BRxAOW9LXIEYDAAKiP1eQV8w7ytoiM0wV1T+xUOsc4=;
 b=nXJk0/lSYWxxinFwrZDl0tzUaTZS3V5HfRFzZbilYjynFbNFqt7wjVw6CDeOkapXKC
 HoC67LaFxcv1+Kvcbah459MF782edP1FEitCkXlCiSQZHBvlDcLe+SBPbfYFYriFNUPr
 Hsj0qvFhFvhZ73KO37QqccOyf6pAcP7cxd/eb4Ei1h3nfWeZyUli5rACMoCkZp2/dChf
 u8MUWwoYR3XCvdXzNtNPDrwFJItAmXkJVnpeXo1g48Z99PuxZRnvfKhgqZCHlcE8gF/+
 yud8f/dWpPF51YAoQZNi3RkEvnstNMcNgfUTVJFD2TnkSzEAY6s+DQ3cM5gVIY3OsWEq
 oSTg==
X-Gm-Message-State: APjAAAV2yMAX1KeMyRgz1BQC0E7Y4Bxc1ovoPwEumAHu9Sys/aUUmfB/
 QUtu9nREuTpxWFBh4+zwmaY+zQ==
X-Google-Smtp-Source: APXvYqxdhmsqsxd7qQOx3AADi0Gfgl7TrFcc1GrSUuK2OQDMjHd1lHIjA2HoEtSTmjX6zY0m3z/eAw==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr4777427wmc.130.1573079122304; 
 Wed, 06 Nov 2019 14:25:22 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id z189sm4628635wmc.25.2019.11.06.14.25.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 14:25:21 -0800 (PST)
Message-ID: <5dc34851.1c69fb81.106d5.af88@mx.google.com>
Date: Wed, 06 Nov 2019 14:25:21 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.4-rc6-85-gd212d757c765
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.4-rc6-85-gd212d757c765)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_142524_979068_4A7B9E47 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
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
NS40LXJjNi04NS1nZDIxMmQ3NTdjNzY1KQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS40LXJj
Ni04NS1nZDIxMmQ3NTdjNzY1LwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS40LXJjNi04NS1nZDIxMmQ3NTdjNzY1CkdpdCBDb21taXQ6IGQyMTJkNzU3
Yzc2NTI2MDc3YmU2YjY1OWJmOGNmMDgxODIyMWU0MzgKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
