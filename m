Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03B882A6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 06:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hs9EGLarV+umbc7oBDe3+Juq0O0P+S76h0xGcIExDc=; b=gNd+u4xngj7vXG
	ffzY7NA3wYYsDkz9f3Cps7PsRfbnk247mX/82FWuidBlmVdb/MmPsptV1PEd7PO0k9VvbUVxLTqx3
	1O5Lq/TeuVg0Acz881R+Z7+NOSTcimCGu9IiRPJqa+HZ5CHAUEJrmFSimZVVdmWJtfNs481eDm+xl
	trIFDnxFgelvGiD9V3WgKfqwAERQZ/6kkp1bh7Lx2iXsdv14E3YRSgu5nyJKMDvwsMCwfJlZ3cTtv
	q9bzgRBadro0O/atWqVzj54JDN5ZpvA69TbS9rGhz2WeX6zUGk2/LUkggprlmTY1hDx2mHm8sdEaM
	InxL/9VBhWQbrIgoFGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurBa-0003GQ-Jd; Tue, 06 Aug 2019 04:34:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurBT-0003G7-Lv
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 04:34:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so40785449pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 21:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=37e73pgeUst/e32No0I5VlF96GbX2bnFea6wHE9lo0U=;
 b=1fb8tsw+IDfyYebA8NHR9PDMJAuQesOzz/4+8c6F3puynzPajSonryQyPh0Kuobou9
 vyzPLWjKg2Fx4Z/XCdhQBxhV15xnBVPYb5qyzq3gF4MyDhFnA8n4OIB/E1FPhX841kIl
 ZZRI4i5Yr7S2qvgCkRnCrH+lNfb/9gZOK2yiFoFwhuakHZs3bcsjDdamB7yiOqXLD2l1
 ITwCcZ31Ka5Fyw1tDzbF7JZkncEq4tjxcR9LPjGPdKpouDu0By6wTdr7c64bk8a23cV/
 C/IGopUF0QO5fDkgNxiaS7O1q7YW+qU8yiDbLTEY5N5c805gudzKLpmeZV1jWfH5OmEx
 ni/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=37e73pgeUst/e32No0I5VlF96GbX2bnFea6wHE9lo0U=;
 b=k83RXZLb55ejlEj9ayGEzaTBqu8yHqr5SwAeFUYgVdzP6IZtXgiX57jXEHsLvE2tZN
 8/E9CBrw+HBIIcPbOoAK1M0hx0vf90pZ544wDfvAmQWIjYCc7Wley1zRedZkptbOdskp
 0ggLvFSgTPEpFi3xQ2Auvf0m44wKVCGfQZNIRmOaGJ4mjSkp+rqhv11tn1vijacr/719
 2wWFEamIuMuqYNBBpmL6krX/pmlVxTSPYUpbHRAHberCa//awEGW+KIH2gZuosTT1FGv
 KODXl7jID3AKrArRrc8yFunaxuao5eCn+2uZKB1P7JM6vySQjgu54pYRkC9UONjQO6oY
 qkjg==
X-Gm-Message-State: APjAAAU1YXMG8JfPUayJobb5LJxJ6A+E7zFS3klmN8cpOa2LObNpFKxv
 CBvS0xmlt/eEeSWhkespNG06Yw==
X-Google-Smtp-Source: APXvYqxSbFtO3Q8AmtiweeWMVTX404S5ZZBWpaWkpDDNXsVITjS2rpZBN1xFskUAblQd3Ye+zshvsQ==
X-Received: by 2002:aa7:9513:: with SMTP id b19mr1660078pfp.30.1565066090291; 
 Mon, 05 Aug 2019 21:34:50 -0700 (PDT)
Received: from cakuba.netronome.com (c-71-204-185-212.hsd1.ca.comcast.net.
 [71.204.185.212])
 by smtp.gmail.com with ESMTPSA id 10sm104956416pfb.30.2019.08.05.21.34.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 21:34:49 -0700 (PDT)
Date: Mon, 5 Aug 2019 21:34:25 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 03/10] net: stmmac: Fix issues when number of
 Queues >= 4
Message-ID: <20190805213425.3fce1d42@cakuba.netronome.com>
In-Reply-To: <5e95bb1761f9438361f198d744640685a34790ea.1565027782.git.joabreu@synopsys.com>
References: <cover.1565027782.git.joabreu@synopsys.com>
 <5e95bb1761f9438361f198d744640685a34790ea.1565027782.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_213451_856957_0856C71E 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  5 Aug 2019 20:01:16 +0200, Jose Abreu wrote:
> When queues >= 4 we use different registers but we were not subtracting
> the offset of 4. Fix this.
> 
> Found out by Coverity.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Should this be a bug fix for the net tree?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
