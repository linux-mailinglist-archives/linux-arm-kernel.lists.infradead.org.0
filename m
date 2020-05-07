Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AD01C8056
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 05:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MMR+vRU+wS35Xwd63sMFVhEvDD9xfeR+DYXW6mbk16w=; b=VDJbTHm4mTAFnm
	nXybizx/Mz6To1RMmV4jPJ3XS10Wny1wle6JpZjvu2H1LAt6+TT5lZ/nuQQEsN2lXP/MOAFWQfJsc
	+0UwsV5GSad4+CvSV7cUr0ZxVJ9CnLIZVE7OfWVJEHeKgrWwjvQus83i+SqDyZb1/WgIweK6CQD1t
	/uiqs4ditR6G/fkT5AAaHLvnYmvxRL2dgC4XRg4aYf6gKPeEquYvEeZllzd03OUNze51dNK8EM1Wf
	AEjpq3Y7SEt1+uNsOXDrkiqLiJKQ/Fm7PmyBAmUBfaapEtRPX8lyfAas3lqJtIDpxp3YIW5qtcdgl
	XYdC5buZx6BMzdyDKJng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWWvP-0003mt-Rg; Thu, 07 May 2020 03:10:15 +0000
Received: from m176150.mail.qiye.163.com ([59.111.176.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWWv5-0003ln-F5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 03:09:57 +0000
Received: from vivo.com (wm-10.qy.internal [127.0.0.1])
 by m176150.mail.qiye.163.com (Hmail) with ESMTP id E210C1A30A3;
 Thu,  7 May 2020 11:09:15 +0800 (CST)
Message-ID: <AAsA8gAQCF1C9rDJm0RSQaqC.3.1588820955909.Hmail.bernard@vivo.com>
To: Bernard Zhao <bernard@vivo.com>
Subject: =?UTF-8?B?UmU6W1BBVENIXSBkcm0vbWVzb246IHBtIHJlc3VtZSBhZGQgcmV0dXJuIGVycm5vIGJyYW5jaA==?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <20200428131747.2099-1-bernard@vivo.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Thu, 7 May 2020 11:09:15 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Thu, 7 May 2020 11:09:15 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVNQ0lLS0tKTUtJSkxJQllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTktISU9MQk5JN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6Ogg6Qxw6Kjg9SjhCCT8xFkspKCoaCjhVSFVKTkNDQ0lLQk5NS0hIVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBT0tOSDcG
X-HM-Tid: 0a71ed1bd32393b4kuwse210c1a30a3
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_200955_656797_A036F7D1 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: opensource.kernel@vivo.com, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


From: Bernard Zhao <bernard@vivo.com>
Date: 2020-04-28 21:17:47
To:  Neil Armstrong <narmstrong@baylibre.com>,David Airlie <airlied@linux.ie>,Daniel Vetter <daniel@ffwll.ch>,Kevin Hilman <khilman@baylibre.com>,dri-devel@lists.freedesktop.org,linux-amlogic@lists.infradead.org,linux-arm-kernel@lists.infradead.org,linux-kernel@vger.kernel.org
Cc:  opensource.kernel@vivo.com,Bernard Zhao <bernard@vivo.com>
Subject: [PATCH] drm/meson: pm resume add return errno branch>pm_resump api did not handle drm_mode_config_helper_resume error.
>This change add handle to return drm_mode_config_helper_resume`s
>error number. This code logic is aligned with api pm_suspend.
>After this change, the code maybe a bit readable.
>
>Signed-off-by: Bernard Zhao <bernard@vivo.com>
>---
> drivers/gpu/drm/meson/meson_drv.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
>index b5f5eb7b4bb9..8c2e1b47e81a 100644
>--- a/drivers/gpu/drm/meson/meson_drv.c
>+++ b/drivers/gpu/drm/meson/meson_drv.c
>@@ -412,9 +412,7 @@ static int __maybe_unused meson_drv_pm_resume(struct device *dev)
> 	if (priv->afbcd.ops)
> 		priv->afbcd.ops->init(priv);
> 
>-	drm_mode_config_helper_resume(priv->drm);
>-
>-	return 0;
>+	return drm_mode_config_helper_resume(priv->drm);
> }
> 
> static int compare_of(struct device *dev, void *data)
>-- 
>2.26.2
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
