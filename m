Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B1AC44A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 05:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+yQfmp8BtDai5qY7krFuFc+2ZQON5MUpccehi4XBew=; b=coOnT5lco77S8r
	DOThqMjE51Fglp7A79PbP1UIwlbeWudIzexkopoO1/gxdaTRtU5LpskUY9ODYgG37CcRJNavG+vOd
	NtndTOSvnnfx3g9rh+lPLyNuxYcmfnHCoEuACcmgW5jSuOFFFCzAvdKC4uAKcLngXLu7uMc8+PccV
	WkuHc7DwHQxTesWhNayE42jfaew1iMICxD7GecpoczKNlj7V1XBugyM4Hpj00shOEAJL+FkRTw+3N
	feXYqRXjI/DmZrH9VxoscCOSofGsTD51EiulcHvRX+r4ORou7GAT7YGY8EIdWwlynyQyHkIm9AMmN
	SMhdHPEoQW2tPedQK81Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6RqW-00007s-LJ; Sat, 07 Sep 2019 03:57:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6RqK-00007B-JX
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 03:56:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF8B2208C3;
 Sat,  7 Sep 2019 03:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567828615;
 bh=7YrNko7HXetW4VBcuIgZksgwHYUgKSmVSaHyJlR2ino=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=nRKaL6VcRNZEsSmfvgkrEJ2PMTT9TSKrk2NoJN/y7oi3WW7NriDU3E34PxXYYzp+v
 TD+zDA1CSTXND7O8UeQ/Oo+g1pOiKE1qRtD/4/NpysNTau5PGGLwzWMtXSHe2FoEWs
 cALHxjeiTgO0nkMlHrz1htCmWj0XjtaYuaaSGhHA=
MIME-Version: 1.0
In-Reply-To: <20190906235110.15566-1-prsriva@linux.microsoft.com>
References: <20190906235110.15566-1-prsriva@linux.microsoft.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC][PATCH v1 0/1] Add support for arm64 to carry ima
 measurement log in kexec_file_load
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 20:56:54 -0700
Message-Id: <20190907035654.DF8B2208C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_205656_669290_8AA78389 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, catalin.marinas@arm.com,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Prakhar Srivastava (2019-09-06 16:51:09)
> Add support for arm64 to carry ima measurement log
> to the next kexec'ed session triggered via kexec_file_load.
> - Top of Linux 5.3-rc6
> 
> Currently during kexec the kernel file signatures are/can be validated
> prior to actual load, the information(PE/ima signature) is not carried
> to the next session. This lead to loss of information.
> 
> Carrying forward the ima measurement log to the next kexec'ed session.
> This allows a verifying party to get the entire runtime event log since
> the last full reboot since that is when PCRs were last reset.
> 
> Prakhar Srivastava (1):
>   Add support for arm64 to carry ima measurement log in kexec_file_load

Did anything change from the last round? Please include changelogs so we
know what to look for.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
