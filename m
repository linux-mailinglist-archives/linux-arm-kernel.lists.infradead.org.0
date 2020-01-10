Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E79313643B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 01:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWw2Rgisv0uyAX1A7c2aCu1t8Wx1Fu5DqAlBao0U+WM=; b=ILxq4qrtaMW3BS
	stQ3KUqUET88GLjCa8/I64I6J58kSP0INFOX6TFfidlbURsr0uVGJCLpY0ID8HQB3I9qu4AIhbN6Z
	qAikw2vh66JOKEkgaXE4HZhv8117zO2mwYDSjfM6+j71O6vh6Xbx0+peiGBJzG/iyRiTVBSCR9zYE
	mjLA6lxFF6pzfd0WZgPVkql044omhs0JV2MlI0nbYftBCm5uOje60cpYeRW3PBPeuVwDqRRgvUlHm
	JQxAWz76PZzAEpRLbwZV3jBlIIVnpWrn4VI905E7U+mtIqWR/0C3hT8q1oYF9vtrfSVdYWP/MqQ7/
	w/bl9JcXFO6XkI0n7rZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphu4-000828-3R; Fri, 10 Jan 2020 00:11:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphtm-0007yH-KK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 00:11:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34F7D2080D;
 Fri, 10 Jan 2020 00:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578615094;
 bh=HnztBjmskstand/RfAIgiAHl0q2mo/wn6eRKdeRgq3E=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=CfqgDIvcWpmD48zb7YuFygpJ1LbtVHkw8K0ytYoO1+DBGtO6HBpFFcJDwsgqsVKB1
 zHnQQjwtNi/5+tHLvTR2WMH01eqFptb31zwKB86JTlO+HBViY8anCa+Jkaafia6CLV
 ZnZBbrH9gdDh/kR+ndqdfR+gz807H4UYm+AFodKI=
MIME-Version: 1.0
In-Reply-To: <1578557121-423-2-git-send-email-sricharan@codeaurora.org>
References: <1578557121-423-1-git-send-email-sricharan@codeaurora.org>
 <1578557121-423-2-git-send-email-sricharan@codeaurora.org>
Subject: Re: [PATCH V2 1/2] clk: qcom: Add DT bindings for ipq6018 gcc clock
 controller
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org, sricharan@codeaurora.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 09 Jan 2020 16:11:33 -0800
Message-Id: <20200110001134.34F7D2080D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_161134_708132_BD6BA747 
X-CRM114-Status: UNSURE (   6.46  )
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

Quoting Sricharan R (2020-01-09 00:05:20)
> Add the compatible strings and the include file for ipq6018
> gcc clock controller.
> 
> Co-developed-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Signed-off-by: Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>
> Co-developed-by: Abhishek Sahu <absahu@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
