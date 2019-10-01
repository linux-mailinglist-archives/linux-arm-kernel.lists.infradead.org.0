Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1874C320C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8Whjf5QH6SLx7MJOKG65FyOLeT7rAT0LfkTc8DE274=; b=qIaWDFmVuiKVPq
	pcUg+gA0msqwDqLIEF2Bqko3qpIg8wCj95ZewkuRkt/85JoF6z/rfhpWLl9ruAZ2e2hIrmmdmFIZ5
	O5NWvI6sEUOEggmX4QtGlGXBILOmHTMUXi18LmV80YIiRI68rPBEykoCYuVaOsmyEP/CY16ljsIpP
	gvCKQ9I51Rjmla9dDAQsU8lkQsU3Cyl1VhYUf1FyM6Zmieq5jwPh705q9X6JnpG9PJlXveVaht42i
	kkof8CQtnCTgKFnAvPqYYyI9OfW5Crf3TlbjL/7ixXoui47HFz9IE2Ed2SduTr20QF/xMFzwMCFQi
	8UqJBE0mry2qKfZpP5VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFG4m-0004Re-Sr; Tue, 01 Oct 2019 11:12:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFG4f-0004RD-NK
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:12:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 53EE560790; Tue,  1 Oct 2019 11:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928329;
 bh=9kO3QL+L5rr63Ix2ww95YvRUF57iILCa5Qi4MlOlhxM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=dIZIpk9bKmKDhnfIWS9jfSnDm4DVoaXx77uUsEOO9K13B67BQkaKbnNxON+csseoV
 1JuCuFeooNuzQ/UYwecK8v2PitycNxQosak4+abcMAbpQUBVjMiBcU5V0RmV4QISwe
 hnAA74SgzCPkycDnXeqti/0dRhJdKlyUE+w2TBYk=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4B91E6014B;
 Tue,  1 Oct 2019 11:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928328;
 bh=9kO3QL+L5rr63Ix2ww95YvRUF57iILCa5Qi4MlOlhxM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Dff0axe8hdiOON+Jklx4brxGX76YkVHfkiIOQIY82uYhhIpU1BAIJ+ncj8fSYzaqM
 anWwISLIwCbpYPDEmfqvXp8TA6IO32F52uTrw/J8nUbDSQc4+34NZebE2beqryLLdl
 vQVfictCs0UzuZwbaG/naQM63KNlDtd68ZK8cAVY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4B91E6014B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath9k: remove unused including <linux/version.h>
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190923135632.145051-1-yuehaibing@huawei.com>
References: <20190923135632.145051-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191001111209.53EE560790@smtp.codeaurora.org>
Date: Tue,  1 Oct 2019 11:12:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_041209_781024_C9BB2830 
X-CRM114-Status: UNSURE (   6.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-janitors@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-wireless@vger.kernel.org, ath9k-devel@qca.qualcomm.com,
 netdev@vger.kernel.org, manivannan.sadhasivam@linaro.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> wrote:

> Remove including <linux/version.h> that don't need it.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

6aff90c5bab7 ath9k: remove unused including <linux/version.h>

-- 
https://patchwork.kernel.org/patch/11156945/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
