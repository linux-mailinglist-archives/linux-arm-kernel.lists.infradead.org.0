Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF8D9639E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uZNEobHYQ3D/GmvPL5ZtaOw0bVkVSsBCZtO1vfKQw/Y=; b=OPlPZmy3IFh9dL
	futqxqwcONWGL3YpZOyxeJjIT/X4BZ1LB7QR1/Pw2phb9nLmaJf6gT5jzXlYPtYjhYCmWZjI4MuHc
	f4XSrl3gP4/owva13Ndo8sQu2FVAUSnzNg9P5UsyNj0tLsEDTNm5IuO9INnMJKV9tKxg5YbM64OU7
	2JX4VUpVvPdMOhBnsErrmioFPjR4ZVPmVCdwP9xMY8+GFbyTAovPljWlKbBPVHizQLpncgTpSYp/e
	5dzUQRKdX8Y/k+nPDr4fDfFinel8m4AZzTWswLL9Io9iRcd4yEpFfK/sIP8BRL34u2hfL/jzgJdbY
	uNtiNfForXzQXWT5OM4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05eg-0001Om-1i; Tue, 20 Aug 2019 15:02:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05b6-0005MD-18
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:58:57 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FF4A22DA9;
 Tue, 20 Aug 2019 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566313134;
 bh=M4cs3bSdfhfXd7GpzQV3YWsrvS7svtFqiw0IIyIt1xY=;
 h=From:To:Cc:Subject:Date:From;
 b=K/4urqalbUo/xT1vLZzyWwcicLvoxgg5a2rsPf9Va97Bg2xctULSYcICrcAeOj9c9
 MBs1T/qJBpJFn+zmWSh7P2qJFVQOGY/qDJSxQuJdsjD7tflXJ9HCYR5WnEKcwH1YEB
 edaFIq1QXOiYnVijBoR//pjEfvbkphu7h534h9rg=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCHv4 0/1] drivers/amba: add reset control to amba
Date: Tue, 20 Aug 2019 09:58:33 -0500
Message-Id: <20190820145834.7301-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075856_107654_D093A0B4 
X-CRM114-Status: UNSURE (   6.23  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org, anton@enomsg.org,
 linux@armlinux.org.uk, dinguyen@kernel.org, ccross@android.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Even though this patch is a V4, I'm including more people in this review
cycle because I found that there was previous patch[1] that was discussed.

Thanks,
Dinh


[1] https://patchwork.kernel.org/patch/10845695/

Dinh Nguyen (1):
  drivers/amba: add reset control to amba bus probe

 drivers/amba/bus.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
