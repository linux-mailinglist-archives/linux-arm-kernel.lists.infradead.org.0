Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68746144A9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RW+5Z0MENchIgILDkMYZrUEVMxRhNxbSuAr4iU/trpc=; b=Fqs2O02ebHDDZE
	bhQHNq1H6CXYuDbdt1HXurmzylk0BBfxc9r6w8+rHJIAenzw8WruzmgFUnq9E/Sap0VXmnZahoSL2
	JPkiHYArh5YHbMWZ34gKc4lgprThN+99+1OoMrOOhFfMV8vV0SmRd8p/2IhyIsi9JZ5wHNTr0Olr/
	ojBSkIo5QlQjdBYtNASeFu4/DDVAYIcls1nok1r70R8g46PRpg538sVtOA6a++RRy0K7z0aKyBfaS
	Ur7SswnXdU8AtrTPCVL/fPYJPAVbL62DEvHKC5H2c5tKEvF9kZ97N5hkutpZaf7OH4GDLhAiahJPZ
	GpUOWmF1zAfzZPaB92Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu77I-0003D9-JY; Wed, 22 Jan 2020 03:55:44 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu779-0003Cm-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 03:55:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id p9so5337580wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 19:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=sXnWAluqM0F2G+BicbkEKq5R/bLsvV8743fOPzEoZXI=;
 b=d8BlrK5VTac/o0Hd4WYNAmcbEGyGVa+Ihb3QXbxVi8wkXLjuCq3AbL1Fs6YXPRP8/K
 GtmOlcfYGi7/CivgYAzEjvsYE3iStIDWEJIZkUldCsj5k/U5SCL3QIxxWpHk3mDatNWd
 vJIC+T81v3Wwajk4Z0Tsn+2Pjx4Tw8Jmi+GGFqlTfnWTN3cx4fWbWNgazZow3QzpFyoO
 JPJW1HSbQXQplI25ceNZCkA68chz97Rsk3Uh2gRRCIdWtT/9McaxN7gud/m4ADb7yoKy
 62I64DXDcAQ37bsH+ewHplAO+ZXWz6j1VxxIvZvgUcs2b8i9Z6l3X6IsFCIo4TrDNoSZ
 nJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=sXnWAluqM0F2G+BicbkEKq5R/bLsvV8743fOPzEoZXI=;
 b=ZK6pqx6HAdthd/NX/wrO0mtRZi0kqMupQyhfBM8MP7w2PgZMpsMN1b3X4jQm5lS3vI
 i18UXhnhjobLB5WmkPtmDvHdzx0fsdpRZ1Dfw0/P3TQssTRg1Zkv9O36tlpsPIBig9aA
 VtNSnsZ30uQre/7tCs1C31+dY15JZ+l+iO09leC91L/8pmyb3xj0TYtl8Gg1P45qzwa7
 pcmPEecp0iY1vNI5qPOqAkvG4cWL/xADFs6osptCMtVUP2wOskuQhMcynqw/bqAE3Nxn
 VslnGrsJyixikJf/MMA/D3A8WCPpHNFK0zSMY63uV9jaPo7PIE7jpDz4R4sLsWy8YPdr
 +5wA==
X-Gm-Message-State: APjAAAU67l7cAiV8n3T6Zw4+TL3/KkYksUltsEARtPmsR+YUBpHw5jac
 WKDE2HdPEfSU8bEvbJB+uEa9bQ==
X-Google-Smtp-Source: APXvYqy0wmiuH9RMEMs2eCK1SOn/1Wdhp52citnXFSVqI3iJ4vWvzDw8qBjiBLe16PTXwHSovgTeUA==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr462503wmc.36.1579665331770; 
 Tue, 21 Jan 2020 19:55:31 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id t25sm2050567wmj.19.2020.01.21.19.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 19:55:31 -0800 (PST)
Message-ID: <5e27c7b3.1c69fb81.c420d.7ef3@mx.google.com>
Date: Tue, 21 Jan 2020 19:55:31 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc7-76-g1fcfe766a119
Subject: arm64/for-kernelci build: 2 builds: 0 failed,
 2 passed (v5.5-rc7-76-g1fcfe766a119)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_195535_620444_A1671216 
X-CRM114-Status: UNSURE (   3.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAyIGJ1aWxkczogMCBmYWlsZWQsIDIgcGFzc2VkICh2
NS41LXJjNy03Ni1nMWZjZmU3NjZhMTE5KQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ny03Ni1nMWZjZmU3NjZhMTE5LwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNy03Ni1nMWZjZmU3NjZhMTE5CkdpdCBDb21taXQ6IDFmY2ZlNzY2
YTExOTViZmI3ZDNiMjQ4ZGVmYmE4Yzk3ODdkMGQ0MWEKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1
bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVy
LWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9k
Y29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBz
ZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJt
NjQsIGdjYy04KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNt
YXRjaGVzCgotLS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
