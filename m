Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD851C4D67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt//FQUqTqQWTx423xBRnBEqCN2PlNCHtv3XG4xlxnk=; b=qD4LALMSlbBX1c
	9v4z2Sv7D3OrJDu+Elmy7M0PDIhby/Mtz7KxDq1SaawHmxcLuDtLbpWRRdo8hvfeYIoO6Gmjd4JPk
	CLd+VIlidcvC3BwR59Bw396psb4cqh0a9sj41slWF3xCY2ZZtL3aY1K35xFL8LWNshQEbf0JfCgmv
	0jN/2ecnep4TWGkJ4D8Ni4IX0xG7KLQxO7Gruw+QfPVTVQfPacHq4sgRaapgz5KD/QIP+YEdOuPnl
	3zZ/rvcDSXx4B3NfyrNPDsqNMwvNWT9XwGmZYVjxRmLqoo3RCQJNJ+hHxxZF40kPai5eT3AQ+xdvn
	s22hk+7bfSYo5hBMiZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpWJ-0003Xw-35; Tue, 05 May 2020 04:49:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpWD-0003XP-40
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:49:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52112206B9;
 Tue,  5 May 2020 04:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588654160;
 bh=yItgMkJqd6ODMcueMcLMdpfZUNWtRXTq6l9lC/Swlb0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=IHAW4rpA7shJHtRlptSTN/BwwFj9gGau00WdhT5JIbbmaYNPIHMm9u95KRncKcbnn
 Nsvzk33nQilouSBAgpQN4OamPFCWXPk3eiRizjU9vb/uf+qDT7Z6B8zxMjWl1Q9uAh
 y6f5J/qozMlz77bYDFvo71bnf16OYypD6P1gMdBU=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-5-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-5-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 04/12] clk: imx: scu: bypass cpu power domains
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 21:49:19 -0700
Message-ID: <158865415958.11125.10235543039154102899@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_214921_180871_F9FEF820 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:48)
> Bypass cpu power domains which are owned by ATF.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
