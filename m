Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA63316C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 23:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odD6c4mXzn5jXoaT964QnV0Y601kLyyr2m7f/ZMbE+g=; b=b+h0tjj3pp+blJ
	LfUalvbEaCb9wpQqbgtrFFfXAtfYV6imAbMe1N1H2iVvElVC5ia7VxQX7+ov7zAfTojGmS+nLy7lv
	ff5dwSLDftBr2ybU+udI6dBclLd0KofNyUW75GHSXsSFS1AOJT/zMEV1yyMuHI37IwrDsfvBp/her
	jq0HtLRjD9+1s19+7MR5CvH9GJNULMDAojDws2pZCyfjyJL3bsuoJmAARwMalvWRgeW4C6ZvqrBt8
	96rhuk36hhACrnrbGI7Lreb5+cXkmCrdwuGuyNBPhrpuV+MgMY4P8cUSMA0QHrIXr8Gw3Zx2dXCsH
	IG/WzA7SuMbbq25CNOeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWpPi-00014H-QJ; Fri, 31 May 2019 21:50:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWpPb-00013l-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 21:50:08 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2BEDE15015E90;
 Fri, 31 May 2019 14:50:06 -0700 (PDT)
Date: Fri, 31 May 2019 14:50:05 -0700 (PDT)
Message-Id: <20190531.145005.798440469894507477.davem@davemloft.net>
To: elder@linaro.org
Subject: Re: [PATCH v2 03/17] soc: qcom: ipa: main code
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190531035348.7194-4-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
 <20190531035348.7194-4-elder@linaro.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 31 May 2019 14:50:06 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_145007_558682_7F65EFFC 
X-CRM114-Status: UNSURE (   4.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 arnd@arndb.de, netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alex Elder <elder@linaro.org>
Date: Thu, 30 May 2019 22:53:34 -0500

> +	void *route_virt;
 ...
> +	void *filter_virt;
 ...

If these are arrays of u64's, please declare them as "u64 *" instead of
the opaque "void *".

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
