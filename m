Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5065B84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 18:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8L2v7FY2R8QjEWKXmJIafyLonFkWM89Nk52FdblFNY=; b=bNIezyeemCf/k1
	7L8Sp9JCIdJbC+xpdfdZCXDnn2arDeITjn83Ll6KbK/lRioeyNd39xrlGytZvMKUz6tuXF678SzOb
	0EYVi5Zq68rJPp5O3grHFzezMqbtI4rTMwH6lCQQWduCs2LtxgwmOGxwhlNNbuDJRACCUwbpaYtnA
	cdh2H4+80bWs3JkH3sGBE7RM7stQQzOQTlQbKE0tJPSqjG5UE1R7atjcRsOBQ3hK9YMST17wz41io
	6CUc5N9V32K0m4U4insXUtHoI6dX0nglTPoMVPPwDVfpaVV2Wg6OQtJXkCfnt1n2BLIkkN+odW9Wy
	hzl2DT3n9hzlcMGI53nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbtv-0007D9-42; Thu, 11 Jul 2019 16:26:31 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbtj-0007CY-Hc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 16:26:20 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 3DD41208E6;
 Thu, 11 Jul 2019 18:26:18 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 1F77820666;
 Thu, 11 Jul 2019 18:26:18 +0200 (CEST)
Subject: Re: [Patch V4] Documentation: coresight: covert txt to rst
To: Phong Tran <tranmanphong@gmail.com>, corbet@lwn.net, leo.yan@linaro.org,
 mathieu.poirier@linaro.org, mchehab@kernel.org
References: <20190705204512.15444-1-tranmanphong@gmail.com>
 <20190710150133.13992-1-tranmanphong@gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <808533ea-69d2-4df9-e6e2-442ec29dd8a9@free.fr>
Date: Thu, 11 Jul 2019 18:26:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190710150133.13992-1-tranmanphong@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul 11 18:26:18 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_092619_735341_D6F630DA 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/07/2019 17:01, Phong Tran wrote:
> Subject: [Patch V4] Documentation: coresight: covert txt to rst

Typo in patch subject.

s/covert/convert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
