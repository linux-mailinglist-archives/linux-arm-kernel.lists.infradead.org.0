Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F81409EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOHOTG2IQd//cP0MMxHoTOLSq2zlZpEash3kmnRMx+8=; b=BR6gbkYxVRPxz3
	775peBMXd4nKFp8HIlCH32P2gtLytLwCvZ+wDh+WqsQCpeGKmlzzB75OxAGcZcpUd1O1X7D17qnDe
	/sg9OqVEZM07VaLr4i5LVn8aEd3ada7GKFOjl5DvKw7s0rRR4btNuLqFjVY6lzm4he/vd7GdrwpQr
	CnyZm/D3GGJ3ccoQCANHDFjftXxHHMVe1pxvKMbAIPN1aJeLvFa5xFxtrYhmZmDk9ZfLDFnwdfWIt
	7gTukKAav5Ny/O648z0tuMcCDlmz6f7C/4gW1m8Qy+kdeUPG7lyXisTQZZZQweF6V0uhTHbrIZXdP
	cxdVfS0U8mFAj90UvFuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR2j-0000nt-9X; Fri, 17 Jan 2020 12:48:05 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isR2X-0000ma-75
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:47:57 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d139so9436368wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 04:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=4AIztcY3HO804o+uGWV416JrJ3IWd8Gg68j+f/T3wAA=;
 b=heLr+oEj0lBezFvfKejLFblvWBVaBftlmeAx/+IOs3N/ZdOERVRj4zueqdUk5bFtzT
 GezbsW6p7aHVWBcf1EFU544zt/pLw1GTgYTVtyba/tDuMefmsQJKaeo98OmuO2EMtCDg
 X8aJ14OOy3MXxR8BsOkgkq4qMhED7lphmwaOtZ1TVPCNceTZdbHl6BuFsPBEbOYgk90J
 p2sevs2da9vOa4QspjCT+erxzcbt7kgvsAHtNyGBCqIXlSZe+bgzbz0e4y/v+gS0KJFh
 5HyWG+sSr+/AMczpesZRPrY5GGdFnd7jCLzGIhxzKODtvAC2JVt0+QhWJDU6LjeuaP/1
 OILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=4AIztcY3HO804o+uGWV416JrJ3IWd8Gg68j+f/T3wAA=;
 b=uOjs0d8Cn7cY1e4t0oWdcOio3Kl5WfWConhsEkGU5Un/WS9enernvnti2Ex0X6EczQ
 QR652P/5AFpO+mLZ0dnPacJWoUkXIGBvfRnjMRD30h5fjFHxK+wLBB8NJ0g+wDpJoHE+
 ogbgfTXmuH1aa3wYf4caAiWgfhn5V1UArt2N8cEnNGkS58Idz9nEaZBcui1g3cyzcoPk
 AQO+sOFbQ5KhQ6CkNXRRR7CzLdP+VerFLNoepjsC+b4ARTiQjuNWP42EINf9SjQEa4qw
 Cw1AyhcMefra9VErp3d3r0Cb146yE94boa4hAtOnHnrV4NjULurpmwriRXsdfBMVOj6Z
 e83w==
X-Gm-Message-State: APjAAAVTtkeK+WvkKILs4DquKZlGsGwoIO8sYmhoAd6cdLY9UaBWVFSd
 2cQkSG2TkWD/fZKSGGr2FWkiqw==
X-Google-Smtp-Source: APXvYqybqUAQP3C05bpGtcvSCfxv+HnCGnsO6Nh9o9/H0bjbUlJKjivvm/EdRZ/LsF65Fx8g6mJnAA==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr4578429wmj.90.1579265271409; 
 Fri, 17 Jan 2020 04:47:51 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id z3sm33787275wrs.94.2020.01.17.04.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 04:47:50 -0800 (PST)
Message-ID: <5e21acf6.1c69fb81.3c552.affa@mx.google.com>
Date: Fri, 17 Jan 2020 04:47:50 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc6-61-g2556a8d3927a
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc6-61-g2556a8d3927a)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_044753_399685_CB935759 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
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
NS41LXJjNi02MS1nMjU1NmE4ZDM5MjdhKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ni02MS1nMjU1NmE4ZDM5MjdhLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNi02MS1nMjU1NmE4ZDM5MjdhCkdpdCBDb21taXQ6IDI1NTZhOGQz
OTI3YWQxNGJhNTJlNmJkNzIwM2NiODBjYWNhNDg5NWMKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
