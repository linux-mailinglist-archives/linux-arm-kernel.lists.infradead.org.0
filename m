Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA92410A3DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIMGVv/dlS2VXvEeVyuZrYLUUnBUHNuifTkDgE7hoh8=; b=qVrAnrHIjEnbtf
	VvzTHAI133GB9+OphzdHFA25/GWp7w4W4fGiC3OjOQDETUwY68xEohzf/Tt15g7FKF0k/PvNjMJFL
	4Pm3PV0g4SZdtSXdhlZRAPPwrYBEObTvBVD3eZI6s0TGtpEU3Gr6QOFXxYpO0e8/yMe6wT8QlSD/x
	VoHCMoQQsk1DyD0zG6T1NyVhUkyd4ogVXSCjE7axoCgWRiYpdjoVjuEXX3g3zhNHN9ZeW2Dz/J5Jv
	uSIOt4uuqcWCsPw+MCFr+/oXvdDS7qAqeTmeR9GvCYksqn2WrubJo3bMqoe2wjhkSmhQ1ZcgYeFVr
	K7bYXJMer7/vJZOZuM2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfEx-0001xG-Mf; Tue, 26 Nov 2019 18:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfEm-0001wO-C9
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:06:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAA8020727;
 Tue, 26 Nov 2019 18:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791615;
 bh=BIHjdWNy2FSclmtpzSgtK2Gx2rJcf2TAWNwE4x0yk8w=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=HXThmMmiUsomN57YsdQGyLVL/eAWt6fSU/WCNRn3LQjZSdxbn4Ca7alQPd1CT4lSc
 jqKPEIRjzQK532yHw/7+Snp7bPu1SuBllhGZAkWpZA685aspwcfMW20qNNADtb4s6c
 8UqhDfVP96BVLIEJehQCS8O5HLnkMoROHm8QfA4Y=
MIME-Version: 1.0
In-Reply-To: <20191115162901.17456-2-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
 <20191115162901.17456-2-manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v7 1/7] clk: Zero init clk_init_data in helpers
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:06:54 -0800
Message-Id: <20191126180655.CAA8020727@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100656_443852_371EFA6F 
X-CRM114-Status: UNSURE (   6.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-11-15 08:28:55)
> The clk_init_data struct needs to be initialized to zero for the new
> parent_map implementation to work correctly. Otherwise, the member which
> is available first will get processed.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
