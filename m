Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85D01422CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 06:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCezJJPayhMl43qWpd3O9T0lFIN2sMwdpZxxdNqhCkA=; b=N/auhAPLft0Tvy
	Wme7v0qs/tyztt4fTD5MYQinHRvRPriUKmNzcx7ywyeZkJ+5522UQeGPaIlw5q3FIl0fpGTA2q1K5
	ay/FttLcdHvTCN0nPLO75Cgo2rM0Tu/nUrzS2VbLY/UBIhkGVMEcKyNKP+RWfZDFduhOdGoBLUNtz
	ftcUfj3eVQ6CFeG3L4vUXRXISB2O4h2TGoc57dPZCWPEiyqaQ98W9XoX1veZsxz9lr4GVKu58E/x4
	+CTcqSQ4O6esrait8WeU/O71zRK1f2dy2VnJ2nVIqETSFHfqBj08O15vQBGaiV26DlAC2RhNq/17x
	Cl1rwzSEaTGQjCxRLfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itPc5-0006tx-6q; Mon, 20 Jan 2020 05:28:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itPbu-0006tM-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 05:28:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id p9so12672386plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 21:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CTBoug2POge5IUv+BODbtuxgixi9XfhzZTWyFSqFGs8=;
 b=EmffSu1Ekm1BEOdjUqNZPrbufY1BxZZsbLp0EIIgqSsKbdU1Y/QhUZ0CFI6Jvu8BAb
 aok3M/fFGKuzC7xOkaqjTyJ2mnCTYKXjxBgMKJN1PHe2JLiCUC3LkFQKpPyICcRCYMYR
 3MOBr5YIQpCU5NoJfe5Vmq3J0JJZ4PKyXmfZ+Jjf45sTPc+aKaAB1ML3RIgJ9eD31lKy
 HfDLgUPMH4Ijh0iCSDeykSExAV84SAE31vOPmFRLDXvY3G+YoIln8ZIEkAJ14UWx0GlM
 nVJdWNi/G1VfDywJqHu9EmCRwykzlARFuq2gaR0z8/mgJEy9xl/uXpoDjdTV9ZIRKRBr
 bNvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CTBoug2POge5IUv+BODbtuxgixi9XfhzZTWyFSqFGs8=;
 b=bmPauifCd+GQeDbSaOZZHiVNLTGEgZdIHWd2kHkY+ZUtadqPsKesI0/RDICAgeJN8h
 s8I9kbe/4fYrR7IKH9OZrh1EUZAD+Rh/06V6BFfPBJGYQRUeREtjsc7vLego5utApSo1
 w2d2WC4U/HcG0WX2ezCQ+iqXi3nx4kzqPzNx3fOcPRCJDPZuSmGvsHBSZ4Wgv5FwTwcG
 MxWqwRfsnlmoKXQOteIu8ooimzuJpObF023j77WN+IvULLSjyfwYRFERv/HbsdlHNTkG
 sKUIyM7K7zedLkR2dSPPrN7Kz3eLD+wXkBIPSXryEKLKuqrhYG14w/RmP6+sdRfCGOA3
 ivBA==
X-Gm-Message-State: APjAAAXWyH2nkoyf71VIJTzYLZMq67oGE++OYoP/6u3t5CCDhtxkIjzX
 ABhVq9uzvmVy90b9AhkBNFtqmA==
X-Google-Smtp-Source: APXvYqyPVXId1vEjcr+tOT7Z4v8U9ypwhS2c/1vLrgL2t0SNuRIJzHadRuOhZQXz3K1rsfAmRcv2nw==
X-Received: by 2002:a17:902:b48e:: with SMTP id
 y14mr13300276plr.260.1579498104970; 
 Sun, 19 Jan 2020 21:28:24 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id s26sm37402702pfe.166.2020.01.19.21.28.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 21:28:23 -0800 (PST)
Date: Mon, 20 Jan 2020 10:58:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: qiwu chen <qiwuchen55@gmail.com>
Subject: Re: [PATCH v3] cpufreq: s3c: fix unbalances of cpufreq policy refcount
Message-ID: <20200120052821.tvijbt3bzkn76yz6@vireshk-i7>
References: <1578383599-11207-1-git-send-email-qiwuchen55@gmail.com>
 <20200107080145.7c4gxilnjjxjfqpc@vireshk-i7>
 <CAD1-QrohtJFLWDMCYmVs2G5WDcDN_E8xcsNZqJ428cEkohcB0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD1-QrohtJFLWDMCYmVs2G5WDcDN_E8xcsNZqJ428cEkohcB0Q@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_212826_568781_BA9EB206 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, krzk@kernel.org, kgene@kernel.org,
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-01-20, 10:25, qiwu chen wrote:
> Hi
> Any progress about this patch?

I already applied it in my tree, it will be part for v5.5-rc1.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
