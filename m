Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB5D8316C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWalXme18lgCO26tFYJkGIEWzQyG6MT+xfclC7jCkW4=; b=qhl8O5Lgcgb1UT
	6foPJnThbtImRAy7ZuuSXZEA5jc3O4AEiphCiESFXi2euLOqrudL3WlnYXvjiCnqrQK0Zel5OmWI5
	mqwR6yGA02p2oSmCYvEw6ITzAHLbbeEHpuKhVXjmuVVbzcScGC7oUKNtVUvaYRjcewvmE4y7yoQvC
	VlCO3OrJ0qgMbLFbVmjhR1riwrbp30u9UT84c+XM314IYVpGInEJCIkl3KjWdrcTS2ZGsvtwEGHbY
	h9IuCZOpaXe1VNA30YZ76ymr6+VyirPEIXI+F3z9Hh4zVXNTWRBrqCpq+jVRvABR5kGOoCbowJQSw
	rDjhRmCcYgQUJs8zC8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyhB-0003wI-60; Tue, 06 Aug 2019 12:36:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huygy-0003vQ-7P; Tue, 06 Aug 2019 12:35:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7C9BD609CD; Tue,  6 Aug 2019 12:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565094949;
 bh=NZDwtrQI4U0ABkUADvCTivKQDmwAGr82qO/iVNbsfxM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Rv5GcULgTlXB33lddtwnOiJysbUkExlENO5AvJ8A2llTgPI8wKjpuZh4YleI4z6gf
 SbxtOOHKpHc8Hb10Fad+WohaAgudBTgGrQ6ANRV/BGEuBkw7/ua1AjpbBSgdrKMKbn
 Tzq9aWU4LSRZ1soIPJADVVe+fR0Cq8Egt9QA+208=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DB2B56090E;
 Tue,  6 Aug 2019 12:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565094948;
 bh=NZDwtrQI4U0ABkUADvCTivKQDmwAGr82qO/iVNbsfxM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=XIRSpFrtyrkt1YScYWkoXYydse7nqZ+gBnOvX7Id2f9juOLnmFeFr/tzH1PURrJyQ
 p3Clla8U6EAAeFOq8YK1N/HjS6iejAMQJM2Nz1wFOufmZ+YJMHJHZWSPKXRcCwx5iD
 PUU5EDFETNy8UexZBeActnB04Gkl3dH1BbfnbWT0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DB2B56090E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] mt7601u: null check the allocation
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190724141736.29994-1-navid.emamdoost@gmail.com>
References: <20190724141736.29994-1-navid.emamdoost@gmail.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190806123549.7C9BD609CD@smtp.codeaurora.org>
Date: Tue,  6 Aug 2019 12:35:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_053552_286662_1215CFEB 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: secalert@redhat.com, Jakub Kicinski <kubakici@wp.pl>,
 linux-wireless@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, linux-mediatek@lists.infradead.org, smccaman@umn.edu,
 Matthias Brugger <matthias.bgg@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Navid Emamdoost <navid.emamdoost@gmail.com> wrote:

> devm_kzalloc may fail and return NULL. So the null check is needed.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> Acked-by: Jakub Kicinski <kubakici@wp.pl>

Patch applied to wireless-drivers-next.git, thanks.

b95c732234fa mt7601u: null check the allocation

-- 
https://patchwork.kernel.org/patch/11057013/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
