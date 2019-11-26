Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F610A3E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWcl/aLcaRF7brDMXFqBoZ2ipI031muQKArxIgGZNuk=; b=FseBPpElTLxDzZ
	/sD7W5CaqUcb1GYaiJ/lsQWk/cwhqd/9g1fC+ik1sVbfc/GHg7pHIIkAxbt2MjptwQeizXHFV4ghq
	58MY3AGLhynJlKreu0vH70FXX/A2RrtEdtAUSb5xLPoM8YcIMlBSA+rCsr5A0AegEXtvDEOuW/Zfj
	iwcB3iwdzBU+S7P98aKDugOLkdEUltHVOHClJn83F8Cu5hcWqvgOO2HczIDaw1IquCzC6oK14pvrv
	GL0vrKi3FycjRxa5jqgNMECRu9IxN7GSNGWR61ChukmRO/Gi07dtoJ2tr9F7nFcryt/fW52HgHCjr
	y761nU9EADfIg966bHrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfFL-00027v-1r; Tue, 26 Nov 2019 18:07:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfEp-0001wk-I6
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:07:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 058E32080F;
 Tue, 26 Nov 2019 18:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791619;
 bh=IAHo9iyd6JRdEh9K50krnPwE4tP8VZEaFFTzNm1N/Cg=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=mlLVWbccFRjg2eF3HiygMX2C1xtVfgUgnoLb9dFj7SWsNx71yNZ5kZGdSIQd0PiT7
 OBeedoP9SmWJmh2eCUv8cVKXA1b3ZoZvGXfmrEOB0SMGySH8DSdiZYYy0il0c0bZ47
 pN2f4y+SrAfY5t4w+E0IR2My8MvftNghp7eM3eRU=
MIME-Version: 1.0
In-Reply-To: <20191115162901.17456-3-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
 <20191115162901.17456-3-manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v7 2/7] clk: Add clk_hw_unregister_composite helper
 function definition
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:06:58 -0800
Message-Id: <20191126180659.058E32080F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100659_630006_87B78590 
X-CRM114-Status: UNSURE (   6.29  )
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

Quoting Manivannan Sadhasivam (2019-11-15 08:28:56)
> This function has been delcared but not defined anywhere. Hence, this
> commit adds definition for it.
> 
> Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
