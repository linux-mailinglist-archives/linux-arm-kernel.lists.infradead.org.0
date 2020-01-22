Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B7A1456E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qmcYxpUPdUPMpz0ykFYuJzgb6bWn8rw9dYza4uJWmWc=; b=bdJeDxVHNrfg8s
	JiQqSR6jBrqhmfEv9djt7EEgiMTdu1JeO9S4ux0WoCpr32nEyPQ9x+Bl6ddoJwjid3QvgbouPXUXY
	vAhMrXrNtyW72Ooxdur8zabRJ85+GGF6kvZjJU7bZjdHkC/lucwPA1QXDoo/HYbHbiy6v66Nwx4SF
	m8OfG35hkRstXf+mZeYvVHm6YY0qE5hcxOJJSBrVUG943cnr7WBwLaEs29DuGJCrSEwAKG2fSLm3e
	D8seMnYDxa1wwgQB22MRueKuyHt2M/csSRNDRMocnwcf6kMiLNFhna25q+hNoyj1kYfkqP7gr2WkD
	l/PwGcX+Airaec33/Cjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGEJ-0004Bo-IZ; Wed, 22 Jan 2020 13:39:35 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGE7-00047F-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 13:39:25 +0000
Received: by mail-wm1-x329.google.com with SMTP id m24so6855326wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 05:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=KRbnutpI3O78vXWkDmis0xNgHmI1/wswhagNMyfrA/s=;
 b=WnNL0EeWfPPh2L+oB0GAKcs+Df5O/32Vtbfo3sSxeQMdb1laZLLRAUO2VBxGniBoQI
 denz/rqqTgpRckz+KeudrGeUy0pc7R36xLAFUEMX77Pi6lXazgjhyLvGeJQECor/B/yJ
 tfYiU1PYIhCL4ZxKh0gF3IHo1BtRfsWIJSYxXZdj6R37DQ9x/KDHinr1rb5jTjRMDMHR
 zxChF3JPB/OWAH4TqoXZX8F0PqcBELGccB8EtnNd8Dctw97KtztTlNWLMO+3KfP5+wuI
 prFdFN1sKjX8pnM/RLmSdHECxD4XC6GjE9Y2+WFXZUkHfYz3ECnpPnKDkXjztAnNYMPD
 ELOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=KRbnutpI3O78vXWkDmis0xNgHmI1/wswhagNMyfrA/s=;
 b=BnR84muLrSGZAjMn4PfxYhjnAYFKbS6PwDNlAzWxCVE9QnTNeYssanTVGIezE3GSTL
 m4lq8zwiyxXx9VpPI0CuLH3KzLNuEFcz41NxQpZGIlz+4FY2p3OKurKhmr2YqIYUBqBR
 V30luuNHd3JMYLiQC1SZTioOckLPC8XmKD3scHbzuNPBoOSeN5ZC5CGM2is2IDkbh5HJ
 UloxeGRSPzcl9waWk4dmzPPMzHRCTfAiuBb8fnmY8QjAXscfolB3ZBHhpnXvHsM52/hi
 6t/zQn4yMUqzhIrWjluT2GIOjGWDQ90TtdqZUJh4QvGFeawRO6Ac7m3RoNHXaHr/5qJF
 eZdw==
X-Gm-Message-State: APjAAAV8Hac2BkIK4kJFqqD8uwRliBMN0Ny8GdTbSFDE5eV338S8WrTA
 6t/IYaFxN75KIRbsMjgo9MfpZQ==
X-Google-Smtp-Source: APXvYqwslwSTL40iGiu8J26Mq3JQ7+SWkxfyeKrW46ceOQT0IY+vDJVL89Xj+s8R2wRRStLZRo19oA==
X-Received: by 2002:a1c:a50e:: with SMTP id o14mr3020390wme.2.1579700361523;
 Wed, 22 Jan 2020 05:39:21 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id w83sm4181465wmb.42.2020.01.22.05.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 05:39:21 -0800 (PST)
Message-ID: <5e285089.1c69fb81.4a9c7.013b@mx.google.com>
Date: Wed, 22 Jan 2020 05:39:21 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: v5.5-rc7-77-gae2b4b8eca96
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.5-rc7-77-gae2b4b8eca96)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_053923_533780_E12BF73E 
X-CRM114-Status: UNSURE (   3.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
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

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS41LXJjNy03Ny1nYWUyYjRiOGVjYTk2KQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS41LXJj
Ny03Ny1nYWUyYjRiOGVjYTk2LwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS41LXJjNy03Ny1nYWUyYjRiOGVjYTk2CkdpdCBDb21taXQ6IGFlMmI0Yjhl
Y2E5NmQ0NzM2OThjZGUyMTE4OTdlNmRjNGNlMzNmYzcKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
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
