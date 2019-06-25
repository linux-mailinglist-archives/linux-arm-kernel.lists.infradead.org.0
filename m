Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01DD55A06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 23:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUlWXge20kvexJHmERP3uASfNYR27swRB8md7FA2qf8=; b=bSx6I7U6ICnp5r
	j9d9F4hBsbeiE55GNYhvSmwzulMjbeitq+yhdJb+hUKQocPEoCMd3fKSYJy5Qb9DJDWqDKyALKe2e
	zN/om8qMFlk3ur290GK8rQuRI8MhVEJ/C2cTh/JbD/LugbEoCwvwgEM+zpSsKWrTpkTEZubM9fwMi
	tVTPaI62nKgYwpDCyRf/zIHF4p/HRsMc/m/aagLfFTj5QcQxkHaPn5pUQCoVGCNsRls+fNeX1jA86
	cD8QtZmH+o0zZ161kTI2RcYW87f2Q39CHEQ5izd0cwQj9hEpFy89MslllMfPlTz1Pg7Wa22N1zCzf
	7viesdq71xZzT4tungqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hft6L-00044d-Tt; Tue, 25 Jun 2019 21:35:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hft6A-00044G-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 21:35:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F9202085A;
 Tue, 25 Jun 2019 21:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561498529;
 bh=4352Ubw5UpbKzczGTQR6bQCqvhXA2YXbUSsMmfZjfvI=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=lbTeYDfSQtcjPCia6U9FjeXvtlrzvUaQWlXvtFua0O0SXodaThvaHxkiRaMxg3WCW
 fWvWdS01OhTLAJnLx4WZTE4FerkVictkUVPdartyysznX2Y2jmBNULt8IYPEaPwnY4
 TgDl7MiZW+wVww6wxB1421Df5mAcDBmpv1ou0/8I=
MIME-Version: 1.0
In-Reply-To: <20190617215458.32688-3-chris.packham@alliedtelesis.co.nz>
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
 <20190617215458.32688-3-chris.packham@alliedtelesis.co.nz>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, andrew@lunn.ch,
 gregory.clement@bootlin.com, jason@lakedaemon.net, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, sebastian.hesselbarth@gmail.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: clock: mvebu: Add compatible string
 for 98dx1135 core clock
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 14:35:28 -0700
Message-Id: <20190625213529.4F9202085A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_143530_203745_E192E594 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chris Packham (2019-06-17 14:54:56)
> Add compatible string for the core clock on the 98dx1135 switch with
> integrated CPU.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
