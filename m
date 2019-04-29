Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE00E6E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTnwz5xqviOqxCrhYdQcmmhXJ57taAjpVICb1WFLv80=; b=F2/JC4rigSn45F
	9EY90AKq9VkoqMU39INDAUxr0Che9S3DvsP2RDTQ0YQWdtoz5CZQ4+UHzzQNn1XkKwnpE/vYtvSZi
	gy4bWSniU3jYBkN6FzJJqjZED/iY98/8G1/bKXc1Mpc8VoqxlxGmRFhiOcV3FHkSdN8hrTucIh7wD
	fJXQ5QHSJJvLDTeH0D515luOQoLBG3L6wJjKTE9aLy/KsdgheFO/tjbpDCYfAGSqOH8gPvJxMUtKH
	+dp2Rjj7a7TPDunRTmSiph0CPjUMOeXdchcb5pYi2bw9hUNb+DsKztHqo9VEYroWw0+FupKXAIq6U
	pvyqqH0cX6jHnL97ykPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8Y4-0007XQ-Vr; Mon, 29 Apr 2019 15:50:32 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8Xy-0007WR-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:50:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AE8980D;
 Mon, 29 Apr 2019 08:50:24 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34E983F5C1;
 Mon, 29 Apr 2019 08:50:23 -0700 (PDT)
Date: Mon, 29 Apr 2019 16:50:20 +0100
From: Will Deacon <will.deacon@arm.com>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Subject: Re: [PATCH] firmware: arm_sdei: Prohibit probing in '_sdei_handler'
Message-ID: <20190429155020.GB11429@fuggles.cambridge.arm.com>
References: <1556244996-1047-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556244996-1047-1-git-send-email-wangxiongfeng2@huawei.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_085026_107407_089D440F 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: james.morse@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 10:16:36AM +0800, Xiongfeng Wang wrote:
> Functions called in '_sdei_handler' are needed to be marked as
> 'nokprobe'. Because these functions are called in NMI context and
> neither the arch-code's debug infrastructure nor kprobes core supports
> this.
> 
> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
> Reviewed-by: James Morse <james.morse@arm.com>
> ---
>  drivers/firmware/arm_sdei.c | 3 +++
>  1 file changed, 3 insertions(+)

Queued for 5.2. Thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
