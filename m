Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A07ED662
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 00:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ev62g02HBfJxxqAwTnCakl9bjv/yrr7rBU7zrxKjZcs=; b=MCgyei3dwzPGzB
	UocA+0nxYg0EGnITgO3Yvwo6/f10JasJCh/bdmJ8DCeEulb7KrT9kixugP2q44RntBfiw6o4DfmAH
	4Xt+wqkybF3JYpcPnzxy+J8OrXQVx43zv2ipUXKM8RySkPaYDIvr34C0EGQVW1rC9yExmM13vV9MU
	P1xUhhHTrSxB8vbldhjK1to4QlYy/cQZFom1wYjz8KXhhvwy6DRTF3BaLYaDsBktJ3ulYaSgQZakH
	rdbDr2JXzwN9KXCkME7queeJ3zjPVRUby5Q9iupLPt6W5X5UWtc1YHwnu5lqOMT6iyQZlLosSJiEK
	EuuAOHBLU3vUsl3RsSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRPD9-0006F5-6i; Sun, 03 Nov 2019 23:23:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRPD1-000646-Tk
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 23:23:01 +0000
Received: by mail-lj1-x232.google.com with SMTP id e9so2282881ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 15:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=A7f7kc4Or8nejtGZcNFcOsvUo0Y1VRFgoBZiZOLsbLc=;
 b=XYP79ta34j0pD2uxWxo5iJSMjy2VPx0GMlmhNO+XFSGajwFAYduTtQ3wNBK8ewpXmK
 kjMv+IOmgj5jdZ4ztwnoBddz7XKGJmfjVbVULzW67g3CFzVrhOuq9jQp/kdLWuW6+Lm6
 apTp4FVP6zZZAYj49XMYj90Hwn4sFj6uCDSm9t6ylMlvunivFUQhbM9rA/OZFMVA654A
 InYuxme44Ws7d29EX5tDJ89/2r8hQv/qe+eH081HHXBvnAexGYtEEWmQhI7jgSJEbsgP
 gwlsGhyIZ1TNnkxxp7t+RGO0UlrUjMoTJ/zS2xSgZ2I7jJzVMQRjYCc1gvZ67D5tnyAa
 A2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=A7f7kc4Or8nejtGZcNFcOsvUo0Y1VRFgoBZiZOLsbLc=;
 b=gEKtOQKYDnq4BcpfzsZPLWfTXHz0MrKnw6GiJvpVaGpVnNnoHbCR9rvxDv4w1xNnoi
 kwRVmliRAW0rCzGNzZOnKi3i7uxBTsnRmX7fZsR6gyb9cFlVLS6v8JO5NC9GEcoB9BZq
 nCTXCBmBy4JjL/AnjHmeqC0BMeC/3yEu2bmiAw65Oqh5TznHu9J0A5CrftsfJ/OA2XWX
 X1E92vhuXNvfJwgKbIlv15l4aUFxlMCeWgdSn1DiUSQ26b51taPife+gXwuDh5OgwioD
 TmYPv2XvaRFdjAyT2pRn5Zqu4bhmrmsEJt6RGrew1aEqTvjfxbf2VfcEhNOivzYhYcmA
 uqMQ==
X-Gm-Message-State: APjAAAUju5zn/P+WBAaBIsgFnbA57fqLA3pFwEzX1BUsjEZp7lFimAbL
 OCLN7mH3QIJfBQXETB+8M0FPJCnromF/hYzs86jHmA==
X-Google-Smtp-Source: APXvYqwX6VK4SW8IcAEXtL4RSvaL1lf1vcXSiHNSDs8/E3XSjpO1za9Mwf5F70cn9ZAtvWejPgwT2Elwgqlb82FKVN0=
X-Received: by 2002:a2e:814b:: with SMTP id t11mr16972488ljg.20.1572823376318; 
 Sun, 03 Nov 2019 15:22:56 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 4 Nov 2019 04:52:45 +0530
Message-ID: <CA+G9fYtoODTuayzXdsv=bFuRPvw1-+dmZxHqQePy6LX8ixOG5A@mail.gmail.com>
Subject: stable-rc-4.19: cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
 undeclared
To: Hanjun Guo <hanjun.guo@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_152259_993948_32995B9F 
X-CRM114-Status: UNSURE (   3.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, john.garry@huawei.com,
 open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, zhangshaokun@hisilicon.com,
 lkft-triage@lists.linaro.org, andrew.murray@arm.com, will@kernel.org,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

stable rc 4.19  branch build broken for arm64 with the below error log,

Build error log,
arch/arm64/kernel/cpufeature.c: In function 'unmap_kernel_at_el0':
arch/arm64/kernel/cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
undeclared (first use in this function); did you mean
'GICR_ISACTIVER0'?
  MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
                    ^
arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
'MIDR_RANGE'
  .model = m,     \
           ^
arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
'MIDR_ALL_VERSIONS'
  MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
  ^~~~~~~~~~~~~~~~~
arch/arm64/kernel/cpufeature.c:909:21: note: each undeclared
identifier is reported only once for each function it appears in
  MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
                    ^
arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
'MIDR_RANGE'
  .model = m,     \
           ^
arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
'MIDR_ALL_VERSIONS'
  MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
  ^~~~~~~~~~~~~~~~~
 CC      arch/arm64/kvm/inject_fault.o
scripts/Makefile.build:303: recipe for target
'arch/arm64/kernel/cpufeature.o' failed
 make[3]: *** [arch/arm64/kernel/cpufeature.o]

Build log link,
https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-stable-rc-4.19/DISTRO=lkft,MACHINE=hikey,label=docker-lkft/331/consoleText


Best regards
Naresh Kamboju

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
