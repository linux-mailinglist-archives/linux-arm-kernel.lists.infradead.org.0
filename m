Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179073D728
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rr6dbZKWtVdhV73Iu0m/vVgo8Og7rdgJjLGeZk0RU68=; b=eCwumP363dwQh6
	XXSK/+UGT0eCFw0efjRVWFE4jsgEyYb0wQg61J9aTjxrw9ZnLOByXAC6Z/z13+XZTchc6gAiUsF8P
	bLe7w0wbhPd2Qizrg/1siEtpaLlFjW3p0pvM1Mdlx0H0JXVD4uGbJimylpxTETp8Rzr5VRlPIFKQ3
	Hw7g4HEdBxbvrBFVe0Gbyeh422DTTw7oNCLFkMUybxgh/0E6dV1v4Xuyj7c16RzrYRVf+8lYYtbSv
	2aFFLfe/ZCHgGQ03Q+zrfwcVfpxWBl0MkQY+xjcZIfw4c3M9PdOrZpLiW3XSzMMM/28+6AAwC3dnM
	eriuB+J8cRuoMJoQSXCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hamke-0003YX-32; Tue, 11 Jun 2019 19:48:12 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hamkU-0003XK-Ov
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:48:04 +0000
Received: from belgarion ([90.76.40.119]) by mwinf5d16 with ME
 id PXnq2000B2aFDoA03XnqEQ; Tue, 11 Jun 2019 21:47:57 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Tue, 11 Jun 2019 21:47:57 +0200
X-ME-IP: 90.76.40.119
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 5/6] ARM: pxa: Switch to SPDX header
References: <20190611072921.2979446-1-lkundrak@v3.sk>
 <20190611072921.2979446-6-lkundrak@v3.sk>
X-URL: http://belgarath.falguerolles.org/
Date: Tue, 11 Jun 2019 21:47:50 +0200
In-Reply-To: <20190611072921.2979446-6-lkundrak@v3.sk> (Lubomir Rintel's
 message of "Tue, 11 Jun 2019 09:29:20 +0200")
Message-ID: <87tvcv3nvd.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_124803_091629_84872F72 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: devicetree@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lubomir Rintel <lkundrak@v3.sk> writes:

> The original license text had a typo ("publishhed") which would be
> likely to confuse automated licensing auditing tools. Let's just switch
> to SPDX instead of fixing the wording.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
