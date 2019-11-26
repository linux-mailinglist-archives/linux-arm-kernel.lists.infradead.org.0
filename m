Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA6810A3E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPTBSk8cd5F9ShucOTxjhfQi2EofvX5IYUfJHnn5QRY=; b=CwwC2P+YI5tTIN
	YYG7MuV3fuzA1xxYN4RJseNH8Ht5RuiIzTXpNwRRCrcBvB5uyle9NUCiWJmThxkkEmGmOm7MzCgRd
	hepnrc3S1tkifk7ficbid2N0z7w8vWdlV1CAIGPWuhGGFpp1OdHTKJIBo7gvHMCySQs0FEaZwlkCI
	Cv2j2Ja7/xy050UJIzZiGqFi0j2BXL3smMkOqwHAuKarNiIEZNYBxQUcPRoX4SetLp0gkAtUz8frF
	sYMyuBYWQajaFrNuiAB6P0xh5EIliEnudsLclz1xp4UGRIOmGtBN3LnWAT/rzfRty3JyILWqkov0s
	Wn50RiSxjnkkAaVnpb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfG6-0002sf-W5; Tue, 26 Nov 2019 18:08:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfF2-00029j-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:07:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D93C20835;
 Tue, 26 Nov 2019 18:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791631;
 bh=xgHIkOlT0nceTODXgzK6pno0GYLHq/OcCO+fwm9Gnjw=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=hmya4l35DUAuZ2/Dyd51BBTKqMcyFZaXKsC9UrV8nczOpspBY9KKNd08XPKMQkCyB
 J0Wi7fwNNrZ1BVahVLq3fOeYEDJr/+LB8D9K+AyZJpQXwyKHGeHcxTl96DSQFinWPE
 LLZpCHyWIdUmh0FbzY7Ps9U9qyXI3Jv0RJvDLKOg=
MIME-Version: 1.0
In-Reply-To: <20191115162901.17456-8-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
 <20191115162901.17456-8-manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v7 7/7] MAINTAINERS: Add entry for BM1880 SoC clock driver
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:07:10 -0800
Message-Id: <20191126180711.6D93C20835@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100712_255139_E6953FD3 
X-CRM114-Status: UNSURE (   6.20  )
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

Quoting Manivannan Sadhasivam (2019-11-15 08:29:01)
> Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
