Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D5013643C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 01:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JfPfAb3fkLMiXwJt0OGoSg6H+mXVKUthryF7oNiGi8=; b=mpeuV7VvuiPRPt
	1qQjkxWcdA0oUrI4YB8vdPOGh93UmzYFBDBo2O5Syud2RLksouwFMFiTf0erH3tQqOhBopOiyWc2T
	ptbxvAnrYTG/goUyAed3UlBqoSdVu7fLqD7lPN5UcfF9YA1nZtK2rW34HTB/KpIdEwvXhnVf5gOWw
	CmTC+b71D8YXClop3vPE7qMDu2K5vFmtw0n3X2Cnp4ygeaJ0BV9v6ihFkAaW+sCroHRK2J3UQH/eU
	l9FRtfKde5//q0iYK7/EM1FtmChCv6vI8Ceod0oxnC/twt1h7GbWWHw+hMjHv55Vlx5zqEWAAGPhk
	WZr2dRqLA44MiJI4HyIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphuJ-0008Ki-N8; Fri, 10 Jan 2020 00:12:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphtr-00082g-HN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 00:11:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEB1C20848;
 Fri, 10 Jan 2020 00:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578615098;
 bh=GQ1rsUyL8Tp8YqroWPfW4PnceOHEcnwNATCAVnNLfvA=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=Isc61OqAqq1tmQxZlF6/hpYjPaIN6PgQvbg/CPB/PBLg7jBxxTEn7ND69rFqjuX3K
 NM80M7MTsTwYfClmRCKNa8j+KpqZK7kYz2kblFQQHpyBMOBQWUvlzY2bl5Qsjq702L
 WWoQ/gGoCZHWuI268tDODH5qWbbfamrHMYHtSd8U=
MIME-Version: 1.0
In-Reply-To: <1578557121-423-3-git-send-email-sricharan@codeaurora.org>
References: <1578557121-423-1-git-send-email-sricharan@codeaurora.org>
 <1578557121-423-3-git-send-email-sricharan@codeaurora.org>
Subject: Re: [PATCH V2 2/2] clk: qcom: Add ipq6018 Global Clock Controller
 support
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org, sricharan@codeaurora.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 09 Jan 2020 16:11:38 -0800
Message-Id: <20200110001138.BEB1C20848@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_161139_663389_1C038D28 
X-CRM114-Status: UNSURE (   7.76  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>,
 Abhishek Sahu <absahu@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2020-01-09 00:05:21)
> This patch adds support for the global clock controller found on
> the ipq6018 based devices.
> 
> Also fixed the sparse warnings reported by,
> Reported-by: kbuild test robot <lkp@intel.com>
> Co-developed-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Signed-off-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Co-developed-by: Abhishek Sahu <absahu@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
