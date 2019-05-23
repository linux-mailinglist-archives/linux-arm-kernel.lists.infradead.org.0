Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1333278EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gk+octhTkLJNX7cw055QLfhGr3kth9Fj3qwR2Oqkt1s=; b=BQ0nYGS76OVQ3O
	KD3984z6qsoEq/843CECT6YO506mVlBErdt47LWt1hTJzzxHeNR1AM2lm6WQI9w1ndwPhyPgDNYtK
	oF6PiydaTtlDaoOqboPkbx5WDUCI3/O9fzQNY9pBAwN3FXmrvnamn4KDxiMeD9DtFLS/p63fHyrXR
	h7nLyYnicgOE544RRZ7eyyzO2FTp+JTJwIOTm7Vy1GVsNMhjJMKG+uSymucmcBhljCRZRL/vML331
	EcKHn+J5Wc9L+xnRehInYfDvcS5DWNqEUSyIqdDavqeDFZODfSyz8g+kEGsa0EVddq411rH02slI3
	qJcfvPNtNfyybJtrmz3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjmc-0007yy-0e; Thu, 23 May 2019 09:13:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjmU-0007yW-Qo; Thu, 23 May 2019 09:13:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2AE83609CD; Thu, 23 May 2019 09:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558602778;
 bh=q49ufyb9ebUPhOVN6fU/Ag5XosVSb82NqkFcV9WMg1g=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=SO3Nu8yINGlcfZ2EAH+62C+qzQ0n6Q9qvbXMGi5vIv3t8gmSnYEDnlUFUyblVj6b/
 wovOXfX3jCzk1ZqIqE0AMrD3Xt0XK3mq51r8gvGp5rRCb8yKue/4CN/8oGvYIeEpaZ
 Qxnm6/chZGBJ5YllTMMps0LI9+ovpmsgXC3OTA4Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E085260D35;
 Thu, 23 May 2019 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558602776;
 bh=q49ufyb9ebUPhOVN6fU/Ag5XosVSb82NqkFcV9WMg1g=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=CgKKopkPDPqEZ3tYfF6IoD7K+SCnW4/001TN5YTTHqtDJdhbhqCiq7KveTA6ywt6p
 kPMgbLUY4GXZ8gEfh02FIp+aDZ92+sLDm7ADqmyQFAJ01kXqQ02XuiZ0E4UulnJwiQ
 gdNklgpRmkpK+mNNX5doQFDe8ZQzrgT+V4KAxFxc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E085260D35
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Weitao Hou <houweitaoo@gmail.com>
Subject: Re: [PATCH] net: fix typos in code comments
References: <20190519030923.18343-1-houweitaoo@gmail.com>
Date: Thu, 23 May 2019 12:12:51 +0300
In-Reply-To: <20190519030923.18343-1-houweitaoo@gmail.com> (Weitao Hou's
 message of "Sun, 19 May 2019 11:09:23 +0800")
Message-ID: <87a7fdedpo.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_021258_884728_5F4538BA 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ryder.lee@mediatek.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, royluo@google.com,
 lorenzo.bianconi83@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Weitao Hou <houweitaoo@gmail.com> writes:

> fix lenght to length
>
> Signed-off-by: Weitao Hou <houweitaoo@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c | 2 +-

Please use correct prefix "mt76:":

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong

-- 
Kalle Valo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
