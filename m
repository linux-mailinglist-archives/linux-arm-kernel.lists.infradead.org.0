Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C52A83EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJCHnlk8Jdk5E0af/HABLWtVD63IoZhPN9Ze3HsngPU=; b=TnaTosSWC9Vxoe
	04HoUKFiIttYvkWNWIcJfkTYwKECvtNNKsTuNPhyqZNw64USH9GlzTGtygk9SuXIolC2Tmx0taABj
	qS6p9UA+62BDpWXUXflAPBq5QH1odWa7FXSt4UwwS/eRqnXidcY8XODtQvQPggotLMNaBMnPj5mAB
	84hgjxpP8Nd2TzEOD3SJZ8tKICuC2vfAlFC97GD0ZKQ7xH70+HqbwMaZTsB0h7wF0d3FJDc+RZQR9
	GiExanRib4K1QZ86kQISc1D88LB0/5Oc10UqhL16DhNbOK+kXl4OezmJUYwoDbBJo8XPRhU6nAoPx
	XSbyLK1O+eHwIiX8mlxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Vbm-0006mA-Ib; Wed, 04 Sep 2019 13:46:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Vbc-0006ln-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:45:54 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57E2C2339D;
 Wed,  4 Sep 2019 13:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567604752;
 bh=1r1n2dV7qz+ood1UyoTT8pXwvwuaPc1xvE+m2kLuLm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VJYUK7AKwKFFeNR5HQDRyVndRcn8WMpiJR5kF6ik6JJAcWm9HB3GkpYTQXBaMbbF/
 Wu5PgJ4QV3X5JTut4mkTGegMkJfnQF1RUYgkK14KDV6C3MnJmWazRLkbuUmr33Iq4y
 s/mWFtltbkEnLlN9DASG1CbnXPt03S2nLPMlN0Eo=
Date: Wed, 4 Sep 2019 19:14:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904134438.GZ2672@vkoul-mobl>
References: <20190904121606.17474-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904121606.17474-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_064552_901673_3593A15F 
X-CRM114-Status: UNSURE (   8.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-09-19, 13:16, Lee Jones wrote:
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> The Lenovo Yoga C630 is built on the SDM850 from Qualcomm, but this seem
> to be similar enough to the SDM845 that we can reuse the sdm845.dtsi.
> 
> Supported by this patch is: keyboard, battery monitoring, UFS storage,
> USB host and Bluetooth.

Reviewed-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
