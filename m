Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68296191F4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wlccCXRm6r9XKX5K5cPDt8OkIZTZhi7roDd2Cqglr0=; b=LOkqsVVt3DbfNN
	fGov67pkFiSVBUwl+fpSA967NUXrioqdhJWCpLZhF0KlCw9DQeUXl+15rsWc/9hNq1MbgRDl4G59t
	qif0SlPL7gWMjD+oyRGXUK2fVAD3IV6uICxBoY9+nylJ2be0Wc0QS+204qtmOyZJnE4GS5gh/Vyaf
	3aImds1NV7DtbxYCcJADj2C+WZDflWiNgXOap1X7c3Pn4GulZOABEJmj0Vrs2fm/xxEcZsAUvwU44
	KLlEf7adT1SJVIQqTo5I/PUFjqwsmxno9DXAa6TfA/KJ+v96eKLwXOsiH9QKgr3eVVpVU8eG3W1oB
	pQsacA89ndhDdToOPDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvup-0007Lw-Nv; Wed, 25 Mar 2020 02:37:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvue-0007LZ-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 02:37:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6A6620714;
 Wed, 25 Mar 2020 02:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585103819;
 bh=InTvH1FD+myof5xLImIsEz4YlekXxKWk3kYrJWkbr0Y=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=1e3i8/DIhGo0HLqrkskon5km384KJf9SoZP1feyeC+ZJmg1QQcczK8/AqfuJsP2tk
 EBYKSQk298Cdgnw0WujZwTJNmtd/ibRkzqKFcdewrIjgTCDu512l/adogDsTsumzBU
 kX8saiVwdrg/QT/7rPNSFCpDDf1uue1ZDcdu182A=
MIME-Version: 1.0
In-Reply-To: <20200323184501.5756-1-lukas.bulwahn@gmail.com>
References: <20200323184501.5756-1-lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust entry to ICST clocks YAML schema
 creation
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 24 Mar 2020 19:36:58 -0700
Message-ID: <158510381898.125146.5862992017032580482@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193700_353360_6736DBB1 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lukas Bulwahn (2020-03-23 11:45:01)
> Commit 78c7d8f96b6f ("dt-bindings: clock: Create YAML schema for ICST
> clocks") transformed arm-integrator.txt into arm,syscon-icst.yaml, but did
> not adjust the reference to that file in the ARM INTEGRATOR, VERSATILE AND
> REALVIEW SUPPORT entry in MAINTAINERS.
> 
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches \
>   F: Documentation/devicetree/bindings/clock/arm-integrator.txt
> 
> Update the file entry in MAINTAINERS to the new transformed yaml file.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Mauro got here already

 https://lkml.kernel.org/r/491d2928a47f59da3636bc63103a5f63fec72b1a.1584966325.git.mchehab+huawei@kernel.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
