Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F42513B8BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 05:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=joezU/cR6accHFzkzcvkHhAVvZx8BQm5LVvduFi9b7c=; b=REIoIaPZnDb8aq
	8Ret+u6NuAxag8YAqidpNNBuz+zCG2ZF+9AdeLNZfTVjmufRIQgNLjx09GbwlnqLz8lii4b3rRGtK
	T9GiV4IaAmR9lxcetD4J0R/sYPRu5j7zeiQNSgLNfVoutQTwHfFmatl7SKSIMAN8OQxRy4BVuHRYK
	VQsvRBC7mrZfrQ/ja4E4w95maTH0PL1rojF5h2riZrefgetlSrv6KBZOgKzQqXvx/y6Ew4z9HMCT/
	k/o4vt1xNfMNHDl2/nVuhC8Rnb/BpxdYueRKouJoCV1AEPDRbup7AyIW0iZBauUv1gXHzy/LvhxuR
	g+elXiyoLh0lVQnSdufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irag0-0002ow-3I; Wed, 15 Jan 2020 04:53:08 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irafr-0002oM-9q
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 04:53:00 +0000
Received: by mail-wr1-x42b.google.com with SMTP id z7so14365863wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 20:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=d2awZlshsny2d7+RuqtjxUBaDUJYW87fFRyIg/Wyu84=;
 b=iferxlH1YQFWYzKLUk5HIj1WPLB84t/HDyKijZzcuDn9XbCiakM4vCKuMM3vQAYFw5
 0mqjJgKJ2AsBWv1ND0vUkUhOvlwEDoaAXveDlSDnjN6eUkc9zAVU7L3Wr8XaXEghIoy+
 BMSTZ/cy3hdl6bpONU9Xh3KmmCgDnL8RBPMgn1oa4Bknr63jzVYFvGkSCv4P8zYBz/bO
 BV1g85HjD7tMfJHQhVMTcIPuzg4CoyS+SV4/IPVq2IlLXi5NG9A3Xbg2oA1CHkfmlNRH
 9uUCfgOl/tzEUjcFDCKWihSkpyfgPluQedNN2SFi8B3c/TSOIB6/ncYYO3kaasKklx8p
 hevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=d2awZlshsny2d7+RuqtjxUBaDUJYW87fFRyIg/Wyu84=;
 b=KSKV1fDaz4Dr4pRbKFbYBt3HagBpqk4FvORmHLvHzJ/4E9QpOIx857mGcXu9ChjNDp
 uW3JIMRnqlEd50Ax62apSALEEZszV6PRrBory/yXXH/VuTiN3wPsJDnbDn6EKXrhypEN
 74L7DqRr0GgcUNAkzzZflOfymonwWtaMquGfgi+JMqJoLQZI6EdRfbdM6HmM2yTA0bKS
 eLDxPYj1XDQ7VDEKd9II1tmQuTT36oaP0EeEdbnuvIdQFPPl3I5eyBmcg6M7oFuvgrEo
 Jz8WTQv2RiYjR4qBND8MI9YJvtTr7WvmV8SI54aZmwcj9Z0SVm4CDVhmwg+WrJMtEace
 MxsQ==
X-Gm-Message-State: APjAAAUzfGuTVcTDO1HZnXZqlfKkokSCb3yVnfuQ7irE/ogPNZMmq/xS
 p1Prf4LvOE26cnHV2A6JYHyOig==
X-Google-Smtp-Source: APXvYqwM4p1Dtk39dzRcj6yDrfqpmaBOueiFMD+vuKXjHw8OsPuLltMY2Mme/QZZlniMdU/oNNJriQ==
X-Received: by 2002:adf:f8c8:: with SMTP id f8mr28185953wrq.331.1579063976729; 
 Tue, 14 Jan 2020 20:52:56 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id e16sm22894182wrs.73.2020.01.14.20.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 20:52:56 -0800 (PST)
Message-ID: <5e1e9aa8.1c69fb81.81dd3.0242@mx.google.com>
Date: Tue, 14 Jan 2020 20:52:56 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc6-40-ge31626d443db
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc6-40-ge31626d443db)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_205259_481775_27185B30 
X-CRM114-Status: UNSURE (   3.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS41LXJjNi00MC1nZTMxNjI2ZDQ0M2RiKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ni00MC1nZTMxNjI2ZDQ0M2RiLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNi00MC1nZTMxNjI2ZDQ0M2RiCkdpdCBDb21taXQ6IGUzMTYyNmQ0
NDNkYjY5MzM3MjNjZjc1NjgxNmNkMGFmNmM5YjhkODkKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
