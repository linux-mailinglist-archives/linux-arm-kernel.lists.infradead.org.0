Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AFA10A3E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEJbyM+p1+dgAGUIiNQ3LAX3BwJf0sT+b4Xx+ZhazQQ=; b=bgCZD80HvE7Y1W
	75QstIl7JHwV2d8fY8hpvPvmvG9hPkylp5bhecrmB6010296pW4tJbIyVAWgtuEygeI5GoPF0yB+2
	NG/ChlZNbIW9PhoIgvKrY/WkmkIUS9Zy1PgZR0PMFig2/BFErYP95rttLTTsNTkX91xTvRrgj7Y3H
	0dlGK5sNz1tLaKaUthqHkyTXUL9ufz8McrdYgMs5ic72EXb6qOUlKf6JA0uXbpODPKdfkhcAHWSVk
	ONqS5uV1VmZxp/5FFUoCY9BO2OPRR5w67+bg6rCZRdlZTUXpz2P7JVYoEdiC7bR82yf4gYN0QJlGk
	jr47f1C8WfCnnwcEUYnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfFe-0002R4-NT; Tue, 26 Nov 2019 18:07:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfEt-00020u-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:07:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8CBB20835;
 Tue, 26 Nov 2019 18:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791623;
 bh=fUb787PA4PU2tCTtKmzIE+OJKmh/ygl+a3Ywi9ivz2g=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=f1rAbsh/XSiuNfa5kcGPvM42m60hlvVGV1t9LjFcMKMhyEoQrbArljGWG7zH04Whk
 7nVY/Twk2qkieexUGjOpPOOgPOBct9KSfFFqLK8k9E06FK/lqBQ1p9lKimDjGM67Np
 BPT0oSFK16T3PJTaE29DVDyWwOCsA8NHPCAdjf4o=
MIME-Version: 1.0
In-Reply-To: <20191115162901.17456-4-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
 <20191115162901.17456-4-manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v7 3/7] dt-bindings: clock: Add devicetree binding for
 BM1880 SoC
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:07:02 -0800
Message-Id: <20191126180702.D8CBB20835@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100703_556301_CB23947E 
X-CRM114-Status: UNSURE (   5.79  )
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

Quoting Manivannan Sadhasivam (2019-11-15 08:28:57)
> Add YAML devicetree binding for Bitmain BM1880 SoC.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
