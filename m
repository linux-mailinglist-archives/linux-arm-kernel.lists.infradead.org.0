Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D5613D07D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LNavEzrzgtwt3uv7/0HSI1kybWOaLQhUJECftCmTsvY=; b=nLgwKfb2nSxD7I
	0rkFwT4Fq11NpOT7ixU1os9NPq2aoJlzu2JYVyrtrnMAv0tSBIABoFZlz6/g06sSXm+Gr4ZPS40pi
	r7FBl3DfF908cqKXKiv7DwzH5fEeLyYkniKwXx4YJhh3l7DI3RkeqcWZKEiDoAfqjyrrEmDQSzzbg
	yaw/J8BHrey4fIMS/QAXME7LVcMK2R7fc4d1MCoj6e2pHocc9pf3n1JnT5UeRB12QLLhTxoV64qKu
	HlUHmn5auVrLfeu6p/o2kGvqAONt4DeAUhDDrz9JBfANHYua74Vp/il9+sgBU6ile2xRrpPGzBtB7
	FkEfiC42CY++ATkFwSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irrh7-0001FD-Lo; Wed, 15 Jan 2020 23:03:25 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irrgx-0001Em-7z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 23:03:19 +0000
Received: by mail-wm1-x335.google.com with SMTP id u2so1793906wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 15:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=rcHY8ZGHTszi3A4Ocx1pKw2pFpYP0qQs/SrDLYbZ67g=;
 b=fRqR1xSE624Ej7MREmbyCzxsCcz6rsglJEjWKU2LgzEZ8+fpqJJNqKR0y8UM64YhhI
 pjVS+3vHJlgcBpBQg9XrTgNde7YTOaw/32wXk3g8tvCA7rH3U2cipnkSfK+JhJKjVnL6
 izEG6PMgqzrdn8i19910R6tORhufl54X9eCvDRKNb9+Zvy8pGnOQBAT1W3czU2OPaJZT
 6TBQjM23Nz2KVXIe4/wbv9u5KJdgtB77M19936Z24PiT4Li79QzTOaFIwFWeLU8tuNWS
 uMxF/BfMb1x9xHyhtxlJM2Fdkv5OI8OMZOydrZwEbjQ7V9ha3DmqdYM5dr0dKbS/j97f
 rjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=rcHY8ZGHTszi3A4Ocx1pKw2pFpYP0qQs/SrDLYbZ67g=;
 b=XsOM7uA9m2f478YJQHMpL3hSi68RHJUEiAkBtaPH2LkNbD57orOhj0khB9Qop6B7i4
 0W7VS1JBpeKfzyY4rtnvimTFocjtruSvl4vwXOLSGGL102XYqeb2HB8ywjQWlVd/CXlw
 wils2kGR8rwvUdQBfofumz/eRuYBvPJIHOIkuk7WlNtWMtpbxGLAF0GaB6wJ01ritl57
 iICGxqlDb9YO9ttjK5tH7RW7CzIAozGkw90VBJcWZq2eY7D0MpUekUYRESbGXV6aqPQN
 ZcALJls3/6nxGcLFcaqJkERmzHEsGjBII7LaBIEBTsIiKGw2UmTY/c2pVsxFIKBCmWov
 aiRQ==
X-Gm-Message-State: APjAAAXp4sq2YH/FcPF2k0q8RQI+OGfGM1Aa4G4hEtTvfslBUrUO4fF2
 2V6c87iQMEmP3289f+oFxcuEAg==
X-Google-Smtp-Source: APXvYqxGgZUxfV4rtpoJE3C+NQX/uBOpMgMnJOceeBHt/7XTH68XmxoMTlq6RhRrTYsNwVU28O4lpA==
X-Received: by 2002:a7b:c765:: with SMTP id x5mr2400547wmk.129.1579129393208; 
 Wed, 15 Jan 2020 15:03:13 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id g9sm26668438wro.67.2020.01.15.15.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 15:03:12 -0800 (PST)
Message-ID: <5e1f9a30.1c69fb81.9d7c0.069e@mx.google.com>
Date: Wed, 15 Jan 2020 15:03:12 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc6-47-g40f39e8372fe
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc6-47-g40f39e8372fe)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_150315_380257_19B37260 
X-CRM114-Status: UNSURE (   3.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
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
NS41LXJjNi00Ny1nNDBmMzllODM3MmZlKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ni00Ny1nNDBmMzllODM3MmZlLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNi00Ny1nNDBmMzllODM3MmZlCkdpdCBDb21taXQ6IDQwZjM5ZTgz
NzJmZTBhZTJlMDYxZDI2MDc1YTQ5YjJmNDc1MTVjOGQKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
