Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F5E104864
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 03:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zIcRuN0JVkouNk04mXK3LSkjKfKVjFXiLz80tr/0k4Y=; b=c/QtEjqf+ijIgr
	nBFAcZ2IYRWvpkBj9IsPpjFsXNXz7LkxK8vjWE689PoVoU2iEyK+MO/sbXkxom4OP4mTDoWlnFU+x
	V21HsYzjjmc/9ZkWmXqSwBdAYa4tHzyuhTKHPE/nhmnedKAhFVfwCBSJGhAntDhJMdKDnW0A9Hin5
	5gl3OafOlP+D5t3djpuHoHDa0R5MECeZN/iyQlcFjCQTUA1flH2HD3FNJzkkSHwH5O0vkkAbODNOl
	Oknj9RlsSgmxa2RVk2tgRfS08LDqWu1SBQUk4ntBhnJfTx5tA6r9sGWo5Il/aPMrO03jwpwPi7z3f
	joQ5N3A0ftopt5507ApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXbod-0003Pb-B6; Thu, 21 Nov 2019 02:03:27 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXboV-0003PG-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 02:03:20 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b3so2292547wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 18:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=eREWkolx3dxAvgKbnFMXAH2d/MftWX1F/tOcM3RqRXs=;
 b=cVrcsl/xtwhcUZCS24W2gOz/FqbrJxHEB5SmzCZN1fmQEDvmedKya67Y6GcFc9oAER
 OcwMFYOoa4j5pqz6Sf0bWxFk+O1J8T0VhbkDp3q5PSPKiZEtfvC1p3pkgKoSaE1cKwPd
 gHHq0WLmMD6wbM39/9077tPy1QsVGnp0cDWTBkMn9x0cTHNFly3VpUKNCf7jCltx7n5Y
 qjDsxg/ZARHp+9tvGOX2o7X88jJe50E1t8beMHRN5VAJsuQNgyN9kVz6dfpFWqr8Lxlg
 trh2FUGFN6XdIO0HCo+JzTlTJAqb220jAFRZ6+5nU1d4NMHyR7dzWV9ddLUdkbaGVt9B
 v0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=eREWkolx3dxAvgKbnFMXAH2d/MftWX1F/tOcM3RqRXs=;
 b=SFhoUATHeAl3qEcA8Kc8MhxXA6N9zQqsWiNXkFWNmI9WA+HRDb9AmGKj1OFPUBeH/8
 ZVtzAwluzgofPA0k274kZ24DReO+YBqulGNHZGJmRHtOEUZCD3cykpc8f4o+xxYGotSM
 cY2FJhSYUKzSaokbTUa1DY4zjIeQCj0qhU2/e6RrMJKiMQEeHYBvpph12/kPN9m5Q94P
 K4hN4GDa0wI6EIo76DZcdoy9u78m2pPt9eNzG4SgTjfCLQDJnQ6a+6b8OA2Dbk3mu3OL
 QfD2YDtG8AxxMOrTVOStaFOi9FhRWU1RCwgNeu8R+GL6ZrHQOhp0DKgkT4oKfvczRayH
 Vo1Q==
X-Gm-Message-State: APjAAAU1zrz7IkuT3ysbaQcRyeyP0ZPJAiCTZqnFy5LLVKK/NIqR4jdf
 3ie/Jb2UM5o5rqA/2M1W/RY0GQ==
X-Google-Smtp-Source: APXvYqx5VZIC4Lnzon+nlKN0t6UWVOsZMWClBCp9cCmBWzxjNaWzGUbe3boOA7JHVbdI97R/jHqc9w==
X-Received: by 2002:a5d:4ad2:: with SMTP id y18mr7212424wrs.396.1574301797464; 
 Wed, 20 Nov 2019 18:03:17 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u26sm1248590wmj.9.2019.11.20.18.03.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 18:03:16 -0800 (PST)
Message-ID: <5dd5f064.1c69fb81.5e209.59cf@mx.google.com>
Date: Wed, 20 Nov 2019 18:03:16 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.4-rc8-104-gfbaa9209b833
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.4-rc8-104-gfbaa9209b833)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_180319_299053_B397E032 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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
NS40LXJjOC0xMDQtZ2ZiYWE5MjA5YjgzMykKCkZ1bGwgQnVpbGQgU3VtbWFyeTogaHR0cHM6Ly9r
ZXJuZWxjaS5vcmcvYnVpbGQvYXJtNjQvYnJhbmNoL2Zvci1rZXJuZWxjaS9rZXJuZWwvdjUuNC1y
YzgtMTA0LWdmYmFhOTIwOWI4MzMvCgpUcmVlOiBhcm02NApCcmFuY2g6IGZvci1rZXJuZWxjaQpH
aXQgRGVzY3JpYmU6IHY1LjQtcmM4LTEwNC1nZmJhYTkyMDliODMzCkdpdCBDb21taXQ6IGZiYWE5
MjA5YjgzMzEwMmM5NDJkNWZhOGI1YjA4MDEwMjIwZDJjZjQKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDog
MSB1bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQg
cGVyLWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxs
bW9kY29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywg
MCBzZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmln
IChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9u
IG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdj
Yy04KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVz
CgotLS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
